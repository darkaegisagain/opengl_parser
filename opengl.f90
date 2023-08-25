module opengl
  use, intrinsic :: iso_c_binding
  implicit none

  integer(4),parameter :: GL_DEPTH_BUFFER_BIT                                          = 256
  integer(4),parameter :: GL_STENCIL_BUFFER_BIT                                        = 1024
  integer(4),parameter :: GL_COLOR_BUFFER_BIT                                          = 16384
  integer(4),parameter :: GL_FALSE                                                     = 0
  integer(4),parameter :: GL_TRUE                                                      = 1
  integer(4),parameter :: GL_POINTS                                                    = 0
  integer(4),parameter :: GL_LINES                                                     = 1
  integer(4),parameter :: GL_LINE_LOOP                                                 = 2
  integer(4),parameter :: GL_LINE_STRIP                                                = 3
  integer(4),parameter :: GL_TRIANGLES                                                 = 4
  integer(4),parameter :: GL_TRIANGLE_STRIP                                            = 5
  integer(4),parameter :: GL_TRIANGLE_FAN                                              = 6
  integer(4),parameter :: GL_QUADS                                                     = 7
  integer(4),parameter :: GL_NEVER                                                     = 512
  integer(4),parameter :: GL_LESS                                                      = 513
  integer(4),parameter :: GL_EQUAL                                                     = 514
  integer(4),parameter :: GL_LEQUAL                                                    = 515
  integer(4),parameter :: GL_GREATER                                                   = 516
  integer(4),parameter :: GL_NOTEQUAL                                                  = 517
  integer(4),parameter :: GL_GEQUAL                                                    = 518
  integer(4),parameter :: GL_ALWAYS                                                    = 519
  integer(4),parameter :: GL_ZERO                                                      = 0
  integer(4),parameter :: GL_ONE                                                       = 1
  integer(4),parameter :: GL_SRC_COLOR                                                 = 768
  integer(4),parameter :: GL_ONE_MINUS_SRC_COLOR                                       = 769
  integer(4),parameter :: GL_SRC_ALPHA                                                 = 770
  integer(4),parameter :: GL_ONE_MINUS_SRC_ALPHA                                       = 771
  integer(4),parameter :: GL_DST_ALPHA                                                 = 772
  integer(4),parameter :: GL_ONE_MINUS_DST_ALPHA                                       = 773
  integer(4),parameter :: GL_DST_COLOR                                                 = 774
  integer(4),parameter :: GL_ONE_MINUS_DST_COLOR                                       = 775
  integer(4),parameter :: GL_SRC_ALPHA_SATURATE                                        = 776
  integer(4),parameter :: GL_NONE                                                      = 0
  integer(4),parameter :: GL_FRONT_LEFT                                                = 1024
  integer(4),parameter :: GL_FRONT_RIGHT                                               = 1025
  integer(4),parameter :: GL_BACK_LEFT                                                 = 1026
  integer(4),parameter :: GL_BACK_RIGHT                                                = 1027
  integer(4),parameter :: GL_FRONT                                                     = 1028
  integer(4),parameter :: GL_BACK                                                      = 1029
  integer(4),parameter :: GL_LEFT                                                      = 1030
  integer(4),parameter :: GL_RIGHT                                                     = 1031
  integer(4),parameter :: GL_FRONT_AND_BACK                                            = 1032
  integer(4),parameter :: GL_NO_ERROR                                                  = 0
  integer(4),parameter :: GL_INVALID_ENUM                                              = 1280
  integer(4),parameter :: GL_INVALID_VALUE                                             = 1281
  integer(4),parameter :: GL_INVALID_OPERATION                                         = 1282
  integer(4),parameter :: GL_OUT_OF_MEMORY                                             = 1285
  integer(4),parameter :: GL_CW                                                        = 2304
  integer(4),parameter :: GL_CCW                                                       = 2305
  integer(4),parameter :: GL_POINT_SIZE                                                = 2833
  integer(4),parameter :: GL_POINT_SIZE_RANGE                                          = 2834
  integer(4),parameter :: GL_POINT_SIZE_GRANULARITY                                    = 2835
  integer(4),parameter :: GL_LINE_SMOOTH                                               = 2848
  integer(4),parameter :: GL_LINE_WIDTH                                                = 2849
  integer(4),parameter :: GL_LINE_WIDTH_RANGE                                          = 2850
  integer(4),parameter :: GL_LINE_WIDTH_GRANULARITY                                    = 2851
  integer(4),parameter :: GL_POLYGON_MODE                                              = 2880
  integer(4),parameter :: GL_POLYGON_SMOOTH                                            = 2881
  integer(4),parameter :: GL_CULL_FACE                                                 = 2884
  integer(4),parameter :: GL_CULL_FACE_MODE                                            = 2885
  integer(4),parameter :: GL_FRONT_FACE                                                = 2886
  integer(4),parameter :: GL_DEPTH_RANGE                                               = 2928
  integer(4),parameter :: GL_DEPTH_TEST                                                = 2929
  integer(4),parameter :: GL_DEPTH_WRITEMASK                                           = 2930
  integer(4),parameter :: GL_DEPTH_CLEAR_VALUE                                         = 2931
  integer(4),parameter :: GL_DEPTH_FUNC                                                = 2932
  integer(4),parameter :: GL_STENCIL_TEST                                              = 2960
  integer(4),parameter :: GL_STENCIL_CLEAR_VALUE                                       = 2961
  integer(4),parameter :: GL_STENCIL_FUNC                                              = 2962
  integer(4),parameter :: GL_STENCIL_VALUE_MASK                                        = 2963
  integer(4),parameter :: GL_STENCIL_FAIL                                              = 2964
  integer(4),parameter :: GL_STENCIL_PASS_DEPTH_FAIL                                   = 2965
  integer(4),parameter :: GL_STENCIL_PASS_DEPTH_PASS                                   = 2966
  integer(4),parameter :: GL_STENCIL_REF                                               = 2967
  integer(4),parameter :: GL_STENCIL_WRITEMASK                                         = 2968
  integer(4),parameter :: GL_VIEWPORT                                                  = 2978
  integer(4),parameter :: GL_DITHER                                                    = 3024
  integer(4),parameter :: GL_BLEND_DST                                                 = 3040
  integer(4),parameter :: GL_BLEND_SRC                                                 = 3041
  integer(4),parameter :: GL_BLEND                                                     = 3042
  integer(4),parameter :: GL_LOGIC_OP_MODE                                             = 3056
  integer(4),parameter :: GL_DRAW_BUFFER                                               = 3073
  integer(4),parameter :: GL_READ_BUFFER                                               = 3074
  integer(4),parameter :: GL_SCISSOR_BOX                                               = 3088
  integer(4),parameter :: GL_SCISSOR_TEST                                              = 3089
  integer(4),parameter :: GL_COLOR_CLEAR_VALUE                                         = 3106
  integer(4),parameter :: GL_COLOR_WRITEMASK                                           = 3107
  integer(4),parameter :: GL_DOUBLEBUFFER                                              = 3122
  integer(4),parameter :: GL_STEREO                                                    = 3123
  integer(4),parameter :: GL_LINE_SMOOTH_HINT                                          = 3154
  integer(4),parameter :: GL_POLYGON_SMOOTH_HINT                                       = 3155
  integer(4),parameter :: GL_UNPACK_SWAP_BYTES                                         = 3312
  integer(4),parameter :: GL_UNPACK_LSB_FIRST                                          = 3313
  integer(4),parameter :: GL_UNPACK_ROW_LENGTH                                         = 3314
  integer(4),parameter :: GL_UNPACK_SKIP_ROWS                                          = 3315
  integer(4),parameter :: GL_UNPACK_SKIP_PIXELS                                        = 3316
  integer(4),parameter :: GL_UNPACK_ALIGNMENT                                          = 3317
  integer(4),parameter :: GL_PACK_SWAP_BYTES                                           = 3328
  integer(4),parameter :: GL_PACK_LSB_FIRST                                            = 3329
  integer(4),parameter :: GL_PACK_ROW_LENGTH                                           = 3330
  integer(4),parameter :: GL_PACK_SKIP_ROWS                                            = 3331
  integer(4),parameter :: GL_PACK_SKIP_PIXELS                                          = 3332
  integer(4),parameter :: GL_PACK_ALIGNMENT                                            = 3333
  integer(4),parameter :: GL_MAX_TEXTURE_SIZE                                          = 3379
  integer(4),parameter :: GL_MAX_VIEWPORT_DIMS                                         = 3386
  integer(4),parameter :: GL_SUBPIXEL_BITS                                             = 3408
  integer(4),parameter :: GL_TEXTURE_1D                                                = 3552
  integer(4),parameter :: GL_TEXTURE_2D                                                = 3553
  integer(4),parameter :: GL_TEXTURE_WIDTH                                             = 4096
  integer(4),parameter :: GL_TEXTURE_HEIGHT                                            = 4097
  integer(4),parameter :: GL_TEXTURE_BORDER_COLOR                                      = 4100
  integer(4),parameter :: GL_DONT_CARE                                                 = 4352
  integer(4),parameter :: GL_FASTEST                                                   = 4353
  integer(4),parameter :: GL_NICEST                                                    = 4354
  integer(4),parameter :: GL_BYTE                                                      = 5120
  integer(4),parameter :: GL_UNSIGNED_BYTE                                             = 5121
  integer(4),parameter :: GL_SHORT                                                     = 5122
  integer(4),parameter :: GL_UNSIGNED_SHORT                                            = 5123
  integer(4),parameter :: GL_INT                                                       = 5124
  integer(4),parameter :: GL_UNSIGNED_INT                                              = 5125
  integer(4),parameter :: GL_FLOAT                                                     = 5126
  integer(4),parameter :: GL_STACK_OVERFLOW                                            = 1283
  integer(4),parameter :: GL_STACK_UNDERFLOW                                           = 1284
  integer(4),parameter :: GL_CLEAR                                                     = 5376
  integer(4),parameter :: GL_AND                                                       = 5377
  integer(4),parameter :: GL_AND_REVERSE                                               = 5378
  integer(4),parameter :: GL_COPY                                                      = 5379
  integer(4),parameter :: GL_AND_INVERTED                                              = 5380
  integer(4),parameter :: GL_NOOP                                                      = 5381
  integer(4),parameter :: GL_XOR                                                       = 5382
  integer(4),parameter :: GL_OR                                                        = 5383
  integer(4),parameter :: GL_NOR                                                       = 5384
  integer(4),parameter :: GL_EQUIV                                                     = 5385
  integer(4),parameter :: GL_INVERT                                                    = 5386
  integer(4),parameter :: GL_OR_REVERSE                                                = 5387
  integer(4),parameter :: GL_COPY_INVERTED                                             = 5388
  integer(4),parameter :: GL_OR_INVERTED                                               = 5389
  integer(4),parameter :: GL_NAND                                                      = 5390
  integer(4),parameter :: GL_SET                                                       = 5391
  integer(4),parameter :: GL_TEXTURE                                                   = 5890
  integer(4),parameter :: GL_COLOR                                                     = 6144
  integer(4),parameter :: GL_DEPTH                                                     = 6145
  integer(4),parameter :: GL_STENCIL                                                   = 6146
  integer(4),parameter :: GL_STENCIL_INDEX                                             = 6401
  integer(4),parameter :: GL_DEPTH_COMPONENT                                           = 6402
  integer(4),parameter :: GL_RED                                                       = 6403
  integer(4),parameter :: GL_GREEN                                                     = 6404
  integer(4),parameter :: GL_BLUE                                                      = 6405
  integer(4),parameter :: GL_ALPHA                                                     = 6406
  integer(4),parameter :: GL_RGB                                                       = 6407
  integer(4),parameter :: GL_RGBA                                                      = 6408
  integer(4),parameter :: GL_POINT                                                     = 6912
  integer(4),parameter :: GL_LINE                                                      = 6913
  integer(4),parameter :: GL_FILL                                                      = 6914
  integer(4),parameter :: GL_KEEP                                                      = 7680
  integer(4),parameter :: GL_REPLACE                                                   = 7681
  integer(4),parameter :: GL_INCR                                                      = 7682
  integer(4),parameter :: GL_DECR                                                      = 7683
  integer(4),parameter :: GL_VENDOR                                                    = 7936
  integer(4),parameter :: GL_RENDERER                                                  = 7937
  integer(4),parameter :: GL_VERSION                                                   = 7938
  integer(4),parameter :: GL_EXTENSIONS                                                = 7939
  integer(4),parameter :: GL_NEAREST                                                   = 9728
  integer(4),parameter :: GL_LINEAR                                                    = 9729
  integer(4),parameter :: GL_NEAREST_MIPMAP_NEAREST                                    = 9984
  integer(4),parameter :: GL_LINEAR_MIPMAP_NEAREST                                     = 9985
  integer(4),parameter :: GL_NEAREST_MIPMAP_LINEAR                                     = 9986
  integer(4),parameter :: GL_LINEAR_MIPMAP_LINEAR                                      = 9987
  integer(4),parameter :: GL_TEXTURE_MAG_FILTER                                        = 10240
  integer(4),parameter :: GL_TEXTURE_MIN_FILTER                                        = 10241
  integer(4),parameter :: GL_TEXTURE_WRAP_S                                            = 10242
  integer(4),parameter :: GL_TEXTURE_WRAP_T                                            = 10243
  integer(4),parameter :: GL_REPEAT                                                    = 10497
  integer(4),parameter :: GL_CURRENT_BIT                                               = 1
  integer(4),parameter :: GL_POINT_BIT                                                 = 2
  integer(4),parameter :: GL_LINE_BIT                                                  = 4
  integer(4),parameter :: GL_POLYGON_BIT                                               = 8
  integer(4),parameter :: GL_POLYGON_STIPPLE_BIT                                       = 16
  integer(4),parameter :: GL_PIXEL_MODE_BIT                                            = 32
  integer(4),parameter :: GL_LIGHTING_BIT                                              = 64
  integer(4),parameter :: GL_FOG_BIT                                                   = 128
  integer(4),parameter :: GL_ACCUM_BUFFER_BIT                                          = 512
  integer(4),parameter :: GL_VIEWPORT_BIT                                              = 2048
  integer(4),parameter :: GL_TRANSFORM_BIT                                             = 4096
  integer(4),parameter :: GL_ENABLE_BIT                                                = 8192
  integer(4),parameter :: GL_HINT_BIT                                                  = 32768
  integer(4),parameter :: GL_EVAL_BIT                                                  = 65536
  integer(4),parameter :: GL_LIST_BIT                                                  = 131072
  integer(4),parameter :: GL_TEXTURE_BIT                                               = 262144
  integer(4),parameter :: GL_SCISSOR_BIT                                               = 524288
  integer(4),parameter :: GL_ALL_ATTRIB_BITS                                           = -1
  integer(4),parameter :: GL_QUAD_STRIP                                                = 8
  integer(4),parameter :: GL_POLYGON                                                   = 9
  integer(4),parameter :: GL_ACCUM                                                     = 256
  integer(4),parameter :: GL_LOAD                                                      = 257
  integer(4),parameter :: GL_RETURN                                                    = 258
  integer(4),parameter :: GL_MULT                                                      = 259
  integer(4),parameter :: GL_ADD                                                       = 260
  integer(4),parameter :: GL_AUX0                                                      = 1033
  integer(4),parameter :: GL_AUX1                                                      = 1034
  integer(4),parameter :: GL_AUX2                                                      = 1035
  integer(4),parameter :: GL_AUX3                                                      = 1036
  integer(4),parameter :: GL_2D                                                        = 1536
  integer(4),parameter :: GL_3D                                                        = 1537
  integer(4),parameter :: GL_3D_COLOR                                                  = 1538
  integer(4),parameter :: GL_3D_COLOR_TEXTURE                                          = 1539
  integer(4),parameter :: GL_4D_COLOR_TEXTURE                                          = 1540
  integer(4),parameter :: GL_PASS_THROUGH_TOKEN                                        = 1792
  integer(4),parameter :: GL_POINT_TOKEN                                               = 1793
  integer(4),parameter :: GL_LINE_TOKEN                                                = 1794
  integer(4),parameter :: GL_POLYGON_TOKEN                                             = 1795
  integer(4),parameter :: GL_BITMAP_TOKEN                                              = 1796
  integer(4),parameter :: GL_DRAW_PIXEL_TOKEN                                          = 1797
  integer(4),parameter :: GL_COPY_PIXEL_TOKEN                                          = 1798
  integer(4),parameter :: GL_LINE_RESET_TOKEN                                          = 1799
  integer(4),parameter :: GL_EXP                                                       = 2048
  integer(4),parameter :: GL_EXP2                                                      = 2049
  integer(4),parameter :: GL_COEFF                                                     = 2560
  integer(4),parameter :: GL_ORDER                                                     = 2561
  integer(4),parameter :: GL_DOMAIN                                                    = 2562
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_I                                          = 3184
  integer(4),parameter :: GL_PIXEL_MAP_S_TO_S                                          = 3185
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_R                                          = 3186
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_G                                          = 3187
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_B                                          = 3188
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_A                                          = 3189
  integer(4),parameter :: GL_PIXEL_MAP_R_TO_R                                          = 3190
  integer(4),parameter :: GL_PIXEL_MAP_G_TO_G                                          = 3191
  integer(4),parameter :: GL_PIXEL_MAP_B_TO_B                                          = 3192
  integer(4),parameter :: GL_PIXEL_MAP_A_TO_A                                          = 3193
  integer(4),parameter :: GL_CURRENT_COLOR                                             = 2816
  integer(4),parameter :: GL_CURRENT_INDEX                                             = 2817
  integer(4),parameter :: GL_CURRENT_NORMAL                                            = 2818
  integer(4),parameter :: GL_CURRENT_TEXTURE_COORDS                                    = 2819
  integer(4),parameter :: GL_CURRENT_RASTER_COLOR                                      = 2820
  integer(4),parameter :: GL_CURRENT_RASTER_INDEX                                      = 2821
  integer(4),parameter :: GL_CURRENT_RASTER_TEXTURE_COORDS                             = 2822
  integer(4),parameter :: GL_CURRENT_RASTER_POSITION                                   = 2823
  integer(4),parameter :: GL_CURRENT_RASTER_POSITION_VALID                             = 2824
  integer(4),parameter :: GL_CURRENT_RASTER_DISTANCE                                   = 2825
  integer(4),parameter :: GL_POINT_SMOOTH                                              = 2832
  integer(4),parameter :: GL_LINE_STIPPLE                                              = 2852
  integer(4),parameter :: GL_LINE_STIPPLE_PATTERN                                      = 2853
  integer(4),parameter :: GL_LINE_STIPPLE_REPEAT                                       = 2854
  integer(4),parameter :: GL_LIST_MODE                                                 = 2864
  integer(4),parameter :: GL_MAX_LIST_NESTING                                          = 2865
  integer(4),parameter :: GL_LIST_BASE                                                 = 2866
  integer(4),parameter :: GL_LIST_INDEX                                                = 2867
  integer(4),parameter :: GL_POLYGON_STIPPLE                                           = 2882
  integer(4),parameter :: GL_EDGE_FLAG                                                 = 2883
  integer(4),parameter :: GL_LIGHTING                                                  = 2896
  integer(4),parameter :: GL_LIGHT_MODEL_LOCAL_VIEWER                                  = 2897
  integer(4),parameter :: GL_LIGHT_MODEL_TWO_SIDE                                      = 2898
  integer(4),parameter :: GL_LIGHT_MODEL_AMBIENT                                       = 2899
  integer(4),parameter :: GL_SHADE_MODEL                                               = 2900
  integer(4),parameter :: GL_COLOR_MATERIAL_FACE                                       = 2901
  integer(4),parameter :: GL_COLOR_MATERIAL_PARAMETER                                  = 2902
  integer(4),parameter :: GL_COLOR_MATERIAL                                            = 2903
  integer(4),parameter :: GL_FOG                                                       = 2912
  integer(4),parameter :: GL_FOG_INDEX                                                 = 2913
  integer(4),parameter :: GL_FOG_DENSITY                                               = 2914
  integer(4),parameter :: GL_FOG_START                                                 = 2915
  integer(4),parameter :: GL_FOG_END                                                   = 2916
  integer(4),parameter :: GL_FOG_MODE                                                  = 2917
  integer(4),parameter :: GL_FOG_COLOR                                                 = 2918
  integer(4),parameter :: GL_ACCUM_CLEAR_VALUE                                         = 2944
  integer(4),parameter :: GL_MATRIX_MODE                                               = 2976
  integer(4),parameter :: GL_NORMALIZE                                                 = 2977
  integer(4),parameter :: GL_MODELVIEW_STACK_DEPTH                                     = 2979
  integer(4),parameter :: GL_PROJECTION_STACK_DEPTH                                    = 2980
  integer(4),parameter :: GL_TEXTURE_STACK_DEPTH                                       = 2981
  integer(4),parameter :: GL_MODELVIEW_MATRIX                                          = 2982
  integer(4),parameter :: GL_PROJECTION_MATRIX                                         = 2983
  integer(4),parameter :: GL_TEXTURE_MATRIX                                            = 2984
  integer(4),parameter :: GL_ATTRIB_STACK_DEPTH                                        = 2992
  integer(4),parameter :: GL_ALPHA_TEST                                                = 3008
  integer(4),parameter :: GL_ALPHA_TEST_FUNC                                           = 3009
  integer(4),parameter :: GL_ALPHA_TEST_REF                                            = 3010
  integer(4),parameter :: GL_LOGIC_OP                                                  = 3057
  integer(4),parameter :: GL_AUX_BUFFERS                                               = 3072
  integer(4),parameter :: GL_INDEX_CLEAR_VALUE                                         = 3104
  integer(4),parameter :: GL_INDEX_WRITEMASK                                           = 3105
  integer(4),parameter :: GL_INDEX_MODE                                                = 3120
  integer(4),parameter :: GL_RGBA_MODE                                                 = 3121
  integer(4),parameter :: GL_RENDER_MODE                                               = 3136
  integer(4),parameter :: GL_PERSPECTIVE_CORRECTION_HINT                               = 3152
  integer(4),parameter :: GL_POINT_SMOOTH_HINT                                         = 3153
  integer(4),parameter :: GL_FOG_HINT                                                  = 3156
  integer(4),parameter :: GL_TEXTURE_GEN_S                                             = 3168
  integer(4),parameter :: GL_TEXTURE_GEN_T                                             = 3169
  integer(4),parameter :: GL_TEXTURE_GEN_R                                             = 3170
  integer(4),parameter :: GL_TEXTURE_GEN_Q                                             = 3171
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_I_SIZE                                     = 3248
  integer(4),parameter :: GL_PIXEL_MAP_S_TO_S_SIZE                                     = 3249
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_R_SIZE                                     = 3250
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_G_SIZE                                     = 3251
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_B_SIZE                                     = 3252
  integer(4),parameter :: GL_PIXEL_MAP_I_TO_A_SIZE                                     = 3253
  integer(4),parameter :: GL_PIXEL_MAP_R_TO_R_SIZE                                     = 3254
  integer(4),parameter :: GL_PIXEL_MAP_G_TO_G_SIZE                                     = 3255
  integer(4),parameter :: GL_PIXEL_MAP_B_TO_B_SIZE                                     = 3256
  integer(4),parameter :: GL_PIXEL_MAP_A_TO_A_SIZE                                     = 3257
  integer(4),parameter :: GL_MAP_COLOR                                                 = 3344
  integer(4),parameter :: GL_MAP_STENCIL                                               = 3345
  integer(4),parameter :: GL_INDEX_SHIFT                                               = 3346
  integer(4),parameter :: GL_INDEX_OFFSET                                              = 3347
  integer(4),parameter :: GL_RED_SCALE                                                 = 3348
  integer(4),parameter :: GL_RED_BIAS                                                  = 3349
  integer(4),parameter :: GL_ZOOM_X                                                    = 3350
  integer(4),parameter :: GL_ZOOM_Y                                                    = 3351
  integer(4),parameter :: GL_GREEN_SCALE                                               = 3352
  integer(4),parameter :: GL_GREEN_BIAS                                                = 3353
  integer(4),parameter :: GL_BLUE_SCALE                                                = 3354
  integer(4),parameter :: GL_BLUE_BIAS                                                 = 3355
  integer(4),parameter :: GL_ALPHA_SCALE                                               = 3356
  integer(4),parameter :: GL_ALPHA_BIAS                                                = 3357
  integer(4),parameter :: GL_DEPTH_SCALE                                               = 3358
  integer(4),parameter :: GL_DEPTH_BIAS                                                = 3359
  integer(4),parameter :: GL_MAX_EVAL_ORDER                                            = 3376
  integer(4),parameter :: GL_MAX_LIGHTS                                                = 3377
  integer(4),parameter :: GL_MAX_CLIP_PLANES                                           = 3378
  integer(4),parameter :: GL_MAX_PIXEL_MAP_TABLE                                       = 3380
  integer(4),parameter :: GL_MAX_ATTRIB_STACK_DEPTH                                    = 3381
  integer(4),parameter :: GL_MAX_MODELVIEW_STACK_DEPTH                                 = 3382
  integer(4),parameter :: GL_MAX_NAME_STACK_DEPTH                                      = 3383
  integer(4),parameter :: GL_MAX_PROJECTION_STACK_DEPTH                                = 3384
  integer(4),parameter :: GL_MAX_TEXTURE_STACK_DEPTH                                   = 3385
  integer(4),parameter :: GL_INDEX_BITS                                                = 3409
  integer(4),parameter :: GL_RED_BITS                                                  = 3410
  integer(4),parameter :: GL_GREEN_BITS                                                = 3411
  integer(4),parameter :: GL_BLUE_BITS                                                 = 3412
  integer(4),parameter :: GL_ALPHA_BITS                                                = 3413
  integer(4),parameter :: GL_DEPTH_BITS                                                = 3414
  integer(4),parameter :: GL_STENCIL_BITS                                              = 3415
  integer(4),parameter :: GL_ACCUM_RED_BITS                                            = 3416
  integer(4),parameter :: GL_ACCUM_GREEN_BITS                                          = 3417
  integer(4),parameter :: GL_ACCUM_BLUE_BITS                                           = 3418
  integer(4),parameter :: GL_ACCUM_ALPHA_BITS                                          = 3419
  integer(4),parameter :: GL_NAME_STACK_DEPTH                                          = 3440
  integer(4),parameter :: GL_AUTO_NORMAL                                               = 3456
  integer(4),parameter :: GL_MAP1_COLOR_4                                              = 3472
  integer(4),parameter :: GL_MAP1_INDEX                                                = 3473
  integer(4),parameter :: GL_MAP1_NORMAL                                               = 3474
  integer(4),parameter :: GL_MAP1_TEXTURE_COORD_1                                      = 3475
  integer(4),parameter :: GL_MAP1_TEXTURE_COORD_2                                      = 3476
  integer(4),parameter :: GL_MAP1_TEXTURE_COORD_3                                      = 3477
  integer(4),parameter :: GL_MAP1_TEXTURE_COORD_4                                      = 3478
  integer(4),parameter :: GL_MAP1_VERTEX_3                                             = 3479
  integer(4),parameter :: GL_MAP1_VERTEX_4                                             = 3480
  integer(4),parameter :: GL_MAP2_COLOR_4                                              = 3504
  integer(4),parameter :: GL_MAP2_INDEX                                                = 3505
  integer(4),parameter :: GL_MAP2_NORMAL                                               = 3506
  integer(4),parameter :: GL_MAP2_TEXTURE_COORD_1                                      = 3507
  integer(4),parameter :: GL_MAP2_TEXTURE_COORD_2                                      = 3508
  integer(4),parameter :: GL_MAP2_TEXTURE_COORD_3                                      = 3509
  integer(4),parameter :: GL_MAP2_TEXTURE_COORD_4                                      = 3510
  integer(4),parameter :: GL_MAP2_VERTEX_3                                             = 3511
  integer(4),parameter :: GL_MAP2_VERTEX_4                                             = 3512
  integer(4),parameter :: GL_MAP1_GRID_DOMAIN                                          = 3536
  integer(4),parameter :: GL_MAP1_GRID_SEGMENTS                                        = 3537
  integer(4),parameter :: GL_MAP2_GRID_DOMAIN                                          = 3538
  integer(4),parameter :: GL_MAP2_GRID_SEGMENTS                                        = 3539
  integer(4),parameter :: GL_TEXTURE_COMPONENTS                                        = 4099
  integer(4),parameter :: GL_TEXTURE_BORDER                                            = 4101
  integer(4),parameter :: GL_AMBIENT                                                   = 4608
  integer(4),parameter :: GL_DIFFUSE                                                   = 4609
  integer(4),parameter :: GL_SPECULAR                                                  = 4610
  integer(4),parameter :: GL_POSITION                                                  = 4611
  integer(4),parameter :: GL_SPOT_DIRECTION                                            = 4612
  integer(4),parameter :: GL_SPOT_EXPONENT                                             = 4613
  integer(4),parameter :: GL_SPOT_CUTOFF                                               = 4614
  integer(4),parameter :: GL_CONSTANT_ATTENUATION                                      = 4615
  integer(4),parameter :: GL_LINEAR_ATTENUATION                                        = 4616
  integer(4),parameter :: GL_QUADRATIC_ATTENUATION                                     = 4617
  integer(4),parameter :: GL_COMPILE                                                   = 4864
  integer(4),parameter :: GL_COMPILE_AND_EXECUTE                                       = 4865
  integer(4),parameter :: GL_2_BYTES                                                   = 5127
  integer(4),parameter :: GL_3_BYTES                                                   = 5128
  integer(4),parameter :: GL_4_BYTES                                                   = 5129
  integer(4),parameter :: GL_EMISSION                                                  = 5632
  integer(4),parameter :: GL_SHININESS                                                 = 5633
  integer(4),parameter :: GL_AMBIENT_AND_DIFFUSE                                       = 5634
  integer(4),parameter :: GL_COLOR_INDEXES                                             = 5635
  integer(4),parameter :: GL_MODELVIEW                                                 = 5888
  integer(4),parameter :: GL_PROJECTION                                                = 5889
  integer(4),parameter :: GL_COLOR_INDEX                                               = 6400
  integer(4),parameter :: GL_LUMINANCE                                                 = 6409
  integer(4),parameter :: GL_LUMINANCE_ALPHA                                           = 6410
  integer(4),parameter :: GL_BITMAP                                                    = 6656
  integer(4),parameter :: GL_RENDER                                                    = 7168
  integer(4),parameter :: GL_FEEDBACK                                                  = 7169
  integer(4),parameter :: GL_SELECT                                                    = 7170
  integer(4),parameter :: GL_FLAT                                                      = 7424
  integer(4),parameter :: GL_SMOOTH                                                    = 7425
  integer(4),parameter :: GL_S                                                         = 8192
  integer(4),parameter :: GL_T                                                         = 8193
  integer(4),parameter :: GL_R                                                         = 8194
  integer(4),parameter :: GL_Q                                                         = 8195
  integer(4),parameter :: GL_MODULATE                                                  = 8448
  integer(4),parameter :: GL_DECAL                                                     = 8449
  integer(4),parameter :: GL_TEXTURE_ENV_MODE                                          = 8704
  integer(4),parameter :: GL_TEXTURE_ENV_COLOR                                         = 8705
  integer(4),parameter :: GL_TEXTURE_ENV                                               = 8960
  integer(4),parameter :: GL_EYE_LINEAR                                                = 9216
  integer(4),parameter :: GL_OBJECT_LINEAR                                             = 9217
  integer(4),parameter :: GL_SPHERE_MAP                                                = 9218
  integer(4),parameter :: GL_TEXTURE_GEN_MODE                                          = 9472
  integer(4),parameter :: GL_OBJECT_PLANE                                              = 9473
  integer(4),parameter :: GL_EYE_PLANE                                                 = 9474
  integer(4),parameter :: GL_CLAMP                                                     = 10496
  integer(4),parameter :: GL_CLIP_PLANE0                                               = 12288
  integer(4),parameter :: GL_CLIP_PLANE1                                               = 12289
  integer(4),parameter :: GL_CLIP_PLANE2                                               = 12290
  integer(4),parameter :: GL_CLIP_PLANE3                                               = 12291
  integer(4),parameter :: GL_CLIP_PLANE4                                               = 12292
  integer(4),parameter :: GL_CLIP_PLANE5                                               = 12293
  integer(4),parameter :: GL_LIGHT0                                                    = 16384
  integer(4),parameter :: GL_LIGHT1                                                    = 16385
  integer(4),parameter :: GL_LIGHT2                                                    = 16386
  integer(4),parameter :: GL_LIGHT3                                                    = 16387
  integer(4),parameter :: GL_LIGHT4                                                    = 16388
  integer(4),parameter :: GL_LIGHT5                                                    = 16389
  integer(4),parameter :: GL_LIGHT6                                                    = 16390
  integer(4),parameter :: GL_LIGHT7                                                    = 16391
  integer(4),parameter :: GL_COLOR_LOGIC_OP                                            = 3058
  integer(4),parameter :: GL_POLYGON_OFFSET_UNITS                                      = 10752
  integer(4),parameter :: GL_POLYGON_OFFSET_POINT                                      = 10753
  integer(4),parameter :: GL_POLYGON_OFFSET_LINE                                       = 10754
  integer(4),parameter :: GL_POLYGON_OFFSET_FILL                                       = 32823
  integer(4),parameter :: GL_POLYGON_OFFSET_FACTOR                                     = 32824
  integer(4),parameter :: GL_TEXTURE_BINDING_1D                                        = 32872
  integer(4),parameter :: GL_TEXTURE_BINDING_2D                                        = 32873
  integer(4),parameter :: GL_TEXTURE_INTERNAL_FORMAT                                   = 4099
  integer(4),parameter :: GL_TEXTURE_RED_SIZE                                          = 32860
  integer(4),parameter :: GL_TEXTURE_GREEN_SIZE                                        = 32861
  integer(4),parameter :: GL_TEXTURE_BLUE_SIZE                                         = 32862
  integer(4),parameter :: GL_TEXTURE_ALPHA_SIZE                                        = 32863
  integer(4),parameter :: GL_DOUBLE                                                    = 5130
  integer(4),parameter :: GL_PROXY_TEXTURE_1D                                          = 32867
  integer(4),parameter :: GL_PROXY_TEXTURE_2D                                          = 32868
  integer(4),parameter :: GL_R3_G3_B2                                                  = 10768
  integer(4),parameter :: GL_RGB4                                                      = 32847
  integer(4),parameter :: GL_RGB5                                                      = 32848
  integer(4),parameter :: GL_RGB8                                                      = 32849
  integer(4),parameter :: GL_RGB10                                                     = 32850
  integer(4),parameter :: GL_RGB12                                                     = 32851
  integer(4),parameter :: GL_RGB16                                                     = 32852
  integer(4),parameter :: GL_RGBA2                                                     = 32853
  integer(4),parameter :: GL_RGBA4                                                     = 32854
  integer(4),parameter :: GL_RGB5_A1                                                   = 32855
  integer(4),parameter :: GL_RGBA8                                                     = 32856
  integer(4),parameter :: GL_RGB10_A2                                                  = 32857
  integer(4),parameter :: GL_RGBA12                                                    = 32858
  integer(4),parameter :: GL_RGBA16                                                    = 32859
  integer(4),parameter :: GL_CLIENT_PIXEL_STORE_BIT                                    = 1
  integer(4),parameter :: GL_CLIENT_VERTEX_ARRAY_BIT                                   = 2
  integer(4),parameter :: GL_CLIENT_ALL_ATTRIB_BITS                                    = -1
  integer(4),parameter :: GL_VERTEX_ARRAY_POINTER                                      = 32910
  integer(4),parameter :: GL_NORMAL_ARRAY_POINTER                                      = 32911
  integer(4),parameter :: GL_COLOR_ARRAY_POINTER                                       = 32912
  integer(4),parameter :: GL_INDEX_ARRAY_POINTER                                       = 32913
  integer(4),parameter :: GL_TEXTURE_COORD_ARRAY_POINTER                               = 32914
  integer(4),parameter :: GL_EDGE_FLAG_ARRAY_POINTER                                   = 32915
  integer(4),parameter :: GL_FEEDBACK_BUFFER_POINTER                                   = 3568
  integer(4),parameter :: GL_SELECTION_BUFFER_POINTER                                  = 3571
  integer(4),parameter :: GL_CLIENT_ATTRIB_STACK_DEPTH                                 = 2993
  integer(4),parameter :: GL_INDEX_LOGIC_OP                                            = 3057
  integer(4),parameter :: GL_MAX_CLIENT_ATTRIB_STACK_DEPTH                             = 3387
  integer(4),parameter :: GL_FEEDBACK_BUFFER_SIZE                                      = 3569
  integer(4),parameter :: GL_FEEDBACK_BUFFER_TYPE                                      = 3570
  integer(4),parameter :: GL_SELECTION_BUFFER_SIZE                                     = 3572
  integer(4),parameter :: GL_VERTEX_ARRAY                                              = 32884
  integer(4),parameter :: GL_NORMAL_ARRAY                                              = 32885
  integer(4),parameter :: GL_COLOR_ARRAY                                               = 32886
  integer(4),parameter :: GL_INDEX_ARRAY                                               = 32887
  integer(4),parameter :: GL_TEXTURE_COORD_ARRAY                                       = 32888
  integer(4),parameter :: GL_EDGE_FLAG_ARRAY                                           = 32889
  integer(4),parameter :: GL_VERTEX_ARRAY_SIZE                                         = 32890
  integer(4),parameter :: GL_VERTEX_ARRAY_TYPE                                         = 32891
  integer(4),parameter :: GL_VERTEX_ARRAY_STRIDE                                       = 32892
  integer(4),parameter :: GL_NORMAL_ARRAY_TYPE                                         = 32894
  integer(4),parameter :: GL_NORMAL_ARRAY_STRIDE                                       = 32895
  integer(4),parameter :: GL_COLOR_ARRAY_SIZE                                          = 32897
  integer(4),parameter :: GL_COLOR_ARRAY_TYPE                                          = 32898
  integer(4),parameter :: GL_COLOR_ARRAY_STRIDE                                        = 32899
  integer(4),parameter :: GL_INDEX_ARRAY_TYPE                                          = 32901
  integer(4),parameter :: GL_INDEX_ARRAY_STRIDE                                        = 32902
  integer(4),parameter :: GL_TEXTURE_COORD_ARRAY_SIZE                                  = 32904
  integer(4),parameter :: GL_TEXTURE_COORD_ARRAY_TYPE                                  = 32905
  integer(4),parameter :: GL_TEXTURE_COORD_ARRAY_STRIDE                                = 32906
  integer(4),parameter :: GL_EDGE_FLAG_ARRAY_STRIDE                                    = 32908
  integer(4),parameter :: GL_TEXTURE_LUMINANCE_SIZE                                    = 32864
  integer(4),parameter :: GL_TEXTURE_INTENSITY_SIZE                                    = 32865
  integer(4),parameter :: GL_TEXTURE_PRIORITY                                          = 32870
  integer(4),parameter :: GL_TEXTURE_RESIDENT                                          = 32871
  integer(4),parameter :: GL_ALPHA4                                                    = 32827
  integer(4),parameter :: GL_ALPHA8                                                    = 32828
  integer(4),parameter :: GL_ALPHA12                                                   = 32829
  integer(4),parameter :: GL_ALPHA16                                                   = 32830
  integer(4),parameter :: GL_LUMINANCE4                                                = 32831
  integer(4),parameter :: GL_LUMINANCE8                                                = 32832
  integer(4),parameter :: GL_LUMINANCE12                                               = 32833
  integer(4),parameter :: GL_LUMINANCE16                                               = 32834
  integer(4),parameter :: GL_LUMINANCE4_ALPHA4                                         = 32835
  integer(4),parameter :: GL_LUMINANCE6_ALPHA2                                         = 32836
  integer(4),parameter :: GL_LUMINANCE8_ALPHA8                                         = 32837
  integer(4),parameter :: GL_LUMINANCE12_ALPHA4                                        = 32838
  integer(4),parameter :: GL_LUMINANCE12_ALPHA12                                       = 32839
  integer(4),parameter :: GL_LUMINANCE16_ALPHA16                                       = 32840
  integer(4),parameter :: GL_INTENSITY                                                 = 32841
  integer(4),parameter :: GL_INTENSITY4                                                = 32842
  integer(4),parameter :: GL_INTENSITY8                                                = 32843
  integer(4),parameter :: GL_INTENSITY12                                               = 32844
  integer(4),parameter :: GL_INTENSITY16                                               = 32845
  integer(4),parameter :: GL_V2F                                                       = 10784
  integer(4),parameter :: GL_V3F                                                       = 10785
  integer(4),parameter :: GL_C4UB_V2F                                                  = 10786
  integer(4),parameter :: GL_C4UB_V3F                                                  = 10787
  integer(4),parameter :: GL_C3F_V3F                                                   = 10788
  integer(4),parameter :: GL_N3F_V3F                                                   = 10789
  integer(4),parameter :: GL_C4F_N3F_V3F                                               = 10790
  integer(4),parameter :: GL_T2F_V3F                                                   = 10791
  integer(4),parameter :: GL_T4F_V4F                                                   = 10792
  integer(4),parameter :: GL_T2F_C4UB_V3F                                              = 10793
  integer(4),parameter :: GL_T2F_C3F_V3F                                               = 10794
  integer(4),parameter :: GL_T2F_N3F_V3F                                               = 10795
  integer(4),parameter :: GL_T2F_C4F_N3F_V3F                                           = 10796
  integer(4),parameter :: GL_T4F_C4F_N3F_V4F                                           = 10797
  integer(4),parameter :: GL_UNSIGNED_BYTE_3_3_2                                       = 32818
  integer(4),parameter :: GL_UNSIGNED_SHORT_4_4_4_4                                    = 32819
  integer(4),parameter :: GL_UNSIGNED_SHORT_5_5_5_1                                    = 32820
  integer(4),parameter :: GL_UNSIGNED_INT_8_8_8_8                                      = 32821
  integer(4),parameter :: GL_UNSIGNED_INT_10_10_10_2                                   = 32822
  integer(4),parameter :: GL_TEXTURE_BINDING_3D                                        = 32874
  integer(4),parameter :: GL_PACK_SKIP_IMAGES                                          = 32875
  integer(4),parameter :: GL_PACK_IMAGE_HEIGHT                                         = 32876
  integer(4),parameter :: GL_UNPACK_SKIP_IMAGES                                        = 32877
  integer(4),parameter :: GL_UNPACK_IMAGE_HEIGHT                                       = 32878
  integer(4),parameter :: GL_TEXTURE_3D                                                = 32879
  integer(4),parameter :: GL_PROXY_TEXTURE_3D                                          = 32880
  integer(4),parameter :: GL_TEXTURE_DEPTH                                             = 32881
  integer(4),parameter :: GL_TEXTURE_WRAP_R                                            = 32882
  integer(4),parameter :: GL_MAX_3D_TEXTURE_SIZE                                       = 32883
  integer(4),parameter :: GL_UNSIGNED_BYTE_2_3_3_REV                                   = 33634
  integer(4),parameter :: GL_UNSIGNED_SHORT_5_6_5                                      = 33635
  integer(4),parameter :: GL_UNSIGNED_SHORT_5_6_5_REV                                  = 33636
  integer(4),parameter :: GL_UNSIGNED_SHORT_4_4_4_4_REV                                = 33637
  integer(4),parameter :: GL_UNSIGNED_SHORT_1_5_5_5_REV                                = 33638
  integer(4),parameter :: GL_UNSIGNED_INT_8_8_8_8_REV                                  = 33639
  integer(4),parameter :: GL_UNSIGNED_INT_2_10_10_10_REV                               = 33640
  integer(4),parameter :: GL_BGR                                                       = 32992
  integer(4),parameter :: GL_BGRA                                                      = 32993
  integer(4),parameter :: GL_MAX_ELEMENTS_VERTICES                                     = 33000
  integer(4),parameter :: GL_MAX_ELEMENTS_INDICES                                      = 33001
  integer(4),parameter :: GL_CLAMP_TO_EDGE                                             = 33071
  integer(4),parameter :: GL_TEXTURE_MIN_LOD                                           = 33082
  integer(4),parameter :: GL_TEXTURE_MAX_LOD                                           = 33083
  integer(4),parameter :: GL_TEXTURE_BASE_LEVEL                                        = 33084
  integer(4),parameter :: GL_TEXTURE_MAX_LEVEL                                         = 33085
  integer(4),parameter :: GL_SMOOTH_POINT_SIZE_RANGE                                   = 2834
  integer(4),parameter :: GL_SMOOTH_POINT_SIZE_GRANULARITY                             = 2835
  integer(4),parameter :: GL_SMOOTH_LINE_WIDTH_RANGE                                   = 2850
  integer(4),parameter :: GL_SMOOTH_LINE_WIDTH_GRANULARITY                             = 2851
  integer(4),parameter :: GL_ALIASED_LINE_WIDTH_RANGE                                  = 33902
  integer(4),parameter :: GL_RESCALE_NORMAL                                            = 32826
  integer(4),parameter :: GL_LIGHT_MODEL_COLOR_CONTROL                                 = 33272
  integer(4),parameter :: GL_SINGLE_COLOR                                              = 33273
  integer(4),parameter :: GL_SEPARATE_SPECULAR_COLOR                                   = 33274
  integer(4),parameter :: GL_ALIASED_POINT_SIZE_RANGE                                  = 33901
  integer(4),parameter :: GL_TEXTURE0                                                  = 33984
  integer(4),parameter :: GL_TEXTURE1                                                  = 33985
  integer(4),parameter :: GL_TEXTURE2                                                  = 33986
  integer(4),parameter :: GL_TEXTURE3                                                  = 33987
  integer(4),parameter :: GL_TEXTURE4                                                  = 33988
  integer(4),parameter :: GL_TEXTURE5                                                  = 33989
  integer(4),parameter :: GL_TEXTURE6                                                  = 33990
  integer(4),parameter :: GL_TEXTURE7                                                  = 33991
  integer(4),parameter :: GL_TEXTURE8                                                  = 33992
  integer(4),parameter :: GL_TEXTURE9                                                  = 33993
  integer(4),parameter :: GL_TEXTURE10                                                 = 33994
  integer(4),parameter :: GL_TEXTURE11                                                 = 33995
  integer(4),parameter :: GL_TEXTURE12                                                 = 33996
  integer(4),parameter :: GL_TEXTURE13                                                 = 33997
  integer(4),parameter :: GL_TEXTURE14                                                 = 33998
  integer(4),parameter :: GL_TEXTURE15                                                 = 33999
  integer(4),parameter :: GL_TEXTURE16                                                 = 34000
  integer(4),parameter :: GL_TEXTURE17                                                 = 34001
  integer(4),parameter :: GL_TEXTURE18                                                 = 34002
  integer(4),parameter :: GL_TEXTURE19                                                 = 34003
  integer(4),parameter :: GL_TEXTURE20                                                 = 34004
  integer(4),parameter :: GL_TEXTURE21                                                 = 34005
  integer(4),parameter :: GL_TEXTURE22                                                 = 34006
  integer(4),parameter :: GL_TEXTURE23                                                 = 34007
  integer(4),parameter :: GL_TEXTURE24                                                 = 34008
  integer(4),parameter :: GL_TEXTURE25                                                 = 34009
  integer(4),parameter :: GL_TEXTURE26                                                 = 34010
  integer(4),parameter :: GL_TEXTURE27                                                 = 34011
  integer(4),parameter :: GL_TEXTURE28                                                 = 34012
  integer(4),parameter :: GL_TEXTURE29                                                 = 34013
  integer(4),parameter :: GL_TEXTURE30                                                 = 34014
  integer(4),parameter :: GL_TEXTURE31                                                 = 34015
  integer(4),parameter :: GL_ACTIVE_TEXTURE                                            = 34016
  integer(4),parameter :: GL_MULTISAMPLE                                               = 32925
  integer(4),parameter :: GL_SAMPLE_ALPHA_TO_COVERAGE                                  = 32926
  integer(4),parameter :: GL_SAMPLE_ALPHA_TO_ONE                                       = 32927
  integer(4),parameter :: GL_SAMPLE_COVERAGE                                           = 32928
  integer(4),parameter :: GL_SAMPLE_BUFFERS                                            = 32936
  integer(4),parameter :: GL_SAMPLES                                                   = 32937
  integer(4),parameter :: GL_SAMPLE_COVERAGE_VALUE                                     = 32938
  integer(4),parameter :: GL_SAMPLE_COVERAGE_INVERT                                    = 32939
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP                                          = 34067
  integer(4),parameter :: GL_TEXTURE_BINDING_CUBE_MAP                                  = 34068
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_POSITIVE_X                               = 34069
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_NEGATIVE_X                               = 34070
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_POSITIVE_Y                               = 34071
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                               = 34072
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_POSITIVE_Z                               = 34073
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                               = 34074
  integer(4),parameter :: GL_PROXY_TEXTURE_CUBE_MAP                                    = 34075
  integer(4),parameter :: GL_MAX_CUBE_MAP_TEXTURE_SIZE                                 = 34076
  integer(4),parameter :: GL_COMPRESSED_RGB                                            = 34029
  integer(4),parameter :: GL_COMPRESSED_RGBA                                           = 34030
  integer(4),parameter :: GL_TEXTURE_COMPRESSION_HINT                                  = 34031
  integer(4),parameter :: GL_TEXTURE_COMPRESSED_IMAGE_SIZE                             = 34464
  integer(4),parameter :: GL_TEXTURE_COMPRESSED                                        = 34465
  integer(4),parameter :: GL_NUM_COMPRESSED_TEXTURE_FORMATS                            = 34466
  integer(4),parameter :: GL_COMPRESSED_TEXTURE_FORMATS                                = 34467
  integer(4),parameter :: GL_CLAMP_TO_BORDER                                           = 33069
  integer(4),parameter :: GL_CLIENT_ACTIVE_TEXTURE                                     = 34017
  integer(4),parameter :: GL_MAX_TEXTURE_UNITS                                         = 34018
  integer(4),parameter :: GL_TRANSPOSE_MODELVIEW_MATRIX                                = 34019
  integer(4),parameter :: GL_TRANSPOSE_PROJECTION_MATRIX                               = 34020
  integer(4),parameter :: GL_TRANSPOSE_TEXTURE_MATRIX                                  = 34021
  integer(4),parameter :: GL_TRANSPOSE_COLOR_MATRIX                                    = 34022
  integer(4),parameter :: GL_MULTISAMPLE_BIT                                           = 536870912
  integer(4),parameter :: GL_NORMAL_MAP                                                = 34065
  integer(4),parameter :: GL_REFLECTION_MAP                                            = 34066
  integer(4),parameter :: GL_COMPRESSED_ALPHA                                          = 34025
  integer(4),parameter :: GL_COMPRESSED_LUMINANCE                                      = 34026
  integer(4),parameter :: GL_COMPRESSED_LUMINANCE_ALPHA                                = 34027
  integer(4),parameter :: GL_COMPRESSED_INTENSITY                                      = 34028
  integer(4),parameter :: GL_COMBINE                                                   = 34160
  integer(4),parameter :: GL_COMBINE_RGB                                               = 34161
  integer(4),parameter :: GL_COMBINE_ALPHA                                             = 34162
  integer(4),parameter :: GL_SOURCE0_RGB                                               = 34176
  integer(4),parameter :: GL_SOURCE1_RGB                                               = 34177
  integer(4),parameter :: GL_SOURCE2_RGB                                               = 34178
  integer(4),parameter :: GL_SOURCE0_ALPHA                                             = 34184
  integer(4),parameter :: GL_SOURCE1_ALPHA                                             = 34185
  integer(4),parameter :: GL_SOURCE2_ALPHA                                             = 34186
  integer(4),parameter :: GL_OPERAND0_RGB                                              = 34192
  integer(4),parameter :: GL_OPERAND1_RGB                                              = 34193
  integer(4),parameter :: GL_OPERAND2_RGB                                              = 34194
  integer(4),parameter :: GL_OPERAND0_ALPHA                                            = 34200
  integer(4),parameter :: GL_OPERAND1_ALPHA                                            = 34201
  integer(4),parameter :: GL_OPERAND2_ALPHA                                            = 34202
  integer(4),parameter :: GL_RGB_SCALE                                                 = 34163
  integer(4),parameter :: GL_ADD_SIGNED                                                = 34164
  integer(4),parameter :: GL_INTERPOLATE                                               = 34165
  integer(4),parameter :: GL_SUBTRACT                                                  = 34023
  integer(4),parameter :: GL_CONSTANT                                                  = 34166
  integer(4),parameter :: GL_PRIMARY_COLOR                                             = 34167
  integer(4),parameter :: GL_PREVIOUS                                                  = 34168
  integer(4),parameter :: GL_DOT3_RGB                                                  = 34478
  integer(4),parameter :: GL_DOT3_RGBA                                                 = 34479
  integer(4),parameter :: GL_BLEND_DST_RGB                                             = 32968
  integer(4),parameter :: GL_BLEND_SRC_RGB                                             = 32969
  integer(4),parameter :: GL_BLEND_DST_ALPHA                                           = 32970
  integer(4),parameter :: GL_BLEND_SRC_ALPHA                                           = 32971
  integer(4),parameter :: GL_POINT_FADE_THRESHOLD_SIZE                                 = 33064
  integer(4),parameter :: GL_DEPTH_COMPONENT16                                         = 33189
  integer(4),parameter :: GL_DEPTH_COMPONENT24                                         = 33190
  integer(4),parameter :: GL_DEPTH_COMPONENT32                                         = 33191
  integer(4),parameter :: GL_MIRRORED_REPEAT                                           = 33648
  integer(4),parameter :: GL_MAX_TEXTURE_LOD_BIAS                                      = 34045
  integer(4),parameter :: GL_TEXTURE_LOD_BIAS                                          = 34049
  integer(4),parameter :: GL_INCR_WRAP                                                 = 34055
  integer(4),parameter :: GL_DECR_WRAP                                                 = 34056
  integer(4),parameter :: GL_TEXTURE_DEPTH_SIZE                                        = 34890
  integer(4),parameter :: GL_TEXTURE_COMPARE_MODE                                      = 34892
  integer(4),parameter :: GL_TEXTURE_COMPARE_FUNC                                      = 34893
  integer(4),parameter :: GL_POINT_SIZE_MIN                                            = 33062
  integer(4),parameter :: GL_POINT_SIZE_MAX                                            = 33063
  integer(4),parameter :: GL_POINT_DISTANCE_ATTENUATION                                = 33065
  integer(4),parameter :: GL_GENERATE_MIPMAP                                           = 33169
  integer(4),parameter :: GL_GENERATE_MIPMAP_HINT                                      = 33170
  integer(4),parameter :: GL_FOG_COORDINATE_SOURCE                                     = 33872
  integer(4),parameter :: GL_FOG_COORDINATE                                            = 33873
  integer(4),parameter :: GL_FRAGMENT_DEPTH                                            = 33874
  integer(4),parameter :: GL_CURRENT_FOG_COORDINATE                                    = 33875
  integer(4),parameter :: GL_FOG_COORDINATE_ARRAY_TYPE                                 = 33876
  integer(4),parameter :: GL_FOG_COORDINATE_ARRAY_STRIDE                               = 33877
  integer(4),parameter :: GL_FOG_COORDINATE_ARRAY_POINTER                              = 33878
  integer(4),parameter :: GL_FOG_COORDINATE_ARRAY                                      = 33879
  integer(4),parameter :: GL_COLOR_SUM                                                 = 33880
  integer(4),parameter :: GL_CURRENT_SECONDARY_COLOR                                   = 33881
  integer(4),parameter :: GL_SECONDARY_COLOR_ARRAY_SIZE                                = 33882
  integer(4),parameter :: GL_SECONDARY_COLOR_ARRAY_TYPE                                = 33883
  integer(4),parameter :: GL_SECONDARY_COLOR_ARRAY_STRIDE                              = 33884
  integer(4),parameter :: GL_SECONDARY_COLOR_ARRAY_POINTER                             = 33885
  integer(4),parameter :: GL_SECONDARY_COLOR_ARRAY                                     = 33886
  integer(4),parameter :: GL_TEXTURE_FILTER_CONTROL                                    = 34048
  integer(4),parameter :: GL_DEPTH_TEXTURE_MODE                                        = 34891
  integer(4),parameter :: GL_COMPARE_R_TO_TEXTURE                                      = 34894
  integer(4),parameter :: GL_BLEND_COLOR                                               = 32773
  integer(4),parameter :: GL_BLEND_EQUATION                                            = 32777
  integer(4),parameter :: GL_CONSTANT_COLOR                                            = 32769
  integer(4),parameter :: GL_ONE_MINUS_CONSTANT_COLOR                                  = 32770
  integer(4),parameter :: GL_CONSTANT_ALPHA                                            = 32771
  integer(4),parameter :: GL_ONE_MINUS_CONSTANT_ALPHA                                  = 32772
  integer(4),parameter :: GL_FUNC_ADD                                                  = 32774
  integer(4),parameter :: GL_FUNC_REVERSE_SUBTRACT                                     = 32779
  integer(4),parameter :: GL_FUNC_SUBTRACT                                             = 32778
  integer(4),parameter :: GL_MIN                                                       = 32775
  integer(4),parameter :: GL_MAX                                                       = 32776
  integer(4),parameter :: GL_BUFFER_SIZE                                               = 34660
  integer(4),parameter :: GL_BUFFER_USAGE                                              = 34661
  integer(4),parameter :: GL_QUERY_COUNTER_BITS                                        = 34916
  integer(4),parameter :: GL_CURRENT_QUERY                                             = 34917
  integer(4),parameter :: GL_QUERY_RESULT                                              = 34918
  integer(4),parameter :: GL_QUERY_RESULT_AVAILABLE                                    = 34919
  integer(4),parameter :: GL_ARRAY_BUFFER                                              = 34962
  integer(4),parameter :: GL_ELEMENT_ARRAY_BUFFER                                      = 34963
  integer(4),parameter :: GL_ARRAY_BUFFER_BINDING                                      = 34964
  integer(4),parameter :: GL_ELEMENT_ARRAY_BUFFER_BINDING                              = 34965
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                        = 34975
  integer(4),parameter :: GL_READ_ONLY                                                 = 35000
  integer(4),parameter :: GL_WRITE_ONLY                                                = 35001
  integer(4),parameter :: GL_READ_WRITE                                                = 35002
  integer(4),parameter :: GL_BUFFER_ACCESS                                             = 35003
  integer(4),parameter :: GL_BUFFER_MAPPED                                             = 35004
  integer(4),parameter :: GL_BUFFER_MAP_POINTER                                        = 35005
  integer(4),parameter :: GL_STREAM_DRAW                                               = 35040
  integer(4),parameter :: GL_STREAM_READ                                               = 35041
  integer(4),parameter :: GL_STREAM_COPY                                               = 35042
  integer(4),parameter :: GL_STATIC_DRAW                                               = 35044
  integer(4),parameter :: GL_STATIC_READ                                               = 35045
  integer(4),parameter :: GL_STATIC_COPY                                               = 35046
  integer(4),parameter :: GL_DYNAMIC_DRAW                                              = 35048
  integer(4),parameter :: GL_DYNAMIC_READ                                              = 35049
  integer(4),parameter :: GL_DYNAMIC_COPY                                              = 35050
  integer(4),parameter :: GL_SAMPLES_PASSED                                            = 35092
  integer(4),parameter :: GL_SRC1_ALPHA                                                = 34185
  integer(4),parameter :: GL_VERTEX_ARRAY_BUFFER_BINDING                               = 34966
  integer(4),parameter :: GL_NORMAL_ARRAY_BUFFER_BINDING                               = 34967
  integer(4),parameter :: GL_COLOR_ARRAY_BUFFER_BINDING                                = 34968
  integer(4),parameter :: GL_INDEX_ARRAY_BUFFER_BINDING                                = 34969
  integer(4),parameter :: GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                        = 34970
  integer(4),parameter :: GL_EDGE_FLAG_ARRAY_BUFFER_BINDING                            = 34971
  integer(4),parameter :: GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                      = 34972
  integer(4),parameter :: GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                       = 34973
  integer(4),parameter :: GL_WEIGHT_ARRAY_BUFFER_BINDING                               = 34974
  integer(4),parameter :: GL_FOG_COORD_SRC                                             = 33872
  integer(4),parameter :: GL_FOG_COORD                                                 = 33873
  integer(4),parameter :: GL_CURRENT_FOG_COORD                                         = 33875
  integer(4),parameter :: GL_FOG_COORD_ARRAY_TYPE                                      = 33876
  integer(4),parameter :: GL_FOG_COORD_ARRAY_STRIDE                                    = 33877
  integer(4),parameter :: GL_FOG_COORD_ARRAY_POINTER                                   = 33878
  integer(4),parameter :: GL_FOG_COORD_ARRAY                                           = 33879
  integer(4),parameter :: GL_FOG_COORD_ARRAY_BUFFER_BINDING                            = 34973
  integer(4),parameter :: GL_SRC0_RGB                                                  = 34176
  integer(4),parameter :: GL_SRC1_RGB                                                  = 34177
  integer(4),parameter :: GL_SRC2_RGB                                                  = 34178
  integer(4),parameter :: GL_SRC0_ALPHA                                                = 34184
  integer(4),parameter :: GL_SRC2_ALPHA                                                = 34186
  integer(4),parameter :: GL_BLEND_EQUATION_RGB                                        = 32777
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_ENABLED                               = 34338
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_SIZE                                  = 34339
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_STRIDE                                = 34340
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_TYPE                                  = 34341
  integer(4),parameter :: GL_CURRENT_VERTEX_ATTRIB                                     = 34342
  integer(4),parameter :: GL_VERTEX_PROGRAM_POINT_SIZE                                 = 34370
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_POINTER                               = 34373
  integer(4),parameter :: GL_STENCIL_BACK_FUNC                                         = 34816
  integer(4),parameter :: GL_STENCIL_BACK_FAIL                                         = 34817
  integer(4),parameter :: GL_STENCIL_BACK_PASS_DEPTH_FAIL                              = 34818
  integer(4),parameter :: GL_STENCIL_BACK_PASS_DEPTH_PASS                              = 34819
  integer(4),parameter :: GL_MAX_DRAW_BUFFERS                                          = 34852
  integer(4),parameter :: GL_DRAW_BUFFER0                                              = 34853
  integer(4),parameter :: GL_DRAW_BUFFER1                                              = 34854
  integer(4),parameter :: GL_DRAW_BUFFER2                                              = 34855
  integer(4),parameter :: GL_DRAW_BUFFER3                                              = 34856
  integer(4),parameter :: GL_DRAW_BUFFER4                                              = 34857
  integer(4),parameter :: GL_DRAW_BUFFER5                                              = 34858
  integer(4),parameter :: GL_DRAW_BUFFER6                                              = 34859
  integer(4),parameter :: GL_DRAW_BUFFER7                                              = 34860
  integer(4),parameter :: GL_DRAW_BUFFER8                                              = 34861
  integer(4),parameter :: GL_DRAW_BUFFER9                                              = 34862
  integer(4),parameter :: GL_DRAW_BUFFER10                                             = 34863
  integer(4),parameter :: GL_DRAW_BUFFER11                                             = 34864
  integer(4),parameter :: GL_DRAW_BUFFER12                                             = 34865
  integer(4),parameter :: GL_DRAW_BUFFER13                                             = 34866
  integer(4),parameter :: GL_DRAW_BUFFER14                                             = 34867
  integer(4),parameter :: GL_DRAW_BUFFER15                                             = 34868
  integer(4),parameter :: GL_BLEND_EQUATION_ALPHA                                      = 34877
  integer(4),parameter :: GL_MAX_VERTEX_ATTRIBS                                        = 34921
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_NORMALIZED                            = 34922
  integer(4),parameter :: GL_MAX_TEXTURE_IMAGE_UNITS                                   = 34930
  integer(4),parameter :: GL_FRAGMENT_SHADER                                           = 35632
  integer(4),parameter :: GL_VERTEX_SHADER                                             = 35633
  integer(4),parameter :: GL_MAX_FRAGMENT_UNIFORM_COMPONENTS                           = 35657
  integer(4),parameter :: GL_MAX_VERTEX_UNIFORM_COMPONENTS                             = 35658
  integer(4),parameter :: GL_MAX_VARYING_FLOATS                                        = 35659
  integer(4),parameter :: GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS                            = 35660
  integer(4),parameter :: GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS                          = 35661
  integer(4),parameter :: GL_SHADER_TYPE                                               = 35663
  integer(4),parameter :: GL_FLOAT_VEC2                                                = 35664
  integer(4),parameter :: GL_FLOAT_VEC3                                                = 35665
  integer(4),parameter :: GL_FLOAT_VEC4                                                = 35666
  integer(4),parameter :: GL_INT_VEC2                                                  = 35667
  integer(4),parameter :: GL_INT_VEC3                                                  = 35668
  integer(4),parameter :: GL_INT_VEC4                                                  = 35669
  integer(4),parameter :: GL_BOOL                                                      = 35670
  integer(4),parameter :: GL_BOOL_VEC2                                                 = 35671
  integer(4),parameter :: GL_BOOL_VEC3                                                 = 35672
  integer(4),parameter :: GL_BOOL_VEC4                                                 = 35673
  integer(4),parameter :: GL_FLOAT_MAT2                                                = 35674
  integer(4),parameter :: GL_FLOAT_MAT3                                                = 35675
  integer(4),parameter :: GL_FLOAT_MAT4                                                = 35676
  integer(4),parameter :: GL_SAMPLER_1D                                                = 35677
  integer(4),parameter :: GL_SAMPLER_2D                                                = 35678
  integer(4),parameter :: GL_SAMPLER_3D                                                = 35679
  integer(4),parameter :: GL_SAMPLER_CUBE                                              = 35680
  integer(4),parameter :: GL_SAMPLER_1D_SHADOW                                         = 35681
  integer(4),parameter :: GL_SAMPLER_2D_SHADOW                                         = 35682
  integer(4),parameter :: GL_DELETE_STATUS                                             = 35712
  integer(4),parameter :: GL_COMPILE_STATUS                                            = 35713
  integer(4),parameter :: GL_LINK_STATUS                                               = 35714
  integer(4),parameter :: GL_VALIDATE_STATUS                                           = 35715
  integer(4),parameter :: GL_INFO_LOG_LENGTH                                           = 35716
  integer(4),parameter :: GL_ATTACHED_SHADERS                                          = 35717
  integer(4),parameter :: GL_ACTIVE_UNIFORMS                                           = 35718
  integer(4),parameter :: GL_ACTIVE_UNIFORM_MAX_LENGTH                                 = 35719
  integer(4),parameter :: GL_SHADER_SOURCE_LENGTH                                      = 35720
  integer(4),parameter :: GL_ACTIVE_ATTRIBUTES                                         = 35721
  integer(4),parameter :: GL_ACTIVE_ATTRIBUTE_MAX_LENGTH                               = 35722
  integer(4),parameter :: GL_FRAGMENT_SHADER_DERIVATIVE_HINT                           = 35723
  integer(4),parameter :: GL_SHADING_LANGUAGE_VERSION                                  = 35724
  integer(4),parameter :: GL_CURRENT_PROGRAM                                           = 35725
  integer(4),parameter :: GL_POINT_SPRITE_COORD_ORIGIN                                 = 36000
  integer(4),parameter :: GL_LOWER_LEFT                                                = 36001
  integer(4),parameter :: GL_UPPER_LEFT                                                = 36002
  integer(4),parameter :: GL_STENCIL_BACK_REF                                          = 36003
  integer(4),parameter :: GL_STENCIL_BACK_VALUE_MASK                                   = 36004
  integer(4),parameter :: GL_STENCIL_BACK_WRITEMASK                                    = 36005
  integer(4),parameter :: GL_VERTEX_PROGRAM_TWO_SIDE                                   = 34371
  integer(4),parameter :: GL_POINT_SPRITE                                              = 34913
  integer(4),parameter :: GL_COORD_REPLACE                                             = 34914
  integer(4),parameter :: GL_MAX_TEXTURE_COORDS                                        = 34929
  integer(4),parameter :: GL_PIXEL_PACK_BUFFER                                         = 35051
  integer(4),parameter :: GL_PIXEL_UNPACK_BUFFER                                       = 35052
  integer(4),parameter :: GL_PIXEL_PACK_BUFFER_BINDING                                 = 35053
  integer(4),parameter :: GL_PIXEL_UNPACK_BUFFER_BINDING                               = 35055
  integer(4),parameter :: GL_FLOAT_MAT2x3                                              = 35685
  integer(4),parameter :: GL_FLOAT_MAT2x4                                              = 35686
  integer(4),parameter :: GL_FLOAT_MAT3x2                                              = 35687
  integer(4),parameter :: GL_FLOAT_MAT3x4                                              = 35688
  integer(4),parameter :: GL_FLOAT_MAT4x2                                              = 35689
  integer(4),parameter :: GL_FLOAT_MAT4x3                                              = 35690
  integer(4),parameter :: GL_SRGB                                                      = 35904
  integer(4),parameter :: GL_SRGB8                                                     = 35905
  integer(4),parameter :: GL_SRGB_ALPHA                                                = 35906
  integer(4),parameter :: GL_SRGB8_ALPHA8                                              = 35907
  integer(4),parameter :: GL_COMPRESSED_SRGB                                           = 35912
  integer(4),parameter :: GL_COMPRESSED_SRGB_ALPHA                                     = 35913
  integer(4),parameter :: GL_CURRENT_RASTER_SECONDARY_COLOR                            = 33887
  integer(4),parameter :: GL_SLUMINANCE_ALPHA                                          = 35908
  integer(4),parameter :: GL_SLUMINANCE8_ALPHA8                                        = 35909
  integer(4),parameter :: GL_SLUMINANCE                                                = 35910
  integer(4),parameter :: GL_SLUMINANCE8                                               = 35911
  integer(4),parameter :: GL_COMPRESSED_SLUMINANCE                                     = 35914
  integer(4),parameter :: GL_COMPRESSED_SLUMINANCE_ALPHA                               = 35915
  integer(4),parameter :: GL_COMPARE_REF_TO_TEXTURE                                    = 34894
  integer(4),parameter :: GL_CLIP_DISTANCE0                                            = 12288
  integer(4),parameter :: GL_CLIP_DISTANCE1                                            = 12289
  integer(4),parameter :: GL_CLIP_DISTANCE2                                            = 12290
  integer(4),parameter :: GL_CLIP_DISTANCE3                                            = 12291
  integer(4),parameter :: GL_CLIP_DISTANCE4                                            = 12292
  integer(4),parameter :: GL_CLIP_DISTANCE5                                            = 12293
  integer(4),parameter :: GL_CLIP_DISTANCE6                                            = 12294
  integer(4),parameter :: GL_CLIP_DISTANCE7                                            = 12295
  integer(4),parameter :: GL_MAX_CLIP_DISTANCES                                        = 3378
  integer(4),parameter :: GL_MAJOR_VERSION                                             = 33307
  integer(4),parameter :: GL_MINOR_VERSION                                             = 33308
  integer(4),parameter :: GL_NUM_EXTENSIONS                                            = 33309
  integer(4),parameter :: GL_CONTEXT_FLAGS                                             = 33310
  integer(4),parameter :: GL_COMPRESSED_RED                                            = 33317
  integer(4),parameter :: GL_COMPRESSED_RG                                             = 33318
  integer(4),parameter :: GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT                       = 1
  integer(4),parameter :: GL_RGBA32F                                                   = 34836
  integer(4),parameter :: GL_RGB32F                                                    = 34837
  integer(4),parameter :: GL_RGBA16F                                                   = 34842
  integer(4),parameter :: GL_RGB16F                                                    = 34843
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_INTEGER                               = 35069
  integer(4),parameter :: GL_MAX_ARRAY_TEXTURE_LAYERS                                  = 35071
  integer(4),parameter :: GL_MIN_PROGRAM_TEXEL_OFFSET                                  = 35076
  integer(4),parameter :: GL_MAX_PROGRAM_TEXEL_OFFSET                                  = 35077
  integer(4),parameter :: GL_CLAMP_READ_COLOR                                          = 35100
  integer(4),parameter :: GL_FIXED_ONLY                                                = 35101
  integer(4),parameter :: GL_MAX_VARYING_COMPONENTS                                    = 35659
  integer(4),parameter :: GL_TEXTURE_1D_ARRAY                                          = 35864
  integer(4),parameter :: GL_PROXY_TEXTURE_1D_ARRAY                                    = 35865
  integer(4),parameter :: GL_TEXTURE_2D_ARRAY                                          = 35866
  integer(4),parameter :: GL_PROXY_TEXTURE_2D_ARRAY                                    = 35867
  integer(4),parameter :: GL_TEXTURE_BINDING_1D_ARRAY                                  = 35868
  integer(4),parameter :: GL_TEXTURE_BINDING_2D_ARRAY                                  = 35869
  integer(4),parameter :: GL_R11F_G11F_B10F                                            = 35898
  integer(4),parameter :: GL_UNSIGNED_INT_10F_11F_11F_REV                              = 35899
  integer(4),parameter :: GL_RGB9_E5                                                   = 35901
  integer(4),parameter :: GL_UNSIGNED_INT_5_9_9_9_REV                                  = 35902
  integer(4),parameter :: GL_TEXTURE_SHARED_SIZE                                       = 35903
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH                     = 35958
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_MODE                            = 35967
  integer(4),parameter :: GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS                = 35968
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_VARYINGS                               = 35971
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_START                           = 35972
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_SIZE                            = 35973
  integer(4),parameter :: GL_PRIMITIVES_GENERATED                                      = 35975
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN                     = 35976
  integer(4),parameter :: GL_RASTERIZER_DISCARD                                        = 35977
  integer(4),parameter :: GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS             = 35978
  integer(4),parameter :: GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS                   = 35979
  integer(4),parameter :: GL_INTERLEAVED_ATTRIBS                                       = 35980
  integer(4),parameter :: GL_SEPARATE_ATTRIBS                                          = 35981
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER                                 = 35982
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_BINDING                         = 35983
  integer(4),parameter :: GL_RGBA32UI                                                  = 36208
  integer(4),parameter :: GL_RGB32UI                                                   = 36209
  integer(4),parameter :: GL_RGBA16UI                                                  = 36214
  integer(4),parameter :: GL_RGB16UI                                                   = 36215
  integer(4),parameter :: GL_RGBA8UI                                                   = 36220
  integer(4),parameter :: GL_RGB8UI                                                    = 36221
  integer(4),parameter :: GL_RGBA32I                                                   = 36226
  integer(4),parameter :: GL_RGB32I                                                    = 36227
  integer(4),parameter :: GL_RGBA16I                                                   = 36232
  integer(4),parameter :: GL_RGB16I                                                    = 36233
  integer(4),parameter :: GL_RGBA8I                                                    = 36238
  integer(4),parameter :: GL_RGB8I                                                     = 36239
  integer(4),parameter :: GL_RED_INTEGER                                               = 36244
  integer(4),parameter :: GL_GREEN_INTEGER                                             = 36245
  integer(4),parameter :: GL_BLUE_INTEGER                                              = 36246
  integer(4),parameter :: GL_RGB_INTEGER                                               = 36248
  integer(4),parameter :: GL_RGBA_INTEGER                                              = 36249
  integer(4),parameter :: GL_BGR_INTEGER                                               = 36250
  integer(4),parameter :: GL_BGRA_INTEGER                                              = 36251
  integer(4),parameter :: GL_SAMPLER_1D_ARRAY                                          = 36288
  integer(4),parameter :: GL_SAMPLER_2D_ARRAY                                          = 36289
  integer(4),parameter :: GL_SAMPLER_1D_ARRAY_SHADOW                                   = 36291
  integer(4),parameter :: GL_SAMPLER_2D_ARRAY_SHADOW                                   = 36292
  integer(4),parameter :: GL_SAMPLER_CUBE_SHADOW                                       = 36293
  integer(4),parameter :: GL_UNSIGNED_INT_VEC2                                         = 36294
  integer(4),parameter :: GL_UNSIGNED_INT_VEC3                                         = 36295
  integer(4),parameter :: GL_UNSIGNED_INT_VEC4                                         = 36296
  integer(4),parameter :: GL_INT_SAMPLER_1D                                            = 36297
  integer(4),parameter :: GL_INT_SAMPLER_2D                                            = 36298
  integer(4),parameter :: GL_INT_SAMPLER_3D                                            = 36299
  integer(4),parameter :: GL_INT_SAMPLER_CUBE                                          = 36300
  integer(4),parameter :: GL_INT_SAMPLER_1D_ARRAY                                      = 36302
  integer(4),parameter :: GL_INT_SAMPLER_2D_ARRAY                                      = 36303
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_1D                                   = 36305
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_2D                                   = 36306
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_3D                                   = 36307
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_CUBE                                 = 36308
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                             = 36310
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                             = 36311
  integer(4),parameter :: GL_QUERY_WAIT                                                = 36371
  integer(4),parameter :: GL_QUERY_NO_WAIT                                             = 36372
  integer(4),parameter :: GL_QUERY_BY_REGION_WAIT                                      = 36373
  integer(4),parameter :: GL_QUERY_BY_REGION_NO_WAIT                                   = 36374
  integer(4),parameter :: GL_BUFFER_ACCESS_FLAGS                                       = 37151
  integer(4),parameter :: GL_BUFFER_MAP_LENGTH                                         = 37152
  integer(4),parameter :: GL_BUFFER_MAP_OFFSET                                         = 37153
  integer(4),parameter :: GL_DEPTH_COMPONENT32F                                        = 36012
  integer(4),parameter :: GL_DEPTH32F_STENCIL8                                         = 36013
  integer(4),parameter :: GL_FLOAT_32_UNSIGNED_INT_24_8_REV                            = 36269
  integer(4),parameter :: GL_INVALID_FRAMEBUFFER_OPERATION                             = 1286
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING                     = 33296
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE                     = 33297
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE                           = 33298
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE                         = 33299
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE                          = 33300
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE                         = 33301
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE                         = 33302
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE                       = 33303
  integer(4),parameter :: GL_FRAMEBUFFER_DEFAULT                                       = 33304
  integer(4),parameter :: GL_FRAMEBUFFER_UNDEFINED                                     = 33305
  integer(4),parameter :: GL_DEPTH_STENCIL_ATTACHMENT                                  = 33306
  integer(4),parameter :: GL_MAX_RENDERBUFFER_SIZE                                     = 34024
  integer(4),parameter :: GL_DEPTH_STENCIL                                             = 34041
  integer(4),parameter :: GL_UNSIGNED_INT_24_8                                         = 34042
  integer(4),parameter :: GL_DEPTH24_STENCIL8                                          = 35056
  integer(4),parameter :: GL_TEXTURE_STENCIL_SIZE                                      = 35057
  integer(4),parameter :: GL_TEXTURE_RED_TYPE                                          = 35856
  integer(4),parameter :: GL_TEXTURE_GREEN_TYPE                                        = 35857
  integer(4),parameter :: GL_TEXTURE_BLUE_TYPE                                         = 35858
  integer(4),parameter :: GL_TEXTURE_ALPHA_TYPE                                        = 35859
  integer(4),parameter :: GL_TEXTURE_DEPTH_TYPE                                        = 35862
  integer(4),parameter :: GL_UNSIGNED_NORMALIZED                                       = 35863
  integer(4),parameter :: GL_FRAMEBUFFER_BINDING                                       = 36006
  integer(4),parameter :: GL_DRAW_FRAMEBUFFER_BINDING                                  = 36006
  integer(4),parameter :: GL_RENDERBUFFER_BINDING                                      = 36007
  integer(4),parameter :: GL_READ_FRAMEBUFFER                                          = 36008
  integer(4),parameter :: GL_DRAW_FRAMEBUFFER                                          = 36009
  integer(4),parameter :: GL_READ_FRAMEBUFFER_BINDING                                  = 36010
  integer(4),parameter :: GL_RENDERBUFFER_SAMPLES                                      = 36011
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE                        = 36048
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME                        = 36049
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL                      = 36050
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE              = 36051
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER                      = 36052
  integer(4),parameter :: GL_FRAMEBUFFER_COMPLETE                                      = 36053
  integer(4),parameter :: GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT                         = 36054
  integer(4),parameter :: GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT                 = 36055
  integer(4),parameter :: GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER                        = 36059
  integer(4),parameter :: GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER                        = 36060
  integer(4),parameter :: GL_FRAMEBUFFER_UNSUPPORTED                                   = 36061
  integer(4),parameter :: GL_MAX_COLOR_ATTACHMENTS                                     = 36063
  integer(4),parameter :: GL_COLOR_ATTACHMENT0                                         = 36064
  integer(4),parameter :: GL_COLOR_ATTACHMENT1                                         = 36065
  integer(4),parameter :: GL_COLOR_ATTACHMENT2                                         = 36066
  integer(4),parameter :: GL_COLOR_ATTACHMENT3                                         = 36067
  integer(4),parameter :: GL_COLOR_ATTACHMENT4                                         = 36068
  integer(4),parameter :: GL_COLOR_ATTACHMENT5                                         = 36069
  integer(4),parameter :: GL_COLOR_ATTACHMENT6                                         = 36070
  integer(4),parameter :: GL_COLOR_ATTACHMENT7                                         = 36071
  integer(4),parameter :: GL_COLOR_ATTACHMENT8                                         = 36072
  integer(4),parameter :: GL_COLOR_ATTACHMENT9                                         = 36073
  integer(4),parameter :: GL_COLOR_ATTACHMENT10                                        = 36074
  integer(4),parameter :: GL_COLOR_ATTACHMENT11                                        = 36075
  integer(4),parameter :: GL_COLOR_ATTACHMENT12                                        = 36076
  integer(4),parameter :: GL_COLOR_ATTACHMENT13                                        = 36077
  integer(4),parameter :: GL_COLOR_ATTACHMENT14                                        = 36078
  integer(4),parameter :: GL_COLOR_ATTACHMENT15                                        = 36079
  integer(4),parameter :: GL_COLOR_ATTACHMENT16                                        = 36080
  integer(4),parameter :: GL_COLOR_ATTACHMENT17                                        = 36081
  integer(4),parameter :: GL_COLOR_ATTACHMENT18                                        = 36082
  integer(4),parameter :: GL_COLOR_ATTACHMENT19                                        = 36083
  integer(4),parameter :: GL_COLOR_ATTACHMENT20                                        = 36084
  integer(4),parameter :: GL_COLOR_ATTACHMENT21                                        = 36085
  integer(4),parameter :: GL_COLOR_ATTACHMENT22                                        = 36086
  integer(4),parameter :: GL_COLOR_ATTACHMENT23                                        = 36087
  integer(4),parameter :: GL_COLOR_ATTACHMENT24                                        = 36088
  integer(4),parameter :: GL_COLOR_ATTACHMENT25                                        = 36089
  integer(4),parameter :: GL_COLOR_ATTACHMENT26                                        = 36090
  integer(4),parameter :: GL_COLOR_ATTACHMENT27                                        = 36091
  integer(4),parameter :: GL_COLOR_ATTACHMENT28                                        = 36092
  integer(4),parameter :: GL_COLOR_ATTACHMENT29                                        = 36093
  integer(4),parameter :: GL_COLOR_ATTACHMENT30                                        = 36094
  integer(4),parameter :: GL_COLOR_ATTACHMENT31                                        = 36095
  integer(4),parameter :: GL_DEPTH_ATTACHMENT                                          = 36096
  integer(4),parameter :: GL_STENCIL_ATTACHMENT                                        = 36128
  integer(4),parameter :: GL_FRAMEBUFFER                                               = 36160
  integer(4),parameter :: GL_RENDERBUFFER                                              = 36161
  integer(4),parameter :: GL_RENDERBUFFER_WIDTH                                        = 36162
  integer(4),parameter :: GL_RENDERBUFFER_HEIGHT                                       = 36163
  integer(4),parameter :: GL_RENDERBUFFER_INTERNAL_FORMAT                              = 36164
  integer(4),parameter :: GL_STENCIL_INDEX1                                            = 36166
  integer(4),parameter :: GL_STENCIL_INDEX4                                            = 36167
  integer(4),parameter :: GL_STENCIL_INDEX8                                            = 36168
  integer(4),parameter :: GL_STENCIL_INDEX16                                           = 36169
  integer(4),parameter :: GL_RENDERBUFFER_RED_SIZE                                     = 36176
  integer(4),parameter :: GL_RENDERBUFFER_GREEN_SIZE                                   = 36177
  integer(4),parameter :: GL_RENDERBUFFER_BLUE_SIZE                                    = 36178
  integer(4),parameter :: GL_RENDERBUFFER_ALPHA_SIZE                                   = 36179
  integer(4),parameter :: GL_RENDERBUFFER_DEPTH_SIZE                                   = 36180
  integer(4),parameter :: GL_RENDERBUFFER_STENCIL_SIZE                                 = 36181
  integer(4),parameter :: GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE                        = 36182
  integer(4),parameter :: GL_MAX_SAMPLES                                               = 36183
  integer(4),parameter :: GL_INDEX                                                     = 33314
  integer(4),parameter :: GL_TEXTURE_LUMINANCE_TYPE                                    = 35860
  integer(4),parameter :: GL_TEXTURE_INTENSITY_TYPE                                    = 35861
  integer(4),parameter :: GL_FRAMEBUFFER_SRGB                                          = 36281
  integer(4),parameter :: GL_HALF_FLOAT                                                = 5131
  integer(4),parameter :: GL_MAP_READ_BIT                                              = 1
  integer(4),parameter :: GL_MAP_WRITE_BIT                                             = 2
  integer(4),parameter :: GL_MAP_INVALIDATE_RANGE_BIT                                  = 4
  integer(4),parameter :: GL_MAP_INVALIDATE_BUFFER_BIT                                 = 8
  integer(4),parameter :: GL_MAP_FLUSH_EXPLICIT_BIT                                    = 16
  integer(4),parameter :: GL_MAP_UNSYNCHRONIZED_BIT                                    = 32
  integer(4),parameter :: GL_COMPRESSED_RED_RGTC1                                      = 36283
  integer(4),parameter :: GL_COMPRESSED_SIGNED_RED_RGTC1                               = 36284
  integer(4),parameter :: GL_COMPRESSED_RG_RGTC2                                       = 36285
  integer(4),parameter :: GL_COMPRESSED_SIGNED_RG_RGTC2                                = 36286
  integer(4),parameter :: GL_RG                                                        = 33319
  integer(4),parameter :: GL_RG_INTEGER                                                = 33320
  integer(4),parameter :: GL_R8                                                        = 33321
  integer(4),parameter :: GL_R16                                                       = 33322
  integer(4),parameter :: GL_RG8                                                       = 33323
  integer(4),parameter :: GL_RG16                                                      = 33324
  integer(4),parameter :: GL_R16F                                                      = 33325
  integer(4),parameter :: GL_R32F                                                      = 33326
  integer(4),parameter :: GL_RG16F                                                     = 33327
  integer(4),parameter :: GL_RG32F                                                     = 33328
  integer(4),parameter :: GL_R8I                                                       = 33329
  integer(4),parameter :: GL_R8UI                                                      = 33330
  integer(4),parameter :: GL_R16I                                                      = 33331
  integer(4),parameter :: GL_R16UI                                                     = 33332
  integer(4),parameter :: GL_R32I                                                      = 33333
  integer(4),parameter :: GL_R32UI                                                     = 33334
  integer(4),parameter :: GL_RG8I                                                      = 33335
  integer(4),parameter :: GL_RG8UI                                                     = 33336
  integer(4),parameter :: GL_RG16I                                                     = 33337
  integer(4),parameter :: GL_RG16UI                                                    = 33338
  integer(4),parameter :: GL_RG32I                                                     = 33339
  integer(4),parameter :: GL_RG32UI                                                    = 33340
  integer(4),parameter :: GL_VERTEX_ARRAY_BINDING                                      = 34229
  integer(4),parameter :: GL_CLAMP_VERTEX_COLOR                                        = 35098
  integer(4),parameter :: GL_CLAMP_FRAGMENT_COLOR                                      = 35099
  integer(4),parameter :: GL_ALPHA_INTEGER                                             = 36247
  integer(4),parameter :: GL_SAMPLER_2D_RECT                                           = 35683
  integer(4),parameter :: GL_SAMPLER_2D_RECT_SHADOW                                    = 35684
  integer(4),parameter :: GL_SAMPLER_BUFFER                                            = 36290
  integer(4),parameter :: GL_INT_SAMPLER_2D_RECT                                       = 36301
  integer(4),parameter :: GL_INT_SAMPLER_BUFFER                                        = 36304
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_2D_RECT                              = 36309
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_BUFFER                               = 36312
  integer(4),parameter :: GL_TEXTURE_BUFFER                                            = 35882
  integer(4),parameter :: GL_MAX_TEXTURE_BUFFER_SIZE                                   = 35883
  integer(4),parameter :: GL_TEXTURE_BINDING_BUFFER                                    = 35884
  integer(4),parameter :: GL_TEXTURE_BUFFER_DATA_STORE_BINDING                         = 35885
  integer(4),parameter :: GL_TEXTURE_RECTANGLE                                         = 34037
  integer(4),parameter :: GL_TEXTURE_BINDING_RECTANGLE                                 = 34038
  integer(4),parameter :: GL_PROXY_TEXTURE_RECTANGLE                                   = 34039
  integer(4),parameter :: GL_MAX_RECTANGLE_TEXTURE_SIZE                                = 34040
  integer(4),parameter :: GL_R8_SNORM                                                  = 36756
  integer(4),parameter :: GL_RG8_SNORM                                                 = 36757
  integer(4),parameter :: GL_RGB8_SNORM                                                = 36758
  integer(4),parameter :: GL_RGBA8_SNORM                                               = 36759
  integer(4),parameter :: GL_R16_SNORM                                                 = 36760
  integer(4),parameter :: GL_RG16_SNORM                                                = 36761
  integer(4),parameter :: GL_RGB16_SNORM                                               = 36762
  integer(4),parameter :: GL_RGBA16_SNORM                                              = 36763
  integer(4),parameter :: GL_SIGNED_NORMALIZED                                         = 36764
  integer(4),parameter :: GL_PRIMITIVE_RESTART                                         = 36765
  integer(4),parameter :: GL_PRIMITIVE_RESTART_INDEX                                   = 36766
  integer(4),parameter :: GL_COPY_READ_BUFFER                                          = 36662
  integer(4),parameter :: GL_COPY_WRITE_BUFFER                                         = 36663
  integer(4),parameter :: GL_UNIFORM_BUFFER                                            = 35345
  integer(4),parameter :: GL_UNIFORM_BUFFER_BINDING                                    = 35368
  integer(4),parameter :: GL_UNIFORM_BUFFER_START                                      = 35369
  integer(4),parameter :: GL_UNIFORM_BUFFER_SIZE                                       = 35370
  integer(4),parameter :: GL_MAX_VERTEX_UNIFORM_BLOCKS                                 = 35371
  integer(4),parameter :: GL_MAX_GEOMETRY_UNIFORM_BLOCKS                               = 35372
  integer(4),parameter :: GL_MAX_FRAGMENT_UNIFORM_BLOCKS                               = 35373
  integer(4),parameter :: GL_MAX_COMBINED_UNIFORM_BLOCKS                               = 35374
  integer(4),parameter :: GL_MAX_UNIFORM_BUFFER_BINDINGS                               = 35375
  integer(4),parameter :: GL_MAX_UNIFORM_BLOCK_SIZE                                    = 35376
  integer(4),parameter :: GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS                    = 35377
  integer(4),parameter :: GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS                  = 35378
  integer(4),parameter :: GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS                  = 35379
  integer(4),parameter :: GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT                           = 35380
  integer(4),parameter :: GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH                      = 35381
  integer(4),parameter :: GL_ACTIVE_UNIFORM_BLOCKS                                     = 35382
  integer(4),parameter :: GL_UNIFORM_TYPE                                              = 35383
  integer(4),parameter :: GL_UNIFORM_SIZE                                              = 35384
  integer(4),parameter :: GL_UNIFORM_NAME_LENGTH                                       = 35385
  integer(4),parameter :: GL_UNIFORM_BLOCK_INDEX                                       = 35386
  integer(4),parameter :: GL_UNIFORM_OFFSET                                            = 35387
  integer(4),parameter :: GL_UNIFORM_ARRAY_STRIDE                                      = 35388
  integer(4),parameter :: GL_UNIFORM_MATRIX_STRIDE                                     = 35389
  integer(4),parameter :: GL_UNIFORM_IS_ROW_MAJOR                                      = 35390
  integer(4),parameter :: GL_UNIFORM_BLOCK_BINDING                                     = 35391
  integer(4),parameter :: GL_UNIFORM_BLOCK_DATA_SIZE                                   = 35392
  integer(4),parameter :: GL_UNIFORM_BLOCK_NAME_LENGTH                                 = 35393
  integer(4),parameter :: GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS                             = 35394
  integer(4),parameter :: GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES                      = 35395
  integer(4),parameter :: GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER                 = 35396
  integer(4),parameter :: GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER               = 35397
  integer(4),parameter :: GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER               = 35398
  integer(4),parameter :: GL_INVALID_INDEX                                             = -1
  integer(4),parameter :: GL_CONTEXT_CORE_PROFILE_BIT                                  = 1
  integer(4),parameter :: GL_CONTEXT_COMPATIBILITY_PROFILE_BIT                         = 2
  integer(4),parameter :: GL_LINES_ADJACENCY                                           = 10
  integer(4),parameter :: GL_LINE_STRIP_ADJACENCY                                      = 11
  integer(4),parameter :: GL_TRIANGLES_ADJACENCY                                       = 12
  integer(4),parameter :: GL_TRIANGLE_STRIP_ADJACENCY                                  = 13
  integer(4),parameter :: GL_PROGRAM_POINT_SIZE                                        = 34370
  integer(4),parameter :: GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS                          = 35881
  integer(4),parameter :: GL_FRAMEBUFFER_ATTACHMENT_LAYERED                            = 36263
  integer(4),parameter :: GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS                      = 36264
  integer(4),parameter :: GL_GEOMETRY_SHADER                                           = 36313
  integer(4),parameter :: GL_GEOMETRY_VERTICES_OUT                                     = 35094
  integer(4),parameter :: GL_GEOMETRY_INPUT_TYPE                                       = 35095
  integer(4),parameter :: GL_GEOMETRY_OUTPUT_TYPE                                      = 35096
  integer(4),parameter :: GL_MAX_GEOMETRY_UNIFORM_COMPONENTS                           = 36319
  integer(4),parameter :: GL_MAX_GEOMETRY_OUTPUT_VERTICES                              = 36320
  integer(4),parameter :: GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS                      = 36321
  integer(4),parameter :: GL_MAX_VERTEX_OUTPUT_COMPONENTS                              = 37154
  integer(4),parameter :: GL_MAX_GEOMETRY_INPUT_COMPONENTS                             = 37155
  integer(4),parameter :: GL_MAX_GEOMETRY_OUTPUT_COMPONENTS                            = 37156
  integer(4),parameter :: GL_MAX_FRAGMENT_INPUT_COMPONENTS                             = 37157
  integer(4),parameter :: GL_CONTEXT_PROFILE_MASK                                      = 37158
  integer(4),parameter :: GL_DEPTH_CLAMP                                               = 34383
  integer(4),parameter :: GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION                  = 36428
  integer(4),parameter :: GL_FIRST_VERTEX_CONVENTION                                   = 36429
  integer(4),parameter :: GL_LAST_VERTEX_CONVENTION                                    = 36430
  integer(4),parameter :: GL_PROVOKING_VERTEX                                          = 36431
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_SEAMLESS                                 = 34895
  integer(4),parameter :: GL_MAX_SERVER_WAIT_TIMEOUT                                   = 37137
  integer(4),parameter :: GL_OBJECT_TYPE                                               = 37138
  integer(4),parameter :: GL_SYNC_CONDITION                                            = 37139
  integer(4),parameter :: GL_SYNC_STATUS                                               = 37140
  integer(4),parameter :: GL_SYNC_FLAGS                                                = 37141
  integer(4),parameter :: GL_SYNC_FENCE                                                = 37142
  integer(4),parameter :: GL_SYNC_GPU_COMMANDS_COMPLETE                                = 37143
  integer(4),parameter :: GL_UNSIGNALED                                                = 37144
  integer(4),parameter :: GL_SIGNALED                                                  = 37145
  integer(4),parameter :: GL_ALREADY_SIGNALED                                          = 37146
  integer(4),parameter :: GL_TIMEOUT_EXPIRED                                           = 37147
  integer(4),parameter :: GL_CONDITION_SATISFIED                                       = 37148
  integer(4),parameter :: GL_WAIT_FAILED                                               = 37149
  integer(4),parameter :: GL_TIMEOUT_IGNORED                                           = -1
  integer(4),parameter :: GL_SYNC_FLUSH_COMMANDS_BIT                                   = 1
  integer(4),parameter :: GL_SAMPLE_POSITION                                           = 36432
  integer(4),parameter :: GL_SAMPLE_MASK                                               = 36433
  integer(4),parameter :: GL_SAMPLE_MASK_VALUE                                         = 36434
  integer(4),parameter :: GL_MAX_SAMPLE_MASK_WORDS                                     = 36441
  integer(4),parameter :: GL_TEXTURE_2D_MULTISAMPLE                                    = 37120
  integer(4),parameter :: GL_PROXY_TEXTURE_2D_MULTISAMPLE                              = 37121
  integer(4),parameter :: GL_TEXTURE_2D_MULTISAMPLE_ARRAY                              = 37122
  integer(4),parameter :: GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY                        = 37123
  integer(4),parameter :: GL_TEXTURE_BINDING_2D_MULTISAMPLE                            = 37124
  integer(4),parameter :: GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY                      = 37125
  integer(4),parameter :: GL_TEXTURE_SAMPLES                                           = 37126
  integer(4),parameter :: GL_TEXTURE_FIXED_SAMPLE_LOCATIONS                            = 37127
  integer(4),parameter :: GL_SAMPLER_2D_MULTISAMPLE                                    = 37128
  integer(4),parameter :: GL_INT_SAMPLER_2D_MULTISAMPLE                                = 37129
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE                       = 37130
  integer(4),parameter :: GL_SAMPLER_2D_MULTISAMPLE_ARRAY                              = 37131
  integer(4),parameter :: GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                          = 37132
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                 = 37133
  integer(4),parameter :: GL_MAX_COLOR_TEXTURE_SAMPLES                                 = 37134
  integer(4),parameter :: GL_MAX_DEPTH_TEXTURE_SAMPLES                                 = 37135
  integer(4),parameter :: GL_MAX_INTEGER_SAMPLES                                       = 37136
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_DIVISOR                               = 35070
  integer(4),parameter :: GL_SRC1_COLOR                                                = 35065
  integer(4),parameter :: GL_ONE_MINUS_SRC1_COLOR                                      = 35066
  integer(4),parameter :: GL_ONE_MINUS_SRC1_ALPHA                                      = 35067
  integer(4),parameter :: GL_MAX_DUAL_SOURCE_DRAW_BUFFERS                              = 35068
  integer(4),parameter :: GL_ANY_SAMPLES_PASSED                                        = 35887
  integer(4),parameter :: GL_SAMPLER_BINDING                                           = 35097
  integer(4),parameter :: GL_RGB10_A2UI                                                = 36975
  integer(4),parameter :: GL_TEXTURE_SWIZZLE_R                                         = 36418
  integer(4),parameter :: GL_TEXTURE_SWIZZLE_G                                         = 36419
  integer(4),parameter :: GL_TEXTURE_SWIZZLE_B                                         = 36420
  integer(4),parameter :: GL_TEXTURE_SWIZZLE_A                                         = 36421
  integer(4),parameter :: GL_TEXTURE_SWIZZLE_RGBA                                      = 36422
  integer(4),parameter :: GL_TIME_ELAPSED                                              = 35007
  integer(4),parameter :: GL_TIMESTAMP                                                 = 36392
  integer(4),parameter :: GL_INT_2_10_10_10_REV                                        = 36255
  integer(4),parameter :: GL_SAMPLE_SHADING                                            = 35894
  integer(4),parameter :: GL_MIN_SAMPLE_SHADING_VALUE                                  = 35895
  integer(4),parameter :: GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET                         = 36446
  integer(4),parameter :: GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET                         = 36447
  integer(4),parameter :: GL_TEXTURE_CUBE_MAP_ARRAY                                    = 36873
  integer(4),parameter :: GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                            = 36874
  integer(4),parameter :: GL_PROXY_TEXTURE_CUBE_MAP_ARRAY                              = 36875
  integer(4),parameter :: GL_SAMPLER_CUBE_MAP_ARRAY                                    = 36876
  integer(4),parameter :: GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW                             = 36877
  integer(4),parameter :: GL_INT_SAMPLER_CUBE_MAP_ARRAY                                = 36878
  integer(4),parameter :: GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY                       = 36879
  integer(4),parameter :: GL_DRAW_INDIRECT_BUFFER                                      = 36671
  integer(4),parameter :: GL_DRAW_INDIRECT_BUFFER_BINDING                              = 36675
  integer(4),parameter :: GL_GEOMETRY_SHADER_INVOCATIONS                               = 34943
  integer(4),parameter :: GL_MAX_GEOMETRY_SHADER_INVOCATIONS                           = 36442
  integer(4),parameter :: GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                         = 36443
  integer(4),parameter :: GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                         = 36444
  integer(4),parameter :: GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                        = 36445
  integer(4),parameter :: GL_MAX_VERTEX_STREAMS                                        = 36465
  integer(4),parameter :: GL_DOUBLE_VEC2                                               = 36860
  integer(4),parameter :: GL_DOUBLE_VEC3                                               = 36861
  integer(4),parameter :: GL_DOUBLE_VEC4                                               = 36862
  integer(4),parameter :: GL_DOUBLE_MAT2                                               = 36678
  integer(4),parameter :: GL_DOUBLE_MAT3                                               = 36679
  integer(4),parameter :: GL_DOUBLE_MAT4                                               = 36680
  integer(4),parameter :: GL_DOUBLE_MAT2x3                                             = 36681
  integer(4),parameter :: GL_DOUBLE_MAT2x4                                             = 36682
  integer(4),parameter :: GL_DOUBLE_MAT3x2                                             = 36683
  integer(4),parameter :: GL_DOUBLE_MAT3x4                                             = 36684
  integer(4),parameter :: GL_DOUBLE_MAT4x2                                             = 36685
  integer(4),parameter :: GL_DOUBLE_MAT4x3                                             = 36686
  integer(4),parameter :: GL_ACTIVE_SUBROUTINES                                        = 36325
  integer(4),parameter :: GL_ACTIVE_SUBROUTINE_UNIFORMS                                = 36326
  integer(4),parameter :: GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS                       = 36423
  integer(4),parameter :: GL_ACTIVE_SUBROUTINE_MAX_LENGTH                              = 36424
  integer(4),parameter :: GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH                      = 36425
  integer(4),parameter :: GL_MAX_SUBROUTINES                                           = 36327
  integer(4),parameter :: GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS                          = 36328
  integer(4),parameter :: GL_NUM_COMPATIBLE_SUBROUTINES                                = 36426
  integer(4),parameter :: GL_COMPATIBLE_SUBROUTINES                                    = 36427
  integer(4),parameter :: GL_PATCHES                                                   = 14
  integer(4),parameter :: GL_PATCH_VERTICES                                            = 36466
  integer(4),parameter :: GL_PATCH_DEFAULT_INNER_LEVEL                                 = 36467
  integer(4),parameter :: GL_PATCH_DEFAULT_OUTER_LEVEL                                 = 36468
  integer(4),parameter :: GL_TESS_CONTROL_OUTPUT_VERTICES                              = 36469
  integer(4),parameter :: GL_TESS_GEN_MODE                                             = 36470
  integer(4),parameter :: GL_TESS_GEN_SPACING                                          = 36471
  integer(4),parameter :: GL_TESS_GEN_VERTEX_ORDER                                     = 36472
  integer(4),parameter :: GL_TESS_GEN_POINT_MODE                                       = 36473
  integer(4),parameter :: GL_ISOLINES                                                  = 36474
  integer(4),parameter :: GL_FRACTIONAL_ODD                                            = 36475
  integer(4),parameter :: GL_FRACTIONAL_EVEN                                           = 36476
  integer(4),parameter :: GL_MAX_PATCH_VERTICES                                        = 36477
  integer(4),parameter :: GL_MAX_TESS_GEN_LEVEL                                        = 36478
  integer(4),parameter :: GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS                       = 36479
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS                    = 36480
  integer(4),parameter :: GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS                      = 36481
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS                   = 36482
  integer(4),parameter :: GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS                        = 36483
  integer(4),parameter :: GL_MAX_TESS_PATCH_COMPONENTS                                 = 36484
  integer(4),parameter :: GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS                  = 36485
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS                     = 36486
  integer(4),parameter :: GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS                           = 36489
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS                        = 36490
  integer(4),parameter :: GL_MAX_TESS_CONTROL_INPUT_COMPONENTS                         = 34924
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS                      = 34925
  integer(4),parameter :: GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS              = 36382
  integer(4),parameter :: GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS           = 36383
  integer(4),parameter :: GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER           = 34032
  integer(4),parameter :: GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER        = 34033
  integer(4),parameter :: GL_TESS_EVALUATION_SHADER                                    = 36487
  integer(4),parameter :: GL_TESS_CONTROL_SHADER                                       = 36488
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK                                        = 36386
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED                          = 36387
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE                          = 36388
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BINDING                                = 36389
  integer(4),parameter :: GL_MAX_TRANSFORM_FEEDBACK_BUFFERS                            = 36464
  integer(4),parameter :: GL_FIXED                                                     = 5132
  integer(4),parameter :: GL_IMPLEMENTATION_COLOR_READ_TYPE                            = 35738
  integer(4),parameter :: GL_IMPLEMENTATION_COLOR_READ_FORMAT                          = 35739
  integer(4),parameter :: GL_LOW_FLOAT                                                 = 36336
  integer(4),parameter :: GL_MEDIUM_FLOAT                                              = 36337
  integer(4),parameter :: GL_HIGH_FLOAT                                                = 36338
  integer(4),parameter :: GL_LOW_INT                                                   = 36339
  integer(4),parameter :: GL_MEDIUM_INT                                                = 36340
  integer(4),parameter :: GL_HIGH_INT                                                  = 36341
  integer(4),parameter :: GL_SHADER_COMPILER                                           = 36346
  integer(4),parameter :: GL_SHADER_BINARY_FORMATS                                     = 36344
  integer(4),parameter :: GL_NUM_SHADER_BINARY_FORMATS                                 = 36345
  integer(4),parameter :: GL_MAX_VERTEX_UNIFORM_VECTORS                                = 36347
  integer(4),parameter :: GL_MAX_VARYING_VECTORS                                       = 36348
  integer(4),parameter :: GL_MAX_FRAGMENT_UNIFORM_VECTORS                              = 36349
  integer(4),parameter :: GL_RGB565                                                    = 36194
  integer(4),parameter :: GL_PROGRAM_BINARY_RETRIEVABLE_HINT                           = 33367
  integer(4),parameter :: GL_PROGRAM_BINARY_LENGTH                                     = 34625
  integer(4),parameter :: GL_NUM_PROGRAM_BINARY_FORMATS                                = 34814
  integer(4),parameter :: GL_PROGRAM_BINARY_FORMATS                                    = 34815
  integer(4),parameter :: GL_VERTEX_SHADER_BIT                                         = 1
  integer(4),parameter :: GL_FRAGMENT_SHADER_BIT                                       = 2
  integer(4),parameter :: GL_GEOMETRY_SHADER_BIT                                       = 4
  integer(4),parameter :: GL_TESS_CONTROL_SHADER_BIT                                   = 8
  integer(4),parameter :: GL_TESS_EVALUATION_SHADER_BIT                                = 16
  integer(4),parameter :: GL_ALL_SHADER_BITS                                           = -1
  integer(4),parameter :: GL_PROGRAM_SEPARABLE                                         = 33368
  integer(4),parameter :: GL_ACTIVE_PROGRAM                                            = 33369
  integer(4),parameter :: GL_PROGRAM_PIPELINE_BINDING                                  = 33370
  integer(4),parameter :: GL_MAX_VIEWPORTS                                             = 33371
  integer(4),parameter :: GL_VIEWPORT_SUBPIXEL_BITS                                    = 33372
  integer(4),parameter :: GL_VIEWPORT_BOUNDS_RANGE                                     = 33373
  integer(4),parameter :: GL_LAYER_PROVOKING_VERTEX                                    = 33374
  integer(4),parameter :: GL_VIEWPORT_INDEX_PROVOKING_VERTEX                           = 33375
  integer(4),parameter :: GL_UNDEFINED_VERTEX                                          = 33376
  integer(4),parameter :: GL_COPY_READ_BUFFER_BINDING                                  = 36662
  integer(4),parameter :: GL_COPY_WRITE_BUFFER_BINDING                                 = 36663
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_ACTIVE                                 = 36388
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_PAUSED                                 = 36387
  integer(4),parameter :: GL_UNPACK_COMPRESSED_BLOCK_WIDTH                             = 37159
  integer(4),parameter :: GL_UNPACK_COMPRESSED_BLOCK_HEIGHT                            = 37160
  integer(4),parameter :: GL_UNPACK_COMPRESSED_BLOCK_DEPTH                             = 37161
  integer(4),parameter :: GL_UNPACK_COMPRESSED_BLOCK_SIZE                              = 37162
  integer(4),parameter :: GL_PACK_COMPRESSED_BLOCK_WIDTH                               = 37163
  integer(4),parameter :: GL_PACK_COMPRESSED_BLOCK_HEIGHT                              = 37164
  integer(4),parameter :: GL_PACK_COMPRESSED_BLOCK_DEPTH                               = 37165
  integer(4),parameter :: GL_PACK_COMPRESSED_BLOCK_SIZE                                = 37166
  integer(4),parameter :: GL_NUM_SAMPLE_COUNTS                                         = 37760
  integer(4),parameter :: GL_MIN_MAP_BUFFER_ALIGNMENT                                  = 37052
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER                                     = 37568
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_BINDING                             = 37569
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_START                               = 37570
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_SIZE                                = 37571
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE                           = 37572
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS              = 37573
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES       = 37574
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER         = 37575
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER   = 37576
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 37577
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER       = 37578
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER       = 37579
  integer(4),parameter :: GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                         = 37580
  integer(4),parameter :: GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                   = 37581
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                = 37582
  integer(4),parameter :: GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                       = 37583
  integer(4),parameter :: GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                       = 37584
  integer(4),parameter :: GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                       = 37585
  integer(4),parameter :: GL_MAX_VERTEX_ATOMIC_COUNTERS                                = 37586
  integer(4),parameter :: GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS                          = 37587
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS                       = 37588
  integer(4),parameter :: GL_MAX_GEOMETRY_ATOMIC_COUNTERS                              = 37589
  integer(4),parameter :: GL_MAX_FRAGMENT_ATOMIC_COUNTERS                              = 37590
  integer(4),parameter :: GL_MAX_COMBINED_ATOMIC_COUNTERS                              = 37591
  integer(4),parameter :: GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE                            = 37592
  integer(4),parameter :: GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                        = 37596
  integer(4),parameter :: GL_ACTIVE_ATOMIC_COUNTER_BUFFERS                             = 37593
  integer(4),parameter :: GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                       = 37594
  integer(4),parameter :: GL_UNSIGNED_INT_ATOMIC_COUNTER                               = 37595
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT                           = 1
  integer(4),parameter :: GL_ELEMENT_ARRAY_BARRIER_BIT                                 = 2
  integer(4),parameter :: GL_UNIFORM_BARRIER_BIT                                       = 4
  integer(4),parameter :: GL_TEXTURE_FETCH_BARRIER_BIT                                 = 8
  integer(4),parameter :: GL_SHADER_IMAGE_ACCESS_BARRIER_BIT                           = 32
  integer(4),parameter :: GL_COMMAND_BARRIER_BIT                                       = 64
  integer(4),parameter :: GL_PIXEL_BUFFER_BARRIER_BIT                                  = 128
  integer(4),parameter :: GL_TEXTURE_UPDATE_BARRIER_BIT                                = 256
  integer(4),parameter :: GL_BUFFER_UPDATE_BARRIER_BIT                                 = 512
  integer(4),parameter :: GL_FRAMEBUFFER_BARRIER_BIT                                   = 1024
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BARRIER_BIT                            = 2048
  integer(4),parameter :: GL_ATOMIC_COUNTER_BARRIER_BIT                                = 4096
  integer(4),parameter :: GL_ALL_BARRIER_BITS                                          = -1
  integer(4),parameter :: GL_MAX_IMAGE_UNITS                                           = 36664
  integer(4),parameter :: GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS             = 36665
  integer(4),parameter :: GL_IMAGE_BINDING_NAME                                        = 36666
  integer(4),parameter :: GL_IMAGE_BINDING_LEVEL                                       = 36667
  integer(4),parameter :: GL_IMAGE_BINDING_LAYERED                                     = 36668
  integer(4),parameter :: GL_IMAGE_BINDING_LAYER                                       = 36669
  integer(4),parameter :: GL_IMAGE_BINDING_ACCESS                                      = 36670
  integer(4),parameter :: GL_IMAGE_1D                                                  = 36940
  integer(4),parameter :: GL_IMAGE_2D                                                  = 36941
  integer(4),parameter :: GL_IMAGE_3D                                                  = 36942
  integer(4),parameter :: GL_IMAGE_2D_RECT                                             = 36943
  integer(4),parameter :: GL_IMAGE_CUBE                                                = 36944
  integer(4),parameter :: GL_IMAGE_BUFFER                                              = 36945
  integer(4),parameter :: GL_IMAGE_1D_ARRAY                                            = 36946
  integer(4),parameter :: GL_IMAGE_2D_ARRAY                                            = 36947
  integer(4),parameter :: GL_IMAGE_CUBE_MAP_ARRAY                                      = 36948
  integer(4),parameter :: GL_IMAGE_2D_MULTISAMPLE                                      = 36949
  integer(4),parameter :: GL_IMAGE_2D_MULTISAMPLE_ARRAY                                = 36950
  integer(4),parameter :: GL_INT_IMAGE_1D                                              = 36951
  integer(4),parameter :: GL_INT_IMAGE_2D                                              = 36952
  integer(4),parameter :: GL_INT_IMAGE_3D                                              = 36953
  integer(4),parameter :: GL_INT_IMAGE_2D_RECT                                         = 36954
  integer(4),parameter :: GL_INT_IMAGE_CUBE                                            = 36955
  integer(4),parameter :: GL_INT_IMAGE_BUFFER                                          = 36956
  integer(4),parameter :: GL_INT_IMAGE_1D_ARRAY                                        = 36957
  integer(4),parameter :: GL_INT_IMAGE_2D_ARRAY                                        = 36958
  integer(4),parameter :: GL_INT_IMAGE_CUBE_MAP_ARRAY                                  = 36959
  integer(4),parameter :: GL_INT_IMAGE_2D_MULTISAMPLE                                  = 36960
  integer(4),parameter :: GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY                            = 36961
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_1D                                     = 36962
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_2D                                     = 36963
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_3D                                     = 36964
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_2D_RECT                                = 36965
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_CUBE                                   = 36966
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_BUFFER                                 = 36967
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_1D_ARRAY                               = 36968
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_2D_ARRAY                               = 36969
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY                         = 36970
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE                         = 36971
  integer(4),parameter :: GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY                   = 36972
  integer(4),parameter :: GL_MAX_IMAGE_SAMPLES                                         = 36973
  integer(4),parameter :: GL_IMAGE_BINDING_FORMAT                                      = 36974
  integer(4),parameter :: GL_IMAGE_FORMAT_COMPATIBILITY_TYPE                           = 37063
  integer(4),parameter :: GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE                        = 37064
  integer(4),parameter :: GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS                       = 37065
  integer(4),parameter :: GL_MAX_VERTEX_IMAGE_UNIFORMS                                 = 37066
  integer(4),parameter :: GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS                           = 37067
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS                        = 37068
  integer(4),parameter :: GL_MAX_GEOMETRY_IMAGE_UNIFORMS                               = 37069
  integer(4),parameter :: GL_MAX_FRAGMENT_IMAGE_UNIFORMS                               = 37070
  integer(4),parameter :: GL_MAX_COMBINED_IMAGE_UNIFORMS                               = 37071
  integer(4),parameter :: GL_COMPRESSED_RGBA_BPTC_UNORM                                = 36492
  integer(4),parameter :: GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM                          = 36493
  integer(4),parameter :: GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT                          = 36494
  integer(4),parameter :: GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT                        = 36495
  integer(4),parameter :: GL_TEXTURE_IMMUTABLE_FORMAT                                  = 37167
  integer(4),parameter :: GL_NUM_SHADING_LANGUAGE_VERSIONS                             = 33513
  integer(4),parameter :: GL_VERTEX_ATTRIB_ARRAY_LONG                                  = 34638
  integer(4),parameter :: GL_COMPRESSED_RGB8_ETC2                                      = 37492
  integer(4),parameter :: GL_COMPRESSED_SRGB8_ETC2                                     = 37493
  integer(4),parameter :: GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2                  = 37494
  integer(4),parameter :: GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2                 = 37495
  integer(4),parameter :: GL_COMPRESSED_RGBA8_ETC2_EAC                                 = 37496
  integer(4),parameter :: GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                          = 37497
  integer(4),parameter :: GL_COMPRESSED_R11_EAC                                        = 37488
  integer(4),parameter :: GL_COMPRESSED_SIGNED_R11_EAC                                 = 37489
  integer(4),parameter :: GL_COMPRESSED_RG11_EAC                                       = 37490
  integer(4),parameter :: GL_COMPRESSED_SIGNED_RG11_EAC                                = 37491
  integer(4),parameter :: GL_PRIMITIVE_RESTART_FIXED_INDEX                             = 36201
  integer(4),parameter :: GL_ANY_SAMPLES_PASSED_CONSERVATIVE                           = 36202
  integer(4),parameter :: GL_MAX_ELEMENT_INDEX                                         = 36203
  integer(4),parameter :: GL_COMPUTE_SHADER                                            = 37305
  integer(4),parameter :: GL_MAX_COMPUTE_UNIFORM_BLOCKS                                = 37307
  integer(4),parameter :: GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS                           = 37308
  integer(4),parameter :: GL_MAX_COMPUTE_IMAGE_UNIFORMS                                = 37309
  integer(4),parameter :: GL_MAX_COMPUTE_SHARED_MEMORY_SIZE                            = 33378
  integer(4),parameter :: GL_MAX_COMPUTE_UNIFORM_COMPONENTS                            = 33379
  integer(4),parameter :: GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                        = 33380
  integer(4),parameter :: GL_MAX_COMPUTE_ATOMIC_COUNTERS                               = 33381
  integer(4),parameter :: GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS                   = 33382
  integer(4),parameter :: GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS                        = 37099
  integer(4),parameter :: GL_MAX_COMPUTE_WORK_GROUP_COUNT                              = 37310
  integer(4),parameter :: GL_MAX_COMPUTE_WORK_GROUP_SIZE                               = 37311
  integer(4),parameter :: GL_COMPUTE_WORK_GROUP_SIZE                                   = 33383
  integer(4),parameter :: GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER                = 37100
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER        = 37101
  integer(4),parameter :: GL_DISPATCH_INDIRECT_BUFFER                                  = 37102
  integer(4),parameter :: GL_DISPATCH_INDIRECT_BUFFER_BINDING                          = 37103
  integer(4),parameter :: GL_COMPUTE_SHADER_BIT                                        = 32
  integer(4),parameter :: GL_DEBUG_OUTPUT_SYNCHRONOUS                                  = 33346
  integer(4),parameter :: GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                          = 33347
  integer(4),parameter :: GL_DEBUG_CALLBACK_FUNCTION                                   = 33348
  integer(4),parameter :: GL_DEBUG_CALLBACK_USER_PARAM                                 = 33349
  integer(4),parameter :: GL_DEBUG_SOURCE_API                                          = 33350
  integer(4),parameter :: GL_DEBUG_SOURCE_WINDOW_SYSTEM                                = 33351
  integer(4),parameter :: GL_DEBUG_SOURCE_SHADER_COMPILER                              = 33352
  integer(4),parameter :: GL_DEBUG_SOURCE_THIRD_PARTY                                  = 33353
  integer(4),parameter :: GL_DEBUG_SOURCE_APPLICATION                                  = 33354
  integer(4),parameter :: GL_DEBUG_SOURCE_OTHER                                        = 33355
  integer(4),parameter :: GL_DEBUG_TYPE_ERROR                                          = 33356
  integer(4),parameter :: GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR                            = 33357
  integer(4),parameter :: GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR                             = 33358
  integer(4),parameter :: GL_DEBUG_TYPE_PORTABILITY                                    = 33359
  integer(4),parameter :: GL_DEBUG_TYPE_PERFORMANCE                                    = 33360
  integer(4),parameter :: GL_DEBUG_TYPE_OTHER                                          = 33361
  integer(4),parameter :: GL_MAX_DEBUG_MESSAGE_LENGTH                                  = 37187
  integer(4),parameter :: GL_MAX_DEBUG_LOGGED_MESSAGES                                 = 37188
  integer(4),parameter :: GL_DEBUG_LOGGED_MESSAGES                                     = 37189
  integer(4),parameter :: GL_DEBUG_SEVERITY_HIGH                                       = 37190
  integer(4),parameter :: GL_DEBUG_SEVERITY_MEDIUM                                     = 37191
  integer(4),parameter :: GL_DEBUG_SEVERITY_LOW                                        = 37192
  integer(4),parameter :: GL_DEBUG_TYPE_MARKER                                         = 33384
  integer(4),parameter :: GL_DEBUG_TYPE_PUSH_GROUP                                     = 33385
  integer(4),parameter :: GL_DEBUG_TYPE_POP_GROUP                                      = 33386
  integer(4),parameter :: GL_DEBUG_SEVERITY_NOTIFICATION                               = 33387
  integer(4),parameter :: GL_MAX_DEBUG_GROUP_STACK_DEPTH                               = 33388
  integer(4),parameter :: GL_DEBUG_GROUP_STACK_DEPTH                                   = 33389
  integer(4),parameter :: GL_BUFFER                                                    = 33504
  integer(4),parameter :: GL_SHADER                                                    = 33505
  integer(4),parameter :: GL_PROGRAM                                                   = 33506
  integer(4),parameter :: GL_QUERY                                                     = 33507
  integer(4),parameter :: GL_PROGRAM_PIPELINE                                          = 33508
  integer(4),parameter :: GL_SAMPLER                                                   = 33510
  integer(4),parameter :: GL_MAX_LABEL_LENGTH                                          = 33512
  integer(4),parameter :: GL_DEBUG_OUTPUT                                              = 37600
  integer(4),parameter :: GL_CONTEXT_FLAG_DEBUG_BIT                                    = 2
  integer(4),parameter :: GL_MAX_UNIFORM_LOCATIONS                                     = 33390
  integer(4),parameter :: GL_FRAMEBUFFER_DEFAULT_WIDTH                                 = 37648
  integer(4),parameter :: GL_FRAMEBUFFER_DEFAULT_HEIGHT                                = 37649
  integer(4),parameter :: GL_FRAMEBUFFER_DEFAULT_LAYERS                                = 37650
  integer(4),parameter :: GL_FRAMEBUFFER_DEFAULT_SAMPLES                               = 37651
  integer(4),parameter :: GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS                = 37652
  integer(4),parameter :: GL_MAX_FRAMEBUFFER_WIDTH                                     = 37653
  integer(4),parameter :: GL_MAX_FRAMEBUFFER_HEIGHT                                    = 37654
  integer(4),parameter :: GL_MAX_FRAMEBUFFER_LAYERS                                    = 37655
  integer(4),parameter :: GL_MAX_FRAMEBUFFER_SAMPLES                                   = 37656
  integer(4),parameter :: GL_INTERNALFORMAT_SUPPORTED                                  = 33391
  integer(4),parameter :: GL_INTERNALFORMAT_PREFERRED                                  = 33392
  integer(4),parameter :: GL_INTERNALFORMAT_RED_SIZE                                   = 33393
  integer(4),parameter :: GL_INTERNALFORMAT_GREEN_SIZE                                 = 33394
  integer(4),parameter :: GL_INTERNALFORMAT_BLUE_SIZE                                  = 33395
  integer(4),parameter :: GL_INTERNALFORMAT_ALPHA_SIZE                                 = 33396
  integer(4),parameter :: GL_INTERNALFORMAT_DEPTH_SIZE                                 = 33397
  integer(4),parameter :: GL_INTERNALFORMAT_STENCIL_SIZE                               = 33398
  integer(4),parameter :: GL_INTERNALFORMAT_SHARED_SIZE                                = 33399
  integer(4),parameter :: GL_INTERNALFORMAT_RED_TYPE                                   = 33400
  integer(4),parameter :: GL_INTERNALFORMAT_GREEN_TYPE                                 = 33401
  integer(4),parameter :: GL_INTERNALFORMAT_BLUE_TYPE                                  = 33402
  integer(4),parameter :: GL_INTERNALFORMAT_ALPHA_TYPE                                 = 33403
  integer(4),parameter :: GL_INTERNALFORMAT_DEPTH_TYPE                                 = 33404
  integer(4),parameter :: GL_INTERNALFORMAT_STENCIL_TYPE                               = 33405
  integer(4),parameter :: GL_MAX_WIDTH                                                 = 33406
  integer(4),parameter :: GL_MAX_HEIGHT                                                = 33407
  integer(4),parameter :: GL_MAX_DEPTH                                                 = 33408
  integer(4),parameter :: GL_MAX_LAYERS                                                = 33409
  integer(4),parameter :: GL_MAX_COMBINED_DIMENSIONS                                   = 33410
  integer(4),parameter :: GL_COLOR_COMPONENTS                                          = 33411
  integer(4),parameter :: GL_DEPTH_COMPONENTS                                          = 33412
  integer(4),parameter :: GL_STENCIL_COMPONENTS                                        = 33413
  integer(4),parameter :: GL_COLOR_RENDERABLE                                          = 33414
  integer(4),parameter :: GL_DEPTH_RENDERABLE                                          = 33415
  integer(4),parameter :: GL_STENCIL_RENDERABLE                                        = 33416
  integer(4),parameter :: GL_FRAMEBUFFER_RENDERABLE                                    = 33417
  integer(4),parameter :: GL_FRAMEBUFFER_RENDERABLE_LAYERED                            = 33418
  integer(4),parameter :: GL_FRAMEBUFFER_BLEND                                         = 33419
  integer(4),parameter :: GL_READ_PIXELS                                               = 33420
  integer(4),parameter :: GL_READ_PIXELS_FORMAT                                        = 33421
  integer(4),parameter :: GL_READ_PIXELS_TYPE                                          = 33422
  integer(4),parameter :: GL_TEXTURE_IMAGE_FORMAT                                      = 33423
  integer(4),parameter :: GL_TEXTURE_IMAGE_TYPE                                        = 33424
  integer(4),parameter :: GL_GET_TEXTURE_IMAGE_FORMAT                                  = 33425
  integer(4),parameter :: GL_GET_TEXTURE_IMAGE_TYPE                                    = 33426
  integer(4),parameter :: GL_MIPMAP                                                    = 33427
  integer(4),parameter :: GL_MANUAL_GENERATE_MIPMAP                                    = 33428
  integer(4),parameter :: GL_AUTO_GENERATE_MIPMAP                                      = 33429
  integer(4),parameter :: GL_COLOR_ENCODING                                            = 33430
  integer(4),parameter :: GL_SRGB_READ                                                 = 33431
  integer(4),parameter :: GL_SRGB_WRITE                                                = 33432
  integer(4),parameter :: GL_FILTER                                                    = 33434
  integer(4),parameter :: GL_VERTEX_TEXTURE                                            = 33435
  integer(4),parameter :: GL_TESS_CONTROL_TEXTURE                                      = 33436
  integer(4),parameter :: GL_TESS_EVALUATION_TEXTURE                                   = 33437
  integer(4),parameter :: GL_GEOMETRY_TEXTURE                                          = 33438
  integer(4),parameter :: GL_FRAGMENT_TEXTURE                                          = 33439
  integer(4),parameter :: GL_COMPUTE_TEXTURE                                           = 33440
  integer(4),parameter :: GL_TEXTURE_SHADOW                                            = 33441
  integer(4),parameter :: GL_TEXTURE_GATHER                                            = 33442
  integer(4),parameter :: GL_TEXTURE_GATHER_SHADOW                                     = 33443
  integer(4),parameter :: GL_SHADER_IMAGE_LOAD                                         = 33444
  integer(4),parameter :: GL_SHADER_IMAGE_STORE                                        = 33445
  integer(4),parameter :: GL_SHADER_IMAGE_ATOMIC                                       = 33446
  integer(4),parameter :: GL_IMAGE_TEXEL_SIZE                                          = 33447
  integer(4),parameter :: GL_IMAGE_COMPATIBILITY_CLASS                                 = 33448
  integer(4),parameter :: GL_IMAGE_PIXEL_FORMAT                                        = 33449
  integer(4),parameter :: GL_IMAGE_PIXEL_TYPE                                          = 33450
  integer(4),parameter :: GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                       = 33452
  integer(4),parameter :: GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST                     = 33453
  integer(4),parameter :: GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE                      = 33454
  integer(4),parameter :: GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE                    = 33455
  integer(4),parameter :: GL_TEXTURE_COMPRESSED_BLOCK_WIDTH                            = 33457
  integer(4),parameter :: GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT                           = 33458
  integer(4),parameter :: GL_TEXTURE_COMPRESSED_BLOCK_SIZE                             = 33459
  integer(4),parameter :: GL_CLEAR_BUFFER                                              = 33460
  integer(4),parameter :: GL_TEXTURE_VIEW                                              = 33461
  integer(4),parameter :: GL_VIEW_COMPATIBILITY_CLASS                                  = 33462
  integer(4),parameter :: GL_FULL_SUPPORT                                              = 33463
  integer(4),parameter :: GL_CAVEAT_SUPPORT                                            = 33464
  integer(4),parameter :: GL_IMAGE_CLASS_4_X_32                                        = 33465
  integer(4),parameter :: GL_IMAGE_CLASS_2_X_32                                        = 33466
  integer(4),parameter :: GL_IMAGE_CLASS_1_X_32                                        = 33467
  integer(4),parameter :: GL_IMAGE_CLASS_4_X_16                                        = 33468
  integer(4),parameter :: GL_IMAGE_CLASS_2_X_16                                        = 33469
  integer(4),parameter :: GL_IMAGE_CLASS_1_X_16                                        = 33470
  integer(4),parameter :: GL_IMAGE_CLASS_4_X_8                                         = 33471
  integer(4),parameter :: GL_IMAGE_CLASS_2_X_8                                         = 33472
  integer(4),parameter :: GL_IMAGE_CLASS_1_X_8                                         = 33473
  integer(4),parameter :: GL_IMAGE_CLASS_11_11_10                                      = 33474
  integer(4),parameter :: GL_IMAGE_CLASS_10_10_10_2                                    = 33475
  integer(4),parameter :: GL_VIEW_CLASS_128_BITS                                       = 33476
  integer(4),parameter :: GL_VIEW_CLASS_96_BITS                                        = 33477
  integer(4),parameter :: GL_VIEW_CLASS_64_BITS                                        = 33478
  integer(4),parameter :: GL_VIEW_CLASS_48_BITS                                        = 33479
  integer(4),parameter :: GL_VIEW_CLASS_32_BITS                                        = 33480
  integer(4),parameter :: GL_VIEW_CLASS_24_BITS                                        = 33481
  integer(4),parameter :: GL_VIEW_CLASS_16_BITS                                        = 33482
  integer(4),parameter :: GL_VIEW_CLASS_8_BITS                                         = 33483
  integer(4),parameter :: GL_VIEW_CLASS_S3TC_DXT1_RGB                                  = 33484
  integer(4),parameter :: GL_VIEW_CLASS_S3TC_DXT1_RGBA                                 = 33485
  integer(4),parameter :: GL_VIEW_CLASS_S3TC_DXT3_RGBA                                 = 33486
  integer(4),parameter :: GL_VIEW_CLASS_S3TC_DXT5_RGBA                                 = 33487
  integer(4),parameter :: GL_VIEW_CLASS_RGTC1_RED                                      = 33488
  integer(4),parameter :: GL_VIEW_CLASS_RGTC2_RG                                       = 33489
  integer(4),parameter :: GL_VIEW_CLASS_BPTC_UNORM                                     = 33490
  integer(4),parameter :: GL_VIEW_CLASS_BPTC_FLOAT                                     = 33491
  integer(4),parameter :: GL_UNIFORM                                                   = 37601
  integer(4),parameter :: GL_UNIFORM_BLOCK                                             = 37602
  integer(4),parameter :: GL_PROGRAM_INPUT                                             = 37603
  integer(4),parameter :: GL_PROGRAM_OUTPUT                                            = 37604
  integer(4),parameter :: GL_BUFFER_VARIABLE                                           = 37605
  integer(4),parameter :: GL_SHADER_STORAGE_BLOCK                                      = 37606
  integer(4),parameter :: GL_VERTEX_SUBROUTINE                                         = 37608
  integer(4),parameter :: GL_TESS_CONTROL_SUBROUTINE                                   = 37609
  integer(4),parameter :: GL_TESS_EVALUATION_SUBROUTINE                                = 37610
  integer(4),parameter :: GL_GEOMETRY_SUBROUTINE                                       = 37611
  integer(4),parameter :: GL_FRAGMENT_SUBROUTINE                                       = 37612
  integer(4),parameter :: GL_COMPUTE_SUBROUTINE                                        = 37613
  integer(4),parameter :: GL_VERTEX_SUBROUTINE_UNIFORM                                 = 37614
  integer(4),parameter :: GL_TESS_CONTROL_SUBROUTINE_UNIFORM                           = 37615
  integer(4),parameter :: GL_TESS_EVALUATION_SUBROUTINE_UNIFORM                        = 37616
  integer(4),parameter :: GL_GEOMETRY_SUBROUTINE_UNIFORM                               = 37617
  integer(4),parameter :: GL_FRAGMENT_SUBROUTINE_UNIFORM                               = 37618
  integer(4),parameter :: GL_COMPUTE_SUBROUTINE_UNIFORM                                = 37619
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_VARYING                                = 37620
  integer(4),parameter :: GL_ACTIVE_RESOURCES                                          = 37621
  integer(4),parameter :: GL_MAX_NAME_LENGTH                                           = 37622
  integer(4),parameter :: GL_MAX_NUM_ACTIVE_VARIABLES                                  = 37623
  integer(4),parameter :: GL_MAX_NUM_COMPATIBLE_SUBROUTINES                            = 37624
  integer(4),parameter :: GL_NAME_LENGTH                                               = 37625
  integer(4),parameter :: GL_TYPE                                                      = 37626
  integer(4),parameter :: GL_ARRAY_SIZE                                                = 37627
  integer(4),parameter :: GL_OFFSET                                                    = 37628
  integer(4),parameter :: GL_BLOCK_INDEX                                               = 37629
  integer(4),parameter :: GL_ARRAY_STRIDE                                              = 37630
  integer(4),parameter :: GL_MATRIX_STRIDE                                             = 37631
  integer(4),parameter :: GL_IS_ROW_MAJOR                                              = 37632
  integer(4),parameter :: GL_ATOMIC_COUNTER_BUFFER_INDEX                               = 37633
  integer(4),parameter :: GL_BUFFER_BINDING                                            = 37634
  integer(4),parameter :: GL_BUFFER_DATA_SIZE                                          = 37635
  integer(4),parameter :: GL_NUM_ACTIVE_VARIABLES                                      = 37636
  integer(4),parameter :: GL_ACTIVE_VARIABLES                                          = 37637
  integer(4),parameter :: GL_REFERENCED_BY_VERTEX_SHADER                               = 37638
  integer(4),parameter :: GL_REFERENCED_BY_TESS_CONTROL_SHADER                         = 37639
  integer(4),parameter :: GL_REFERENCED_BY_TESS_EVALUATION_SHADER                      = 37640
  integer(4),parameter :: GL_REFERENCED_BY_GEOMETRY_SHADER                             = 37641
  integer(4),parameter :: GL_REFERENCED_BY_FRAGMENT_SHADER                             = 37642
  integer(4),parameter :: GL_REFERENCED_BY_COMPUTE_SHADER                              = 37643
  integer(4),parameter :: GL_TOP_LEVEL_ARRAY_SIZE                                      = 37644
  integer(4),parameter :: GL_TOP_LEVEL_ARRAY_STRIDE                                    = 37645
  integer(4),parameter :: GL_LOCATION                                                  = 37646
  integer(4),parameter :: GL_LOCATION_INDEX                                            = 37647
  integer(4),parameter :: GL_IS_PER_PATCH                                              = 37607
  integer(4),parameter :: GL_SHADER_STORAGE_BUFFER                                     = 37074
  integer(4),parameter :: GL_SHADER_STORAGE_BUFFER_BINDING                             = 37075
  integer(4),parameter :: GL_SHADER_STORAGE_BUFFER_START                               = 37076
  integer(4),parameter :: GL_SHADER_STORAGE_BUFFER_SIZE                                = 37077
  integer(4),parameter :: GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS                          = 37078
  integer(4),parameter :: GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                        = 37079
  integer(4),parameter :: GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS                    = 37080
  integer(4),parameter :: GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS                 = 37081
  integer(4),parameter :: GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                        = 37082
  integer(4),parameter :: GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS                         = 37083
  integer(4),parameter :: GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS                        = 37084
  integer(4),parameter :: GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS                        = 37085
  integer(4),parameter :: GL_MAX_SHADER_STORAGE_BLOCK_SIZE                             = 37086
  integer(4),parameter :: GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT                    = 37087
  integer(4),parameter :: GL_SHADER_STORAGE_BARRIER_BIT                                = 8192
  integer(4),parameter :: GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES                      = 36665
  integer(4),parameter :: GL_DEPTH_STENCIL_TEXTURE_MODE                                = 37098
  integer(4),parameter :: GL_TEXTURE_BUFFER_OFFSET                                     = 37277
  integer(4),parameter :: GL_TEXTURE_BUFFER_SIZE                                       = 37278
  integer(4),parameter :: GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                           = 37279
  integer(4),parameter :: GL_TEXTURE_VIEW_MIN_LEVEL                                    = 33499
  integer(4),parameter :: GL_TEXTURE_VIEW_NUM_LEVELS                                   = 33500
  integer(4),parameter :: GL_TEXTURE_VIEW_MIN_LAYER                                    = 33501
  integer(4),parameter :: GL_TEXTURE_VIEW_NUM_LAYERS                                   = 33502
  integer(4),parameter :: GL_TEXTURE_IMMUTABLE_LEVELS                                  = 33503
  integer(4),parameter :: GL_VERTEX_ATTRIB_BINDING                                     = 33492
  integer(4),parameter :: GL_VERTEX_ATTRIB_RELATIVE_OFFSET                             = 33493
  integer(4),parameter :: GL_VERTEX_BINDING_DIVISOR                                    = 33494
  integer(4),parameter :: GL_VERTEX_BINDING_OFFSET                                     = 33495
  integer(4),parameter :: GL_VERTEX_BINDING_STRIDE                                     = 33496
  integer(4),parameter :: GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                         = 33497
  integer(4),parameter :: GL_MAX_VERTEX_ATTRIB_BINDINGS                                = 33498
  integer(4),parameter :: GL_VERTEX_BINDING_BUFFER                                     = 36687
  integer(4),parameter :: GL_DISPLAY_LIST                                              = 33511
  integer(4),parameter :: GL_MAX_VERTEX_ATTRIB_STRIDE                                  = 33509
  integer(4),parameter :: GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED                   = 33313
  integer(4),parameter :: GL_TEXTURE_BUFFER_BINDING                                    = 35882
  integer(4),parameter :: GL_MAP_PERSISTENT_BIT                                        = 64
  integer(4),parameter :: GL_MAP_COHERENT_BIT                                          = 128
  integer(4),parameter :: GL_DYNAMIC_STORAGE_BIT                                       = 256
  integer(4),parameter :: GL_CLIENT_STORAGE_BIT                                        = 512
  integer(4),parameter :: GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT                          = 16384
  integer(4),parameter :: GL_BUFFER_IMMUTABLE_STORAGE                                  = 33311
  integer(4),parameter :: GL_BUFFER_STORAGE_FLAGS                                      = 33312
  integer(4),parameter :: GL_CLEAR_TEXTURE                                             = 37733
  integer(4),parameter :: GL_LOCATION_COMPONENT                                        = 37706
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_INDEX                           = 37707
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE                          = 37708
  integer(4),parameter :: GL_QUERY_BUFFER                                              = 37266
  integer(4),parameter :: GL_QUERY_BUFFER_BARRIER_BIT                                  = 32768
  integer(4),parameter :: GL_QUERY_BUFFER_BINDING                                      = 37267
  integer(4),parameter :: GL_QUERY_RESULT_NO_WAIT                                      = 37268
  integer(4),parameter :: GL_MIRROR_CLAMP_TO_EDGE                                      = 34627
  integer(4),parameter :: GL_CONTEXT_LOST                                              = 1287
  integer(4),parameter :: GL_NEGATIVE_ONE_TO_ONE                                       = 37726
  integer(4),parameter :: GL_ZERO_TO_ONE                                               = 37727
  integer(4),parameter :: GL_CLIP_ORIGIN                                               = 37724
  integer(4),parameter :: GL_CLIP_DEPTH_MODE                                           = 37725
  integer(4),parameter :: GL_QUERY_WAIT_INVERTED                                       = 36375
  integer(4),parameter :: GL_QUERY_NO_WAIT_INVERTED                                    = 36376
  integer(4),parameter :: GL_QUERY_BY_REGION_WAIT_INVERTED                             = 36377
  integer(4),parameter :: GL_QUERY_BY_REGION_NO_WAIT_INVERTED                          = 36378
  integer(4),parameter :: GL_MAX_CULL_DISTANCES                                        = 33529
  integer(4),parameter :: GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES                      = 33530
  integer(4),parameter :: GL_TEXTURE_TARGET                                            = 4102
  integer(4),parameter :: GL_QUERY_TARGET                                              = 33514
  integer(4),parameter :: GL_GUILTY_CONTEXT_RESET                                      = 33363
  integer(4),parameter :: GL_INNOCENT_CONTEXT_RESET                                    = 33364
  integer(4),parameter :: GL_UNKNOWN_CONTEXT_RESET                                     = 33365
  integer(4),parameter :: GL_RESET_NOTIFICATION_STRATEGY                               = 33366
  integer(4),parameter :: GL_LOSE_CONTEXT_ON_RESET                                     = 33362
  integer(4),parameter :: GL_NO_RESET_NOTIFICATION                                     = 33377
  integer(4),parameter :: GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT                            = 4
  integer(4),parameter :: GL_COLOR_TABLE                                               = 32976
  integer(4),parameter :: GL_POST_CONVOLUTION_COLOR_TABLE                              = 32977
  integer(4),parameter :: GL_POST_COLOR_MATRIX_COLOR_TABLE                             = 32978
  integer(4),parameter :: GL_PROXY_COLOR_TABLE                                         = 32979
  integer(4),parameter :: GL_PROXY_POST_CONVOLUTION_COLOR_TABLE                        = 32980
  integer(4),parameter :: GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE                       = 32981
  integer(4),parameter :: GL_CONVOLUTION_1D                                            = 32784
  integer(4),parameter :: GL_CONVOLUTION_2D                                            = 32785
  integer(4),parameter :: GL_SEPARABLE_2D                                              = 32786
  integer(4),parameter :: GL_HISTOGRAM                                                 = 32804
  integer(4),parameter :: GL_PROXY_HISTOGRAM                                           = 32805
  integer(4),parameter :: GL_MINMAX                                                    = 32814
  integer(4),parameter :: GL_CONTEXT_RELEASE_BEHAVIOR                                  = 33531
  integer(4),parameter :: GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH                            = 33532
  integer(4),parameter :: GL_SHADER_BINARY_FORMAT_SPIR_V                               = 38225
  integer(4),parameter :: GL_SPIR_V_BINARY                                             = 38226
  integer(4),parameter :: GL_PARAMETER_BUFFER                                          = 33006
  integer(4),parameter :: GL_PARAMETER_BUFFER_BINDING                                  = 33007
  integer(4),parameter :: GL_CONTEXT_FLAG_NO_ERROR_BIT                                 = 8
  integer(4),parameter :: GL_VERTICES_SUBMITTED                                        = 33518
  integer(4),parameter :: GL_PRIMITIVES_SUBMITTED                                      = 33519
  integer(4),parameter :: GL_VERTEX_SHADER_INVOCATIONS                                 = 33520
  integer(4),parameter :: GL_TESS_CONTROL_SHADER_PATCHES                               = 33521
  integer(4),parameter :: GL_TESS_EVALUATION_SHADER_INVOCATIONS                        = 33522
  integer(4),parameter :: GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED                        = 33523
  integer(4),parameter :: GL_FRAGMENT_SHADER_INVOCATIONS                               = 33524
  integer(4),parameter :: GL_COMPUTE_SHADER_INVOCATIONS                                = 33525
  integer(4),parameter :: GL_CLIPPING_INPUT_PRIMITIVES                                 = 33526
  integer(4),parameter :: GL_CLIPPING_OUTPUT_PRIMITIVES                                = 33527
  integer(4),parameter :: GL_POLYGON_OFFSET_CLAMP                                      = 36379
  integer(4),parameter :: GL_SPIR_V_EXTENSIONS                                         = 38227
  integer(4),parameter :: GL_NUM_SPIR_V_EXTENSIONS                                     = 38228
  integer(4),parameter :: GL_TEXTURE_MAX_ANISOTROPY                                    = 34046
  integer(4),parameter :: GL_MAX_TEXTURE_MAX_ANISOTROPY                                = 34047
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_OVERFLOW                               = 33516
  integer(4),parameter :: GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW                        = 33517
  interface

