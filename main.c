//
//  main.c
//  opengl_parser
//
//  Created by Michael Larson on 8/23/23.
//

/*
 * Copyright (C) Michael Larson on 1/6/2022
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * parser.c
 * headerparser
 *
 */

#include <stdio.h>
#include <string.h>
#include <time.h>
#include <ctype.h>
#include <assert.h>
#include "ezxml.h"

#define string(_STR_)   (const char *)_STR_

enum {
    kEnum,
    kCommand
};

typedef struct {
    int major, minor;
} GLVersion;

GLVersion *get_gl_versions(void)
{
    static GLVersion gl_versions[] = {{1,0}, {1,1}, {1,2}, {1,3}, {1,4}, {1,5}, {2,0}, {2,1}, {3,0}, {3,1}, {3,2}, {3,3}, {4,0}, {4,1}, {4,2}, {4,3}, {4,4}, {4,5}, {4,6}, {0,0}};

    return gl_versions;
}

typedef struct  {
    const char *name;
    int count;
} EnumTracker;

int enum_tracker_count = 0;
EnumTracker enum_tracker[4000];

int hexstr2dec(const char *str)
{
    int value = 0;

    while(*str)
    {
        value = value << 4;
        
        if (*str >= '0' && *str <= '9')
        {
            value = value + (*str - '0');
        }
        else if (*str >= 'A' && *str <= 'F')
        {
            value = value + ((*str - 'A') + 10);
        }
        else
        {
            assert(0);
        }
        
        str++;
    }
    
    return value;
}

void print_enum(ezxml_t enum_node, FILE *fp_out)
{
    const char *value, *name;

    value = ezxml_attr(enum_node, string("value"));
    name = ezxml_attr(enum_node, string("name"));

    assert(value);
    assert(name);

    if (enum_tracker_count == 0)
    {
        for(int i=0; i<4000; i++)
        {
            enum_tracker[i].count = 0;
        }
    }
    
    for(int i=0; i<enum_tracker_count; i++)
    {
        if (!strcmp(name, enum_tracker[i].name))
        {
            enum_tracker[i].count++;
            
            return;
        }
    }
    
    enum_tracker[enum_tracker_count].name = strdup(name);
    enum_tracker[enum_tracker_count].count++;
    enum_tracker_count++;
    
    if (value[1] == 'x')
    {
        printf("  integer(4),parameter :: %-60s = %d\n", name, hexstr2dec(&value[2]));
        fprintf(fp_out, "  integer(4),parameter :: %-60s = %d\n", name, hexstr2dec(&value[2]));
    }
    else if (value[0] == '0' || value[0] == '1')
    {
        printf("  integer(4),parameter :: %-60s = %s\n", name, value);
        fprintf(fp_out, "  integer(4),parameter :: %-60s = %s\n", name, value);
    }
    else
    {
        assert(0);
    }
}

int proto_has_return_type(ezxml_t proto)
{
    ezxml_t ptype;

    assert(proto);
    assert(proto->txt);

    ptype = ezxml_child(proto, string("ptype"));

    if (ptype)
    {
        return 1;
    }

    if (strstr("void", proto->txt))
    {
        return 1;
    }

    return 0;
}

char *proto_return_type(ezxml_t proto)
{
    ezxml_t ptype;

    assert(proto);
    assert(proto->txt);

    ptype = ezxml_child(proto, string("ptype"));

    if (ptype)
    {
        return ptype->txt;
    }

    if (strstr("void", proto->txt))
    {
        return proto->txt;
    }

    return 0;
}

int get_param_count(ezxml_t command)
{
    ezxml_t param;
    int param_count = 0;

    for (param = ezxml_child(command, "param"); param; param = param->next)
    {
        param_count++;
    }

    return param_count;
}

int strcmpset(const char *src, const char **strset)
{
    while(*strset)
    {
        if (!strcmp(src, *strset))
            return 1;
        strset++;
    }
    
    return 0;
}

