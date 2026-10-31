.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Motion"

.field public static final S_ANIMATE_CIRCLEANGLE_TO:Ljava/lang/String; = "AnimateCircleAngleTo"

.field public static final S_ANIMATE_RELATIVE_TO:Ljava/lang/String; = "AnimateRelativeTo"

.field public static final S_DRAW_PATH:Ljava/lang/String; = "DrawPath"

.field public static final S_EASING:Ljava/lang/String; = "TransitionEasing"

.field public static final S_PATHMOTION_ARC:Ljava/lang/String; = "PathMotionArc"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "PathRotate"

.field public static final S_POLAR_RELATIVETO:Ljava/lang/String; = "PolarRelativeTo"

.field public static final S_QUANTIZE_INTERPOLATOR:Ljava/lang/String; = "QuantizeInterpolator"

.field public static final S_QUANTIZE_INTERPOLATOR_ID:Ljava/lang/String; = "QuantizeInterpolatorID"

.field public static final S_QUANTIZE_INTERPOLATOR_TYPE:Ljava/lang/String; = "QuantizeInterpolatorType"

.field public static final S_QUANTIZE_MOTIONSTEPS:Ljava/lang/String; = "QuantizeMotionSteps"

.field public static final S_QUANTIZE_MOTION_PHASE:Ljava/lang/String; = "QuantizeMotionPhase"

.field public static final S_STAGGER:Ljava/lang/String; = "Stagger"

.field public static final TYPE_ANIMATE_CIRCLEANGLE_TO:I = 0x25e

.field public static final TYPE_ANIMATE_RELATIVE_TO:I = 0x25d

.field public static final TYPE_DRAW_PATH:I = 0x260

.field public static final TYPE_EASING:I = 0x25b

.field public static final TYPE_PATHMOTION_ARC:I = 0x25f

.field public static final TYPE_PATH_ROTATE:I = 0x259

.field public static final TYPE_POLAR_RELATIVETO:I = 0x261

.field public static final TYPE_QUANTIZE_INTERPOLATOR:I = 0x25c

.field public static final TYPE_QUANTIZE_INTERPOLATOR_ID:I = 0x264

.field public static final TYPE_QUANTIZE_INTERPOLATOR_TYPE:I = 0x263

.field public static final TYPE_QUANTIZE_MOTIONSTEPS:I = 0x262

.field public static final TYPE_QUANTIZE_MOTION_PHASE:I = 0x25a

