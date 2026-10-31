.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CycleType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM_WAVE_SHAPE:Ljava/lang/String; = "customWave"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final S_WAVE_OFFSET:Ljava/lang/String; = "offset"

.field public static final S_WAVE_PERIOD:Ljava/lang/String; = "period"

.field public static final S_WAVE_PHASE:Ljava/lang/String; = "phase"

.field public static final S_WAVE_SHAPE:Ljava/lang/String; = "waveShape"

.field public static final TYPE_ALPHA:I = 0x193

.field public static final TYPE_CURVE_FIT:I = 0x191

.field public static final TYPE_CUSTOM_WAVE_SHAPE:I = 0x1a6

.field public static final TYPE_EASING:I = 0x1a4

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x1a0

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x192

.field public static final TYPE_WAVE_OFFSET:I = 0x1a8

.field public static final TYPE_WAVE_PERIOD:I = 0x1a7

.field public static final TYPE_WAVE_PHASE:I = 0x1a9

.field public static final TYPE_WAVE_SHAPE:I = 0x1a5


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 1
    const-string v21, "offset"

    .line 2
    .line 3
    const-string v22, "phase"

    .line 4
    .line 5
    const-string v1, "curveFit"

    .line 6
    .line 7
    const-string v2, "visibility"

    .line 8
    .line 9
    const-string v3, "alpha"

    .line 10
    .line 11
    const-string v4, "translationX"

    .line 12
    .line 13
    const-string v5, "translationY"

    .line 14
    .line 15
    const-string v6, "translationZ"

    .line 16
    .line 17
    const-string v7, "elevation"

    .line 18
    .line 19
    const-string v8, "rotationX"

    .line 20
    .line 21
    const-string v9, "rotationY"

    .line 22
    .line 23
    const-string v10, "rotationZ"

    .line 24
    .line 25
    const-string v11, "scaleX"

    .line 26
    .line 27
    const-string v12, "scaleY"

    .line 28
    .line 29
    const-string v13, "pivotX"

    .line 30
    .line 31
    const-string v14, "pivotY"

    .line 32
    .line 33
    const-string v15, "progress"

    .line 34
    .line 35
    const-string v16, "pathRotate"

    .line 36
    .line 37
    const-string v17, "easing"

    .line 38
    .line 39
    const-string v18, "waveShape"

    .line 40
    .line 41
    const-string v19, "customWave"

    .line 42
    .line 43
    const-string v20, "period"

    .line 44
    .line 45
    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->KEY_WORDS:[Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_108

    .line 10
    .line 11
    .line 12
    :goto_b
    move p0, v1

    .line 13
    goto/16 :goto_d3

    .line 14
    .line 15
    :sswitch_e
    const-string v0, "visibility"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_17

    .line 22
    .line 23
    goto :goto_b

    .line 24
    :cond_17
    const/16 p0, 0xf

    .line 25
    .line 26
    goto/16 :goto_d3

    .line 27
    .line 28
    :sswitch_1b
    const-string v0, "pathRotate"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_24

    .line 35
    .line 36
    goto :goto_b

    .line 37
    :cond_24
    const/16 p0, 0xe

    .line 38
    .line 39
    goto/16 :goto_d3

    .line 40
    .line 41
    :sswitch_28
    const-string v0, "curveFit"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_31

    .line 48
    .line 49
    goto :goto_b

    .line 50
    :cond_31
    const/16 p0, 0xd

    .line 51
    .line 52
    goto/16 :goto_d3

    .line 53
    .line 54
    :sswitch_35
    const-string v0, "alpha"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_3e

    .line 61
    .line 62
    goto :goto_b

    .line 63
    :cond_3e
    const/16 p0, 0xc

    .line 64
    .line 65
    goto/16 :goto_d3

    .line 66
    .line 67
    :sswitch_42
    const-string v0, "scaleY"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_4b

    .line 74
    .line 75
    goto :goto_b

    .line 76
    :cond_4b
    const/16 p0, 0xb

    .line 77
    .line 78
    goto/16 :goto_d3

    .line 79
    .line 80
    :sswitch_4f
    const-string v0, "scaleX"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_58

    .line 87
    .line 88
    goto :goto_b

    .line 89
    :cond_58
    const/16 p0, 0xa

    .line 90
    .line 91
    goto/16 :goto_d3

    .line 92
    .line 93
    :sswitch_5c
    const-string v0, "pivotY"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_65

    .line 100
    .line 101
    goto :goto_b

    .line 102
    :cond_65
    const/16 p0, 0x9

    .line 103
    .line 104
    goto/16 :goto_d3

    .line 105
    .line 106
    :sswitch_69
    const-string v0, "pivotX"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_72

    .line 113
    .line 114
    goto :goto_b

    .line 115
    :cond_72
    const/16 p0, 0x8

    .line 116
    .line 117
    goto/16 :goto_d3

    .line 118
    .line 119
    :sswitch_76
    const-string v0, "progress"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_7f

    .line 126
    .line 127
    goto :goto_b

    .line 128
    :cond_7f
    const/4 p0, 0x7

    .line 129
    goto :goto_d3

    .line 130
    :sswitch_81
    const-string v0, "translationZ"

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-nez p0, :cond_8a

    .line 137
    .line 138
    goto :goto_b

    .line 139
    :cond_8a
    const/4 p0, 0x6

    .line 140
    goto :goto_d3

    .line 141
    :sswitch_8c
    const-string v0, "translationY"

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_96

    .line 148
    .line 149
    goto/16 :goto_b

    .line 150
    .line 151
    :cond_96
    const/4 p0, 0x5

    .line 152
    goto :goto_d3

    .line 153
    :sswitch_98
    const-string v0, "translationX"

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_a2

    .line 160
    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :cond_a2
    const/4 p0, 0x4

    .line 164
    goto :goto_d3

    .line 165
    :sswitch_a4
    const-string v0, "rotationZ"

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-nez p0, :cond_ae

    .line 172
    .line 173
    goto/16 :goto_b

    .line 174
    .line 175
    :cond_ae
    const/4 p0, 0x3

    .line 176
    goto :goto_d3

    .line 177
    :sswitch_b0
    const-string v0, "rotationY"

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_ba

    .line 184
    .line 185
    goto/16 :goto_b

    .line 186
    .line 187
    :cond_ba
    const/4 p0, 0x2

    .line 188
    goto :goto_d3

    .line 189
    :sswitch_bc
    const-string v0, "rotationX"

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_c6

    .line 196
    .line 197
    goto/16 :goto_b

    .line 198
    .line 199
    :cond_c6
    const/4 p0, 0x1

    .line 200
    goto :goto_d3

    .line 201
    :sswitch_c8
    const-string v0, "easing"

    .line 202
    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-nez p0, :cond_d2

    .line 208
    .line 209
    goto/16 :goto_b

    .line 210
    .line 211
    :cond_d2
    const/4 p0, 0x0

    .line 212
    :goto_d3
    packed-switch p0, :pswitch_data_14a

    .line 213
    .line 214
    .line 215
    return v1

    .line 216
    :pswitch_d7
    const/16 p0, 0x192

    .line 217
    .line 218
    return p0

    .line 219
    :pswitch_da
    const/16 p0, 0x1a0

    .line 220
    .line 221
    return p0

    .line 222
    :pswitch_dd
    const/16 p0, 0x191

    .line 223
    .line 224
    return p0

    .line 225
    :pswitch_e0
    const/16 p0, 0x193

    .line 226
    .line 227
    return p0

    .line 228
    :pswitch_e3
    const/16 p0, 0x138

    .line 229
    .line 230
    return p0

    .line 231
    :pswitch_e6
    const/16 p0, 0x137

    .line 232
    .line 233
    return p0

    .line 234
    :pswitch_e9
    const/16 p0, 0x13a

    .line 235
    .line 236
    return p0

    .line 237
    :pswitch_ec
    const/16 p0, 0x139

    .line 238
    .line 239
    return p0

    .line 240
    :pswitch_ef
    const/16 p0, 0x13b

    .line 241
    .line 242
    return p0

    .line 243
    :pswitch_f2
    const/16 p0, 0x132

    .line 244
    .line 245
    return p0

    .line 246
    :pswitch_f5
    const/16 p0, 0x131

    .line 247
    .line 248
    return p0

    .line 249
    :pswitch_f8
    const/16 p0, 0x130

    .line 250
    .line 251
    return p0

    .line 252
    :pswitch_fb
    const/16 p0, 0x136

    .line 253
    .line 254
    return p0

    .line 255
    :pswitch_fe
    const/16 p0, 0x135

    .line 256
    .line 257
    return p0

    .line 258
    :pswitch_101
    const/16 p0, 0x134

    .line 259
    .line 260
    return p0

    .line 261
    :pswitch_104
    const/16 p0, 0x1a4

    .line 262
    .line 263
    return p0

    .line 264
    nop

    .line 265
    :sswitch_data_108
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_c8
        -0x4a771f66 -> :sswitch_bc
        -0x4a771f65 -> :sswitch_b0
        -0x4a771f64 -> :sswitch_a4
        -0x490b9c39 -> :sswitch_98
        -0x490b9c38 -> :sswitch_8c
        -0x490b9c37 -> :sswitch_81
        -0x3bab3dd3 -> :sswitch_76
        -0x3ae243aa -> :sswitch_69
        -0x3ae243a9 -> :sswitch_5c
        -0x3621dfb2 -> :sswitch_4f
        -0x3621dfb1 -> :sswitch_42
        0x589b15e -> :sswitch_35
        0x2283b8a2 -> :sswitch_28
        0x2fdfbde0 -> :sswitch_1b
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p0, v0, :cond_24

    .line 4
    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    if-eq p0, v0, :cond_21

    .line 8
    .line 9
    const/16 v0, 0x1a0

    .line 10
    .line 11
    if-eq p0, v0, :cond_1f

    .line 12
    .line 13
    const/16 v0, 0x1a4

    .line 14
    .line 15
    if-eq p0, v0, :cond_21

    .line 16
    .line 17
    const/16 v0, 0x1a5

    .line 18
    .line 19
    if-eq p0, v0, :cond_21

    .line 20
    .line 21
    packed-switch p0, :pswitch_data_26

    .line 22
    .line 23
    .line 24
    packed-switch p0, :pswitch_data_42

    .line 25
    .line 26
    .line 27
    packed-switch p0, :pswitch_data_4c

    .line 28
    .line 29
    .line 30
    const/4 p0, -0x1

    .line 31
    return p0

    .line 32
    :cond_1f
    :pswitch_1f
    const/4 p0, 0x4

    .line 33
    return p0

    .line 34
    :cond_21
    const/16 p0, 0x8

    .line 35
    .line 36
    return p0

    .line 37
    :cond_24
    :pswitch_24
    const/4 p0, 0x2

    .line 38
    return p0

    .line 39
    :pswitch_data_26
    .packed-switch 0x130
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :pswitch_data_42
    .packed-switch 0x191
        :pswitch_24
        :pswitch_24
        :pswitch_1f
    .end packed-switch

    .line 68
    :pswitch_data_4c
    .packed-switch 0x1a7
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