void print_fortran_var_def(FILE *fp_out, const char *type, const char *c_type, char *name)
{
    if (!strcmp(c_type, "c_ptr"))
    {
        if (!strcmp(type,"GLfloat"))
        {
            printf("  real(c_float), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  real(c_float), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLdouble"))
        {
            printf("  real(c_double), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  real(c_double), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLubyte") || !strcmp(type,"GLbyte"))
        {
            printf("  integer(c_int8_t), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  integer(c_int8_t), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLshort") || !strcmp(type,"GLushort"))
        {
            printf("  integer(c_int16_t), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  integer(c_int16_t), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLint") || !strcmp(type,"GLuint"))
        {
            printf("  integer(c_int32_t), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  integer(c_int32_t), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLboolean"))
        {
            printf("  logical(c_bool), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  logical(c_bool), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLsizei"))
        {
            printf("  integer(c_int64_t), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  integer(c_int64_t), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLintptr"))
        {
            printf("  integer(c_int64_t), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  integer(c_int64_t), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLenum"))
        {
            printf("  integer(c_int32_t), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  integer(c_int32_t), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"GLchar"))
        {
            printf("  character(c_char), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  character(c_char), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"const  *const*GLchar") || !strcmp(type,"const  *GLintptr") || !strcmp(type,"const  *GLintptr") || !strcmp(type,"const  *GLsizeiptr"))
        {
            printf("  type(c_ptr), dimension(*), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  type(c_ptr), dimension(*), intent(inout) :: %s\n", name);
        }
        else if (!strcmp(type,"type"))
        {
            printf("  type(c_ptr), intent(inout) :: %s\n", name);
            fprintf(fp_out, "  type(c_ptr), intent(inout) :: %s\n", name);
        }
        else
        {
            printf("unknown type %s\n", type);
            assert(0);
        }
    }
    else
    {
        printf("  %s(%s),intent(in),value :: %s\n",type, c_type, name);
        fprintf(fp_out, "  %s(%s),intent(in),value :: %s\n",type, c_type, name);
    }
}

void print_fortran_function_ret_type(FILE *fp_out, ezxml_t proto, ezxml_t ptype, ezxml_t name)
{
    const char *func_name;
    const char *type;
    char str[80];
    
    func_name = name->txt;

    if (ptype->off == 0)
    {
        type = ptype->txt;
    }
    else
    {
        sprintf(str,"%s%s",proto->txt, ptype->txt);
        type = str;
    }
    
    if (!strcmp("GLenum", type))
    {
        printf("  integer(c_int) :: %s\n", func_name);
        fprintf(fp_out,"    integer(c_int) :: %s\n", func_name);
    }
    else if (!strcmp("GLubyte", type))
    {
        printf("  integer(c_int8_t) :: %s\n", func_name);
        fprintf(fp_out,"    integer(c_int8_t) :: %s\n", func_name);
    }
    else if (!strcmp("GLuint", type) || !strcmp("GLint", type))
    {
        printf("  integer(c_int32_t) :: %s\n", func_name);
        fprintf(fp_out,"    integer(c_int32_t) :: %s\n", func_name);
    }
    else if (!strcmp("GLboolean", type))
    {
        printf("  integer(c_int32_t) :: %s\n", func_name);
        fprintf(fp_out,"    integer(c_int32_t) :: %s\n", func_name);
    }
    else if (!strcmp("GLsync", type))
    {
        printf("  integer(c_int32_t) :: %s\n", func_name);
        fprintf(fp_out,"    type(c_ptr) :: %s\n", func_name);
    }
    else if (!strcmp("const  *GLubyte", type))
    {
        printf("  type(c_ptr) :: %s\n", func_name);
        fprintf(fp_out,"    type(c_ptr) :: %s\n", func_name);
    }
    else
    {
        printf("unknown return type %s\n", type);
        assert(0);
    }
}

typedef struct  {
    const char *name;
    int count;
} FunctionTracker;

int fuction_tracker_count = 0;
FunctionTracker function_tracker[4000];

void print_command(ezxml_t command, FILE *fp_out)
{
    ezxml_t proto, name;
    ezxml_t param, ptype;

    proto = ezxml_child(command, string("proto"));
    assert(proto);

    name = ezxml_child(proto, string("name"));

    ptype = ezxml_child(proto, string("ptype"));

    int param_count = get_param_count(command);

    char *function_name;
    unsigned chars_out;

    function_name = name->txt;
    
    if (fuction_tracker_count == 0)
    {
        for(int i=0; i<4000; i++)
            function_tracker[i].count = 0;
    }
    else if (fuction_tracker_count)
    {
        for(int i=0; i<fuction_tracker_count; i++)
        {
            if (!strcmp(function_name, function_tracker[i].name))
            {
                function_tracker[i].count++;
                return;
            }
        }
    }
    
    function_tracker[fuction_tracker_count].name = strdup(name->txt);
    function_tracker[fuction_tracker_count].count++;
    fuction_tracker_count++;
    
    chars_out = 0;
    
    if (proto_has_return_type(proto))
    {
        printf("function %s(", name->txt);
        chars_out += fprintf(fp_out,"function %s(", name->txt);
    }
    else
    {
        printf("subroutine %s(", name->txt);
        chars_out += fprintf(fp_out,"subroutine %s(", name->txt);
    }

    if (param_count)
    {
        for (param = ezxml_child(command, "param"); param; param = param->next)
        {
            assert(param->off);
            
            ptype = ezxml_child(param, "ptype");
            name = ezxml_child(param, "name");
            
            assert(name);
            assert(name->txt);
            
            param_count--;
            
            chars_out += printf("%s", name->txt);
            
            if (chars_out > 100)
            {
                fprintf(fp_out, " &\n");
                chars_out = 0;
                
                chars_out = fprintf(fp_out, "%s", name->txt);
            }
            else
            {
                fprintf(fp_out, "%s", name->txt);
            }
            
            if (param_count)
            {
                chars_out += printf(", ");
                fprintf(fp_out, ", ");
            }
        }
    }
    
    chars_out += printf(") bind(C, name=\"%s\")\n", function_name);
    if (chars_out > 120)
    {
        fprintf(fp_out, ") &\n \t\tbind(C, name=\"%s\")\n", function_name);
    }
    else
    {
        fprintf(fp_out, ") bind(C, name=\"%s\")\n", function_name);
    }
    
    printf("  use, intrinsic :: iso_c_binding\n");
    fprintf(fp_out,"  use, intrinsic :: iso_c_binding\n");
    
    if (proto_has_return_type(proto))
    {
        ezxml_t ptype;

        assert(proto);
        assert(proto->txt);

        ptype = ezxml_child(proto, string("ptype"));

        name = ezxml_child(proto, string("name"));

        print_fortran_function_ret_type(fp_out, proto, ptype, name);
    }

    name = ezxml_child(proto, string("name"));
            
    param_count = get_param_count(command);

    if (param_count)
    {
        for (param = ezxml_child(command, "param"); param; param = param->next)
        {
            const char *type;
            char str[80];
            
            assert(param->off);
            
            ptype = ezxml_child(param, "ptype");
            name = ezxml_child(param, "name");
            
            if (ptype)
            {
                if (ptype->off == 0)
                {
                    type = ptype->txt;
                }
                else
                {
                    sprintf(str,"%s%s",param->txt, ptype->txt);
                    type = str;
                }
            }
            
            assert(name);
            assert(name->txt);
            
            param_count--;
            
            if (ptype == NULL)
            {
                print_fortran_var_def(fp_out, "type", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "GLbyte") || !strcmp(type, "GLubyte"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int8_t", name->txt);
            }
            else if (!strcmp(type, "GLshort") || !strcmp(type, "GLushort"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int16_t", name->txt);
            }
            else if (!strcmp(type, "GLint") || !strcmp(type, "GLuint"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int32_t", name->txt);
            }
            else if (!strcmp(type, "GLint64") || !strcmp(type, "GLuint64"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int64_t", name->txt);
            }
            else if (!strcmp(type, "GLchar"))
            {
                print_fortran_var_def(fp_out, "character", "c_char", name->txt);
            }
            else if (!strcmp(type, "GLfloat"))
            {
                print_fortran_var_def(fp_out, "real", "c_float", name->txt);
            }
            else if (!strcmp(type, "GLdouble"))
            {
                print_fortran_var_def(fp_out, "real", "c_double", name->txt);
            }
            else if (!strcmp(type, "GLboolean"))
            {
                print_fortran_var_def(fp_out, "logical", "c_bool", name->txt);
            }
            else if (!strcmp(type, "GLenum"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int32_t", name->txt);
            }
            else if (!strcmp(type, "GLhandleARB"))
            {
                print_fortran_var_def(fp_out, "type", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "GLintptr"))
            {
                print_fortran_var_def(fp_out, "GLintptr", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "GLsizei"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int64_t", name->txt);
            }
            else if (!strcmp(type, "GLsizeiptr"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int64_t", name->txt);
            }
            else if (!strcmp(type, "GLsync"))
            {
                print_fortran_var_def(fp_out, "type", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "GLbitfield"))
            {
                print_fortran_var_def(fp_out, "integer", "c_int32_t", name->txt);
            }
            else if (!strcmp(type, "GLDEBUGPROC"))
            {
                print_fortran_var_def(fp_out, "type", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLint"))
            {
                print_fortran_var_def(fp_out, "GLint", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLuint"))
            {
                print_fortran_var_def(fp_out, "GLuint", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLfloat"))
            {
                print_fortran_var_def(fp_out, "GLfloat", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLdouble"))
            {
                print_fortran_var_def(fp_out, "GLdouble", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLubyte"))
            {
                print_fortran_var_def(fp_out, "GLubyte", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLbyte"))
            {
                print_fortran_var_def(fp_out, "GLbyte", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLshort"))
            {
                print_fortran_var_def(fp_out, "GLshort", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLushort"))
            {
                print_fortran_var_def(fp_out, "GLushort", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLboolean"))
            {
                print_fortran_var_def(fp_out, "GLboolean", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLsizei"))
            {
                print_fortran_var_def(fp_out, "GLsizei", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLenum"))
            {
                print_fortran_var_def(fp_out, "GLenum", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLchar"))
            {
                print_fortran_var_def(fp_out, "GLchar", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *const*GLchar"))
            {
                print_fortran_var_def(fp_out, "const  *const*GLchar", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLintptr"))
            {
                print_fortran_var_def(fp_out, "const  *GLintptr", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "const  *GLsizeiptr"))
            {
                print_fortran_var_def(fp_out, "const  *GLsizeiptr", "c_ptr", name->txt);
            }
            else if (!strcmp(type, "GLvoid"))
            {
                assert(0);
                
                fprintf(fp_out, "type(c_ptr)%s\n",name->txt);
            }
            else
            {
                printf("unknown type %s\n", type);
                assert(0);
            }
        }
    }

    name = ezxml_child(proto, string("name"));

    if (proto_has_return_type(proto))
    {
        printf("end function %s\n\n",name->txt);
        fprintf(fp_out, "end function %s\n\n",name->txt);
    }
    else
    {
        printf("end subroutine %s\n\n",name->txt);
        fprintf(fp_out, "end subroutine %s\n\n",name->txt);
    }
}

ezxml_t find_enum(ezxml_t registry, const char *str)
{
    ezxml_t nodes, node;

    for (nodes = ezxml_child(registry, "enums"); nodes; nodes = nodes->next)
    {
        for (node = ezxml_child(nodes, "enum"); node; node = node->next)
        {
            const char *name;

            name = ezxml_attr(node, "name");

            if (!strcmp(name, str))
            {
                return node;
            }
        }
    }

    return NULL;
}

ezxml_t find_command(ezxml_t registry, const char *str)
{
    ezxml_t nodes, node;

    for (nodes = ezxml_child(registry, "commands"); nodes; nodes = nodes->next)
    {
        for (node = ezxml_child(nodes, "command"); node; node = node->next)
        {
            ezxml_t proto, name;

            proto = ezxml_child(node, "proto");
            assert(proto);

            name = ezxml_child(proto, string("name"));
            assert(name);

            if (!strcmp(name->txt, str))
            {
                return node;
            }
        }
    }

    return NULL;
}

ezxml_t find_feature(ezxml_t registry, const char *feature)
{
    ezxml_t node;

    for (node = ezxml_child(registry, "feature"); node; node = node->next)
    {
        const char *api, *name;

        api = ezxml_attr(node, "api");
        name = ezxml_attr(node, "name");

        assert(api);
        assert(name);

        // search by api and version
        if (!strcmp(api, "gl") && !strcmp(name, feature))
        {
            return node;
        }
    }

    return NULL;
}

void print_features(ezxml_t registry, ezxml_t feature, int mode, FILE *fout)
{
    ezxml_t require, node;

    for (require = ezxml_child(feature, "require"); require; require = require->next)
    {
        if (mode == kEnum)
        {
            ezxml_t enum_node;

            for (node = ezxml_child(require, "enum"); node; node = node->next)
            {
                const char *name;

                name = ezxml_attr(node, "name");
                assert(name);

                enum_node = find_enum(registry, name);
                assert(enum_node);

                print_enum(enum_node, fout);
            }
        }
        else if (mode == kCommand)
        {
            ezxml_t command_node;

            for (node = ezxml_child(require, "command"); node; node = node->next)
            {
                const char *name;

                name = ezxml_attr(node, "name");
                assert(name);

                command_node = find_command(registry, name);
                assert(command_node);

                print_command(command_node, fout);
            }
        }
        else
        {
            assert(0);
        }
    }
}

void print_required_features(ezxml_t registry, const char *version, int mode, FILE *fp_out)
{
    ezxml_t feature;

    feature = find_feature(registry, version);
    assert(feature);

    print_features(registry, feature, mode, fp_out);
}

void print_required(ezxml_t registry, int mode, FILE *fp_out)
{
    GLVersion *gl_versions = get_gl_versions();
    char version_str[64];

    for (int i=0; gl_versions[i].major !=0; i++)
    {
        sprintf(version_str, "GL_VERSION_%d_%d", gl_versions[i].major, gl_versions[i].minor);
        print_required_features(registry, string(version_str), kEnum, fp_out);
    }

    for (int i=0; gl_versions[i].major !=0; i++)
    {
        sprintf(version_str, "GL_VERSION_%d_%d", gl_versions[i].major, gl_versions[i].minor);
        print_required_features(registry, string(version_str), kCommand, fp_out);
    }
}

void print_required_feature_commands(ezxml_t registry, ezxml_t feature, int mode, FILE *fp_out)
{
    ezxml_t require, node;

    for (require = ezxml_child(feature, "require"); require; require = require->next)
    {
        ezxml_t command_node;

        for (node = ezxml_child(require, "command"); node; node = node->next)
        {
            const char *name;

            name = ezxml_attr(node, "name");
            assert(name);

            command_node = find_command(registry, name);
            assert(command_node);

            print_command(command_node, fp_out);
        }
    }
}

void print_required_commands(ezxml_t registry, int mode, FILE *fout)
{
    GLVersion *gl_versions = get_gl_versions();
    char version_str[64];

    for (int i=0; gl_versions[i].major !=0; i++)
    {
        ezxml_t feature;

        sprintf(version_str, "GL_VERSION_%d_%d", gl_versions[i].major, gl_versions[i].minor);

        feature = find_feature(registry, version_str);
        assert(feature);

        print_required_feature_commands(registry, feature, mode, fout);
    }
}

void print_about(FILE *fp_out, const char *filename)
{
    fprintf(fp_out, "\n! %s\n", filename);
    fprintf(fp_out, "! Autogenerated from gl.xml\n");
    fprintf(fp_out, "! Mike Larson\n");
    fprintf(fp_out, "! August 2023\n");
    fprintf(fp_out, "\n\n");
}

void print_fortran_module(ezxml_t registry)
{
    FILE *fp_out;
    const char *filename = "/tmp/opengl.f90";

    fp_out = fopen(filename, "w");
    assert(fp_out);

    fprintf(fp_out, "module opengl\n");
    fprintf(fp_out, "  use, intrinsic :: iso_c_binding\n");
    fprintf(fp_out, "  implicit none\n\n");
    
    GLVersion *gl_versions = get_gl_versions();
    char version_str[64];

    for (int i=0; gl_versions[i].major !=0; i++)
    {
        sprintf(version_str, "GL_VERSION_%d_%d", gl_versions[i].major, gl_versions[i].minor);
        print_required_features(registry, string(version_str), kEnum, fp_out);
    }

    fprintf(fp_out, "  interface\n\n");

    // print the required commands
    print_required_commands(registry, kCommand, fp_out);

    fprintf(fp_out, "  end interface\n\n");

    fprintf(fp_out, "\nend module opengl\n");

    fclose(fp_out);
}

int main(int argc, char **argv)
{
    ezxml_t registry;

    registry = ezxml_parse_file("gl.xml");
    assert(registry);

    // mgl fortran module
    print_fortran_module(registry);

    ezxml_free(registry);
}