subroutine glCullFace(mode) bind(C, name="glCullFace")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glCullFace

subroutine glFrontFace(mode) bind(C, name="glFrontFace")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glFrontFace

subroutine glHint(target, mode) bind(C, name="glHint")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: mode
end subroutine glHint

subroutine glLineWidth(width) bind(C, name="glLineWidth")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: width
end subroutine glLineWidth

subroutine glPointSize(size) bind(C, name="glPointSize")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: size
end subroutine glPointSize

subroutine glPolygonMode(face, mode) bind(C, name="glPolygonMode")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: mode
end subroutine glPolygonMode

subroutine glScissor(x, y, width, height) bind(C, name="glScissor")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glScissor

subroutine glTexParameterf(target, pname, param) bind(C, name="glTexParameterf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glTexParameterf

subroutine glTexParameterfv(target, pname, params) bind(C, name="glTexParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glTexParameterfv

subroutine glTexParameteri(target, pname, param) bind(C, name="glTexParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glTexParameteri

subroutine glTexParameteriv(target, pname, params) bind(C, name="glTexParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTexParameteriv

subroutine glTexImage1D(target, level, internalformat, width, border, format, type, pixels) &
 		bind(C, name="glTexImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: border
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTexImage1D

subroutine glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels) &
 		bind(C, name="glTexImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: border
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTexImage2D

subroutine glDrawBuffer(buf) bind(C, name="glDrawBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buf
end subroutine glDrawBuffer

subroutine glClear(mask) bind(C, name="glClear")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mask
end subroutine glClear

subroutine glClearColor(red, green, blue, alpha) bind(C, name="glClearColor")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: red
  real(c_float),intent(in),value :: green
  real(c_float),intent(in),value :: blue
  real(c_float),intent(in),value :: alpha
end subroutine glClearColor

subroutine glClearStencil(s) bind(C, name="glClearStencil")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: s
end subroutine glClearStencil

subroutine glClearDepth(depth) bind(C, name="glClearDepth")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: depth
end subroutine glClearDepth

subroutine glStencilMask(mask) bind(C, name="glStencilMask")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mask
end subroutine glStencilMask

subroutine glColorMask(red, green, blue, alpha) bind(C, name="glColorMask")
  use, intrinsic :: iso_c_binding
  logical(c_bool),intent(in),value :: red
  logical(c_bool),intent(in),value :: green
  logical(c_bool),intent(in),value :: blue
  logical(c_bool),intent(in),value :: alpha
end subroutine glColorMask

subroutine glDepthMask(flag) bind(C, name="glDepthMask")
  use, intrinsic :: iso_c_binding
  logical(c_bool),intent(in),value :: flag
end subroutine glDepthMask

subroutine glDisable(cap) bind(C, name="glDisable")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: cap
end subroutine glDisable

subroutine glEnable(cap) bind(C, name="glEnable")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: cap
end subroutine glEnable

subroutine glFinish() bind(C, name="glFinish")
  use, intrinsic :: iso_c_binding
end subroutine glFinish

subroutine glFlush() bind(C, name="glFlush")
  use, intrinsic :: iso_c_binding
end subroutine glFlush

subroutine glBlendFunc(sfactor, dfactor) bind(C, name="glBlendFunc")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sfactor
  integer(c_int32_t),intent(in),value :: dfactor
end subroutine glBlendFunc

subroutine glLogicOp(opcode) bind(C, name="glLogicOp")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: opcode
end subroutine glLogicOp

subroutine glStencilFunc(func, ref, mask) bind(C, name="glStencilFunc")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: func
  integer(c_int32_t),intent(in),value :: ref
  integer(c_int32_t),intent(in),value :: mask
end subroutine glStencilFunc

subroutine glStencilOp(fail, zfail, zpass) bind(C, name="glStencilOp")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: fail
  integer(c_int32_t),intent(in),value :: zfail
  integer(c_int32_t),intent(in),value :: zpass
end subroutine glStencilOp

subroutine glDepthFunc(func) bind(C, name="glDepthFunc")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: func
end subroutine glDepthFunc

subroutine glPixelStoref(pname, param) bind(C, name="glPixelStoref")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glPixelStoref

subroutine glPixelStorei(pname, param) bind(C, name="glPixelStorei")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glPixelStorei

subroutine glReadBuffer(src) bind(C, name="glReadBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: src
end subroutine glReadBuffer

subroutine glReadPixels(x, y, width, height, format, type, pixels) bind(C, name="glReadPixels")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glReadPixels

subroutine glGetBooleanv(pname, data) bind(C, name="glGetBooleanv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  logical(c_bool),intent(in),value :: data
end subroutine glGetBooleanv

subroutine glGetDoublev(pname, data) bind(C, name="glGetDoublev")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_double),intent(in),value :: data
end subroutine glGetDoublev

function glGetError() bind(C, name="glGetError")
  use, intrinsic :: iso_c_binding
    integer(c_int) :: glGetError
end function glGetError

subroutine glGetFloatv(pname, data) bind(C, name="glGetFloatv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: data
end subroutine glGetFloatv

subroutine glGetIntegerv(pname, data) bind(C, name="glGetIntegerv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: data
end subroutine glGetIntegerv

function glGetString(name) bind(C, name="glGetString")
  use, intrinsic :: iso_c_binding
    type(c_ptr) :: glGetString
  integer(c_int32_t),intent(in),value :: name
end function glGetString

subroutine glGetTexImage(target, level, format, type, pixels) bind(C, name="glGetTexImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetTexImage

subroutine glGetTexParameterfv(target, pname, params) bind(C, name="glGetTexParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetTexParameterfv

subroutine glGetTexParameteriv(target, pname, params) bind(C, name="glGetTexParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTexParameteriv

subroutine glGetTexLevelParameterfv(target, level, pname, params) bind(C, name="glGetTexLevelParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetTexLevelParameterfv

subroutine glGetTexLevelParameteriv(target, level, pname, params) bind(C, name="glGetTexLevelParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTexLevelParameteriv

function glIsEnabled(cap) bind(C, name="glIsEnabled")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsEnabled
  integer(c_int32_t),intent(in),value :: cap
end function glIsEnabled

subroutine glDepthRange(n, f) bind(C, name="glDepthRange")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: n
  real(c_double),intent(in),value :: f
end subroutine glDepthRange

subroutine glViewport(x, y, width, height) bind(C, name="glViewport")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glViewport

subroutine glNewList(list, mode) bind(C, name="glNewList")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: list
  integer(c_int32_t),intent(in),value :: mode
end subroutine glNewList

subroutine glEndList() bind(C, name="glEndList")
  use, intrinsic :: iso_c_binding
end subroutine glEndList

subroutine glCallList(list) bind(C, name="glCallList")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: list
end subroutine glCallList

subroutine glCallLists(n, type, lists) bind(C, name="glCallLists")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: lists
end subroutine glCallLists

subroutine glDeleteLists(list, range) bind(C, name="glDeleteLists")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: list
  integer(c_int64_t),intent(in),value :: range
end subroutine glDeleteLists

function glGenLists(range) bind(C, name="glGenLists")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGenLists
  integer(c_int64_t),intent(in),value :: range
end function glGenLists

subroutine glListBase(base) bind(C, name="glListBase")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: base
end subroutine glListBase

subroutine glBegin(mode) bind(C, name="glBegin")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glBegin

subroutine glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap) bind(C, name="glBitmap")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  real(c_float),intent(in),value :: xorig
  real(c_float),intent(in),value :: yorig
  real(c_float),intent(in),value :: xmove
  real(c_float),intent(in),value :: ymove
  integer(c_int8_t), dimension(*), intent(inout) :: bitmap
end subroutine glBitmap

subroutine glColor3b(red, green, blue) bind(C, name="glColor3b")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: red
  integer(c_int8_t),intent(in),value :: green
  integer(c_int8_t),intent(in),value :: blue
end subroutine glColor3b

subroutine glColor3bv(v) bind(C, name="glColor3bv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glColor3bv

subroutine glColor3d(red, green, blue) bind(C, name="glColor3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: red
  real(c_double),intent(in),value :: green
  real(c_double),intent(in),value :: blue
end subroutine glColor3d

subroutine glColor3dv(v) bind(C, name="glColor3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glColor3dv

subroutine glColor3f(red, green, blue) bind(C, name="glColor3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: red
  real(c_float),intent(in),value :: green
  real(c_float),intent(in),value :: blue
end subroutine glColor3f

subroutine glColor3fv(v) bind(C, name="glColor3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glColor3fv

subroutine glColor3i(red, green, blue) bind(C, name="glColor3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: red
  integer(c_int32_t),intent(in),value :: green
  integer(c_int32_t),intent(in),value :: blue
end subroutine glColor3i

subroutine glColor3iv(v) bind(C, name="glColor3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glColor3iv

subroutine glColor3s(red, green, blue) bind(C, name="glColor3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: red
  integer(c_int16_t),intent(in),value :: green
  integer(c_int16_t),intent(in),value :: blue
end subroutine glColor3s

subroutine glColor3sv(v) bind(C, name="glColor3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glColor3sv

subroutine glColor3ub(red, green, blue) bind(C, name="glColor3ub")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: red
  integer(c_int8_t),intent(in),value :: green
  integer(c_int8_t),intent(in),value :: blue
end subroutine glColor3ub

subroutine glColor3ubv(v) bind(C, name="glColor3ubv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glColor3ubv

subroutine glColor3ui(red, green, blue) bind(C, name="glColor3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: red
  integer(c_int32_t),intent(in),value :: green
  integer(c_int32_t),intent(in),value :: blue
end subroutine glColor3ui

subroutine glColor3uiv(v) bind(C, name="glColor3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glColor3uiv

subroutine glColor3us(red, green, blue) bind(C, name="glColor3us")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: red
  integer(c_int16_t),intent(in),value :: green
  integer(c_int16_t),intent(in),value :: blue
end subroutine glColor3us

subroutine glColor3usv(v) bind(C, name="glColor3usv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glColor3usv

subroutine glColor4b(red, green, blue, alpha) bind(C, name="glColor4b")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: red
  integer(c_int8_t),intent(in),value :: green
  integer(c_int8_t),intent(in),value :: blue
  integer(c_int8_t),intent(in),value :: alpha
end subroutine glColor4b

subroutine glColor4bv(v) bind(C, name="glColor4bv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glColor4bv

subroutine glColor4d(red, green, blue, alpha) bind(C, name="glColor4d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: red
  real(c_double),intent(in),value :: green
  real(c_double),intent(in),value :: blue
  real(c_double),intent(in),value :: alpha
end subroutine glColor4d

subroutine glColor4dv(v) bind(C, name="glColor4dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glColor4dv

subroutine glColor4f(red, green, blue, alpha) bind(C, name="glColor4f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: red
  real(c_float),intent(in),value :: green
  real(c_float),intent(in),value :: blue
  real(c_float),intent(in),value :: alpha
end subroutine glColor4f

subroutine glColor4fv(v) bind(C, name="glColor4fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glColor4fv

subroutine glColor4i(red, green, blue, alpha) bind(C, name="glColor4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: red
  integer(c_int32_t),intent(in),value :: green
  integer(c_int32_t),intent(in),value :: blue
  integer(c_int32_t),intent(in),value :: alpha
end subroutine glColor4i

subroutine glColor4iv(v) bind(C, name="glColor4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glColor4iv

subroutine glColor4s(red, green, blue, alpha) bind(C, name="glColor4s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: red
  integer(c_int16_t),intent(in),value :: green
  integer(c_int16_t),intent(in),value :: blue
  integer(c_int16_t),intent(in),value :: alpha
end subroutine glColor4s

subroutine glColor4sv(v) bind(C, name="glColor4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glColor4sv

subroutine glColor4ub(red, green, blue, alpha) bind(C, name="glColor4ub")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: red
  integer(c_int8_t),intent(in),value :: green
  integer(c_int8_t),intent(in),value :: blue
  integer(c_int8_t),intent(in),value :: alpha
end subroutine glColor4ub

subroutine glColor4ubv(v) bind(C, name="glColor4ubv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glColor4ubv

subroutine glColor4ui(red, green, blue, alpha) bind(C, name="glColor4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: red
  integer(c_int32_t),intent(in),value :: green
  integer(c_int32_t),intent(in),value :: blue
  integer(c_int32_t),intent(in),value :: alpha
end subroutine glColor4ui

subroutine glColor4uiv(v) bind(C, name="glColor4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glColor4uiv

subroutine glColor4us(red, green, blue, alpha) bind(C, name="glColor4us")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: red
  integer(c_int16_t),intent(in),value :: green
  integer(c_int16_t),intent(in),value :: blue
  integer(c_int16_t),intent(in),value :: alpha
end subroutine glColor4us

subroutine glColor4usv(v) bind(C, name="glColor4usv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glColor4usv

subroutine glEdgeFlag(flag) bind(C, name="glEdgeFlag")
  use, intrinsic :: iso_c_binding
  logical(c_bool),intent(in),value :: flag
end subroutine glEdgeFlag

subroutine glEdgeFlagv(flag) bind(C, name="glEdgeFlagv")
  use, intrinsic :: iso_c_binding
  logical(c_bool), dimension(*), intent(inout) :: flag
end subroutine glEdgeFlagv

subroutine glEnd() bind(C, name="glEnd")
  use, intrinsic :: iso_c_binding
end subroutine glEnd

subroutine glIndexd(c) bind(C, name="glIndexd")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: c
end subroutine glIndexd

subroutine glIndexdv(c) bind(C, name="glIndexdv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: c
end subroutine glIndexdv

subroutine glIndexf(c) bind(C, name="glIndexf")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: c
end subroutine glIndexf

subroutine glIndexfv(c) bind(C, name="glIndexfv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: c
end subroutine glIndexfv

subroutine glIndexi(c) bind(C, name="glIndexi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: c
end subroutine glIndexi

subroutine glIndexiv(c) bind(C, name="glIndexiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: c
end subroutine glIndexiv

subroutine glIndexs(c) bind(C, name="glIndexs")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: c
end subroutine glIndexs

subroutine glIndexsv(c) bind(C, name="glIndexsv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: c
end subroutine glIndexsv

subroutine glNormal3b(nx, ny, nz) bind(C, name="glNormal3b")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: nx
  integer(c_int8_t),intent(in),value :: ny
  integer(c_int8_t),intent(in),value :: nz
end subroutine glNormal3b

subroutine glNormal3bv(v) bind(C, name="glNormal3bv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glNormal3bv

subroutine glNormal3d(nx, ny, nz) bind(C, name="glNormal3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: nx
  real(c_double),intent(in),value :: ny
  real(c_double),intent(in),value :: nz
end subroutine glNormal3d

subroutine glNormal3dv(v) bind(C, name="glNormal3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glNormal3dv

subroutine glNormal3f(nx, ny, nz) bind(C, name="glNormal3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: nx
  real(c_float),intent(in),value :: ny
  real(c_float),intent(in),value :: nz
end subroutine glNormal3f

subroutine glNormal3fv(v) bind(C, name="glNormal3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glNormal3fv

subroutine glNormal3i(nx, ny, nz) bind(C, name="glNormal3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: nx
  integer(c_int32_t),intent(in),value :: ny
  integer(c_int32_t),intent(in),value :: nz
end subroutine glNormal3i

subroutine glNormal3iv(v) bind(C, name="glNormal3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glNormal3iv

subroutine glNormal3s(nx, ny, nz) bind(C, name="glNormal3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: nx
  integer(c_int16_t),intent(in),value :: ny
  integer(c_int16_t),intent(in),value :: nz
end subroutine glNormal3s

subroutine glNormal3sv(v) bind(C, name="glNormal3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glNormal3sv

subroutine glRasterPos2d(x, y) bind(C, name="glRasterPos2d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
end subroutine glRasterPos2d

subroutine glRasterPos2dv(v) bind(C, name="glRasterPos2dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glRasterPos2dv

subroutine glRasterPos2f(x, y) bind(C, name="glRasterPos2f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
end subroutine glRasterPos2f

subroutine glRasterPos2fv(v) bind(C, name="glRasterPos2fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glRasterPos2fv

subroutine glRasterPos2i(x, y) bind(C, name="glRasterPos2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
end subroutine glRasterPos2i

subroutine glRasterPos2iv(v) bind(C, name="glRasterPos2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glRasterPos2iv

subroutine glRasterPos2s(x, y) bind(C, name="glRasterPos2s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
end subroutine glRasterPos2s

subroutine glRasterPos2sv(v) bind(C, name="glRasterPos2sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glRasterPos2sv

subroutine glRasterPos3d(x, y, z) bind(C, name="glRasterPos3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glRasterPos3d

subroutine glRasterPos3dv(v) bind(C, name="glRasterPos3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glRasterPos3dv

subroutine glRasterPos3f(x, y, z) bind(C, name="glRasterPos3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glRasterPos3f

subroutine glRasterPos3fv(v) bind(C, name="glRasterPos3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glRasterPos3fv

subroutine glRasterPos3i(x, y, z) bind(C, name="glRasterPos3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
end subroutine glRasterPos3i

subroutine glRasterPos3iv(v) bind(C, name="glRasterPos3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glRasterPos3iv

subroutine glRasterPos3s(x, y, z) bind(C, name="glRasterPos3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
end subroutine glRasterPos3s

subroutine glRasterPos3sv(v) bind(C, name="glRasterPos3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glRasterPos3sv

subroutine glRasterPos4d(x, y, z, w) bind(C, name="glRasterPos4d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
  real(c_double),intent(in),value :: w
end subroutine glRasterPos4d

subroutine glRasterPos4dv(v) bind(C, name="glRasterPos4dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glRasterPos4dv

subroutine glRasterPos4f(x, y, z, w) bind(C, name="glRasterPos4f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
  real(c_float),intent(in),value :: w
end subroutine glRasterPos4f

subroutine glRasterPos4fv(v) bind(C, name="glRasterPos4fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glRasterPos4fv

subroutine glRasterPos4i(x, y, z, w) bind(C, name="glRasterPos4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
  integer(c_int32_t),intent(in),value :: w
end subroutine glRasterPos4i

subroutine glRasterPos4iv(v) bind(C, name="glRasterPos4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glRasterPos4iv

subroutine glRasterPos4s(x, y, z, w) bind(C, name="glRasterPos4s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
  integer(c_int16_t),intent(in),value :: w
end subroutine glRasterPos4s

subroutine glRasterPos4sv(v) bind(C, name="glRasterPos4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glRasterPos4sv

subroutine glRectd(x1, y1, x2, y2) bind(C, name="glRectd")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x1
  real(c_double),intent(in),value :: y1
  real(c_double),intent(in),value :: x2
  real(c_double),intent(in),value :: y2
end subroutine glRectd

subroutine glRectdv(v1, v2) bind(C, name="glRectdv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v1
  real(c_double), dimension(*), intent(inout) :: v2
end subroutine glRectdv

subroutine glRectf(x1, y1, x2, y2) bind(C, name="glRectf")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x1
  real(c_float),intent(in),value :: y1
  real(c_float),intent(in),value :: x2
  real(c_float),intent(in),value :: y2
end subroutine glRectf

subroutine glRectfv(v1, v2) bind(C, name="glRectfv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v1
  real(c_float), dimension(*), intent(inout) :: v2
end subroutine glRectfv

subroutine glRecti(x1, y1, x2, y2) bind(C, name="glRecti")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x1
  integer(c_int32_t),intent(in),value :: y1
  integer(c_int32_t),intent(in),value :: x2
  integer(c_int32_t),intent(in),value :: y2
end subroutine glRecti

subroutine glRectiv(v1, v2) bind(C, name="glRectiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v1
  integer(c_int32_t), dimension(*), intent(inout) :: v2
end subroutine glRectiv

subroutine glRects(x1, y1, x2, y2) bind(C, name="glRects")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x1
  integer(c_int16_t),intent(in),value :: y1
  integer(c_int16_t),intent(in),value :: x2
  integer(c_int16_t),intent(in),value :: y2
end subroutine glRects

subroutine glRectsv(v1, v2) bind(C, name="glRectsv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v1
  integer(c_int16_t), dimension(*), intent(inout) :: v2
end subroutine glRectsv

subroutine glTexCoord1d(s) bind(C, name="glTexCoord1d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: s
end subroutine glTexCoord1d

subroutine glTexCoord1dv(v) bind(C, name="glTexCoord1dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glTexCoord1dv

subroutine glTexCoord1f(s) bind(C, name="glTexCoord1f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: s
end subroutine glTexCoord1f

subroutine glTexCoord1fv(v) bind(C, name="glTexCoord1fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glTexCoord1fv

subroutine glTexCoord1i(s) bind(C, name="glTexCoord1i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: s
end subroutine glTexCoord1i

subroutine glTexCoord1iv(v) bind(C, name="glTexCoord1iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord1iv

subroutine glTexCoord1s(s) bind(C, name="glTexCoord1s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: s
end subroutine glTexCoord1s

subroutine glTexCoord1sv(v) bind(C, name="glTexCoord1sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord1sv

subroutine glTexCoord2d(s, t) bind(C, name="glTexCoord2d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: s
  real(c_double),intent(in),value :: t
end subroutine glTexCoord2d

subroutine glTexCoord2dv(v) bind(C, name="glTexCoord2dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glTexCoord2dv

subroutine glTexCoord2f(s, t) bind(C, name="glTexCoord2f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: s
  real(c_float),intent(in),value :: t
end subroutine glTexCoord2f

subroutine glTexCoord2fv(v) bind(C, name="glTexCoord2fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glTexCoord2fv

subroutine glTexCoord2i(s, t) bind(C, name="glTexCoord2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: s
  integer(c_int32_t),intent(in),value :: t
end subroutine glTexCoord2i

subroutine glTexCoord2iv(v) bind(C, name="glTexCoord2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord2iv

subroutine glTexCoord2s(s, t) bind(C, name="glTexCoord2s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: s
  integer(c_int16_t),intent(in),value :: t
end subroutine glTexCoord2s

subroutine glTexCoord2sv(v) bind(C, name="glTexCoord2sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord2sv

subroutine glTexCoord3d(s, t, r) bind(C, name="glTexCoord3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: s
  real(c_double),intent(in),value :: t
  real(c_double),intent(in),value :: r
end subroutine glTexCoord3d

subroutine glTexCoord3dv(v) bind(C, name="glTexCoord3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glTexCoord3dv

subroutine glTexCoord3f(s, t, r) bind(C, name="glTexCoord3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: s
  real(c_float),intent(in),value :: t
  real(c_float),intent(in),value :: r
end subroutine glTexCoord3f

subroutine glTexCoord3fv(v) bind(C, name="glTexCoord3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glTexCoord3fv

subroutine glTexCoord3i(s, t, r) bind(C, name="glTexCoord3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: s
  integer(c_int32_t),intent(in),value :: t
  integer(c_int32_t),intent(in),value :: r
end subroutine glTexCoord3i

subroutine glTexCoord3iv(v) bind(C, name="glTexCoord3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord3iv

subroutine glTexCoord3s(s, t, r) bind(C, name="glTexCoord3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: s
  integer(c_int16_t),intent(in),value :: t
  integer(c_int16_t),intent(in),value :: r
end subroutine glTexCoord3s

subroutine glTexCoord3sv(v) bind(C, name="glTexCoord3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord3sv

subroutine glTexCoord4d(s, t, r, q) bind(C, name="glTexCoord4d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: s
  real(c_double),intent(in),value :: t
  real(c_double),intent(in),value :: r
  real(c_double),intent(in),value :: q
end subroutine glTexCoord4d

subroutine glTexCoord4dv(v) bind(C, name="glTexCoord4dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glTexCoord4dv

subroutine glTexCoord4f(s, t, r, q) bind(C, name="glTexCoord4f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: s
  real(c_float),intent(in),value :: t
  real(c_float),intent(in),value :: r
  real(c_float),intent(in),value :: q
end subroutine glTexCoord4f

subroutine glTexCoord4fv(v) bind(C, name="glTexCoord4fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glTexCoord4fv

subroutine glTexCoord4i(s, t, r, q) bind(C, name="glTexCoord4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: s
  integer(c_int32_t),intent(in),value :: t
  integer(c_int32_t),intent(in),value :: r
  integer(c_int32_t),intent(in),value :: q
end subroutine glTexCoord4i

subroutine glTexCoord4iv(v) bind(C, name="glTexCoord4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord4iv

subroutine glTexCoord4s(s, t, r, q) bind(C, name="glTexCoord4s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: s
  integer(c_int16_t),intent(in),value :: t
  integer(c_int16_t),intent(in),value :: r
  integer(c_int16_t),intent(in),value :: q
end subroutine glTexCoord4s

subroutine glTexCoord4sv(v) bind(C, name="glTexCoord4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glTexCoord4sv

subroutine glVertex2d(x, y) bind(C, name="glVertex2d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
end subroutine glVertex2d

subroutine glVertex2dv(v) bind(C, name="glVertex2dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertex2dv

subroutine glVertex2f(x, y) bind(C, name="glVertex2f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
end subroutine glVertex2f

subroutine glVertex2fv(v) bind(C, name="glVertex2fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertex2fv

subroutine glVertex2i(x, y) bind(C, name="glVertex2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
end subroutine glVertex2i

subroutine glVertex2iv(v) bind(C, name="glVertex2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertex2iv

subroutine glVertex2s(x, y) bind(C, name="glVertex2s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
end subroutine glVertex2s

subroutine glVertex2sv(v) bind(C, name="glVertex2sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertex2sv

subroutine glVertex3d(x, y, z) bind(C, name="glVertex3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glVertex3d

subroutine glVertex3dv(v) bind(C, name="glVertex3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertex3dv

subroutine glVertex3f(x, y, z) bind(C, name="glVertex3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glVertex3f

subroutine glVertex3fv(v) bind(C, name="glVertex3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertex3fv

subroutine glVertex3i(x, y, z) bind(C, name="glVertex3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
end subroutine glVertex3i

subroutine glVertex3iv(v) bind(C, name="glVertex3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertex3iv

subroutine glVertex3s(x, y, z) bind(C, name="glVertex3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
end subroutine glVertex3s

subroutine glVertex3sv(v) bind(C, name="glVertex3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertex3sv

subroutine glVertex4d(x, y, z, w) bind(C, name="glVertex4d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
  real(c_double),intent(in),value :: w
end subroutine glVertex4d

subroutine glVertex4dv(v) bind(C, name="glVertex4dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertex4dv

subroutine glVertex4f(x, y, z, w) bind(C, name="glVertex4f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
  real(c_float),intent(in),value :: w
end subroutine glVertex4f

subroutine glVertex4fv(v) bind(C, name="glVertex4fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertex4fv

subroutine glVertex4i(x, y, z, w) bind(C, name="glVertex4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
  integer(c_int32_t),intent(in),value :: w
end subroutine glVertex4i

subroutine glVertex4iv(v) bind(C, name="glVertex4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertex4iv

subroutine glVertex4s(x, y, z, w) bind(C, name="glVertex4s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
  integer(c_int16_t),intent(in),value :: w
end subroutine glVertex4s

subroutine glVertex4sv(v) bind(C, name="glVertex4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertex4sv

subroutine glClipPlane(plane, equation) bind(C, name="glClipPlane")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: plane
  real(c_double), dimension(*), intent(inout) :: equation
end subroutine glClipPlane

subroutine glColorMaterial(face, mode) bind(C, name="glColorMaterial")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: mode
end subroutine glColorMaterial

subroutine glFogf(pname, param) bind(C, name="glFogf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glFogf

subroutine glFogfv(pname, params) bind(C, name="glFogfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glFogfv

subroutine glFogi(pname, param) bind(C, name="glFogi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glFogi

subroutine glFogiv(pname, params) bind(C, name="glFogiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glFogiv

subroutine glLightf(light, pname, param) bind(C, name="glLightf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: light
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glLightf

subroutine glLightfv(light, pname, params) bind(C, name="glLightfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: light
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glLightfv

subroutine glLighti(light, pname, param) bind(C, name="glLighti")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: light
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glLighti

subroutine glLightiv(light, pname, params) bind(C, name="glLightiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: light
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glLightiv

subroutine glLightModelf(pname, param) bind(C, name="glLightModelf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glLightModelf

subroutine glLightModelfv(pname, params) bind(C, name="glLightModelfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glLightModelfv

subroutine glLightModeli(pname, param) bind(C, name="glLightModeli")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glLightModeli

subroutine glLightModeliv(pname, params) bind(C, name="glLightModeliv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glLightModeliv

subroutine glLineStipple(factor, pattern) bind(C, name="glLineStipple")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: factor
  integer(c_int16_t),intent(in),value :: pattern
end subroutine glLineStipple

subroutine glMaterialf(face, pname, param) bind(C, name="glMaterialf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glMaterialf

subroutine glMaterialfv(face, pname, params) bind(C, name="glMaterialfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glMaterialfv

subroutine glMateriali(face, pname, param) bind(C, name="glMateriali")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glMateriali

subroutine glMaterialiv(face, pname, params) bind(C, name="glMaterialiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glMaterialiv

subroutine glPolygonStipple(mask) bind(C, name="glPolygonStipple")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: mask
end subroutine glPolygonStipple

subroutine glShadeModel(mode) bind(C, name="glShadeModel")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glShadeModel

subroutine glTexEnvf(target, pname, param) bind(C, name="glTexEnvf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glTexEnvf

subroutine glTexEnvfv(target, pname, params) bind(C, name="glTexEnvfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glTexEnvfv

subroutine glTexEnvi(target, pname, param) bind(C, name="glTexEnvi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glTexEnvi

subroutine glTexEnviv(target, pname, params) bind(C, name="glTexEnviv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTexEnviv

subroutine glTexGend(coord, pname, param) bind(C, name="glTexGend")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  real(c_double),intent(in),value :: param
end subroutine glTexGend

subroutine glTexGendv(coord, pname, params) bind(C, name="glTexGendv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  real(c_double), dimension(*), intent(inout) :: params
end subroutine glTexGendv

subroutine glTexGenf(coord, pname, param) bind(C, name="glTexGenf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glTexGenf

subroutine glTexGenfv(coord, pname, params) bind(C, name="glTexGenfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glTexGenfv

subroutine glTexGeni(coord, pname, param) bind(C, name="glTexGeni")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glTexGeni

subroutine glTexGeniv(coord, pname, params) bind(C, name="glTexGeniv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTexGeniv

subroutine glFeedbackBuffer(size, type, buffer) bind(C, name="glFeedbackBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  real(c_float),intent(in),value :: buffer
end subroutine glFeedbackBuffer

subroutine glSelectBuffer(size, buffer) bind(C, name="glSelectBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glSelectBuffer

function glRenderMode(mode) bind(C, name="glRenderMode")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glRenderMode
  integer(c_int32_t),intent(in),value :: mode
end function glRenderMode

subroutine glInitNames() bind(C, name="glInitNames")
  use, intrinsic :: iso_c_binding
end subroutine glInitNames

subroutine glLoadName(name) bind(C, name="glLoadName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: name
end subroutine glLoadName

subroutine glPassThrough(token) bind(C, name="glPassThrough")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: token
end subroutine glPassThrough

subroutine glPopName() bind(C, name="glPopName")
  use, intrinsic :: iso_c_binding
end subroutine glPopName

subroutine glPushName(name) bind(C, name="glPushName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: name
end subroutine glPushName

subroutine glClearAccum(red, green, blue, alpha) bind(C, name="glClearAccum")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: red
  real(c_float),intent(in),value :: green
  real(c_float),intent(in),value :: blue
  real(c_float),intent(in),value :: alpha
end subroutine glClearAccum

subroutine glClearIndex(c) bind(C, name="glClearIndex")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: c
end subroutine glClearIndex

subroutine glIndexMask(mask) bind(C, name="glIndexMask")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mask
end subroutine glIndexMask

subroutine glAccum(op, value) bind(C, name="glAccum")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: op
  real(c_float),intent(in),value :: value
end subroutine glAccum

subroutine glPopAttrib() bind(C, name="glPopAttrib")
  use, intrinsic :: iso_c_binding
end subroutine glPopAttrib

subroutine glPushAttrib(mask) bind(C, name="glPushAttrib")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mask
end subroutine glPushAttrib

subroutine glMap1d(target, u1, u2, stride, order, points) bind(C, name="glMap1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double),intent(in),value :: u1
  real(c_double),intent(in),value :: u2
  integer(c_int32_t),intent(in),value :: stride
  integer(c_int32_t),intent(in),value :: order
  real(c_double), dimension(*), intent(inout) :: points
end subroutine glMap1d

subroutine glMap1f(target, u1, u2, stride, order, points) bind(C, name="glMap1f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float),intent(in),value :: u1
  real(c_float),intent(in),value :: u2
  integer(c_int32_t),intent(in),value :: stride
  integer(c_int32_t),intent(in),value :: order
  real(c_float), dimension(*), intent(inout) :: points
end subroutine glMap1f

subroutine glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points) bind(C, name="glMap2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double),intent(in),value :: u1
  real(c_double),intent(in),value :: u2
  integer(c_int32_t),intent(in),value :: ustride
  integer(c_int32_t),intent(in),value :: uorder
  real(c_double),intent(in),value :: v1
  real(c_double),intent(in),value :: v2
  integer(c_int32_t),intent(in),value :: vstride
  integer(c_int32_t),intent(in),value :: vorder
  real(c_double), dimension(*), intent(inout) :: points
end subroutine glMap2d

subroutine glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points) bind(C, name="glMap2f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float),intent(in),value :: u1
  real(c_float),intent(in),value :: u2
  integer(c_int32_t),intent(in),value :: ustride
  integer(c_int32_t),intent(in),value :: uorder
  real(c_float),intent(in),value :: v1
  real(c_float),intent(in),value :: v2
  integer(c_int32_t),intent(in),value :: vstride
  integer(c_int32_t),intent(in),value :: vorder
  real(c_float), dimension(*), intent(inout) :: points
end subroutine glMap2f

subroutine glMapGrid1d(un, u1, u2) bind(C, name="glMapGrid1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: un
  real(c_double),intent(in),value :: u1
  real(c_double),intent(in),value :: u2
end subroutine glMapGrid1d

subroutine glMapGrid1f(un, u1, u2) bind(C, name="glMapGrid1f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: un
  real(c_float),intent(in),value :: u1
  real(c_float),intent(in),value :: u2
end subroutine glMapGrid1f

subroutine glMapGrid2d(un, u1, u2, vn, v1, v2) bind(C, name="glMapGrid2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: un
  real(c_double),intent(in),value :: u1
  real(c_double),intent(in),value :: u2
  integer(c_int32_t),intent(in),value :: vn
  real(c_double),intent(in),value :: v1
  real(c_double),intent(in),value :: v2
end subroutine glMapGrid2d

subroutine glMapGrid2f(un, u1, u2, vn, v1, v2) bind(C, name="glMapGrid2f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: un
  real(c_float),intent(in),value :: u1
  real(c_float),intent(in),value :: u2
  integer(c_int32_t),intent(in),value :: vn
  real(c_float),intent(in),value :: v1
  real(c_float),intent(in),value :: v2
end subroutine glMapGrid2f

subroutine glEvalCoord1d(u) bind(C, name="glEvalCoord1d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: u
end subroutine glEvalCoord1d

subroutine glEvalCoord1dv(u) bind(C, name="glEvalCoord1dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: u
end subroutine glEvalCoord1dv

subroutine glEvalCoord1f(u) bind(C, name="glEvalCoord1f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: u
end subroutine glEvalCoord1f

subroutine glEvalCoord1fv(u) bind(C, name="glEvalCoord1fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: u
end subroutine glEvalCoord1fv

subroutine glEvalCoord2d(u, v) bind(C, name="glEvalCoord2d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: u
  real(c_double),intent(in),value :: v
end subroutine glEvalCoord2d

subroutine glEvalCoord2dv(u) bind(C, name="glEvalCoord2dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: u
end subroutine glEvalCoord2dv

subroutine glEvalCoord2f(u, v) bind(C, name="glEvalCoord2f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: u
  real(c_float),intent(in),value :: v
end subroutine glEvalCoord2f

subroutine glEvalCoord2fv(u) bind(C, name="glEvalCoord2fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: u
end subroutine glEvalCoord2fv

subroutine glEvalMesh1(mode, i1, i2) bind(C, name="glEvalMesh1")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: i1
  integer(c_int32_t),intent(in),value :: i2
end subroutine glEvalMesh1

subroutine glEvalPoint1(i) bind(C, name="glEvalPoint1")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: i
end subroutine glEvalPoint1

subroutine glEvalMesh2(mode, i1, i2, j1, j2) bind(C, name="glEvalMesh2")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: i1
  integer(c_int32_t),intent(in),value :: i2
  integer(c_int32_t),intent(in),value :: j1
  integer(c_int32_t),intent(in),value :: j2
end subroutine glEvalMesh2

subroutine glEvalPoint2(i, j) bind(C, name="glEvalPoint2")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: i
  integer(c_int32_t),intent(in),value :: j
end subroutine glEvalPoint2

subroutine glAlphaFunc(func, ref) bind(C, name="glAlphaFunc")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: func
  real(c_float),intent(in),value :: ref
end subroutine glAlphaFunc

subroutine glPixelZoom(xfactor, yfactor) bind(C, name="glPixelZoom")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: xfactor
  real(c_float),intent(in),value :: yfactor
end subroutine glPixelZoom

subroutine glPixelTransferf(pname, param) bind(C, name="glPixelTransferf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glPixelTransferf

subroutine glPixelTransferi(pname, param) bind(C, name="glPixelTransferi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glPixelTransferi

subroutine glPixelMapfv(map, mapsize, values) bind(C, name="glPixelMapfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int64_t),intent(in),value :: mapsize
  real(c_float), dimension(*), intent(inout) :: values
end subroutine glPixelMapfv

subroutine glPixelMapuiv(map, mapsize, values) bind(C, name="glPixelMapuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int64_t),intent(in),value :: mapsize
  integer(c_int32_t), dimension(*), intent(inout) :: values
end subroutine glPixelMapuiv

subroutine glPixelMapusv(map, mapsize, values) bind(C, name="glPixelMapusv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int64_t),intent(in),value :: mapsize
  integer(c_int16_t), dimension(*), intent(inout) :: values
end subroutine glPixelMapusv

subroutine glCopyPixels(x, y, width, height, type) bind(C, name="glCopyPixels")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: type
end subroutine glCopyPixels

subroutine glDrawPixels(width, height, format, type, pixels) bind(C, name="glDrawPixels")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glDrawPixels

subroutine glGetClipPlane(plane, equation) bind(C, name="glGetClipPlane")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: plane
  real(c_double),intent(in),value :: equation
end subroutine glGetClipPlane

subroutine glGetLightfv(light, pname, params) bind(C, name="glGetLightfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: light
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetLightfv

subroutine glGetLightiv(light, pname, params) bind(C, name="glGetLightiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: light
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetLightiv

subroutine glGetMapdv(target, query, v) bind(C, name="glGetMapdv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: query
  real(c_double),intent(in),value :: v
end subroutine glGetMapdv

subroutine glGetMapfv(target, query, v) bind(C, name="glGetMapfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: query
  real(c_float),intent(in),value :: v
end subroutine glGetMapfv

subroutine glGetMapiv(target, query, v) bind(C, name="glGetMapiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: query
  integer(c_int32_t),intent(in),value :: v
end subroutine glGetMapiv

subroutine glGetMaterialfv(face, pname, params) bind(C, name="glGetMaterialfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetMaterialfv

subroutine glGetMaterialiv(face, pname, params) bind(C, name="glGetMaterialiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetMaterialiv

subroutine glGetPixelMapfv(map, values) bind(C, name="glGetPixelMapfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  real(c_float),intent(in),value :: values
end subroutine glGetPixelMapfv

subroutine glGetPixelMapuiv(map, values) bind(C, name="glGetPixelMapuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int32_t),intent(in),value :: values
end subroutine glGetPixelMapuiv

subroutine glGetPixelMapusv(map, values) bind(C, name="glGetPixelMapusv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int16_t),intent(in),value :: values
end subroutine glGetPixelMapusv

subroutine glGetPolygonStipple(mask) bind(C, name="glGetPolygonStipple")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: mask
end subroutine glGetPolygonStipple

subroutine glGetTexEnvfv(target, pname, params) bind(C, name="glGetTexEnvfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetTexEnvfv

subroutine glGetTexEnviv(target, pname, params) bind(C, name="glGetTexEnviv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTexEnviv

subroutine glGetTexGendv(coord, pname, params) bind(C, name="glGetTexGendv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  real(c_double),intent(in),value :: params
end subroutine glGetTexGendv

subroutine glGetTexGenfv(coord, pname, params) bind(C, name="glGetTexGenfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetTexGenfv

subroutine glGetTexGeniv(coord, pname, params) bind(C, name="glGetTexGeniv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: coord
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTexGeniv

function glIsList(list) bind(C, name="glIsList")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsList
  integer(c_int32_t),intent(in),value :: list
end function glIsList

subroutine glFrustum(left, right, bottom, top, zNear, zFar) bind(C, name="glFrustum")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: left
  real(c_double),intent(in),value :: right
  real(c_double),intent(in),value :: bottom
  real(c_double),intent(in),value :: top
  real(c_double),intent(in),value :: zNear
  real(c_double),intent(in),value :: zFar
end subroutine glFrustum

subroutine glLoadIdentity() bind(C, name="glLoadIdentity")
  use, intrinsic :: iso_c_binding
end subroutine glLoadIdentity

subroutine glLoadMatrixf(m) bind(C, name="glLoadMatrixf")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: m
end subroutine glLoadMatrixf

subroutine glLoadMatrixd(m) bind(C, name="glLoadMatrixd")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: m
end subroutine glLoadMatrixd

subroutine glMatrixMode(mode) bind(C, name="glMatrixMode")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glMatrixMode

subroutine glMultMatrixf(m) bind(C, name="glMultMatrixf")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: m
end subroutine glMultMatrixf

subroutine glMultMatrixd(m) bind(C, name="glMultMatrixd")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: m
end subroutine glMultMatrixd

subroutine glOrtho(left, right, bottom, top, zNear, zFar) bind(C, name="glOrtho")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: left
  real(c_double),intent(in),value :: right
  real(c_double),intent(in),value :: bottom
  real(c_double),intent(in),value :: top
  real(c_double),intent(in),value :: zNear
  real(c_double),intent(in),value :: zFar
end subroutine glOrtho

subroutine glPopMatrix() bind(C, name="glPopMatrix")
  use, intrinsic :: iso_c_binding
end subroutine glPopMatrix

subroutine glPushMatrix() bind(C, name="glPushMatrix")
  use, intrinsic :: iso_c_binding
end subroutine glPushMatrix

subroutine glRotated(angle, x, y, z) bind(C, name="glRotated")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: angle
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glRotated

subroutine glRotatef(angle, x, y, z) bind(C, name="glRotatef")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: angle
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glRotatef

subroutine glScaled(x, y, z) bind(C, name="glScaled")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glScaled

subroutine glScalef(x, y, z) bind(C, name="glScalef")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glScalef

subroutine glTranslated(x, y, z) bind(C, name="glTranslated")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glTranslated

subroutine glTranslatef(x, y, z) bind(C, name="glTranslatef")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glTranslatef

subroutine glDrawArrays(mode, first, count) bind(C, name="glDrawArrays")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
end subroutine glDrawArrays

subroutine glDrawElements(mode, count, type, indices) bind(C, name="glDrawElements")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
end subroutine glDrawElements

subroutine glGetPointerv(pname, params) bind(C, name="glGetPointerv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  type(c_ptr), intent(inout) :: params
end subroutine glGetPointerv

subroutine glPolygonOffset(factor, units) bind(C, name="glPolygonOffset")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: factor
  real(c_float),intent(in),value :: units
end subroutine glPolygonOffset

subroutine glCopyTexImage1D(target, level, internalformat, x, y, width, border) bind(C, name="glCopyTexImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: border
end subroutine glCopyTexImage1D

subroutine glCopyTexImage2D(target, level, internalformat, x, y, width, height, border) &
 		bind(C, name="glCopyTexImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: border
end subroutine glCopyTexImage2D

subroutine glCopyTexSubImage1D(target, level, xoffset, x, y, width) bind(C, name="glCopyTexSubImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
end subroutine glCopyTexSubImage1D

subroutine glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height) &
 		bind(C, name="glCopyTexSubImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glCopyTexSubImage2D

subroutine glTexSubImage1D(target, level, xoffset, width, format, type, pixels) bind(C, name="glTexSubImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTexSubImage1D

subroutine glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels) &
 		bind(C, name="glTexSubImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTexSubImage2D

subroutine glBindTexture(target, texture) bind(C, name="glBindTexture")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: texture
end subroutine glBindTexture

subroutine glDeleteTextures(n, textures) bind(C, name="glDeleteTextures")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: textures
end subroutine glDeleteTextures

subroutine glGenTextures(n, textures) bind(C, name="glGenTextures")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: textures
end subroutine glGenTextures

function glIsTexture(texture) bind(C, name="glIsTexture")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsTexture
  integer(c_int32_t),intent(in),value :: texture
end function glIsTexture

subroutine glArrayElement(i) bind(C, name="glArrayElement")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: i
end subroutine glArrayElement

subroutine glColorPointer(size, type, stride, pointer) bind(C, name="glColorPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glColorPointer

subroutine glDisableClientState(array) bind(C, name="glDisableClientState")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: array
end subroutine glDisableClientState

subroutine glEdgeFlagPointer(stride, pointer) bind(C, name="glEdgeFlagPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glEdgeFlagPointer

subroutine glEnableClientState(array) bind(C, name="glEnableClientState")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: array
end subroutine glEnableClientState

subroutine glIndexPointer(type, stride, pointer) bind(C, name="glIndexPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glIndexPointer

subroutine glInterleavedArrays(format, stride, pointer) bind(C, name="glInterleavedArrays")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glInterleavedArrays

subroutine glNormalPointer(type, stride, pointer) bind(C, name="glNormalPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glNormalPointer

subroutine glTexCoordPointer(size, type, stride, pointer) bind(C, name="glTexCoordPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glTexCoordPointer

subroutine glVertexPointer(size, type, stride, pointer) bind(C, name="glVertexPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glVertexPointer

function glAreTexturesResident(n, textures, residences) bind(C, name="glAreTexturesResident")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glAreTexturesResident
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: textures
  logical(c_bool),intent(in),value :: residences
end function glAreTexturesResident

subroutine glPrioritizeTextures(n, textures, priorities) bind(C, name="glPrioritizeTextures")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: textures
  real(c_float), dimension(*), intent(inout) :: priorities
end subroutine glPrioritizeTextures

subroutine glIndexub(c) bind(C, name="glIndexub")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: c
end subroutine glIndexub

subroutine glIndexubv(c) bind(C, name="glIndexubv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: c
end subroutine glIndexubv

subroutine glPopClientAttrib() bind(C, name="glPopClientAttrib")
  use, intrinsic :: iso_c_binding
end subroutine glPopClientAttrib

subroutine glPushClientAttrib(mask) bind(C, name="glPushClientAttrib")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mask
end subroutine glPushClientAttrib

subroutine glDrawRangeElements(mode, start, end, count, type, indices) bind(C, name="glDrawRangeElements")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: start
  integer(c_int32_t),intent(in),value :: end
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
end subroutine glDrawRangeElements

subroutine glTexImage3D(target, level, internalformat, width, height, depth, border, format, type,  &
pixels) bind(C, name="glTexImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: border
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTexImage3D

subroutine glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format,  &
type, pixels) bind(C, name="glTexSubImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTexSubImage3D

subroutine glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height) &
 		bind(C, name="glCopyTexSubImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glCopyTexSubImage3D

subroutine glActiveTexture(texture) bind(C, name="glActiveTexture")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
end subroutine glActiveTexture

subroutine glSampleCoverage(value, invert) bind(C, name="glSampleCoverage")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: value
  logical(c_bool),intent(in),value :: invert
end subroutine glSampleCoverage

subroutine glCompressedTexImage3D(target, level, internalformat, width, height, depth, border,  &
imageSize, data) bind(C, name="glCompressedTexImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: border
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTexImage3D

subroutine glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize,  &
data) bind(C, name="glCompressedTexImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: border
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTexImage2D

subroutine glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data) &
 		bind(C, name="glCompressedTexImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: border
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTexImage1D

subroutine glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth,  &
format, imageSize, data) bind(C, name="glCompressedTexSubImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTexSubImage3D

subroutine glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format,  &
imageSize, data) bind(C, name="glCompressedTexSubImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTexSubImage2D

subroutine glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data) &
 		bind(C, name="glCompressedTexSubImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTexSubImage1D

subroutine glGetCompressedTexImage(target, level, img) bind(C, name="glGetCompressedTexImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  type(c_ptr), intent(inout) :: img
end subroutine glGetCompressedTexImage

subroutine glClientActiveTexture(texture) bind(C, name="glClientActiveTexture")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
end subroutine glClientActiveTexture

subroutine glMultiTexCoord1d(target, s) bind(C, name="glMultiTexCoord1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double),intent(in),value :: s
end subroutine glMultiTexCoord1d

subroutine glMultiTexCoord1dv(target, v) bind(C, name="glMultiTexCoord1dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord1dv

subroutine glMultiTexCoord1f(target, s) bind(C, name="glMultiTexCoord1f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float),intent(in),value :: s
end subroutine glMultiTexCoord1f

subroutine glMultiTexCoord1fv(target, v) bind(C, name="glMultiTexCoord1fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord1fv

subroutine glMultiTexCoord1i(target, s) bind(C, name="glMultiTexCoord1i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: s
end subroutine glMultiTexCoord1i

subroutine glMultiTexCoord1iv(target, v) bind(C, name="glMultiTexCoord1iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord1iv

subroutine glMultiTexCoord1s(target, s) bind(C, name="glMultiTexCoord1s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t),intent(in),value :: s
end subroutine glMultiTexCoord1s

subroutine glMultiTexCoord1sv(target, v) bind(C, name="glMultiTexCoord1sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord1sv

subroutine glMultiTexCoord2d(target, s, t) bind(C, name="glMultiTexCoord2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double),intent(in),value :: s
  real(c_double),intent(in),value :: t
end subroutine glMultiTexCoord2d

subroutine glMultiTexCoord2dv(target, v) bind(C, name="glMultiTexCoord2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord2dv

subroutine glMultiTexCoord2f(target, s, t) bind(C, name="glMultiTexCoord2f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float),intent(in),value :: s
  real(c_float),intent(in),value :: t
end subroutine glMultiTexCoord2f

subroutine glMultiTexCoord2fv(target, v) bind(C, name="glMultiTexCoord2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord2fv

subroutine glMultiTexCoord2i(target, s, t) bind(C, name="glMultiTexCoord2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: s
  integer(c_int32_t),intent(in),value :: t
end subroutine glMultiTexCoord2i

subroutine glMultiTexCoord2iv(target, v) bind(C, name="glMultiTexCoord2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord2iv

subroutine glMultiTexCoord2s(target, s, t) bind(C, name="glMultiTexCoord2s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t),intent(in),value :: s
  integer(c_int16_t),intent(in),value :: t
end subroutine glMultiTexCoord2s

subroutine glMultiTexCoord2sv(target, v) bind(C, name="glMultiTexCoord2sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord2sv

subroutine glMultiTexCoord3d(target, s, t, r) bind(C, name="glMultiTexCoord3d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double),intent(in),value :: s
  real(c_double),intent(in),value :: t
  real(c_double),intent(in),value :: r
end subroutine glMultiTexCoord3d

subroutine glMultiTexCoord3dv(target, v) bind(C, name="glMultiTexCoord3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord3dv

subroutine glMultiTexCoord3f(target, s, t, r) bind(C, name="glMultiTexCoord3f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float),intent(in),value :: s
  real(c_float),intent(in),value :: t
  real(c_float),intent(in),value :: r
end subroutine glMultiTexCoord3f

subroutine glMultiTexCoord3fv(target, v) bind(C, name="glMultiTexCoord3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord3fv

subroutine glMultiTexCoord3i(target, s, t, r) bind(C, name="glMultiTexCoord3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: s
  integer(c_int32_t),intent(in),value :: t
  integer(c_int32_t),intent(in),value :: r
end subroutine glMultiTexCoord3i

subroutine glMultiTexCoord3iv(target, v) bind(C, name="glMultiTexCoord3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord3iv

subroutine glMultiTexCoord3s(target, s, t, r) bind(C, name="glMultiTexCoord3s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t),intent(in),value :: s
  integer(c_int16_t),intent(in),value :: t
  integer(c_int16_t),intent(in),value :: r
end subroutine glMultiTexCoord3s

subroutine glMultiTexCoord3sv(target, v) bind(C, name="glMultiTexCoord3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord3sv

subroutine glMultiTexCoord4d(target, s, t, r, q) bind(C, name="glMultiTexCoord4d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double),intent(in),value :: s
  real(c_double),intent(in),value :: t
  real(c_double),intent(in),value :: r
  real(c_double),intent(in),value :: q
end subroutine glMultiTexCoord4d

subroutine glMultiTexCoord4dv(target, v) bind(C, name="glMultiTexCoord4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord4dv

subroutine glMultiTexCoord4f(target, s, t, r, q) bind(C, name="glMultiTexCoord4f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float),intent(in),value :: s
  real(c_float),intent(in),value :: t
  real(c_float),intent(in),value :: r
  real(c_float),intent(in),value :: q
end subroutine glMultiTexCoord4f

subroutine glMultiTexCoord4fv(target, v) bind(C, name="glMultiTexCoord4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord4fv

subroutine glMultiTexCoord4i(target, s, t, r, q) bind(C, name="glMultiTexCoord4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: s
  integer(c_int32_t),intent(in),value :: t
  integer(c_int32_t),intent(in),value :: r
  integer(c_int32_t),intent(in),value :: q
end subroutine glMultiTexCoord4i

subroutine glMultiTexCoord4iv(target, v) bind(C, name="glMultiTexCoord4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord4iv

subroutine glMultiTexCoord4s(target, s, t, r, q) bind(C, name="glMultiTexCoord4s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t),intent(in),value :: s
  integer(c_int16_t),intent(in),value :: t
  integer(c_int16_t),intent(in),value :: r
  integer(c_int16_t),intent(in),value :: q
end subroutine glMultiTexCoord4s

subroutine glMultiTexCoord4sv(target, v) bind(C, name="glMultiTexCoord4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glMultiTexCoord4sv

subroutine glLoadTransposeMatrixf(m) bind(C, name="glLoadTransposeMatrixf")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: m
end subroutine glLoadTransposeMatrixf

subroutine glLoadTransposeMatrixd(m) bind(C, name="glLoadTransposeMatrixd")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: m
end subroutine glLoadTransposeMatrixd

subroutine glMultTransposeMatrixf(m) bind(C, name="glMultTransposeMatrixf")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: m
end subroutine glMultTransposeMatrixf

subroutine glMultTransposeMatrixd(m) bind(C, name="glMultTransposeMatrixd")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: m
end subroutine glMultTransposeMatrixd

subroutine glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha) bind(C, name="glBlendFuncSeparate")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sfactorRGB
  integer(c_int32_t),intent(in),value :: dfactorRGB
  integer(c_int32_t),intent(in),value :: sfactorAlpha
  integer(c_int32_t),intent(in),value :: dfactorAlpha
end subroutine glBlendFuncSeparate

subroutine glMultiDrawArrays(mode, first, count, drawcount) bind(C, name="glMultiDrawArrays")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t), dimension(*), intent(inout) :: first
  integer(c_int64_t), dimension(*), intent(inout) :: count
  integer(c_int64_t),intent(in),value :: drawcount
end subroutine glMultiDrawArrays

subroutine glMultiDrawElements(mode, count, type, indices, drawcount) bind(C, name="glMultiDrawElements")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t), dimension(*), intent(inout) :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int64_t),intent(in),value :: drawcount
end subroutine glMultiDrawElements

subroutine glPointParameterf(pname, param) bind(C, name="glPointParameterf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glPointParameterf

subroutine glPointParameterfv(pname, params) bind(C, name="glPointParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: params
end subroutine glPointParameterfv

subroutine glPointParameteri(pname, param) bind(C, name="glPointParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glPointParameteri

subroutine glPointParameteriv(pname, params) bind(C, name="glPointParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glPointParameteriv

subroutine glFogCoordf(coord) bind(C, name="glFogCoordf")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: coord
end subroutine glFogCoordf

subroutine glFogCoordfv(coord) bind(C, name="glFogCoordfv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: coord
end subroutine glFogCoordfv

subroutine glFogCoordd(coord) bind(C, name="glFogCoordd")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: coord
end subroutine glFogCoordd

subroutine glFogCoorddv(coord) bind(C, name="glFogCoorddv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: coord
end subroutine glFogCoorddv

subroutine glFogCoordPointer(type, stride, pointer) bind(C, name="glFogCoordPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glFogCoordPointer

subroutine glSecondaryColor3b(red, green, blue) bind(C, name="glSecondaryColor3b")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: red
  integer(c_int8_t),intent(in),value :: green
  integer(c_int8_t),intent(in),value :: blue
end subroutine glSecondaryColor3b

subroutine glSecondaryColor3bv(v) bind(C, name="glSecondaryColor3bv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3bv

subroutine glSecondaryColor3d(red, green, blue) bind(C, name="glSecondaryColor3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: red
  real(c_double),intent(in),value :: green
  real(c_double),intent(in),value :: blue
end subroutine glSecondaryColor3d

subroutine glSecondaryColor3dv(v) bind(C, name="glSecondaryColor3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3dv

subroutine glSecondaryColor3f(red, green, blue) bind(C, name="glSecondaryColor3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: red
  real(c_float),intent(in),value :: green
  real(c_float),intent(in),value :: blue
end subroutine glSecondaryColor3f

subroutine glSecondaryColor3fv(v) bind(C, name="glSecondaryColor3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3fv

subroutine glSecondaryColor3i(red, green, blue) bind(C, name="glSecondaryColor3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: red
  integer(c_int32_t),intent(in),value :: green
  integer(c_int32_t),intent(in),value :: blue
end subroutine glSecondaryColor3i

subroutine glSecondaryColor3iv(v) bind(C, name="glSecondaryColor3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3iv

subroutine glSecondaryColor3s(red, green, blue) bind(C, name="glSecondaryColor3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: red
  integer(c_int16_t),intent(in),value :: green
  integer(c_int16_t),intent(in),value :: blue
end subroutine glSecondaryColor3s

subroutine glSecondaryColor3sv(v) bind(C, name="glSecondaryColor3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3sv

subroutine glSecondaryColor3ub(red, green, blue) bind(C, name="glSecondaryColor3ub")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t),intent(in),value :: red
  integer(c_int8_t),intent(in),value :: green
  integer(c_int8_t),intent(in),value :: blue
end subroutine glSecondaryColor3ub

subroutine glSecondaryColor3ubv(v) bind(C, name="glSecondaryColor3ubv")
  use, intrinsic :: iso_c_binding
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3ubv

subroutine glSecondaryColor3ui(red, green, blue) bind(C, name="glSecondaryColor3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: red
  integer(c_int32_t),intent(in),value :: green
  integer(c_int32_t),intent(in),value :: blue
end subroutine glSecondaryColor3ui

subroutine glSecondaryColor3uiv(v) bind(C, name="glSecondaryColor3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3uiv

subroutine glSecondaryColor3us(red, green, blue) bind(C, name="glSecondaryColor3us")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: red
  integer(c_int16_t),intent(in),value :: green
  integer(c_int16_t),intent(in),value :: blue
end subroutine glSecondaryColor3us

subroutine glSecondaryColor3usv(v) bind(C, name="glSecondaryColor3usv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glSecondaryColor3usv

subroutine glSecondaryColorPointer(size, type, stride, pointer) bind(C, name="glSecondaryColorPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glSecondaryColorPointer

subroutine glWindowPos2d(x, y) bind(C, name="glWindowPos2d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
end subroutine glWindowPos2d

subroutine glWindowPos2dv(v) bind(C, name="glWindowPos2dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glWindowPos2dv

subroutine glWindowPos2f(x, y) bind(C, name="glWindowPos2f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
end subroutine glWindowPos2f

subroutine glWindowPos2fv(v) bind(C, name="glWindowPos2fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glWindowPos2fv

subroutine glWindowPos2i(x, y) bind(C, name="glWindowPos2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
end subroutine glWindowPos2i

subroutine glWindowPos2iv(v) bind(C, name="glWindowPos2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glWindowPos2iv

subroutine glWindowPos2s(x, y) bind(C, name="glWindowPos2s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
end subroutine glWindowPos2s

subroutine glWindowPos2sv(v) bind(C, name="glWindowPos2sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glWindowPos2sv

subroutine glWindowPos3d(x, y, z) bind(C, name="glWindowPos3d")
  use, intrinsic :: iso_c_binding
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glWindowPos3d

subroutine glWindowPos3dv(v) bind(C, name="glWindowPos3dv")
  use, intrinsic :: iso_c_binding
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glWindowPos3dv

subroutine glWindowPos3f(x, y, z) bind(C, name="glWindowPos3f")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glWindowPos3f

subroutine glWindowPos3fv(v) bind(C, name="glWindowPos3fv")
  use, intrinsic :: iso_c_binding
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glWindowPos3fv

subroutine glWindowPos3i(x, y, z) bind(C, name="glWindowPos3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
end subroutine glWindowPos3i

subroutine glWindowPos3iv(v) bind(C, name="glWindowPos3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glWindowPos3iv

subroutine glWindowPos3s(x, y, z) bind(C, name="glWindowPos3s")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
end subroutine glWindowPos3s

subroutine glWindowPos3sv(v) bind(C, name="glWindowPos3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glWindowPos3sv

subroutine glBlendColor(red, green, blue, alpha) bind(C, name="glBlendColor")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: red
  real(c_float),intent(in),value :: green
  real(c_float),intent(in),value :: blue
  real(c_float),intent(in),value :: alpha
end subroutine glBlendColor

subroutine glBlendEquation(mode) bind(C, name="glBlendEquation")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glBlendEquation

subroutine glGenQueries(n, ids) bind(C, name="glGenQueries")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: ids
end subroutine glGenQueries

subroutine glDeleteQueries(n, ids) bind(C, name="glDeleteQueries")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: ids
end subroutine glDeleteQueries

function glIsQuery(id) bind(C, name="glIsQuery")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsQuery
  integer(c_int32_t),intent(in),value :: id
end function glIsQuery

subroutine glBeginQuery(target, id) bind(C, name="glBeginQuery")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: id
end subroutine glBeginQuery

subroutine glEndQuery(target) bind(C, name="glEndQuery")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
end subroutine glEndQuery

subroutine glGetQueryiv(target, pname, params) bind(C, name="glGetQueryiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetQueryiv

subroutine glGetQueryObjectiv(id, pname, params) bind(C, name="glGetQueryObjectiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetQueryObjectiv

subroutine glGetQueryObjectuiv(id, pname, params) bind(C, name="glGetQueryObjectuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetQueryObjectuiv

subroutine glBindBuffer(target, buffer) bind(C, name="glBindBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glBindBuffer

subroutine glDeleteBuffers(n, buffers) bind(C, name="glDeleteBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: buffers
end subroutine glDeleteBuffers

subroutine glGenBuffers(n, buffers) bind(C, name="glGenBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: buffers
end subroutine glGenBuffers

function glIsBuffer(buffer) bind(C, name="glIsBuffer")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsBuffer
  integer(c_int32_t),intent(in),value :: buffer
end function glIsBuffer

subroutine glBufferData(target, size, data, usage) bind(C, name="glBufferData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
  integer(c_int32_t),intent(in),value :: usage
end subroutine glBufferData

subroutine glBufferSubData(target, offset, size, data) bind(C, name="glBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
end subroutine glBufferSubData

subroutine glGetBufferSubData(target, offset, size, data) bind(C, name="glGetBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
end subroutine glGetBufferSubData

subroutine glMapBuffer(target, access) bind(C, name="glMapBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: access
end subroutine glMapBuffer

function glUnmapBuffer(target) bind(C, name="glUnmapBuffer")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glUnmapBuffer
  integer(c_int32_t),intent(in),value :: target
end function glUnmapBuffer

subroutine glGetBufferParameteriv(target, pname, params) bind(C, name="glGetBufferParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetBufferParameteriv

subroutine glGetBufferPointerv(target, pname, params) bind(C, name="glGetBufferPointerv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  type(c_ptr), intent(inout) :: params
end subroutine glGetBufferPointerv

subroutine glBlendEquationSeparate(modeRGB, modeAlpha) bind(C, name="glBlendEquationSeparate")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: modeRGB
  integer(c_int32_t),intent(in),value :: modeAlpha
end subroutine glBlendEquationSeparate

subroutine glDrawBuffers(n, bufs) bind(C, name="glDrawBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: bufs
end subroutine glDrawBuffers

subroutine glStencilOpSeparate(face, sfail, dpfail, dppass) bind(C, name="glStencilOpSeparate")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: sfail
  integer(c_int32_t),intent(in),value :: dpfail
  integer(c_int32_t),intent(in),value :: dppass
end subroutine glStencilOpSeparate

subroutine glStencilFuncSeparate(face, func, ref, mask) bind(C, name="glStencilFuncSeparate")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: func
  integer(c_int32_t),intent(in),value :: ref
  integer(c_int32_t),intent(in),value :: mask
end subroutine glStencilFuncSeparate

subroutine glStencilMaskSeparate(face, mask) bind(C, name="glStencilMaskSeparate")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: face
  integer(c_int32_t),intent(in),value :: mask
end subroutine glStencilMaskSeparate

subroutine glAttachShader(program, shader) bind(C, name="glAttachShader")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shader
end subroutine glAttachShader

subroutine glBindAttribLocation(program, index, name) bind(C, name="glBindAttribLocation")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: index
  character(c_char), dimension(*), intent(inout) :: name
end subroutine glBindAttribLocation

subroutine glCompileShader(shader) bind(C, name="glCompileShader")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
end subroutine glCompileShader

function glCreateProgram() bind(C, name="glCreateProgram")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glCreateProgram
end function glCreateProgram

function glCreateShader(type) bind(C, name="glCreateShader")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glCreateShader
  integer(c_int32_t),intent(in),value :: type
end function glCreateShader

subroutine glDeleteProgram(program) bind(C, name="glDeleteProgram")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
end subroutine glDeleteProgram

subroutine glDeleteShader(shader) bind(C, name="glDeleteShader")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
end subroutine glDeleteShader

subroutine glDetachShader(program, shader) bind(C, name="glDetachShader")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shader
end subroutine glDetachShader

subroutine glDisableVertexAttribArray(index) bind(C, name="glDisableVertexAttribArray")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
end subroutine glDisableVertexAttribArray

subroutine glEnableVertexAttribArray(index) bind(C, name="glEnableVertexAttribArray")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
end subroutine glEnableVertexAttribArray

subroutine glGetActiveAttrib(program, index, bufSize, length, size, type, name) bind(C, name="glGetActiveAttrib")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  character(c_char),intent(in),value :: name
end subroutine glGetActiveAttrib

subroutine glGetActiveUniform(program, index, bufSize, length, size, type, name) bind(C, name="glGetActiveUniform")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  character(c_char),intent(in),value :: name
end subroutine glGetActiveUniform

subroutine glGetAttachedShaders(program, maxCount, count, shaders) bind(C, name="glGetAttachedShaders")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int64_t),intent(in),value :: maxCount
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: shaders
end subroutine glGetAttachedShaders

function glGetAttribLocation(program, name) bind(C, name="glGetAttribLocation")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetAttribLocation
  integer(c_int32_t),intent(in),value :: program
  character(c_char), dimension(*), intent(inout) :: name
end function glGetAttribLocation

subroutine glGetProgramiv(program, pname, params) bind(C, name="glGetProgramiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetProgramiv

subroutine glGetProgramInfoLog(program, bufSize, length, infoLog) bind(C, name="glGetProgramInfoLog")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: infoLog
end subroutine glGetProgramInfoLog

subroutine glGetShaderiv(shader, pname, params) bind(C, name="glGetShaderiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetShaderiv

subroutine glGetShaderInfoLog(shader, bufSize, length, infoLog) bind(C, name="glGetShaderInfoLog")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: infoLog
end subroutine glGetShaderInfoLog

subroutine glGetShaderSource(shader, bufSize, length, source) bind(C, name="glGetShaderSource")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: source
end subroutine glGetShaderSource

function glGetUniformLocation(program, name) bind(C, name="glGetUniformLocation")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetUniformLocation
  integer(c_int32_t),intent(in),value :: program
  character(c_char), dimension(*), intent(inout) :: name
end function glGetUniformLocation

subroutine glGetUniformfv(program, location, params) bind(C, name="glGetUniformfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: params
end subroutine glGetUniformfv

subroutine glGetUniformiv(program, location, params) bind(C, name="glGetUniformiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetUniformiv

subroutine glGetVertexAttribdv(index, pname, params) bind(C, name="glGetVertexAttribdv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  real(c_double),intent(in),value :: params
end subroutine glGetVertexAttribdv

subroutine glGetVertexAttribfv(index, pname, params) bind(C, name="glGetVertexAttribfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetVertexAttribfv

subroutine glGetVertexAttribiv(index, pname, params) bind(C, name="glGetVertexAttribiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetVertexAttribiv

subroutine glGetVertexAttribPointerv(index, pname, pointer) bind(C, name="glGetVertexAttribPointerv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  type(c_ptr), intent(inout) :: pointer
end subroutine glGetVertexAttribPointerv

function glIsProgram(program) bind(C, name="glIsProgram")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsProgram
  integer(c_int32_t),intent(in),value :: program
end function glIsProgram

function glIsShader(shader) bind(C, name="glIsShader")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsShader
  integer(c_int32_t),intent(in),value :: shader
end function glIsShader

subroutine glLinkProgram(program) bind(C, name="glLinkProgram")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
end subroutine glLinkProgram

subroutine glShaderSource(shader, count, string, length) bind(C, name="glShaderSource")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
  integer(c_int64_t),intent(in),value :: count
  type(c_ptr), dimension(*), intent(inout) :: string
  integer(c_int32_t), dimension(*), intent(inout) :: length
end subroutine glShaderSource

subroutine glUseProgram(program) bind(C, name="glUseProgram")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
end subroutine glUseProgram

subroutine glUniform1f(location, v0) bind(C, name="glUniform1f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
end subroutine glUniform1f

subroutine glUniform2f(location, v0, v1) bind(C, name="glUniform2f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
  real(c_float),intent(in),value :: v1
end subroutine glUniform2f

subroutine glUniform3f(location, v0, v1, v2) bind(C, name="glUniform3f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
  real(c_float),intent(in),value :: v1
  real(c_float),intent(in),value :: v2
end subroutine glUniform3f

subroutine glUniform4f(location, v0, v1, v2, v3) bind(C, name="glUniform4f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
  real(c_float),intent(in),value :: v1
  real(c_float),intent(in),value :: v2
  real(c_float),intent(in),value :: v3
end subroutine glUniform4f

subroutine glUniform1i(location, v0) bind(C, name="glUniform1i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
end subroutine glUniform1i

subroutine glUniform2i(location, v0, v1) bind(C, name="glUniform2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
end subroutine glUniform2i

subroutine glUniform3i(location, v0, v1, v2) bind(C, name="glUniform3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
end subroutine glUniform3i

subroutine glUniform4i(location, v0, v1, v2, v3) bind(C, name="glUniform4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
  integer(c_int32_t),intent(in),value :: v3
end subroutine glUniform4i

subroutine glUniform1fv(location, count, value) bind(C, name="glUniform1fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniform1fv

subroutine glUniform2fv(location, count, value) bind(C, name="glUniform2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniform2fv

subroutine glUniform3fv(location, count, value) bind(C, name="glUniform3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniform3fv

subroutine glUniform4fv(location, count, value) bind(C, name="glUniform4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniform4fv

subroutine glUniform1iv(location, count, value) bind(C, name="glUniform1iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform1iv

subroutine glUniform2iv(location, count, value) bind(C, name="glUniform2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform2iv

subroutine glUniform3iv(location, count, value) bind(C, name="glUniform3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform3iv

subroutine glUniform4iv(location, count, value) bind(C, name="glUniform4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform4iv

subroutine glUniformMatrix2fv(location, count, transpose, value) bind(C, name="glUniformMatrix2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix2fv

subroutine glUniformMatrix3fv(location, count, transpose, value) bind(C, name="glUniformMatrix3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix3fv

subroutine glUniformMatrix4fv(location, count, transpose, value) bind(C, name="glUniformMatrix4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix4fv

subroutine glValidateProgram(program) bind(C, name="glValidateProgram")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
end subroutine glValidateProgram

subroutine glVertexAttrib1d(index, x) bind(C, name="glVertexAttrib1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
end subroutine glVertexAttrib1d

subroutine glVertexAttrib1dv(index, v) bind(C, name="glVertexAttrib1dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib1dv

subroutine glVertexAttrib1f(index, x) bind(C, name="glVertexAttrib1f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: x
end subroutine glVertexAttrib1f

subroutine glVertexAttrib1fv(index, v) bind(C, name="glVertexAttrib1fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib1fv

subroutine glVertexAttrib1s(index, x) bind(C, name="glVertexAttrib1s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t),intent(in),value :: x
end subroutine glVertexAttrib1s

subroutine glVertexAttrib1sv(index, v) bind(C, name="glVertexAttrib1sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib1sv

subroutine glVertexAttrib2d(index, x, y) bind(C, name="glVertexAttrib2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
end subroutine glVertexAttrib2d

subroutine glVertexAttrib2dv(index, v) bind(C, name="glVertexAttrib2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib2dv

subroutine glVertexAttrib2f(index, x, y) bind(C, name="glVertexAttrib2f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
end subroutine glVertexAttrib2f

subroutine glVertexAttrib2fv(index, v) bind(C, name="glVertexAttrib2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib2fv

subroutine glVertexAttrib2s(index, x, y) bind(C, name="glVertexAttrib2s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
end subroutine glVertexAttrib2s

subroutine glVertexAttrib2sv(index, v) bind(C, name="glVertexAttrib2sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib2sv

subroutine glVertexAttrib3d(index, x, y, z) bind(C, name="glVertexAttrib3d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glVertexAttrib3d

subroutine glVertexAttrib3dv(index, v) bind(C, name="glVertexAttrib3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib3dv

subroutine glVertexAttrib3f(index, x, y, z) bind(C, name="glVertexAttrib3f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
end subroutine glVertexAttrib3f

subroutine glVertexAttrib3fv(index, v) bind(C, name="glVertexAttrib3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib3fv

subroutine glVertexAttrib3s(index, x, y, z) bind(C, name="glVertexAttrib3s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
end subroutine glVertexAttrib3s

subroutine glVertexAttrib3sv(index, v) bind(C, name="glVertexAttrib3sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib3sv

subroutine glVertexAttrib4Nbv(index, v) bind(C, name="glVertexAttrib4Nbv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4Nbv

subroutine glVertexAttrib4Niv(index, v) bind(C, name="glVertexAttrib4Niv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4Niv

subroutine glVertexAttrib4Nsv(index, v) bind(C, name="glVertexAttrib4Nsv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4Nsv

subroutine glVertexAttrib4Nub(index, x, y, z, w) bind(C, name="glVertexAttrib4Nub")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t),intent(in),value :: x
  integer(c_int8_t),intent(in),value :: y
  integer(c_int8_t),intent(in),value :: z
  integer(c_int8_t),intent(in),value :: w
end subroutine glVertexAttrib4Nub

subroutine glVertexAttrib4Nubv(index, v) bind(C, name="glVertexAttrib4Nubv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4Nubv

subroutine glVertexAttrib4Nuiv(index, v) bind(C, name="glVertexAttrib4Nuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4Nuiv

subroutine glVertexAttrib4Nusv(index, v) bind(C, name="glVertexAttrib4Nusv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4Nusv

subroutine glVertexAttrib4bv(index, v) bind(C, name="glVertexAttrib4bv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4bv

subroutine glVertexAttrib4d(index, x, y, z, w) bind(C, name="glVertexAttrib4d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
  real(c_double),intent(in),value :: w
end subroutine glVertexAttrib4d

subroutine glVertexAttrib4dv(index, v) bind(C, name="glVertexAttrib4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4dv

subroutine glVertexAttrib4f(index, x, y, z, w) bind(C, name="glVertexAttrib4f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: z
  real(c_float),intent(in),value :: w
end subroutine glVertexAttrib4f

subroutine glVertexAttrib4fv(index, v) bind(C, name="glVertexAttrib4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4fv

subroutine glVertexAttrib4iv(index, v) bind(C, name="glVertexAttrib4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4iv

subroutine glVertexAttrib4s(index, x, y, z, w) bind(C, name="glVertexAttrib4s")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t),intent(in),value :: x
  integer(c_int16_t),intent(in),value :: y
  integer(c_int16_t),intent(in),value :: z
  integer(c_int16_t),intent(in),value :: w
end subroutine glVertexAttrib4s

subroutine glVertexAttrib4sv(index, v) bind(C, name="glVertexAttrib4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4sv

subroutine glVertexAttrib4ubv(index, v) bind(C, name="glVertexAttrib4ubv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4ubv

subroutine glVertexAttrib4uiv(index, v) bind(C, name="glVertexAttrib4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4uiv

subroutine glVertexAttrib4usv(index, v) bind(C, name="glVertexAttrib4usv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttrib4usv

subroutine glVertexAttribPointer(index, size, type, normalized, stride, pointer) bind(C, name="glVertexAttribPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glVertexAttribPointer

subroutine glUniformMatrix2x3fv(location, count, transpose, value) bind(C, name="glUniformMatrix2x3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix2x3fv

subroutine glUniformMatrix3x2fv(location, count, transpose, value) bind(C, name="glUniformMatrix3x2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix3x2fv

subroutine glUniformMatrix2x4fv(location, count, transpose, value) bind(C, name="glUniformMatrix2x4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix2x4fv

subroutine glUniformMatrix4x2fv(location, count, transpose, value) bind(C, name="glUniformMatrix4x2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix4x2fv

subroutine glUniformMatrix3x4fv(location, count, transpose, value) bind(C, name="glUniformMatrix3x4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix3x4fv

subroutine glUniformMatrix4x3fv(location, count, transpose, value) bind(C, name="glUniformMatrix4x3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix4x3fv

subroutine glColorMaski(index, r, g, b, a) bind(C, name="glColorMaski")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  logical(c_bool),intent(in),value :: r
  logical(c_bool),intent(in),value :: g
  logical(c_bool),intent(in),value :: b
  logical(c_bool),intent(in),value :: a
end subroutine glColorMaski

subroutine glGetBooleani_v(target, index, data) bind(C, name="glGetBooleani_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  logical(c_bool),intent(in),value :: data
end subroutine glGetBooleani_v

subroutine glGetIntegeri_v(target, index, data) bind(C, name="glGetIntegeri_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: data
end subroutine glGetIntegeri_v

subroutine glEnablei(target, index) bind(C, name="glEnablei")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
end subroutine glEnablei

subroutine glDisablei(target, index) bind(C, name="glDisablei")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
end subroutine glDisablei

function glIsEnabledi(target, index) bind(C, name="glIsEnabledi")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsEnabledi
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
end function glIsEnabledi

subroutine glBeginTransformFeedback(primitiveMode) bind(C, name="glBeginTransformFeedback")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: primitiveMode
end subroutine glBeginTransformFeedback

subroutine glEndTransformFeedback() bind(C, name="glEndTransformFeedback")
  use, intrinsic :: iso_c_binding
end subroutine glEndTransformFeedback

subroutine glBindBufferRange(target, index, buffer, offset, size) bind(C, name="glBindBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
end subroutine glBindBufferRange

subroutine glBindBufferBase(target, index, buffer) bind(C, name="glBindBufferBase")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glBindBufferBase

subroutine glTransformFeedbackVaryings(program, count, varyings, bufferMode) &
 		bind(C, name="glTransformFeedbackVaryings")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int64_t),intent(in),value :: count
  type(c_ptr), dimension(*), intent(inout) :: varyings
  integer(c_int32_t),intent(in),value :: bufferMode
end subroutine glTransformFeedbackVaryings

subroutine glGetTransformFeedbackVarying(program, index, bufSize, length, size, type, name) &
 		bind(C, name="glGetTransformFeedbackVarying")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  integer(c_int64_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  character(c_char),intent(in),value :: name
end subroutine glGetTransformFeedbackVarying

subroutine glClampColor(target, clamp) bind(C, name="glClampColor")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: clamp
end subroutine glClampColor

subroutine glBeginConditionalRender(id, mode) bind(C, name="glBeginConditionalRender")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: mode
end subroutine glBeginConditionalRender

subroutine glEndConditionalRender() bind(C, name="glEndConditionalRender")
  use, intrinsic :: iso_c_binding
end subroutine glEndConditionalRender

subroutine glVertexAttribIPointer(index, size, type, stride, pointer) bind(C, name="glVertexAttribIPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glVertexAttribIPointer

subroutine glGetVertexAttribIiv(index, pname, params) bind(C, name="glGetVertexAttribIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetVertexAttribIiv

subroutine glGetVertexAttribIuiv(index, pname, params) bind(C, name="glGetVertexAttribIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetVertexAttribIuiv

subroutine glVertexAttribI1i(index, x) bind(C, name="glVertexAttribI1i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
end subroutine glVertexAttribI1i

subroutine glVertexAttribI2i(index, x, y) bind(C, name="glVertexAttribI2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
end subroutine glVertexAttribI2i

subroutine glVertexAttribI3i(index, x, y, z) bind(C, name="glVertexAttribI3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
end subroutine glVertexAttribI3i

subroutine glVertexAttribI4i(index, x, y, z, w) bind(C, name="glVertexAttribI4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
  integer(c_int32_t),intent(in),value :: w
end subroutine glVertexAttribI4i

subroutine glVertexAttribI1ui(index, x) bind(C, name="glVertexAttribI1ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
end subroutine glVertexAttribI1ui

subroutine glVertexAttribI2ui(index, x, y) bind(C, name="glVertexAttribI2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
end subroutine glVertexAttribI2ui

subroutine glVertexAttribI3ui(index, x, y, z) bind(C, name="glVertexAttribI3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
end subroutine glVertexAttribI3ui

subroutine glVertexAttribI4ui(index, x, y, z, w) bind(C, name="glVertexAttribI4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int32_t),intent(in),value :: z
  integer(c_int32_t),intent(in),value :: w
end subroutine glVertexAttribI4ui

subroutine glVertexAttribI1iv(index, v) bind(C, name="glVertexAttribI1iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI1iv

subroutine glVertexAttribI2iv(index, v) bind(C, name="glVertexAttribI2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI2iv

subroutine glVertexAttribI3iv(index, v) bind(C, name="glVertexAttribI3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI3iv

subroutine glVertexAttribI4iv(index, v) bind(C, name="glVertexAttribI4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI4iv

subroutine glVertexAttribI1uiv(index, v) bind(C, name="glVertexAttribI1uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI1uiv

subroutine glVertexAttribI2uiv(index, v) bind(C, name="glVertexAttribI2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI2uiv

subroutine glVertexAttribI3uiv(index, v) bind(C, name="glVertexAttribI3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI3uiv

subroutine glVertexAttribI4uiv(index, v) bind(C, name="glVertexAttribI4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI4uiv

subroutine glVertexAttribI4bv(index, v) bind(C, name="glVertexAttribI4bv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI4bv

subroutine glVertexAttribI4sv(index, v) bind(C, name="glVertexAttribI4sv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI4sv

subroutine glVertexAttribI4ubv(index, v) bind(C, name="glVertexAttribI4ubv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int8_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI4ubv

subroutine glVertexAttribI4usv(index, v) bind(C, name="glVertexAttribI4usv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int16_t), dimension(*), intent(inout) :: v
end subroutine glVertexAttribI4usv

subroutine glGetUniformuiv(program, location, params) bind(C, name="glGetUniformuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetUniformuiv

subroutine glBindFragDataLocation(program, color, name) bind(C, name="glBindFragDataLocation")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: color
  character(c_char), dimension(*), intent(inout) :: name
end subroutine glBindFragDataLocation

function glGetFragDataLocation(program, name) bind(C, name="glGetFragDataLocation")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetFragDataLocation
  integer(c_int32_t),intent(in),value :: program
  character(c_char), dimension(*), intent(inout) :: name
end function glGetFragDataLocation

subroutine glUniform1ui(location, v0) bind(C, name="glUniform1ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
end subroutine glUniform1ui

subroutine glUniform2ui(location, v0, v1) bind(C, name="glUniform2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
end subroutine glUniform2ui

subroutine glUniform3ui(location, v0, v1, v2) bind(C, name="glUniform3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
end subroutine glUniform3ui

subroutine glUniform4ui(location, v0, v1, v2, v3) bind(C, name="glUniform4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
  integer(c_int32_t),intent(in),value :: v3
end subroutine glUniform4ui

subroutine glUniform1uiv(location, count, value) bind(C, name="glUniform1uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform1uiv

subroutine glUniform2uiv(location, count, value) bind(C, name="glUniform2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform2uiv

subroutine glUniform3uiv(location, count, value) bind(C, name="glUniform3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform3uiv

subroutine glUniform4uiv(location, count, value) bind(C, name="glUniform4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glUniform4uiv

subroutine glTexParameterIiv(target, pname, params) bind(C, name="glTexParameterIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTexParameterIiv

subroutine glTexParameterIuiv(target, pname, params) bind(C, name="glTexParameterIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTexParameterIuiv

subroutine glGetTexParameterIiv(target, pname, params) bind(C, name="glGetTexParameterIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTexParameterIiv

subroutine glGetTexParameterIuiv(target, pname, params) bind(C, name="glGetTexParameterIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTexParameterIuiv

subroutine glClearBufferiv(buffer, drawbuffer, value) bind(C, name="glClearBufferiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glClearBufferiv

subroutine glClearBufferuiv(buffer, drawbuffer, value) bind(C, name="glClearBufferuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glClearBufferuiv

subroutine glClearBufferfv(buffer, drawbuffer, value) bind(C, name="glClearBufferfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glClearBufferfv

subroutine glClearBufferfi(buffer, drawbuffer, depth, stencil) bind(C, name="glClearBufferfi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  real(c_float),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: stencil
end subroutine glClearBufferfi

function glGetStringi(name, index) bind(C, name="glGetStringi")
  use, intrinsic :: iso_c_binding
    type(c_ptr) :: glGetStringi
  integer(c_int32_t),intent(in),value :: name
  integer(c_int32_t),intent(in),value :: index
end function glGetStringi

function glIsRenderbuffer(renderbuffer) bind(C, name="glIsRenderbuffer")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsRenderbuffer
  integer(c_int32_t),intent(in),value :: renderbuffer
end function glIsRenderbuffer

subroutine glBindRenderbuffer(target, renderbuffer) bind(C, name="glBindRenderbuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: renderbuffer
end subroutine glBindRenderbuffer

subroutine glDeleteRenderbuffers(n, renderbuffers) bind(C, name="glDeleteRenderbuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: renderbuffers
end subroutine glDeleteRenderbuffers

subroutine glGenRenderbuffers(n, renderbuffers) bind(C, name="glGenRenderbuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: renderbuffers
end subroutine glGenRenderbuffers

subroutine glRenderbufferStorage(target, internalformat, width, height) bind(C, name="glRenderbufferStorage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glRenderbufferStorage

subroutine glGetRenderbufferParameteriv(target, pname, params) bind(C, name="glGetRenderbufferParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetRenderbufferParameteriv

function glIsFramebuffer(framebuffer) bind(C, name="glIsFramebuffer")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsFramebuffer
  integer(c_int32_t),intent(in),value :: framebuffer
end function glIsFramebuffer

subroutine glBindFramebuffer(target, framebuffer) bind(C, name="glBindFramebuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: framebuffer
end subroutine glBindFramebuffer

subroutine glDeleteFramebuffers(n, framebuffers) bind(C, name="glDeleteFramebuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: framebuffers
end subroutine glDeleteFramebuffers

subroutine glGenFramebuffers(n, framebuffers) bind(C, name="glGenFramebuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: framebuffers
end subroutine glGenFramebuffers

function glCheckFramebufferStatus(target) bind(C, name="glCheckFramebufferStatus")
  use, intrinsic :: iso_c_binding
    integer(c_int) :: glCheckFramebufferStatus
  integer(c_int32_t),intent(in),value :: target
end function glCheckFramebufferStatus

subroutine glFramebufferTexture1D(target, attachment, textarget, texture, level) bind(C, name="glFramebufferTexture1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: textarget
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
end subroutine glFramebufferTexture1D

subroutine glFramebufferTexture2D(target, attachment, textarget, texture, level) bind(C, name="glFramebufferTexture2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: textarget
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
end subroutine glFramebufferTexture2D

subroutine glFramebufferTexture3D(target, attachment, textarget, texture, level, zoffset) &
 		bind(C, name="glFramebufferTexture3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: textarget
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: zoffset
end subroutine glFramebufferTexture3D

subroutine glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer) &
 		bind(C, name="glFramebufferRenderbuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: renderbuffertarget
  integer(c_int32_t),intent(in),value :: renderbuffer
end subroutine glFramebufferRenderbuffer

subroutine glGetFramebufferAttachmentParameteriv(target, attachment, pname, params) &
 		bind(C, name="glGetFramebufferAttachmentParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetFramebufferAttachmentParameteriv

subroutine glGenerateMipmap(target) bind(C, name="glGenerateMipmap")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
end subroutine glGenerateMipmap

subroutine glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter) &
 		bind(C, name="glBlitFramebuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: srcX0
  integer(c_int32_t),intent(in),value :: srcY0
  integer(c_int32_t),intent(in),value :: srcX1
  integer(c_int32_t),intent(in),value :: srcY1
  integer(c_int32_t),intent(in),value :: dstX0
  integer(c_int32_t),intent(in),value :: dstY0
  integer(c_int32_t),intent(in),value :: dstX1
  integer(c_int32_t),intent(in),value :: dstY1
  integer(c_int32_t),intent(in),value :: mask
  integer(c_int32_t),intent(in),value :: filter
end subroutine glBlitFramebuffer

subroutine glRenderbufferStorageMultisample(target, samples, internalformat, width, height) &
 		bind(C, name="glRenderbufferStorageMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glRenderbufferStorageMultisample

subroutine glFramebufferTextureLayer(target, attachment, texture, level, layer) &
 		bind(C, name="glFramebufferTextureLayer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: layer
end subroutine glFramebufferTextureLayer

subroutine glMapBufferRange(target, offset, length, access) bind(C, name="glMapBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: access
end subroutine glMapBufferRange

subroutine glFlushMappedBufferRange(target, offset, length) bind(C, name="glFlushMappedBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: length
end subroutine glFlushMappedBufferRange

subroutine glBindVertexArray(array) bind(C, name="glBindVertexArray")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: array
end subroutine glBindVertexArray

subroutine glDeleteVertexArrays(n, arrays) bind(C, name="glDeleteVertexArrays")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: arrays
end subroutine glDeleteVertexArrays

subroutine glGenVertexArrays(n, arrays) bind(C, name="glGenVertexArrays")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: arrays
end subroutine glGenVertexArrays

function glIsVertexArray(array) bind(C, name="glIsVertexArray")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsVertexArray
  integer(c_int32_t),intent(in),value :: array
end function glIsVertexArray

subroutine glDrawArraysInstanced(mode, first, count, instancecount) bind(C, name="glDrawArraysInstanced")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int64_t),intent(in),value :: instancecount
end subroutine glDrawArraysInstanced

subroutine glDrawElementsInstanced(mode, count, type, indices, instancecount) bind(C, name="glDrawElementsInstanced")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int64_t),intent(in),value :: instancecount
end subroutine glDrawElementsInstanced

subroutine glTexBuffer(target, internalformat, buffer) bind(C, name="glTexBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glTexBuffer

subroutine glPrimitiveRestartIndex(index) bind(C, name="glPrimitiveRestartIndex")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
end subroutine glPrimitiveRestartIndex

subroutine glCopyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size) &
 		bind(C, name="glCopyBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: readTarget
  integer(c_int32_t),intent(in),value :: writeTarget
  integer(c_int64_t), dimension(*), intent(inout) :: readOffset
  integer(c_int64_t), dimension(*), intent(inout) :: writeOffset
  integer(c_int64_t),intent(in),value :: size
end subroutine glCopyBufferSubData

subroutine glGetUniformIndices(program, uniformCount, uniformNames, uniformIndices) bind(C, name="glGetUniformIndices")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int64_t),intent(in),value :: uniformCount
  type(c_ptr), dimension(*), intent(inout) :: uniformNames
  integer(c_int32_t),intent(in),value :: uniformIndices
end subroutine glGetUniformIndices

subroutine glGetActiveUniformsiv(program, uniformCount, uniformIndices, pname, params) &
 		bind(C, name="glGetActiveUniformsiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int64_t),intent(in),value :: uniformCount
  integer(c_int32_t), dimension(*), intent(inout) :: uniformIndices
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetActiveUniformsiv

subroutine glGetActiveUniformName(program, uniformIndex, bufSize, length, uniformName) &
 		bind(C, name="glGetActiveUniformName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: uniformIndex
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: uniformName
end subroutine glGetActiveUniformName

function glGetUniformBlockIndex(program, uniformBlockName) bind(C, name="glGetUniformBlockIndex")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetUniformBlockIndex
  integer(c_int32_t),intent(in),value :: program
  character(c_char), dimension(*), intent(inout) :: uniformBlockName
end function glGetUniformBlockIndex

subroutine glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, params) &
 		bind(C, name="glGetActiveUniformBlockiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: uniformBlockIndex
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetActiveUniformBlockiv

subroutine glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length, uniformBlockName) &
 		bind(C, name="glGetActiveUniformBlockName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: uniformBlockIndex
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: uniformBlockName
end subroutine glGetActiveUniformBlockName

subroutine glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding) bind(C, name="glUniformBlockBinding")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: uniformBlockIndex
  integer(c_int32_t),intent(in),value :: uniformBlockBinding
end subroutine glUniformBlockBinding

subroutine glDrawElementsBaseVertex(mode, count, type, indices, basevertex) bind(C, name="glDrawElementsBaseVertex")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int32_t),intent(in),value :: basevertex
end subroutine glDrawElementsBaseVertex

subroutine glDrawRangeElementsBaseVertex(mode, start, end, count, type, indices, basevertex) &
 		bind(C, name="glDrawRangeElementsBaseVertex")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: start
  integer(c_int32_t),intent(in),value :: end
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int32_t),intent(in),value :: basevertex
end subroutine glDrawRangeElementsBaseVertex

subroutine glDrawElementsInstancedBaseVertex(mode, count, type, indices, instancecount, basevertex) &
 		bind(C, name="glDrawElementsInstancedBaseVertex")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int64_t),intent(in),value :: instancecount
  integer(c_int32_t),intent(in),value :: basevertex
end subroutine glDrawElementsInstancedBaseVertex

subroutine glMultiDrawElementsBaseVertex(mode, count, type, indices, drawcount, basevertex) &
 		bind(C, name="glMultiDrawElementsBaseVertex")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t), dimension(*), intent(inout) :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int64_t),intent(in),value :: drawcount
  integer(c_int32_t), dimension(*), intent(inout) :: basevertex
end subroutine glMultiDrawElementsBaseVertex

subroutine glProvokingVertex(mode) bind(C, name="glProvokingVertex")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
end subroutine glProvokingVertex

function glFenceSync(condition, flags) bind(C, name="glFenceSync")
  use, intrinsic :: iso_c_binding
    type(c_ptr) :: glFenceSync
  integer(c_int32_t),intent(in),value :: condition
  integer(c_int32_t),intent(in),value :: flags
end function glFenceSync

function glIsSync(sync) bind(C, name="glIsSync")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsSync
  type(c_ptr), intent(inout) :: sync
end function glIsSync

subroutine glDeleteSync(sync) bind(C, name="glDeleteSync")
  use, intrinsic :: iso_c_binding
  type(c_ptr), intent(inout) :: sync
end subroutine glDeleteSync

function glClientWaitSync(sync, flags, timeout) bind(C, name="glClientWaitSync")
  use, intrinsic :: iso_c_binding
    integer(c_int) :: glClientWaitSync
  type(c_ptr), intent(inout) :: sync
  integer(c_int32_t),intent(in),value :: flags
  integer(c_int64_t),intent(in),value :: timeout
end function glClientWaitSync

subroutine glWaitSync(sync, flags, timeout) bind(C, name="glWaitSync")
  use, intrinsic :: iso_c_binding
  type(c_ptr), intent(inout) :: sync
  integer(c_int32_t),intent(in),value :: flags
  integer(c_int64_t),intent(in),value :: timeout
end subroutine glWaitSync

subroutine glGetInteger64v(pname, data) bind(C, name="glGetInteger64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: data
end subroutine glGetInteger64v

subroutine glGetSynciv(sync, pname, count, length, values) bind(C, name="glGetSynciv")
  use, intrinsic :: iso_c_binding
  type(c_ptr), intent(inout) :: sync
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: count
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: values
end subroutine glGetSynciv

subroutine glGetInteger64i_v(target, index, data) bind(C, name="glGetInteger64i_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: data
end subroutine glGetInteger64i_v

subroutine glGetBufferParameteri64v(target, pname, params) bind(C, name="glGetBufferParameteri64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: params
end subroutine glGetBufferParameteri64v

subroutine glFramebufferTexture(target, attachment, texture, level) bind(C, name="glFramebufferTexture")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
end subroutine glFramebufferTexture

subroutine glTexImage2DMultisample(target, samples, internalformat, width, height,  &
fixedsamplelocations) bind(C, name="glTexImage2DMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  logical(c_bool),intent(in),value :: fixedsamplelocations
end subroutine glTexImage2DMultisample

subroutine glTexImage3DMultisample(target, samples, internalformat, width, height, depth,  &
fixedsamplelocations) bind(C, name="glTexImage3DMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  logical(c_bool),intent(in),value :: fixedsamplelocations
end subroutine glTexImage3DMultisample

subroutine glGetMultisamplefv(pname, index, val) bind(C, name="glGetMultisamplefv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: val
end subroutine glGetMultisamplefv

subroutine glSampleMaski(maskNumber, mask) bind(C, name="glSampleMaski")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: maskNumber
  integer(c_int32_t),intent(in),value :: mask
end subroutine glSampleMaski

subroutine glBindFragDataLocationIndexed(program, colorNumber, index, name) &
 		bind(C, name="glBindFragDataLocationIndexed")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: colorNumber
  integer(c_int32_t),intent(in),value :: index
  character(c_char), dimension(*), intent(inout) :: name
end subroutine glBindFragDataLocationIndexed

function glGetFragDataIndex(program, name) bind(C, name="glGetFragDataIndex")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetFragDataIndex
  integer(c_int32_t),intent(in),value :: program
  character(c_char), dimension(*), intent(inout) :: name
end function glGetFragDataIndex

subroutine glGenSamplers(count, samplers) bind(C, name="glGenSamplers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: samplers
end subroutine glGenSamplers

subroutine glDeleteSamplers(count, samplers) bind(C, name="glDeleteSamplers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: samplers
end subroutine glDeleteSamplers

function glIsSampler(sampler) bind(C, name="glIsSampler")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsSampler
  integer(c_int32_t),intent(in),value :: sampler
end function glIsSampler

subroutine glBindSampler(unit, sampler) bind(C, name="glBindSampler")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: unit
  integer(c_int32_t),intent(in),value :: sampler
end subroutine glBindSampler

subroutine glSamplerParameteri(sampler, pname, param) bind(C, name="glSamplerParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glSamplerParameteri

subroutine glSamplerParameteriv(sampler, pname, param) bind(C, name="glSamplerParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: param
end subroutine glSamplerParameteriv

subroutine glSamplerParameterf(sampler, pname, param) bind(C, name="glSamplerParameterf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glSamplerParameterf

subroutine glSamplerParameterfv(sampler, pname, param) bind(C, name="glSamplerParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: param
end subroutine glSamplerParameterfv

subroutine glSamplerParameterIiv(sampler, pname, param) bind(C, name="glSamplerParameterIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: param
end subroutine glSamplerParameterIiv

subroutine glSamplerParameterIuiv(sampler, pname, param) bind(C, name="glSamplerParameterIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: param
end subroutine glSamplerParameterIuiv

subroutine glGetSamplerParameteriv(sampler, pname, params) bind(C, name="glGetSamplerParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetSamplerParameteriv

subroutine glGetSamplerParameterIiv(sampler, pname, params) bind(C, name="glGetSamplerParameterIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetSamplerParameterIiv

subroutine glGetSamplerParameterfv(sampler, pname, params) bind(C, name="glGetSamplerParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetSamplerParameterfv

subroutine glGetSamplerParameterIuiv(sampler, pname, params) bind(C, name="glGetSamplerParameterIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: sampler
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetSamplerParameterIuiv

subroutine glQueryCounter(id, target) bind(C, name="glQueryCounter")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: target
end subroutine glQueryCounter

subroutine glGetQueryObjecti64v(id, pname, params) bind(C, name="glGetQueryObjecti64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: params
end subroutine glGetQueryObjecti64v

subroutine glGetQueryObjectui64v(id, pname, params) bind(C, name="glGetQueryObjectui64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: params
end subroutine glGetQueryObjectui64v

subroutine glVertexAttribDivisor(index, divisor) bind(C, name="glVertexAttribDivisor")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: divisor
end subroutine glVertexAttribDivisor

subroutine glVertexAttribP1ui(index, type, normalized, value) bind(C, name="glVertexAttribP1ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexAttribP1ui

subroutine glVertexAttribP1uiv(index, type, normalized, value) bind(C, name="glVertexAttribP1uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexAttribP1uiv

subroutine glVertexAttribP2ui(index, type, normalized, value) bind(C, name="glVertexAttribP2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexAttribP2ui

subroutine glVertexAttribP2uiv(index, type, normalized, value) bind(C, name="glVertexAttribP2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexAttribP2uiv

subroutine glVertexAttribP3ui(index, type, normalized, value) bind(C, name="glVertexAttribP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexAttribP3ui

subroutine glVertexAttribP3uiv(index, type, normalized, value) bind(C, name="glVertexAttribP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexAttribP3uiv

subroutine glVertexAttribP4ui(index, type, normalized, value) bind(C, name="glVertexAttribP4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexAttribP4ui

subroutine glVertexAttribP4uiv(index, type, normalized, value) bind(C, name="glVertexAttribP4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexAttribP4uiv

subroutine glVertexP2ui(type, value) bind(C, name="glVertexP2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexP2ui

subroutine glVertexP2uiv(type, value) bind(C, name="glVertexP2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexP2uiv

subroutine glVertexP3ui(type, value) bind(C, name="glVertexP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexP3ui

subroutine glVertexP3uiv(type, value) bind(C, name="glVertexP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexP3uiv

subroutine glVertexP4ui(type, value) bind(C, name="glVertexP4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: value
end subroutine glVertexP4ui

subroutine glVertexP4uiv(type, value) bind(C, name="glVertexP4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glVertexP4uiv

subroutine glTexCoordP1ui(type, coords) bind(C, name="glTexCoordP1ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glTexCoordP1ui

subroutine glTexCoordP1uiv(type, coords) bind(C, name="glTexCoordP1uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glTexCoordP1uiv

subroutine glTexCoordP2ui(type, coords) bind(C, name="glTexCoordP2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glTexCoordP2ui

subroutine glTexCoordP2uiv(type, coords) bind(C, name="glTexCoordP2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glTexCoordP2uiv

subroutine glTexCoordP3ui(type, coords) bind(C, name="glTexCoordP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glTexCoordP3ui

subroutine glTexCoordP3uiv(type, coords) bind(C, name="glTexCoordP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glTexCoordP3uiv

subroutine glTexCoordP4ui(type, coords) bind(C, name="glTexCoordP4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glTexCoordP4ui

subroutine glTexCoordP4uiv(type, coords) bind(C, name="glTexCoordP4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glTexCoordP4uiv

subroutine glMultiTexCoordP1ui(texture, type, coords) bind(C, name="glMultiTexCoordP1ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glMultiTexCoordP1ui

subroutine glMultiTexCoordP1uiv(texture, type, coords) bind(C, name="glMultiTexCoordP1uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glMultiTexCoordP1uiv

subroutine glMultiTexCoordP2ui(texture, type, coords) bind(C, name="glMultiTexCoordP2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glMultiTexCoordP2ui

subroutine glMultiTexCoordP2uiv(texture, type, coords) bind(C, name="glMultiTexCoordP2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glMultiTexCoordP2uiv

subroutine glMultiTexCoordP3ui(texture, type, coords) bind(C, name="glMultiTexCoordP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glMultiTexCoordP3ui

subroutine glMultiTexCoordP3uiv(texture, type, coords) bind(C, name="glMultiTexCoordP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glMultiTexCoordP3uiv

subroutine glMultiTexCoordP4ui(texture, type, coords) bind(C, name="glMultiTexCoordP4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glMultiTexCoordP4ui

subroutine glMultiTexCoordP4uiv(texture, type, coords) bind(C, name="glMultiTexCoordP4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glMultiTexCoordP4uiv

subroutine glNormalP3ui(type, coords) bind(C, name="glNormalP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: coords
end subroutine glNormalP3ui

subroutine glNormalP3uiv(type, coords) bind(C, name="glNormalP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: coords
end subroutine glNormalP3uiv

subroutine glColorP3ui(type, color) bind(C, name="glColorP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: color
end subroutine glColorP3ui

subroutine glColorP3uiv(type, color) bind(C, name="glColorP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: color
end subroutine glColorP3uiv

subroutine glColorP4ui(type, color) bind(C, name="glColorP4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: color
end subroutine glColorP4ui

subroutine glColorP4uiv(type, color) bind(C, name="glColorP4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: color
end subroutine glColorP4uiv

subroutine glSecondaryColorP3ui(type, color) bind(C, name="glSecondaryColorP3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: color
end subroutine glSecondaryColorP3ui

subroutine glSecondaryColorP3uiv(type, color) bind(C, name="glSecondaryColorP3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t), dimension(*), intent(inout) :: color
end subroutine glSecondaryColorP3uiv

subroutine glMinSampleShading(value) bind(C, name="glMinSampleShading")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: value
end subroutine glMinSampleShading

subroutine glBlendEquationi(buf, mode) bind(C, name="glBlendEquationi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buf
  integer(c_int32_t),intent(in),value :: mode
end subroutine glBlendEquationi

subroutine glBlendEquationSeparatei(buf, modeRGB, modeAlpha) bind(C, name="glBlendEquationSeparatei")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buf
  integer(c_int32_t),intent(in),value :: modeRGB
  integer(c_int32_t),intent(in),value :: modeAlpha
end subroutine glBlendEquationSeparatei

subroutine glBlendFunci(buf, src, dst) bind(C, name="glBlendFunci")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buf
  integer(c_int32_t),intent(in),value :: src
  integer(c_int32_t),intent(in),value :: dst
end subroutine glBlendFunci

subroutine glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha) bind(C, name="glBlendFuncSeparatei")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buf
  integer(c_int32_t),intent(in),value :: srcRGB
  integer(c_int32_t),intent(in),value :: dstRGB
  integer(c_int32_t),intent(in),value :: srcAlpha
  integer(c_int32_t),intent(in),value :: dstAlpha
end subroutine glBlendFuncSeparatei

subroutine glDrawArraysIndirect(mode, indirect) bind(C, name="glDrawArraysIndirect")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  type(c_ptr), intent(inout) :: indirect
end subroutine glDrawArraysIndirect

subroutine glDrawElementsIndirect(mode, type, indirect) bind(C, name="glDrawElementsIndirect")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indirect
end subroutine glDrawElementsIndirect

subroutine glUniform1d(location, x) bind(C, name="glUniform1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: x
end subroutine glUniform1d

subroutine glUniform2d(location, x, y) bind(C, name="glUniform2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
end subroutine glUniform2d

subroutine glUniform3d(location, x, y, z) bind(C, name="glUniform3d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glUniform3d

subroutine glUniform4d(location, x, y, z, w) bind(C, name="glUniform4d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
  real(c_double),intent(in),value :: w
end subroutine glUniform4d

subroutine glUniform1dv(location, count, value) bind(C, name="glUniform1dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniform1dv

subroutine glUniform2dv(location, count, value) bind(C, name="glUniform2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniform2dv

subroutine glUniform3dv(location, count, value) bind(C, name="glUniform3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniform3dv

subroutine glUniform4dv(location, count, value) bind(C, name="glUniform4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniform4dv

subroutine glUniformMatrix2dv(location, count, transpose, value) bind(C, name="glUniformMatrix2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix2dv

subroutine glUniformMatrix3dv(location, count, transpose, value) bind(C, name="glUniformMatrix3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix3dv

subroutine glUniformMatrix4dv(location, count, transpose, value) bind(C, name="glUniformMatrix4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix4dv

subroutine glUniformMatrix2x3dv(location, count, transpose, value) bind(C, name="glUniformMatrix2x3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix2x3dv

subroutine glUniformMatrix2x4dv(location, count, transpose, value) bind(C, name="glUniformMatrix2x4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix2x4dv

subroutine glUniformMatrix3x2dv(location, count, transpose, value) bind(C, name="glUniformMatrix3x2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix3x2dv

subroutine glUniformMatrix3x4dv(location, count, transpose, value) bind(C, name="glUniformMatrix3x4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix3x4dv

subroutine glUniformMatrix4x2dv(location, count, transpose, value) bind(C, name="glUniformMatrix4x2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix4x2dv

subroutine glUniformMatrix4x3dv(location, count, transpose, value) bind(C, name="glUniformMatrix4x3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glUniformMatrix4x3dv

subroutine glGetUniformdv(program, location, params) bind(C, name="glGetUniformdv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: params
end subroutine glGetUniformdv

function glGetSubroutineUniformLocation(program, shadertype, name) bind(C, name="glGetSubroutineUniformLocation")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetSubroutineUniformLocation
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shadertype
  character(c_char), dimension(*), intent(inout) :: name
end function glGetSubroutineUniformLocation

function glGetSubroutineIndex(program, shadertype, name) bind(C, name="glGetSubroutineIndex")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetSubroutineIndex
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shadertype
  character(c_char), dimension(*), intent(inout) :: name
end function glGetSubroutineIndex

subroutine glGetActiveSubroutineUniformiv(program, shadertype, index, pname, values) &
 		bind(C, name="glGetActiveSubroutineUniformiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: values
end subroutine glGetActiveSubroutineUniformiv

subroutine glGetActiveSubroutineUniformName(program, shadertype, index, bufSize, length, name) &
 		bind(C, name="glGetActiveSubroutineUniformName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: name
end subroutine glGetActiveSubroutineUniformName

subroutine glGetActiveSubroutineName(program, shadertype, index, bufSize, length, name) &
 		bind(C, name="glGetActiveSubroutineName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: name
end subroutine glGetActiveSubroutineName

subroutine glUniformSubroutinesuiv(shadertype, count, indices) bind(C, name="glUniformSubroutinesuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: indices
end subroutine glUniformSubroutinesuiv

subroutine glGetUniformSubroutineuiv(shadertype, location, params) bind(C, name="glGetUniformSubroutineuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetUniformSubroutineuiv

subroutine glGetProgramStageiv(program, shadertype, pname, values) bind(C, name="glGetProgramStageiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: values
end subroutine glGetProgramStageiv

subroutine glPatchParameteri(pname, value) bind(C, name="glPatchParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: value
end subroutine glPatchParameteri

subroutine glPatchParameterfv(pname, values) bind(C, name="glPatchParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: values
end subroutine glPatchParameterfv

subroutine glBindTransformFeedback(target, id) bind(C, name="glBindTransformFeedback")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: id
end subroutine glBindTransformFeedback

subroutine glDeleteTransformFeedbacks(n, ids) bind(C, name="glDeleteTransformFeedbacks")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: ids
end subroutine glDeleteTransformFeedbacks

subroutine glGenTransformFeedbacks(n, ids) bind(C, name="glGenTransformFeedbacks")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: ids
end subroutine glGenTransformFeedbacks

function glIsTransformFeedback(id) bind(C, name="glIsTransformFeedback")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsTransformFeedback
  integer(c_int32_t),intent(in),value :: id
end function glIsTransformFeedback

subroutine glPauseTransformFeedback() bind(C, name="glPauseTransformFeedback")
  use, intrinsic :: iso_c_binding
end subroutine glPauseTransformFeedback

subroutine glResumeTransformFeedback() bind(C, name="glResumeTransformFeedback")
  use, intrinsic :: iso_c_binding
end subroutine glResumeTransformFeedback

subroutine glDrawTransformFeedback(mode, id) bind(C, name="glDrawTransformFeedback")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: id
end subroutine glDrawTransformFeedback

subroutine glDrawTransformFeedbackStream(mode, id, stream) bind(C, name="glDrawTransformFeedbackStream")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: stream
end subroutine glDrawTransformFeedbackStream

subroutine glBeginQueryIndexed(target, index, id) bind(C, name="glBeginQueryIndexed")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: id
end subroutine glBeginQueryIndexed

subroutine glEndQueryIndexed(target, index) bind(C, name="glEndQueryIndexed")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
end subroutine glEndQueryIndexed

subroutine glGetQueryIndexediv(target, index, pname, params) bind(C, name="glGetQueryIndexediv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetQueryIndexediv

subroutine glReleaseShaderCompiler() bind(C, name="glReleaseShaderCompiler")
  use, intrinsic :: iso_c_binding
end subroutine glReleaseShaderCompiler

subroutine glShaderBinary(count, shaders, binaryFormat, binary, length) bind(C, name="glShaderBinary")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: shaders
  integer(c_int32_t),intent(in),value :: binaryFormat
  type(c_ptr), intent(inout) :: binary
  integer(c_int64_t),intent(in),value :: length
end subroutine glShaderBinary

subroutine glGetShaderPrecisionFormat(shadertype, precisiontype, range, precision) &
 		bind(C, name="glGetShaderPrecisionFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shadertype
  integer(c_int32_t),intent(in),value :: precisiontype
  integer(c_int32_t),intent(in),value :: range
  integer(c_int32_t),intent(in),value :: precision
end subroutine glGetShaderPrecisionFormat

subroutine glDepthRangef(n, f) bind(C, name="glDepthRangef")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: n
  real(c_float),intent(in),value :: f
end subroutine glDepthRangef

subroutine glClearDepthf(d) bind(C, name="glClearDepthf")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: d
end subroutine glClearDepthf

subroutine glGetProgramBinary(program, bufSize, length, binaryFormat, binary) bind(C, name="glGetProgramBinary")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: binaryFormat
  type(c_ptr), intent(inout) :: binary
end subroutine glGetProgramBinary

subroutine glProgramBinary(program, binaryFormat, binary, length) bind(C, name="glProgramBinary")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: binaryFormat
  type(c_ptr), intent(inout) :: binary
  integer(c_int64_t),intent(in),value :: length
end subroutine glProgramBinary

subroutine glProgramParameteri(program, pname, value) bind(C, name="glProgramParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: value
end subroutine glProgramParameteri

subroutine glUseProgramStages(pipeline, stages, program) bind(C, name="glUseProgramStages")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pipeline
  integer(c_int32_t),intent(in),value :: stages
  integer(c_int32_t),intent(in),value :: program
end subroutine glUseProgramStages

subroutine glActiveShaderProgram(pipeline, program) bind(C, name="glActiveShaderProgram")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pipeline
  integer(c_int32_t),intent(in),value :: program
end subroutine glActiveShaderProgram

function glCreateShaderProgramv(type, count, strings) bind(C, name="glCreateShaderProgramv")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glCreateShaderProgramv
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: count
  type(c_ptr), dimension(*), intent(inout) :: strings
end function glCreateShaderProgramv

subroutine glBindProgramPipeline(pipeline) bind(C, name="glBindProgramPipeline")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pipeline
end subroutine glBindProgramPipeline

subroutine glDeleteProgramPipelines(n, pipelines) bind(C, name="glDeleteProgramPipelines")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: pipelines
end subroutine glDeleteProgramPipelines

subroutine glGenProgramPipelines(n, pipelines) bind(C, name="glGenProgramPipelines")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: pipelines
end subroutine glGenProgramPipelines

function glIsProgramPipeline(pipeline) bind(C, name="glIsProgramPipeline")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glIsProgramPipeline
  integer(c_int32_t),intent(in),value :: pipeline
end function glIsProgramPipeline

subroutine glGetProgramPipelineiv(pipeline, pname, params) bind(C, name="glGetProgramPipelineiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pipeline
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetProgramPipelineiv

subroutine glProgramUniform1i(program, location, v0) bind(C, name="glProgramUniform1i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
end subroutine glProgramUniform1i

subroutine glProgramUniform1iv(program, location, count, value) bind(C, name="glProgramUniform1iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform1iv

subroutine glProgramUniform1f(program, location, v0) bind(C, name="glProgramUniform1f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
end subroutine glProgramUniform1f

subroutine glProgramUniform1fv(program, location, count, value) bind(C, name="glProgramUniform1fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniform1fv

subroutine glProgramUniform1d(program, location, v0) bind(C, name="glProgramUniform1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: v0
end subroutine glProgramUniform1d

subroutine glProgramUniform1dv(program, location, count, value) bind(C, name="glProgramUniform1dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniform1dv

subroutine glProgramUniform1ui(program, location, v0) bind(C, name="glProgramUniform1ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
end subroutine glProgramUniform1ui

subroutine glProgramUniform1uiv(program, location, count, value) bind(C, name="glProgramUniform1uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform1uiv

subroutine glProgramUniform2i(program, location, v0, v1) bind(C, name="glProgramUniform2i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
end subroutine glProgramUniform2i

subroutine glProgramUniform2iv(program, location, count, value) bind(C, name="glProgramUniform2iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform2iv

subroutine glProgramUniform2f(program, location, v0, v1) bind(C, name="glProgramUniform2f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
  real(c_float),intent(in),value :: v1
end subroutine glProgramUniform2f

subroutine glProgramUniform2fv(program, location, count, value) bind(C, name="glProgramUniform2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniform2fv

subroutine glProgramUniform2d(program, location, v0, v1) bind(C, name="glProgramUniform2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: v0
  real(c_double),intent(in),value :: v1
end subroutine glProgramUniform2d

subroutine glProgramUniform2dv(program, location, count, value) bind(C, name="glProgramUniform2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniform2dv

subroutine glProgramUniform2ui(program, location, v0, v1) bind(C, name="glProgramUniform2ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
end subroutine glProgramUniform2ui

subroutine glProgramUniform2uiv(program, location, count, value) bind(C, name="glProgramUniform2uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform2uiv

subroutine glProgramUniform3i(program, location, v0, v1, v2) bind(C, name="glProgramUniform3i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
end subroutine glProgramUniform3i

subroutine glProgramUniform3iv(program, location, count, value) bind(C, name="glProgramUniform3iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform3iv

subroutine glProgramUniform3f(program, location, v0, v1, v2) bind(C, name="glProgramUniform3f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
  real(c_float),intent(in),value :: v1
  real(c_float),intent(in),value :: v2
end subroutine glProgramUniform3f

subroutine glProgramUniform3fv(program, location, count, value) bind(C, name="glProgramUniform3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniform3fv

subroutine glProgramUniform3d(program, location, v0, v1, v2) bind(C, name="glProgramUniform3d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: v0
  real(c_double),intent(in),value :: v1
  real(c_double),intent(in),value :: v2
end subroutine glProgramUniform3d

subroutine glProgramUniform3dv(program, location, count, value) bind(C, name="glProgramUniform3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniform3dv

subroutine glProgramUniform3ui(program, location, v0, v1, v2) bind(C, name="glProgramUniform3ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
end subroutine glProgramUniform3ui

subroutine glProgramUniform3uiv(program, location, count, value) bind(C, name="glProgramUniform3uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform3uiv

subroutine glProgramUniform4i(program, location, v0, v1, v2, v3) bind(C, name="glProgramUniform4i")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
  integer(c_int32_t),intent(in),value :: v3
end subroutine glProgramUniform4i

subroutine glProgramUniform4iv(program, location, count, value) bind(C, name="glProgramUniform4iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform4iv

subroutine glProgramUniform4f(program, location, v0, v1, v2, v3) bind(C, name="glProgramUniform4f")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_float),intent(in),value :: v0
  real(c_float),intent(in),value :: v1
  real(c_float),intent(in),value :: v2
  real(c_float),intent(in),value :: v3
end subroutine glProgramUniform4f

subroutine glProgramUniform4fv(program, location, count, value) bind(C, name="glProgramUniform4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniform4fv

subroutine glProgramUniform4d(program, location, v0, v1, v2, v3) bind(C, name="glProgramUniform4d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  real(c_double),intent(in),value :: v0
  real(c_double),intent(in),value :: v1
  real(c_double),intent(in),value :: v2
  real(c_double),intent(in),value :: v3
end subroutine glProgramUniform4d

subroutine glProgramUniform4dv(program, location, count, value) bind(C, name="glProgramUniform4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniform4dv

subroutine glProgramUniform4ui(program, location, v0, v1, v2, v3) bind(C, name="glProgramUniform4ui")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int32_t),intent(in),value :: v0
  integer(c_int32_t),intent(in),value :: v1
  integer(c_int32_t),intent(in),value :: v2
  integer(c_int32_t),intent(in),value :: v3
end subroutine glProgramUniform4ui

subroutine glProgramUniform4uiv(program, location, count, value) bind(C, name="glProgramUniform4uiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glProgramUniform4uiv

subroutine glProgramUniformMatrix2fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix2fv

subroutine glProgramUniformMatrix3fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix3fv

subroutine glProgramUniformMatrix4fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix4fv

subroutine glProgramUniformMatrix2dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix2dv

subroutine glProgramUniformMatrix3dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix3dv

subroutine glProgramUniformMatrix4dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix4dv

subroutine glProgramUniformMatrix2x3fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix2x3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix2x3fv

subroutine glProgramUniformMatrix3x2fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix3x2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix3x2fv

subroutine glProgramUniformMatrix2x4fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix2x4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix2x4fv

subroutine glProgramUniformMatrix4x2fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix4x2fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix4x2fv

subroutine glProgramUniformMatrix3x4fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix3x4fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix3x4fv

subroutine glProgramUniformMatrix4x3fv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix4x3fv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix4x3fv

subroutine glProgramUniformMatrix2x3dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix2x3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix2x3dv

subroutine glProgramUniformMatrix3x2dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix3x2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix3x2dv

subroutine glProgramUniformMatrix2x4dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix2x4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix2x4dv

subroutine glProgramUniformMatrix4x2dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix4x2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix4x2dv

subroutine glProgramUniformMatrix3x4dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix3x4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix3x4dv

subroutine glProgramUniformMatrix4x3dv(program, location, count, transpose, value) &
 		bind(C, name="glProgramUniformMatrix4x3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: count
  logical(c_bool),intent(in),value :: transpose
  real(c_double), dimension(*), intent(inout) :: value
end subroutine glProgramUniformMatrix4x3dv

subroutine glValidateProgramPipeline(pipeline) bind(C, name="glValidateProgramPipeline")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pipeline
end subroutine glValidateProgramPipeline

subroutine glGetProgramPipelineInfoLog(pipeline, bufSize, length, infoLog) bind(C, name="glGetProgramPipelineInfoLog")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: pipeline
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: infoLog
end subroutine glGetProgramPipelineInfoLog

subroutine glVertexAttribL1d(index, x) bind(C, name="glVertexAttribL1d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
end subroutine glVertexAttribL1d

subroutine glVertexAttribL2d(index, x, y) bind(C, name="glVertexAttribL2d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
end subroutine glVertexAttribL2d

subroutine glVertexAttribL3d(index, x, y, z) bind(C, name="glVertexAttribL3d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
end subroutine glVertexAttribL3d

subroutine glVertexAttribL4d(index, x, y, z, w) bind(C, name="glVertexAttribL4d")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: x
  real(c_double),intent(in),value :: y
  real(c_double),intent(in),value :: z
  real(c_double),intent(in),value :: w
end subroutine glVertexAttribL4d

subroutine glVertexAttribL1dv(index, v) bind(C, name="glVertexAttribL1dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttribL1dv

subroutine glVertexAttribL2dv(index, v) bind(C, name="glVertexAttribL2dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttribL2dv

subroutine glVertexAttribL3dv(index, v) bind(C, name="glVertexAttribL3dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttribL3dv

subroutine glVertexAttribL4dv(index, v) bind(C, name="glVertexAttribL4dv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glVertexAttribL4dv

subroutine glVertexAttribLPointer(index, size, type, stride, pointer) bind(C, name="glVertexAttribLPointer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: stride
  type(c_ptr), intent(inout) :: pointer
end subroutine glVertexAttribLPointer

subroutine glGetVertexAttribLdv(index, pname, params) bind(C, name="glGetVertexAttribLdv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  real(c_double),intent(in),value :: params
end subroutine glGetVertexAttribLdv

subroutine glViewportArrayv(first, count, v) bind(C, name="glViewportArrayv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glViewportArrayv

subroutine glViewportIndexedf(index, x, y, w, h) bind(C, name="glViewportIndexedf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: x
  real(c_float),intent(in),value :: y
  real(c_float),intent(in),value :: w
  real(c_float),intent(in),value :: h
end subroutine glViewportIndexedf

subroutine glViewportIndexedfv(index, v) bind(C, name="glViewportIndexedfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_float), dimension(*), intent(inout) :: v
end subroutine glViewportIndexedfv

subroutine glScissorArrayv(first, count, v) bind(C, name="glScissorArrayv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glScissorArrayv

subroutine glScissorIndexed(index, left, bottom, width, height) bind(C, name="glScissorIndexed")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: left
  integer(c_int32_t),intent(in),value :: bottom
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glScissorIndexed

subroutine glScissorIndexedv(index, v) bind(C, name="glScissorIndexedv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t), dimension(*), intent(inout) :: v
end subroutine glScissorIndexedv

subroutine glDepthRangeArrayv(first, count, v) bind(C, name="glDepthRangeArrayv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  real(c_double), dimension(*), intent(inout) :: v
end subroutine glDepthRangeArrayv

subroutine glDepthRangeIndexed(index, n, f) bind(C, name="glDepthRangeIndexed")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: n
  real(c_double),intent(in),value :: f
end subroutine glDepthRangeIndexed

subroutine glGetFloati_v(target, index, data) bind(C, name="glGetFloati_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  real(c_float),intent(in),value :: data
end subroutine glGetFloati_v

subroutine glGetDoublei_v(target, index, data) bind(C, name="glGetDoublei_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: index
  real(c_double),intent(in),value :: data
end subroutine glGetDoublei_v

subroutine glDrawArraysInstancedBaseInstance(mode, first, count, instancecount, baseinstance) &
 		bind(C, name="glDrawArraysInstancedBaseInstance")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int64_t),intent(in),value :: instancecount
  integer(c_int32_t),intent(in),value :: baseinstance
end subroutine glDrawArraysInstancedBaseInstance

subroutine glDrawElementsInstancedBaseInstance(mode, count, type, indices, instancecount,  &
baseinstance) bind(C, name="glDrawElementsInstancedBaseInstance")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int64_t),intent(in),value :: instancecount
  integer(c_int32_t),intent(in),value :: baseinstance
end subroutine glDrawElementsInstancedBaseInstance

subroutine glDrawElementsInstancedBaseVertexBaseInstance(mode, count, type, indices, instancecount,  &
basevertex, baseinstance) bind(C, name="glDrawElementsInstancedBaseVertexBaseInstance")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indices
  integer(c_int64_t),intent(in),value :: instancecount
  integer(c_int32_t),intent(in),value :: basevertex
  integer(c_int32_t),intent(in),value :: baseinstance
end subroutine glDrawElementsInstancedBaseVertexBaseInstance

subroutine glGetInternalformativ(target, internalformat, pname, count, params) bind(C, name="glGetInternalformativ")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetInternalformativ

subroutine glGetActiveAtomicCounterBufferiv(program, bufferIndex, pname, params) &
 		bind(C, name="glGetActiveAtomicCounterBufferiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: bufferIndex
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetActiveAtomicCounterBufferiv

subroutine glBindImageTexture(unit, texture, level, layered, layer, access, format) bind(C, name="glBindImageTexture")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: unit
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  logical(c_bool),intent(in),value :: layered
  integer(c_int32_t),intent(in),value :: layer
  integer(c_int32_t),intent(in),value :: access
  integer(c_int32_t),intent(in),value :: format
end subroutine glBindImageTexture

subroutine glMemoryBarrier(barriers) bind(C, name="glMemoryBarrier")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: barriers
end subroutine glMemoryBarrier

subroutine glTexStorage1D(target, levels, internalformat, width) bind(C, name="glTexStorage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: levels
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
end subroutine glTexStorage1D

subroutine glTexStorage2D(target, levels, internalformat, width, height) bind(C, name="glTexStorage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: levels
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glTexStorage2D

subroutine glTexStorage3D(target, levels, internalformat, width, height, depth) bind(C, name="glTexStorage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: levels
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
end subroutine glTexStorage3D

subroutine glDrawTransformFeedbackInstanced(mode, id, instancecount) bind(C, name="glDrawTransformFeedbackInstanced")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: id
  integer(c_int64_t),intent(in),value :: instancecount
end subroutine glDrawTransformFeedbackInstanced

subroutine glDrawTransformFeedbackStreamInstanced(mode, id, stream, instancecount) &
 		bind(C, name="glDrawTransformFeedbackStreamInstanced")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: stream
  integer(c_int64_t),intent(in),value :: instancecount
end subroutine glDrawTransformFeedbackStreamInstanced

subroutine glClearBufferData(target, internalformat, format, type, data) bind(C, name="glClearBufferData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: data
end subroutine glClearBufferData

subroutine glClearBufferSubData(target, internalformat, offset, size, format, type, data) &
 		bind(C, name="glClearBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: data
end subroutine glClearBufferSubData

subroutine glDispatchCompute(num_groups_x, num_groups_y, num_groups_z) bind(C, name="glDispatchCompute")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: num_groups_x
  integer(c_int32_t),intent(in),value :: num_groups_y
  integer(c_int32_t),intent(in),value :: num_groups_z
end subroutine glDispatchCompute

subroutine glDispatchComputeIndirect(indirect) bind(C, name="glDispatchComputeIndirect")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t), dimension(*), intent(inout) :: indirect
end subroutine glDispatchComputeIndirect

subroutine glCopyImageSubData(srcName, srcTarget, srcLevel, srcX, srcY, srcZ, dstName, dstTarget,  &
dstLevel, dstX, dstY, dstZ, srcWidth, srcHeight, srcDepth) bind(C, name="glCopyImageSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: srcName
  integer(c_int32_t),intent(in),value :: srcTarget
  integer(c_int32_t),intent(in),value :: srcLevel
  integer(c_int32_t),intent(in),value :: srcX
  integer(c_int32_t),intent(in),value :: srcY
  integer(c_int32_t),intent(in),value :: srcZ
  integer(c_int32_t),intent(in),value :: dstName
  integer(c_int32_t),intent(in),value :: dstTarget
  integer(c_int32_t),intent(in),value :: dstLevel
  integer(c_int32_t),intent(in),value :: dstX
  integer(c_int32_t),intent(in),value :: dstY
  integer(c_int32_t),intent(in),value :: dstZ
  integer(c_int64_t),intent(in),value :: srcWidth
  integer(c_int64_t),intent(in),value :: srcHeight
  integer(c_int64_t),intent(in),value :: srcDepth
end subroutine glCopyImageSubData

subroutine glFramebufferParameteri(target, pname, param) bind(C, name="glFramebufferParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glFramebufferParameteri

subroutine glGetFramebufferParameteriv(target, pname, params) bind(C, name="glGetFramebufferParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetFramebufferParameteriv

subroutine glGetInternalformati64v(target, internalformat, pname, count, params) &
 		bind(C, name="glGetInternalformati64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: count
  integer(c_int64_t),intent(in),value :: params
end subroutine glGetInternalformati64v

subroutine glInvalidateTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth) &
 		bind(C, name="glInvalidateTexSubImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
end subroutine glInvalidateTexSubImage

subroutine glInvalidateTexImage(texture, level) bind(C, name="glInvalidateTexImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
end subroutine glInvalidateTexImage

subroutine glInvalidateBufferSubData(buffer, offset, length) bind(C, name="glInvalidateBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: length
end subroutine glInvalidateBufferSubData

subroutine glInvalidateBufferData(buffer) bind(C, name="glInvalidateBufferData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glInvalidateBufferData

subroutine glInvalidateFramebuffer(target, numAttachments, attachments) bind(C, name="glInvalidateFramebuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: numAttachments
  integer(c_int32_t), dimension(*), intent(inout) :: attachments
end subroutine glInvalidateFramebuffer

subroutine glInvalidateSubFramebuffer(target, numAttachments, attachments, x, y, width, height) &
 		bind(C, name="glInvalidateSubFramebuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: numAttachments
  integer(c_int32_t), dimension(*), intent(inout) :: attachments
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glInvalidateSubFramebuffer

subroutine glMultiDrawArraysIndirect(mode, indirect, drawcount, stride) bind(C, name="glMultiDrawArraysIndirect")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  type(c_ptr), intent(inout) :: indirect
  integer(c_int64_t),intent(in),value :: drawcount
  integer(c_int64_t),intent(in),value :: stride
end subroutine glMultiDrawArraysIndirect

subroutine glMultiDrawElementsIndirect(mode, type, indirect, drawcount, stride) &
 		bind(C, name="glMultiDrawElementsIndirect")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indirect
  integer(c_int64_t),intent(in),value :: drawcount
  integer(c_int64_t),intent(in),value :: stride
end subroutine glMultiDrawElementsIndirect

subroutine glGetProgramInterfaceiv(program, programInterface, pname, params) bind(C, name="glGetProgramInterfaceiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: programInterface
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetProgramInterfaceiv

function glGetProgramResourceIndex(program, programInterface, name) bind(C, name="glGetProgramResourceIndex")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetProgramResourceIndex
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: programInterface
  character(c_char), dimension(*), intent(inout) :: name
end function glGetProgramResourceIndex

subroutine glGetProgramResourceName(program, programInterface, index, bufSize, length, name) &
 		bind(C, name="glGetProgramResourceName")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: programInterface
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: name
end subroutine glGetProgramResourceName

subroutine glGetProgramResourceiv(program, programInterface, index, propCount, props, count, length,  &
params) bind(C, name="glGetProgramResourceiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: programInterface
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: propCount
  integer(c_int32_t), dimension(*), intent(inout) :: props
  integer(c_int64_t),intent(in),value :: count
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetProgramResourceiv

function glGetProgramResourceLocation(program, programInterface, name) bind(C, name="glGetProgramResourceLocation")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetProgramResourceLocation
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: programInterface
  character(c_char), dimension(*), intent(inout) :: name
end function glGetProgramResourceLocation

function glGetProgramResourceLocationIndex(program, programInterface, name) &
 		bind(C, name="glGetProgramResourceLocationIndex")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetProgramResourceLocationIndex
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: programInterface
  character(c_char), dimension(*), intent(inout) :: name
end function glGetProgramResourceLocationIndex

subroutine glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding) &
 		bind(C, name="glShaderStorageBlockBinding")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: storageBlockIndex
  integer(c_int32_t),intent(in),value :: storageBlockBinding
end subroutine glShaderStorageBlockBinding

subroutine glTexBufferRange(target, internalformat, buffer, offset, size) bind(C, name="glTexBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
end subroutine glTexBufferRange

subroutine glTexStorage2DMultisample(target, samples, internalformat, width, height,  &
fixedsamplelocations) bind(C, name="glTexStorage2DMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  logical(c_bool),intent(in),value :: fixedsamplelocations
end subroutine glTexStorage2DMultisample

subroutine glTexStorage3DMultisample(target, samples, internalformat, width, height, depth,  &
fixedsamplelocations) bind(C, name="glTexStorage3DMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  logical(c_bool),intent(in),value :: fixedsamplelocations
end subroutine glTexStorage3DMultisample

subroutine glTextureView(texture, target, origtexture, internalformat, minlevel, numlevels, minlayer,  &
numlayers) bind(C, name="glTextureView")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: origtexture
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: minlevel
  integer(c_int32_t),intent(in),value :: numlevels
  integer(c_int32_t),intent(in),value :: minlayer
  integer(c_int32_t),intent(in),value :: numlayers
end subroutine glTextureView

subroutine glBindVertexBuffer(bindingindex, buffer, offset, stride) bind(C, name="glBindVertexBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: bindingindex
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: stride
end subroutine glBindVertexBuffer

subroutine glVertexAttribFormat(attribindex, size, type, normalized, relativeoffset) &
 		bind(C, name="glVertexAttribFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t),intent(in),value :: relativeoffset
end subroutine glVertexAttribFormat

subroutine glVertexAttribIFormat(attribindex, size, type, relativeoffset) bind(C, name="glVertexAttribIFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: relativeoffset
end subroutine glVertexAttribIFormat

subroutine glVertexAttribLFormat(attribindex, size, type, relativeoffset) bind(C, name="glVertexAttribLFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: relativeoffset
end subroutine glVertexAttribLFormat

subroutine glVertexAttribBinding(attribindex, bindingindex) bind(C, name="glVertexAttribBinding")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: bindingindex
end subroutine glVertexAttribBinding

subroutine glVertexBindingDivisor(bindingindex, divisor) bind(C, name="glVertexBindingDivisor")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: bindingindex
  integer(c_int32_t),intent(in),value :: divisor
end subroutine glVertexBindingDivisor

subroutine glDebugMessageControl(source, type, severity, count, ids, enabled) bind(C, name="glDebugMessageControl")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: source
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: severity
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: ids
  logical(c_bool),intent(in),value :: enabled
end subroutine glDebugMessageControl

subroutine glDebugMessageInsert(source, type, id, severity, length, buf) bind(C, name="glDebugMessageInsert")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: source
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: severity
  integer(c_int64_t),intent(in),value :: length
  character(c_char), dimension(*), intent(inout) :: buf
end subroutine glDebugMessageInsert

subroutine glDebugMessageCallback(callback, userParam) bind(C, name="glDebugMessageCallback")
  use, intrinsic :: iso_c_binding
  type(c_ptr), intent(inout) :: callback
  type(c_ptr), intent(inout) :: userParam
end subroutine glDebugMessageCallback

function glGetDebugMessageLog(count, bufSize, sources, types, ids, severities, lengths, messageLog) &
 		bind(C, name="glGetDebugMessageLog")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glGetDebugMessageLog
  integer(c_int32_t),intent(in),value :: count
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int32_t),intent(in),value :: sources
  integer(c_int32_t),intent(in),value :: types
  integer(c_int32_t),intent(in),value :: ids
  integer(c_int32_t),intent(in),value :: severities
  integer(c_int64_t),intent(in),value :: lengths
  character(c_char),intent(in),value :: messageLog
end function glGetDebugMessageLog

subroutine glPushDebugGroup(source, id, length, message) bind(C, name="glPushDebugGroup")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: source
  integer(c_int32_t),intent(in),value :: id
  integer(c_int64_t),intent(in),value :: length
  character(c_char), dimension(*), intent(inout) :: message
end subroutine glPushDebugGroup

subroutine glPopDebugGroup() bind(C, name="glPopDebugGroup")
  use, intrinsic :: iso_c_binding
end subroutine glPopDebugGroup

subroutine glObjectLabel(identifier, name, length, label) bind(C, name="glObjectLabel")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: identifier
  integer(c_int32_t),intent(in),value :: name
  integer(c_int64_t),intent(in),value :: length
  character(c_char), dimension(*), intent(inout) :: label
end subroutine glObjectLabel

subroutine glGetObjectLabel(identifier, name, bufSize, length, label) bind(C, name="glGetObjectLabel")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: identifier
  integer(c_int32_t),intent(in),value :: name
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: label
end subroutine glGetObjectLabel

subroutine glObjectPtrLabel(ptr, length, label) bind(C, name="glObjectPtrLabel")
  use, intrinsic :: iso_c_binding
  type(c_ptr), intent(inout) :: ptr
  integer(c_int64_t),intent(in),value :: length
  character(c_char), dimension(*), intent(inout) :: label
end subroutine glObjectPtrLabel

subroutine glGetObjectPtrLabel(ptr, bufSize, length, label) bind(C, name="glGetObjectPtrLabel")
  use, intrinsic :: iso_c_binding
  type(c_ptr), intent(inout) :: ptr
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int64_t),intent(in),value :: length
  character(c_char),intent(in),value :: label
end subroutine glGetObjectPtrLabel

subroutine glBufferStorage(target, size, data, flags) bind(C, name="glBufferStorage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
  integer(c_int32_t),intent(in),value :: flags
end subroutine glBufferStorage

subroutine glClearTexImage(texture, level, format, type, data) bind(C, name="glClearTexImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: data
end subroutine glClearTexImage

subroutine glClearTexSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth,  &
format, type, data) bind(C, name="glClearTexSubImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: data
end subroutine glClearTexSubImage

subroutine glBindBuffersBase(target, first, count, buffers) bind(C, name="glBindBuffersBase")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: buffers
end subroutine glBindBuffersBase

subroutine glBindBuffersRange(target, first, count, buffers, offsets, sizes) bind(C, name="glBindBuffersRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: buffers
  type(c_ptr), dimension(*), intent(inout) :: offsets
  type(c_ptr), dimension(*), intent(inout) :: sizes
end subroutine glBindBuffersRange

subroutine glBindTextures(first, count, textures) bind(C, name="glBindTextures")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: textures
end subroutine glBindTextures

subroutine glBindSamplers(first, count, samplers) bind(C, name="glBindSamplers")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: samplers
end subroutine glBindSamplers

subroutine glBindImageTextures(first, count, textures) bind(C, name="glBindImageTextures")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: textures
end subroutine glBindImageTextures

subroutine glBindVertexBuffers(first, count, buffers, offsets, strides) bind(C, name="glBindVertexBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: buffers
  type(c_ptr), dimension(*), intent(inout) :: offsets
  integer(c_int64_t), dimension(*), intent(inout) :: strides
end subroutine glBindVertexBuffers

subroutine glClipControl(origin, depth) bind(C, name="glClipControl")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: origin
  integer(c_int32_t),intent(in),value :: depth
end subroutine glClipControl

subroutine glCreateTransformFeedbacks(n, ids) bind(C, name="glCreateTransformFeedbacks")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: ids
end subroutine glCreateTransformFeedbacks

subroutine glTransformFeedbackBufferBase(xfb, index, buffer) bind(C, name="glTransformFeedbackBufferBase")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: xfb
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glTransformFeedbackBufferBase

subroutine glTransformFeedbackBufferRange(xfb, index, buffer, offset, size) &
 		bind(C, name="glTransformFeedbackBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: xfb
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
end subroutine glTransformFeedbackBufferRange

subroutine glGetTransformFeedbackiv(xfb, pname, param) bind(C, name="glGetTransformFeedbackiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: xfb
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glGetTransformFeedbackiv

subroutine glGetTransformFeedbacki_v(xfb, pname, index, param) bind(C, name="glGetTransformFeedbacki_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: xfb
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: param
end subroutine glGetTransformFeedbacki_v

subroutine glGetTransformFeedbacki64_v(xfb, pname, index, param) bind(C, name="glGetTransformFeedbacki64_v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: xfb
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: index
  integer(c_int64_t),intent(in),value :: param
end subroutine glGetTransformFeedbacki64_v

subroutine glCreateBuffers(n, buffers) bind(C, name="glCreateBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: buffers
end subroutine glCreateBuffers

subroutine glNamedBufferStorage(buffer, size, data, flags) bind(C, name="glNamedBufferStorage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
  integer(c_int32_t),intent(in),value :: flags
end subroutine glNamedBufferStorage

subroutine glNamedBufferData(buffer, size, data, usage) bind(C, name="glNamedBufferData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
  integer(c_int32_t),intent(in),value :: usage
end subroutine glNamedBufferData

subroutine glNamedBufferSubData(buffer, offset, size, data) bind(C, name="glNamedBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
end subroutine glNamedBufferSubData

subroutine glCopyNamedBufferSubData(readBuffer, writeBuffer, readOffset, writeOffset, size) &
 		bind(C, name="glCopyNamedBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: readBuffer
  integer(c_int32_t),intent(in),value :: writeBuffer
  integer(c_int64_t), dimension(*), intent(inout) :: readOffset
  integer(c_int64_t), dimension(*), intent(inout) :: writeOffset
  integer(c_int64_t),intent(in),value :: size
end subroutine glCopyNamedBufferSubData

subroutine glClearNamedBufferData(buffer, internalformat, format, type, data) bind(C, name="glClearNamedBufferData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: data
end subroutine glClearNamedBufferData

subroutine glClearNamedBufferSubData(buffer, internalformat, offset, size, format, type, data) &
 		bind(C, name="glClearNamedBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: data
end subroutine glClearNamedBufferSubData

subroutine glMapNamedBuffer(buffer, access) bind(C, name="glMapNamedBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: access
end subroutine glMapNamedBuffer

subroutine glMapNamedBufferRange(buffer, offset, length, access) bind(C, name="glMapNamedBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: length
  integer(c_int32_t),intent(in),value :: access
end subroutine glMapNamedBufferRange

function glUnmapNamedBuffer(buffer) bind(C, name="glUnmapNamedBuffer")
  use, intrinsic :: iso_c_binding
    integer(c_int32_t) :: glUnmapNamedBuffer
  integer(c_int32_t),intent(in),value :: buffer
end function glUnmapNamedBuffer

subroutine glFlushMappedNamedBufferRange(buffer, offset, length) bind(C, name="glFlushMappedNamedBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: length
end subroutine glFlushMappedNamedBufferRange

subroutine glGetNamedBufferParameteriv(buffer, pname, params) bind(C, name="glGetNamedBufferParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetNamedBufferParameteriv

subroutine glGetNamedBufferParameteri64v(buffer, pname, params) bind(C, name="glGetNamedBufferParameteri64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: params
end subroutine glGetNamedBufferParameteri64v

subroutine glGetNamedBufferPointerv(buffer, pname, params) bind(C, name="glGetNamedBufferPointerv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  type(c_ptr), intent(inout) :: params
end subroutine glGetNamedBufferPointerv

subroutine glGetNamedBufferSubData(buffer, offset, size, data) bind(C, name="glGetNamedBufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
  type(c_ptr), intent(inout) :: data
end subroutine glGetNamedBufferSubData

subroutine glCreateFramebuffers(n, framebuffers) bind(C, name="glCreateFramebuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: framebuffers
end subroutine glCreateFramebuffers

subroutine glNamedFramebufferRenderbuffer(framebuffer, attachment, renderbuffertarget, renderbuffer) &
 		bind(C, name="glNamedFramebufferRenderbuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: renderbuffertarget
  integer(c_int32_t),intent(in),value :: renderbuffer
end subroutine glNamedFramebufferRenderbuffer

subroutine glNamedFramebufferParameteri(framebuffer, pname, param) bind(C, name="glNamedFramebufferParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glNamedFramebufferParameteri

subroutine glNamedFramebufferTexture(framebuffer, attachment, texture, level) bind(C, name="glNamedFramebufferTexture")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
end subroutine glNamedFramebufferTexture

subroutine glNamedFramebufferTextureLayer(framebuffer, attachment, texture, level, layer) &
 		bind(C, name="glNamedFramebufferTextureLayer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: layer
end subroutine glNamedFramebufferTextureLayer

subroutine glNamedFramebufferDrawBuffer(framebuffer, buf) bind(C, name="glNamedFramebufferDrawBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: buf
end subroutine glNamedFramebufferDrawBuffer

subroutine glNamedFramebufferDrawBuffers(framebuffer, n, bufs) bind(C, name="glNamedFramebufferDrawBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t), dimension(*), intent(inout) :: bufs
end subroutine glNamedFramebufferDrawBuffers

subroutine glNamedFramebufferReadBuffer(framebuffer, src) bind(C, name="glNamedFramebufferReadBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: src
end subroutine glNamedFramebufferReadBuffer

subroutine glInvalidateNamedFramebufferData(framebuffer, numAttachments, attachments) &
 		bind(C, name="glInvalidateNamedFramebufferData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int64_t),intent(in),value :: numAttachments
  integer(c_int32_t), dimension(*), intent(inout) :: attachments
end subroutine glInvalidateNamedFramebufferData

subroutine glInvalidateNamedFramebufferSubData(framebuffer, numAttachments, attachments, x, y, width,  &
height) bind(C, name="glInvalidateNamedFramebufferSubData")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int64_t),intent(in),value :: numAttachments
  integer(c_int32_t), dimension(*), intent(inout) :: attachments
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glInvalidateNamedFramebufferSubData

subroutine glClearNamedFramebufferiv(framebuffer, buffer, drawbuffer, value) bind(C, name="glClearNamedFramebufferiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glClearNamedFramebufferiv

subroutine glClearNamedFramebufferuiv(framebuffer, buffer, drawbuffer, value) &
 		bind(C, name="glClearNamedFramebufferuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  integer(c_int32_t), dimension(*), intent(inout) :: value
end subroutine glClearNamedFramebufferuiv

subroutine glClearNamedFramebufferfv(framebuffer, buffer, drawbuffer, value) bind(C, name="glClearNamedFramebufferfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  real(c_float), dimension(*), intent(inout) :: value
end subroutine glClearNamedFramebufferfv

subroutine glClearNamedFramebufferfi(framebuffer, buffer, drawbuffer, depth, stencil) &
 		bind(C, name="glClearNamedFramebufferfi")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: drawbuffer
  real(c_float),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: stencil
end subroutine glClearNamedFramebufferfi

subroutine glBlitNamedFramebuffer(readFramebuffer, drawFramebuffer, srcX0, srcY0, srcX1, srcY1,  &
dstX0, dstY0, dstX1, dstY1, mask, filter) bind(C, name="glBlitNamedFramebuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: readFramebuffer
  integer(c_int32_t),intent(in),value :: drawFramebuffer
  integer(c_int32_t),intent(in),value :: srcX0
  integer(c_int32_t),intent(in),value :: srcY0
  integer(c_int32_t),intent(in),value :: srcX1
  integer(c_int32_t),intent(in),value :: srcY1
  integer(c_int32_t),intent(in),value :: dstX0
  integer(c_int32_t),intent(in),value :: dstY0
  integer(c_int32_t),intent(in),value :: dstX1
  integer(c_int32_t),intent(in),value :: dstY1
  integer(c_int32_t),intent(in),value :: mask
  integer(c_int32_t),intent(in),value :: filter
end subroutine glBlitNamedFramebuffer

function glCheckNamedFramebufferStatus(framebuffer, target) bind(C, name="glCheckNamedFramebufferStatus")
  use, intrinsic :: iso_c_binding
    integer(c_int) :: glCheckNamedFramebufferStatus
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: target
end function glCheckNamedFramebufferStatus

subroutine glGetNamedFramebufferParameteriv(framebuffer, pname, param) bind(C, name="glGetNamedFramebufferParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glGetNamedFramebufferParameteriv

subroutine glGetNamedFramebufferAttachmentParameteriv(framebuffer, attachment, pname, params) &
 		bind(C, name="glGetNamedFramebufferAttachmentParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: framebuffer
  integer(c_int32_t),intent(in),value :: attachment
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetNamedFramebufferAttachmentParameteriv

subroutine glCreateRenderbuffers(n, renderbuffers) bind(C, name="glCreateRenderbuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: renderbuffers
end subroutine glCreateRenderbuffers

subroutine glNamedRenderbufferStorage(renderbuffer, internalformat, width, height) &
 		bind(C, name="glNamedRenderbufferStorage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: renderbuffer
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glNamedRenderbufferStorage

subroutine glNamedRenderbufferStorageMultisample(renderbuffer, samples, internalformat, width,  &
height) bind(C, name="glNamedRenderbufferStorageMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: renderbuffer
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glNamedRenderbufferStorageMultisample

subroutine glGetNamedRenderbufferParameteriv(renderbuffer, pname, params) &
 		bind(C, name="glGetNamedRenderbufferParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: renderbuffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetNamedRenderbufferParameteriv

subroutine glCreateTextures(target, n, textures) bind(C, name="glCreateTextures")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: textures
end subroutine glCreateTextures

subroutine glTextureBuffer(texture, internalformat, buffer) bind(C, name="glTextureBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glTextureBuffer

subroutine glTextureBufferRange(texture, internalformat, buffer, offset, size) bind(C, name="glTextureBufferRange")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: size
end subroutine glTextureBufferRange

subroutine glTextureStorage1D(texture, levels, internalformat, width) bind(C, name="glTextureStorage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int64_t),intent(in),value :: levels
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
end subroutine glTextureStorage1D

subroutine glTextureStorage2D(texture, levels, internalformat, width, height) bind(C, name="glTextureStorage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int64_t),intent(in),value :: levels
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glTextureStorage2D

subroutine glTextureStorage3D(texture, levels, internalformat, width, height, depth) bind(C, name="glTextureStorage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int64_t),intent(in),value :: levels
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
end subroutine glTextureStorage3D

subroutine glTextureStorage2DMultisample(texture, samples, internalformat, width, height,  &
fixedsamplelocations) bind(C, name="glTextureStorage2DMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  logical(c_bool),intent(in),value :: fixedsamplelocations
end subroutine glTextureStorage2DMultisample

subroutine glTextureStorage3DMultisample(texture, samples, internalformat, width, height, depth,  &
fixedsamplelocations) bind(C, name="glTextureStorage3DMultisample")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int64_t),intent(in),value :: samples
  integer(c_int32_t),intent(in),value :: internalformat
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  logical(c_bool),intent(in),value :: fixedsamplelocations
end subroutine glTextureStorage3DMultisample

subroutine glTextureSubImage1D(texture, level, xoffset, width, format, type, pixels) &
 		bind(C, name="glTextureSubImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTextureSubImage1D

subroutine glTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format, type, pixels) &
 		bind(C, name="glTextureSubImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTextureSubImage2D

subroutine glTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height, depth,  &
format, type, pixels) bind(C, name="glTextureSubImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: pixels
end subroutine glTextureSubImage3D

subroutine glCompressedTextureSubImage1D(texture, level, xoffset, width, format, imageSize, data) &
 		bind(C, name="glCompressedTextureSubImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTextureSubImage1D

subroutine glCompressedTextureSubImage2D(texture, level, xoffset, yoffset, width, height, format,  &
imageSize, data) bind(C, name="glCompressedTextureSubImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTextureSubImage2D

subroutine glCompressedTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, width, height,  &
depth, format, imageSize, data) bind(C, name="glCompressedTextureSubImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: format
  integer(c_int64_t),intent(in),value :: imageSize
  type(c_ptr), intent(inout) :: data
end subroutine glCompressedTextureSubImage3D

subroutine glCopyTextureSubImage1D(texture, level, xoffset, x, y, width) bind(C, name="glCopyTextureSubImage1D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
end subroutine glCopyTextureSubImage1D

subroutine glCopyTextureSubImage2D(texture, level, xoffset, yoffset, x, y, width, height) &
 		bind(C, name="glCopyTextureSubImage2D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glCopyTextureSubImage2D

subroutine glCopyTextureSubImage3D(texture, level, xoffset, yoffset, zoffset, x, y, width, height) &
 		bind(C, name="glCopyTextureSubImage3D")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
end subroutine glCopyTextureSubImage3D

subroutine glTextureParameterf(texture, pname, param) bind(C, name="glTextureParameterf")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: param
end subroutine glTextureParameterf

subroutine glTextureParameterfv(texture, pname, param) bind(C, name="glTextureParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  real(c_float), dimension(*), intent(inout) :: param
end subroutine glTextureParameterfv

subroutine glTextureParameteri(texture, pname, param) bind(C, name="glTextureParameteri")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glTextureParameteri

subroutine glTextureParameterIiv(texture, pname, params) bind(C, name="glTextureParameterIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTextureParameterIiv

subroutine glTextureParameterIuiv(texture, pname, params) bind(C, name="glTextureParameterIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: params
end subroutine glTextureParameterIuiv

subroutine glTextureParameteriv(texture, pname, param) bind(C, name="glTextureParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t), dimension(*), intent(inout) :: param
end subroutine glTextureParameteriv

subroutine glGenerateTextureMipmap(texture) bind(C, name="glGenerateTextureMipmap")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
end subroutine glGenerateTextureMipmap

subroutine glBindTextureUnit(unit, texture) bind(C, name="glBindTextureUnit")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: unit
  integer(c_int32_t),intent(in),value :: texture
end subroutine glBindTextureUnit

subroutine glGetTextureImage(texture, level, format, type, bufSize, pixels) bind(C, name="glGetTextureImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetTextureImage

subroutine glGetCompressedTextureImage(texture, level, bufSize, pixels) bind(C, name="glGetCompressedTextureImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetCompressedTextureImage

subroutine glGetTextureLevelParameterfv(texture, level, pname, params) bind(C, name="glGetTextureLevelParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetTextureLevelParameterfv

subroutine glGetTextureLevelParameteriv(texture, level, pname, params) bind(C, name="glGetTextureLevelParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTextureLevelParameteriv

subroutine glGetTextureParameterfv(texture, pname, params) bind(C, name="glGetTextureParameterfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  real(c_float),intent(in),value :: params
end subroutine glGetTextureParameterfv

subroutine glGetTextureParameterIiv(texture, pname, params) bind(C, name="glGetTextureParameterIiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTextureParameterIiv

subroutine glGetTextureParameterIuiv(texture, pname, params) bind(C, name="glGetTextureParameterIuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTextureParameterIuiv

subroutine glGetTextureParameteriv(texture, pname, params) bind(C, name="glGetTextureParameteriv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetTextureParameteriv

subroutine glCreateVertexArrays(n, arrays) bind(C, name="glCreateVertexArrays")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: arrays
end subroutine glCreateVertexArrays

subroutine glDisableVertexArrayAttrib(vaobj, index) bind(C, name="glDisableVertexArrayAttrib")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: index
end subroutine glDisableVertexArrayAttrib

subroutine glEnableVertexArrayAttrib(vaobj, index) bind(C, name="glEnableVertexArrayAttrib")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: index
end subroutine glEnableVertexArrayAttrib

subroutine glVertexArrayElementBuffer(vaobj, buffer) bind(C, name="glVertexArrayElementBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: buffer
end subroutine glVertexArrayElementBuffer

subroutine glVertexArrayVertexBuffer(vaobj, bindingindex, buffer, offset, stride) &
 		bind(C, name="glVertexArrayVertexBuffer")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: bindingindex
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int64_t), dimension(*), intent(inout) :: offset
  integer(c_int64_t),intent(in),value :: stride
end subroutine glVertexArrayVertexBuffer

subroutine glVertexArrayVertexBuffers(vaobj, first, count, buffers, offsets, strides) &
 		bind(C, name="glVertexArrayVertexBuffers")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: first
  integer(c_int64_t),intent(in),value :: count
  integer(c_int32_t), dimension(*), intent(inout) :: buffers
  type(c_ptr), dimension(*), intent(inout) :: offsets
  integer(c_int64_t), dimension(*), intent(inout) :: strides
end subroutine glVertexArrayVertexBuffers

subroutine glVertexArrayAttribBinding(vaobj, attribindex, bindingindex) bind(C, name="glVertexArrayAttribBinding")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: bindingindex
end subroutine glVertexArrayAttribBinding

subroutine glVertexArrayAttribFormat(vaobj, attribindex, size, type, normalized, relativeoffset) &
 		bind(C, name="glVertexArrayAttribFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  logical(c_bool),intent(in),value :: normalized
  integer(c_int32_t),intent(in),value :: relativeoffset
end subroutine glVertexArrayAttribFormat

subroutine glVertexArrayAttribIFormat(vaobj, attribindex, size, type, relativeoffset) &
 		bind(C, name="glVertexArrayAttribIFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: relativeoffset
end subroutine glVertexArrayAttribIFormat

subroutine glVertexArrayAttribLFormat(vaobj, attribindex, size, type, relativeoffset) &
 		bind(C, name="glVertexArrayAttribLFormat")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: attribindex
  integer(c_int32_t),intent(in),value :: size
  integer(c_int32_t),intent(in),value :: type
  integer(c_int32_t),intent(in),value :: relativeoffset
end subroutine glVertexArrayAttribLFormat

subroutine glVertexArrayBindingDivisor(vaobj, bindingindex, divisor) bind(C, name="glVertexArrayBindingDivisor")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: bindingindex
  integer(c_int32_t),intent(in),value :: divisor
end subroutine glVertexArrayBindingDivisor

subroutine glGetVertexArrayiv(vaobj, pname, param) bind(C, name="glGetVertexArrayiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glGetVertexArrayiv

subroutine glGetVertexArrayIndexediv(vaobj, index, pname, param) bind(C, name="glGetVertexArrayIndexediv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int32_t),intent(in),value :: param
end subroutine glGetVertexArrayIndexediv

subroutine glGetVertexArrayIndexed64iv(vaobj, index, pname, param) bind(C, name="glGetVertexArrayIndexed64iv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: vaobj
  integer(c_int32_t),intent(in),value :: index
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t),intent(in),value :: param
end subroutine glGetVertexArrayIndexed64iv

subroutine glCreateSamplers(n, samplers) bind(C, name="glCreateSamplers")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: samplers
end subroutine glCreateSamplers

subroutine glCreateProgramPipelines(n, pipelines) bind(C, name="glCreateProgramPipelines")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: pipelines
end subroutine glCreateProgramPipelines

subroutine glCreateQueries(target, n, ids) bind(C, name="glCreateQueries")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int64_t),intent(in),value :: n
  integer(c_int32_t),intent(in),value :: ids
end subroutine glCreateQueries

subroutine glGetQueryBufferObjecti64v(id, buffer, pname, offset) bind(C, name="glGetQueryBufferObjecti64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t), dimension(*), intent(inout) :: offset
end subroutine glGetQueryBufferObjecti64v

subroutine glGetQueryBufferObjectiv(id, buffer, pname, offset) bind(C, name="glGetQueryBufferObjectiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t), dimension(*), intent(inout) :: offset
end subroutine glGetQueryBufferObjectiv

subroutine glGetQueryBufferObjectui64v(id, buffer, pname, offset) bind(C, name="glGetQueryBufferObjectui64v")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t), dimension(*), intent(inout) :: offset
end subroutine glGetQueryBufferObjectui64v

subroutine glGetQueryBufferObjectuiv(id, buffer, pname, offset) bind(C, name="glGetQueryBufferObjectuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: id
  integer(c_int32_t),intent(in),value :: buffer
  integer(c_int32_t),intent(in),value :: pname
  integer(c_int64_t), dimension(*), intent(inout) :: offset
end subroutine glGetQueryBufferObjectuiv

subroutine glMemoryBarrierByRegion(barriers) bind(C, name="glMemoryBarrierByRegion")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: barriers
end subroutine glMemoryBarrierByRegion

subroutine glGetTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height, depth,  &
format, type, bufSize, pixels) bind(C, name="glGetTextureSubImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetTextureSubImage

subroutine glGetCompressedTextureSubImage(texture, level, xoffset, yoffset, zoffset, width, height,  &
depth, bufSize, pixels) bind(C, name="glGetCompressedTextureSubImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: texture
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: xoffset
  integer(c_int32_t),intent(in),value :: yoffset
  integer(c_int32_t),intent(in),value :: zoffset
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int64_t),intent(in),value :: depth
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetCompressedTextureSubImage

function glGetGraphicsResetStatus() bind(C, name="glGetGraphicsResetStatus")
  use, intrinsic :: iso_c_binding
    integer(c_int) :: glGetGraphicsResetStatus
end function glGetGraphicsResetStatus

subroutine glGetnCompressedTexImage(target, lod, bufSize, pixels) bind(C, name="glGetnCompressedTexImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: lod
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetnCompressedTexImage

subroutine glGetnTexImage(target, level, format, type, bufSize, pixels) bind(C, name="glGetnTexImage")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: level
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: pixels
end subroutine glGetnTexImage

subroutine glGetnUniformdv(program, location, bufSize, params) bind(C, name="glGetnUniformdv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: bufSize
  real(c_double),intent(in),value :: params
end subroutine glGetnUniformdv

subroutine glGetnUniformfv(program, location, bufSize, params) bind(C, name="glGetnUniformfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: bufSize
  real(c_float),intent(in),value :: params
end subroutine glGetnUniformfv

subroutine glGetnUniformiv(program, location, bufSize, params) bind(C, name="glGetnUniformiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetnUniformiv

subroutine glGetnUniformuiv(program, location, bufSize, params) bind(C, name="glGetnUniformuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: program
  integer(c_int32_t),intent(in),value :: location
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int32_t),intent(in),value :: params
end subroutine glGetnUniformuiv

subroutine glReadnPixels(x, y, width, height, format, type, bufSize, data) bind(C, name="glReadnPixels")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: x
  integer(c_int32_t),intent(in),value :: y
  integer(c_int64_t),intent(in),value :: width
  integer(c_int64_t),intent(in),value :: height
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: data
end subroutine glReadnPixels

subroutine glGetnMapdv(target, query, bufSize, v) bind(C, name="glGetnMapdv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: query
  integer(c_int64_t),intent(in),value :: bufSize
  real(c_double),intent(in),value :: v
end subroutine glGetnMapdv

subroutine glGetnMapfv(target, query, bufSize, v) bind(C, name="glGetnMapfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: query
  integer(c_int64_t),intent(in),value :: bufSize
  real(c_float),intent(in),value :: v
end subroutine glGetnMapfv

subroutine glGetnMapiv(target, query, bufSize, v) bind(C, name="glGetnMapiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: query
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int32_t),intent(in),value :: v
end subroutine glGetnMapiv

subroutine glGetnPixelMapfv(map, bufSize, values) bind(C, name="glGetnPixelMapfv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int64_t),intent(in),value :: bufSize
  real(c_float),intent(in),value :: values
end subroutine glGetnPixelMapfv

subroutine glGetnPixelMapuiv(map, bufSize, values) bind(C, name="glGetnPixelMapuiv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int32_t),intent(in),value :: values
end subroutine glGetnPixelMapuiv

subroutine glGetnPixelMapusv(map, bufSize, values) bind(C, name="glGetnPixelMapusv")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: map
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int16_t),intent(in),value :: values
end subroutine glGetnPixelMapusv

subroutine glGetnPolygonStipple(bufSize, pattern) bind(C, name="glGetnPolygonStipple")
  use, intrinsic :: iso_c_binding
  integer(c_int64_t),intent(in),value :: bufSize
  integer(c_int8_t),intent(in),value :: pattern
end subroutine glGetnPolygonStipple

subroutine glGetnColorTable(target, format, type, bufSize, table) bind(C, name="glGetnColorTable")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: table
end subroutine glGetnColorTable

subroutine glGetnConvolutionFilter(target, format, type, bufSize, image) bind(C, name="glGetnConvolutionFilter")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: image
end subroutine glGetnConvolutionFilter

subroutine glGetnSeparableFilter(target, format, type, rowBufSize, row, columnBufSize, column, span) &
 		bind(C, name="glGetnSeparableFilter")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: rowBufSize
  type(c_ptr), intent(inout) :: row
  integer(c_int64_t),intent(in),value :: columnBufSize
  type(c_ptr), intent(inout) :: column
  type(c_ptr), intent(inout) :: span
end subroutine glGetnSeparableFilter

subroutine glGetnHistogram(target, reset, format, type, bufSize, values) bind(C, name="glGetnHistogram")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  logical(c_bool),intent(in),value :: reset
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: values
end subroutine glGetnHistogram

subroutine glGetnMinmax(target, reset, format, type, bufSize, values) bind(C, name="glGetnMinmax")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: target
  logical(c_bool),intent(in),value :: reset
  integer(c_int32_t),intent(in),value :: format
  integer(c_int32_t),intent(in),value :: type
  integer(c_int64_t),intent(in),value :: bufSize
  type(c_ptr), intent(inout) :: values
end subroutine glGetnMinmax

subroutine glTextureBarrier() bind(C, name="glTextureBarrier")
  use, intrinsic :: iso_c_binding
end subroutine glTextureBarrier

subroutine glSpecializeShader(shader, pEntryPoint, numSpecializationConstants, pConstantIndex,  &
pConstantValue) bind(C, name="glSpecializeShader")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: shader
  character(c_char), dimension(*), intent(inout) :: pEntryPoint
  integer(c_int32_t),intent(in),value :: numSpecializationConstants
  integer(c_int32_t), dimension(*), intent(inout) :: pConstantIndex
  integer(c_int32_t), dimension(*), intent(inout) :: pConstantValue
end subroutine glSpecializeShader

subroutine glMultiDrawArraysIndirectCount(mode, indirect, drawcount, maxdrawcount, stride) &
 		bind(C, name="glMultiDrawArraysIndirectCount")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  type(c_ptr), intent(inout) :: indirect
  integer(c_int64_t), dimension(*), intent(inout) :: drawcount
  integer(c_int64_t),intent(in),value :: maxdrawcount
  integer(c_int64_t),intent(in),value :: stride
end subroutine glMultiDrawArraysIndirectCount

subroutine glMultiDrawElementsIndirectCount(mode, type, indirect, drawcount, maxdrawcount, stride) &
 		bind(C, name="glMultiDrawElementsIndirectCount")
  use, intrinsic :: iso_c_binding
  integer(c_int32_t),intent(in),value :: mode
  integer(c_int32_t),intent(in),value :: type
  type(c_ptr), intent(inout) :: indirect
  integer(c_int64_t), dimension(*), intent(inout) :: drawcount
  integer(c_int64_t),intent(in),value :: maxdrawcount
  integer(c_int64_t),intent(in),value :: stride
end subroutine glMultiDrawElementsIndirectCount

subroutine glPolygonOffsetClamp(factor, units, clamp) bind(C, name="glPolygonOffsetClamp")
  use, intrinsic :: iso_c_binding
  real(c_float),intent(in),value :: factor
  real(c_float),intent(in),value :: units
  real(c_float),intent(in),value :: clamp
end subroutine glPolygonOffsetClamp

  end interface


end module opengl