.field public static final TYPE_STAGGER:I = 0x258


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    const-string v11, "QuantizeInterpolatorType"

    .line 2
    .line 3
    const-string v12, "QuantizeInterpolatorID"

    .line 4
    .line 5
    const-string v0, "Stagger"

    .line 6
    .line 7
    const-string v1, "PathRotate"

    .line 8
    .line 9
    const-string v2, "QuantizeMotionPhase"

    .line 10
    .line 11
    const-string v3, "TransitionEasing"

    .line 12
    .line 13
    const-string v4, "QuantizeInterpolator"

    .line 14
    .line 15
    const-string v5, "AnimateRelativeTo"

    .line 16
    .line 17
    const-string v6, "AnimateCircleAngleTo"

    .line 18
    .line 19
    const-string v7, "PathMotionArc"

    .line 20
    .line 21
    const-string v8, "DrawPath"

    .line 22
    .line 23
    const-string v9, "PolarRelativeTo"

    .line 24
    .line 25
    const-string v10, "QuantizeMotionSteps"

    .line 26
    .line 27
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->KEY_WORDS:[Ljava/lang/String;

    .line 32
    .line 33
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
    sparse-switch v0, :sswitch_data_d4

    .line 10
    .line 11
    .line 12
    :goto_b
    move p0, v1

    .line 13
    goto/16 :goto_a9

    .line 14
    .line 15
    :sswitch_e
    const-string v0, "PathMotionArc"

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
    const/16 p0, 0xc

    .line 25
    .line 26
    goto/16 :goto_a9

    .line 27
    .line 28
    :sswitch_1b
    const-string v0, "AnimateRelativeTo"

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
    const/16 p0, 0xb

    .line 38
    .line 39
    goto/16 :goto_a9

    .line 40
    .line 41
    :sswitch_28
    const-string v0, "TransitionEasing"

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
    const/16 p0, 0xa

    .line 51
    .line 52
    goto/16 :goto_a9

    .line 53
    .line 54
    :sswitch_35
    const-string v0, "QuantizeInterpolatorID"

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
    const/16 p0, 0x9

    .line 64
    .line 65
    goto/16 :goto_a9

    .line 66
    .line 67
    :sswitch_42
    const-string v0, "QuantizeInterpolatorType"

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
    const/16 p0, 0x8

    .line 77
    .line 78
    goto/16 :goto_a9

    .line 79
    .line 80
    :sswitch_4f
    const-string v0, "PolarRelativeTo"

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
    const/4 p0, 0x7

    .line 90
    goto :goto_a9

    .line 91
    :sswitch_5a
    const-string v0, "Stagger"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_63

    .line 98
    .line 99
    goto :goto_b

    .line 100
    :cond_63
    const/4 p0, 0x6

    .line 101
    goto :goto_a9

    .line 102
    :sswitch_65
    const-string v0, "DrawPath"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_6e

    .line 109
    .line 110
    goto :goto_b

    .line 111
    :cond_6e
    const/4 p0, 0x5

    .line 112
    goto :goto_a9

    .line 113
    :sswitch_70
    const-string v0, "QuantizeInterpolator"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_79

    .line 120
    .line 121
    goto :goto_b

    .line 122
    :cond_79
    const/4 p0, 0x4

    .line 123
    goto :goto_a9

    .line 124
    :sswitch_7b
    const-string v0, "PathRotate"

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_84

    .line 131
    .line 132
    goto :goto_b

    .line 133
    :cond_84
    const/4 p0, 0x3

    .line 134
    goto :goto_a9

    .line 135
    :sswitch_86
    const-string v0, "QuantizeMotionSteps"

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_90

    .line 142
    .line 143
    goto/16 :goto_b

    .line 144
    .line 145
    :cond_90
    const/4 p0, 0x2

    .line 146
    goto :goto_a9

    .line 147
    :sswitch_92
    const-string v0, "QuantizeMotionPhase"

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_9c

    .line 154
    .line 155
    goto/16 :goto_b

    .line 156
    .line 157
    :cond_9c
    const/4 p0, 0x1

    .line 158
    goto :goto_a9

    .line 159
    :sswitch_9e
    const-string v0, "AnimateCircleAngleTo"

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-nez p0, :cond_a8

    .line 166
    .line 167
    goto/16 :goto_b

    .line 168
    .line 169
    :cond_a8
    const/4 p0, 0x0

    .line 170
    :goto_a9
    packed-switch p0, :pswitch_data_10a

    .line 171
    .line 172
    .line 173
    return v1

    .line 174
    :pswitch_ad
    const/16 p0, 0x25f

    .line 175
    .line 176
    return p0

    .line 177
    :pswitch_b0
    const/16 p0, 0x25d

    .line 178
    .line 179
    return p0

    .line 180
    :pswitch_b3
    const/16 p0, 0x25b

    .line 181
    .line 182
    return p0

    .line 183
    :pswitch_b6
    const/16 p0, 0x264

    .line 184
    .line 185
    return p0

    .line 186
    :pswitch_b9
    const/16 p0, 0x263

    .line 187
    .line 188
    return p0

    .line 189
    :pswitch_bc
    const/16 p0, 0x261

    .line 190
    .line 191
    return p0

    .line 192
    :pswitch_bf
    const/16 p0, 0x258

    .line 193
    .line 194
    return p0

    .line 195
    :pswitch_c2
    const/16 p0, 0x260

    .line 196
    .line 197
    return p0

    .line 198
    :pswitch_c5
    const/16 p0, 0x25c

    .line 199
    .line 200
    return p0

    .line 201
    :pswitch_c8
    const/16 p0, 0x259

    .line 202
    .line 203
    return p0

    .line 204
    :pswitch_cb
    const/16 p0, 0x262

    .line 205
    .line 206
    return p0

    .line 207
    :pswitch_ce
    const/16 p0, 0x25a

    .line 208
    .line 209
    return p0

    .line 210
    :pswitch_d1
    const/16 p0, 0x25e

    .line 211
    .line 212
    return p0

    .line 213
    :sswitch_data_d4
    .sparse-switch
        -0x7933ed83 -> :sswitch_9e
        -0x5b54b2ac -> :sswitch_92
        -0x5b24e900 -> :sswitch_86
        -0x594e6600 -> :sswitch_7b
        -0x3d700b48 -> :sswitch_70
        -0x2d70d857 -> :sswitch_65
        -0xde15873 -> :sswitch_5a
        0x43dc0025 -> :sswitch_4f
        0x5bbedc12 -> :sswitch_42
        0x5e65afd3 -> :sswitch_35
        0x61b6c700 -> :sswitch_28
        0x714d6c08 -> :sswitch_1b
        0x7dbf63f7 -> :sswitch_e
    .end sparse-switch

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
    .end packed-switch
.end method
