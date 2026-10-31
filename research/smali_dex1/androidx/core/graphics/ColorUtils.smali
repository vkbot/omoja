.class public final Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/ColorUtils$Api26Impl;
    }
.end annotation


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static HSLToColor([F)I
    .registers 7
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v2, p0, v2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    aget p0, p0, v3

    .line 9
    .line 10
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    .line 12
    mul-float v4, p0, v3

    .line 13
    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    .line 16
    sub-float/2addr v4, v5

    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-float v4, v5, v4

    .line 22
    .line 23
    mul-float/2addr v4, v2

    .line 24
    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    .line 26
    mul-float/2addr v2, v4

    .line 27
    sub-float/2addr p0, v2

    .line 28
    const/high16 v2, 0x42700000    # 60.0f

    .line 29
    .line 30
    div-float v2, v1, v2

    .line 31
    .line 32
    rem-float/2addr v2, v3

    .line 33
    sub-float/2addr v2, v5

    .line 34
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sub-float/2addr v5, v2

    .line 39
    mul-float/2addr v5, v4

    .line 40
    float-to-int v1, v1

    .line 41
    div-int/lit8 v1, v1, 0x3c

    .line 42
    .line 43
    const/high16 v2, 0x437f0000    # 255.0f

    .line 44
    .line 45
    packed-switch v1, :pswitch_data_b6

    .line 46
    .line 47
    .line 48
    move p0, v0

    .line 49
    move v1, p0

    .line 50
    move v3, v1

    .line 51
    goto :goto_a2

    .line 52
    :pswitch_33
    add-float/2addr v4, p0

    .line 53
    mul-float/2addr v4, v2

    .line 54
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    mul-float v3, p0, v2

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-float/2addr v5, p0

    .line 65
    mul-float/2addr v5, v2

    .line 66
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    goto :goto_a2

    .line 71
    :pswitch_46
    add-float/2addr v5, p0

    .line 72
    mul-float/2addr v5, v2

    .line 73
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    mul-float v3, p0, v2

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    add-float/2addr v4, p0

    .line 84
    mul-float/2addr v4, v2

    .line 85
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    goto :goto_a2

    .line 90
    :pswitch_59
    mul-float v1, p0, v2

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-float/2addr v5, p0

    .line 97
    mul-float/2addr v5, v2

    .line 98
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    add-float/2addr v4, p0

    .line 103
    mul-float/2addr v4, v2

    .line 104
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    goto :goto_a2

    .line 109
    :pswitch_6c
    mul-float v1, p0, v2

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-float/2addr v4, p0

    .line 116
    mul-float/2addr v4, v2

    .line 117
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    add-float/2addr v5, p0

    .line 122
    mul-float/2addr v5, v2

    .line 123
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    goto :goto_a2

    .line 128
    :pswitch_7f
    add-float/2addr v5, p0

    .line 129
    mul-float/2addr v5, v2

    .line 130
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-float/2addr v4, p0

    .line 135
    mul-float/2addr v4, v2

    .line 136
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    mul-float/2addr p0, v2

    .line 141
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    goto :goto_a2

    .line 146
    :pswitch_91
    add-float/2addr v4, p0

    .line 147
    mul-float/2addr v4, v2

    .line 148
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-float/2addr v5, p0

    .line 153
    mul-float/2addr v5, v2

    .line 154
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    mul-float/2addr p0, v2

    .line 159
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    :goto_a2
    const/16 v2, 0xff

    .line 164
    .line 165
    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {v3, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-static {p0, v0, v2}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0

    .line 182
    nop

    .line 183
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_91
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 13
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    move-wide v0, p0

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    aget-wide v0, v6, p0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    aget-wide v2, v6, p0

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    aget-wide v4, v6, p0

    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 26
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 2
    .line 3
    add-double v2, p0, v0

    .line 4
    .line 5
    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    .line 6
    .line 7
    div-double/2addr v2, v4

    .line 8
    const-wide v6, 0x407f400000000000L    # 500.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double v6, p2, v6

    .line 14
    .line 15
    add-double/2addr v6, v2

    .line 16
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    .line 17
    .line 18
    div-double v8, p4, v8

    .line 19
    .line 20
    sub-double v8, v2, v8

    .line 21
    .line 22
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 23
    .line 24
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v12

    .line 28
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpl-double v16, v12, v14

    .line 34
    .line 35
    const-wide v17, 0x408c3a6666666666L    # 903.3

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    if-lez v16, :cond_2a

    .line 41
    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    mul-double/2addr v6, v4

    .line 44
    sub-double/2addr v6, v0

    .line 45
    div-double v12, v6, v17

    .line 46
    .line 47
    :goto_2e
    const-wide v6, 0x401fff9da4c11507L    # 7.9996247999999985

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmpl-double v6, p0, v6

    .line 53
    .line 54
    if-lez v6, :cond_3c

    .line 55
    .line 56
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    div-double v2, p0, v17

    .line 62
    .line 63
    :goto_3e
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    cmpl-double v10, v6, v14

    .line 68
    .line 69
    if-lez v10, :cond_47

    .line 70
    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    mul-double/2addr v8, v4

    .line 73
    sub-double/2addr v8, v0

    .line 74
    div-double v6, v8, v17

    .line 75
    .line 76
    :goto_4b
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    mul-double/2addr v12, v0

    .line 82
    const/4 v0, 0x0

    .line 83
    aput-wide v12, p6, v0

    .line 84
    .line 85
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 86
    .line 87
    mul-double/2addr v2, v0

    .line 88
    const/4 v0, 0x1

    .line 89
    aput-wide v2, p6, v0

    .line 90
    .line 91
    const-wide v0, 0x405b3883126e978dL    # 108.883

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    mul-double/2addr v6, v0

    .line 97
    const/4 v0, 0x2

    .line 98
    aput-wide v6, p6, v0

    .line 99
    .line 100
    return-void
.end method

.method public static M3HCTToColor(FFF)I
    .registers 3
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
            toInclusive = false
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/CamColor;->toColor(FFF)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static RGBToHSL(III[F)V
    .registers 11
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    int-to-float p0, p0

    .line 2
    const/high16 v0, 0x437f0000    # 255.0f

    .line 3
    .line 4
    div-float/2addr p0, v0

    .line 5
    int-to-float p1, p1

    .line 6
    div-float/2addr p1, v0

    .line 7
    int-to-float p2, p2

    .line 8
    div-float/2addr p2, v0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-float v2, v0, v1

    .line 26
    .line 27
    add-float v3, v0, v1

    .line 28
    .line 29
    const/high16 v4, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v3, v4

    .line 32
    cmpl-float v1, v0, v1

    .line 33
    .line 34
    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-nez v1, :cond_29

    .line 38
    .line 39
    move p1, v6

    .line 40
    move v2, p1

    .line 41
    goto :goto_4a

    .line 42
    :cond_29
    cmpl-float v1, v0, p0

    .line 43
    .line 44
    if-nez v1, :cond_33

    .line 45
    .line 46
    sub-float/2addr p1, p2

    .line 47
    div-float/2addr p1, v2

    .line 48
    const/high16 p0, 0x40c00000    # 6.0f

    .line 49
    .line 50
    rem-float/2addr p1, p0

    .line 51
    goto :goto_41

    .line 52
    :cond_33
    cmpl-float v0, v0, p1

    .line 53
    .line 54
    if-nez v0, :cond_3c

    .line 55
    .line 56
    sub-float/2addr p2, p0

    .line 57
    div-float/2addr p2, v2

    .line 58
    add-float p1, p2, v4

    .line 59
    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    sub-float/2addr p0, p1

    .line 62
    div-float/2addr p0, v2

    .line 63
    const/high16 p1, 0x40800000    # 4.0f

    .line 64
    .line 65
    add-float/2addr p1, p0

    .line 66
    :goto_41
    mul-float/2addr v4, v3

    .line 67
    sub-float/2addr v4, v5

    .line 68
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    sub-float p0, v5, p0

    .line 73
    .line 74
    div-float/2addr v2, p0

    .line 75
    :goto_4a
    const/high16 p0, 0x42700000    # 60.0f

    .line 76
    .line 77
    mul-float/2addr p1, p0

    .line 78
    const/high16 p0, 0x43b40000    # 360.0f

    .line 79
    .line 80
    rem-float/2addr p1, p0

    .line 81
    cmpg-float p2, p1, v6

    .line 82
    .line 83
    if-gez p2, :cond_55

    .line 84
    .line 85
    add-float/2addr p1, p0

    .line 86
    :cond_55
    const/4 p2, 0x0

    .line 87
    invoke-static {p1, v6, p0}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    aput p0, p3, p2

    .line 92
    .line 93
    const/4 p0, 0x1

    .line 94
    invoke-static {v2, v6, v5}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    aput p1, p3, p0

    .line 99
    .line 100
    const/4 p0, 0x2

    .line 101
    invoke-static {v3, v6, v5}, Landroidx/core/graphics/ColorUtils;->constrain(FFF)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    aput p1, p3, p0

    .line 106
    .line 107
    return-void
.end method

.method public static RGBToLAB(III[D)V
    .registers 11
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    aget-wide v0, p3, p0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    aget-wide v2, p3, p0

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    aget-wide v4, p3, p0

    .line 12
    .line 13
    move-object v6, p3

    .line 14
    invoke-static/range {v0 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 24
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v1, v2, :cond_a7

    .line 6
    .line 7
    move/from16 v1, p0

    .line 8
    .line 9
    int-to-double v1, v1

    .line 10
    const-wide v3, 0x406fe00000000000L    # 255.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    div-double/2addr v1, v3

    .line 16
    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmpg-double v7, v1, v5

    .line 22
    .line 23
    const-wide v8, 0x4003333333333333L    # 2.4

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v14, 0x4029d70a3d70a3d7L    # 12.92

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    if-gez v7, :cond_32

    .line 44
    .line 45
    div-double/2addr v1, v14

    .line 46
    :goto_2d
    move/from16 v7, p1

    .line 47
    .line 48
    move-wide/from16 v16, v3

    .line 49
    .line 50
    goto :goto_39

    .line 51
    :cond_32
    add-double/2addr v1, v12

    .line 52
    div-double/2addr v1, v10

    .line 53
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    goto :goto_2d

    .line 58
    :goto_39
    int-to-double v3, v7

    .line 59
    div-double v3, v3, v16

    .line 60
    .line 61
    cmpg-double v7, v3, v5

    .line 62
    .line 63
    if-gez v7, :cond_46

    .line 64
    .line 65
    div-double/2addr v3, v14

    .line 66
    :goto_41
    move/from16 v7, p2

    .line 67
    .line 68
    move-wide/from16 v18, v5

    .line 69
    .line 70
    goto :goto_4d

    .line 71
    :cond_46
    add-double/2addr v3, v12

    .line 72
    div-double/2addr v3, v10

    .line 73
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    goto :goto_41

    .line 78
    :goto_4d
    int-to-double v5, v7

    .line 79
    div-double v5, v5, v16

    .line 80
    .line 81
    cmpg-double v7, v5, v18

    .line 82
    .line 83
    if-gez v7, :cond_56

    .line 84
    .line 85
    div-double/2addr v5, v14

    .line 86
    goto :goto_5c

    .line 87
    :cond_56
    add-double/2addr v5, v12

    .line 88
    div-double/2addr v5, v10

    .line 89
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    :goto_5c
    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    mul-double/2addr v7, v1

    .line 99
    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    mul-double/2addr v9, v3

    .line 105
    add-double/2addr v9, v7

    .line 106
    const-wide v7, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    mul-double/2addr v7, v5

    .line 112
    add-double/2addr v7, v9

    .line 113
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 114
    .line 115
    mul-double/2addr v7, v9

    .line 116
    const/4 v11, 0x0

    .line 117
    aput-wide v7, v0, v11

    .line 118
    .line 119
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    mul-double/2addr v7, v1

    .line 125
    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    mul-double/2addr v11, v3

    .line 131
    add-double/2addr v11, v7

    .line 132
    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    mul-double/2addr v7, v5

    .line 138
    add-double/2addr v7, v11

    .line 139
    mul-double/2addr v7, v9

    .line 140
    const/4 v11, 0x1

    .line 141
    aput-wide v7, v0, v11

    .line 142
    .line 143
    const-wide v7, 0x3f93c36113404ea5L    # 0.0193

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    mul-double/2addr v1, v7

    .line 149
    const-wide v7, 0x3fbe83e425aee632L    # 0.1192

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    mul-double/2addr v3, v7

    .line 155
    add-double/2addr v3, v1

    .line 156
    const-wide v1, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    mul-double/2addr v5, v1

    .line 162
    add-double/2addr v5, v3

    .line 163
    mul-double/2addr v5, v9

    .line 164
    const/4 v1, 0x2

    .line 165
    aput-wide v5, v0, v1

    .line 166
    .line 167
    return-void

    .line 168
    :cond_a7
    const-string v0, "outXyz must have a length of 3."

    .line 169
    .line 170
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public static XYZToColor(DDD)I
    .registers 23
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double v0, v0, p0

    .line 7
    .line 8
    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double v2, v2, p2

    .line 14
    .line 15
    add-double/2addr v2, v0

    .line 16
    const-wide v0, -0x402016f0068db8bbL    # -0.4986

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double v0, v0, p4

    .line 22
    .line 23
    add-double/2addr v0, v2

    .line 24
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 25
    .line 26
    div-double/2addr v0, v2

    .line 27
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    mul-double v4, v4, p0

    .line 33
    .line 34
    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double v6, v6, p2

    .line 40
    .line 41
    add-double/2addr v6, v4

    .line 42
    const-wide v4, 0x3fa53f7ced916873L    # 0.0415

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double v4, v4, p4

    .line 48
    .line 49
    add-double/2addr v4, v6

    .line 50
    div-double/2addr v4, v2

    .line 51
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    mul-double v6, v6, p0

    .line 57
    .line 58
    const-wide v8, -0x4035e353f7ced917L    # -0.204

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    mul-double v8, v8, p2

    .line 64
    .line 65
    add-double/2addr v8, v6

    .line 66
    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    mul-double v6, v6, p4

    .line 72
    .line 73
    add-double/2addr v6, v8

    .line 74
    div-double/2addr v6, v2

    .line 75
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmpl-double v8, v0, v2

    .line 81
    .line 82
    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide v11, 0x3fac28f5c28f5c29L    # 0.055

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    const-wide v13, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    const-wide v15, 0x3ff0e147ae147ae1L    # 1.055

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    if-lez v8, :cond_6e

    .line 103
    .line 104
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    mul-double/2addr v0, v15

    .line 109
    sub-double/2addr v0, v11

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    mul-double/2addr v0, v9

    .line 112
    :goto_6f
    cmpl-double v8, v4, v2

    .line 113
    .line 114
    if-lez v8, :cond_7a

    .line 115
    .line 116
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    mul-double/2addr v4, v15

    .line 121
    sub-double/2addr v4, v11

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    mul-double/2addr v4, v9

    .line 124
    :goto_7b
    cmpl-double v2, v6, v2

    .line 125
    .line 126
    if-lez v2, :cond_86

    .line 127
    .line 128
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    mul-double/2addr v2, v15

    .line 133
    sub-double/2addr v2, v11

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    mul-double v2, v6, v9

    .line 136
    .line 137
    :goto_88
    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    mul-double/2addr v0, v6

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    long-to-int v0, v0

    .line 148
    const/4 v1, 0x0

    .line 149
    const/16 v8, 0xff

    .line 150
    .line 151
    invoke-static {v0, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    mul-double/2addr v4, v6

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    long-to-int v4, v4

    .line 161
    invoke-static {v4, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    mul-double/2addr v2, v6

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    long-to-int v2, v2

    .line 171
    invoke-static {v2, v1, v8}, Landroidx/core/graphics/ColorUtils;->constrain(III)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 11
    .param p0    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p6

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne v0, v1, :cond_40

    .line 4
    .line 5
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    div-double/2addr p0, v0

    .line 11
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    div-double/2addr p2, v0

    .line 18
    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    const-wide v0, 0x405b3883126e978dL    # 108.883

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double/2addr p4, v0

    .line 28
    invoke-static {p4, p5}, Landroidx/core/graphics/ColorUtils;->pivotXyzComponent(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide p4

    .line 32
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    .line 33
    .line 34
    mul-double/2addr v0, p2

    .line 35
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 36
    .line 37
    sub-double/2addr v0, v2

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    const/4 v2, 0x0

    .line 45
    aput-wide v0, p6, v2

    .line 46
    .line 47
    const-wide v0, 0x407f400000000000L    # 500.0

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    sub-double/2addr p0, p2

    .line 53
    mul-double/2addr p0, v0

    .line 54
    const/4 v0, 0x1

    .line 55
    aput-wide p0, p6, v0

    .line 56
    .line 57
    const-wide/high16 p0, 0x4069000000000000L    # 200.0

    .line 58
    .line 59
    sub-double/2addr p2, p4

    .line 60
    mul-double/2addr p2, p0

    .line 61
    const/4 p0, 0x2

    .line 62
    aput-wide p2, p6, p0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_40
    const-string p0, "outLab must have a length of 3."

    .line 66
    .line 67
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static blendARGB(IIF)I
    .registers 8
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, v0

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, p2

    .line 16
    add-float/2addr v2, v1

    .line 17
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    mul-float/2addr v1, v0

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, p2

    .line 29
    add-float/2addr v3, v1

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    mul-float/2addr v1, v0

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    mul-float/2addr v4, p2

    .line 42
    add-float/2addr v4, v1

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    mul-float/2addr p0, v0

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    mul-float/2addr p1, p2

    .line 55
    add-float/2addr p1, p0

    .line 56
    float-to-int p0, v2

    .line 57
    float-to-int p2, v3

    .line 58
    float-to-int v0, v4

    .line 59
    float-to-int p1, p1

    .line 60
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0
.end method

.method public static blendHSL([F[FF[F)V
    .registers 8
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne v0, v1, :cond_27

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float/2addr v0, p2

    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, p0, v1

    .line 10
    .line 11
    aget v3, p1, v1

    .line 12
    .line 13
    invoke-static {v2, v3, p2}, Landroidx/core/graphics/ColorUtils;->circularInterpolate(FFF)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v2, p3, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aget v2, p0, v1

    .line 21
    .line 22
    mul-float/2addr v2, v0

    .line 23
    aget v3, p1, v1

    .line 24
    .line 25
    mul-float/2addr v3, p2

    .line 26
    add-float/2addr v3, v2

    .line 27
    aput v3, p3, v1

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aget p0, p0, v1

    .line 31
    .line 32
    mul-float/2addr p0, v0

    .line 33
    aget p1, p1, v1

    .line 34
    .line 35
    mul-float/2addr p1, p2

    .line 36
    add-float/2addr p1, p0

    .line 37
    aput p1, p3, v1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    const-string p0, "result must have a length of 3."

    .line 41
    .line 42
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static blendLAB([D[DD[D)V
    .registers 12
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p4

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne v0, v1, :cond_26

    .line 4
    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    sub-double/2addr v0, p2

    .line 8
    const/4 v2, 0x0

    .line 9
    aget-wide v3, p0, v2

    .line 10
    .line 11
    mul-double/2addr v3, v0

    .line 12
    aget-wide v5, p1, v2

    .line 13
    .line 14
    mul-double/2addr v5, p2

    .line 15
    add-double/2addr v5, v3

    .line 16
    aput-wide v5, p4, v2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aget-wide v3, p0, v2

    .line 20
    .line 21
    mul-double/2addr v3, v0

    .line 22
    aget-wide v5, p1, v2

    .line 23
    .line 24
    mul-double/2addr v5, p2

    .line 25
    add-double/2addr v5, v3

    .line 26
    aput-wide v5, p4, v2

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    aget-wide v3, p0, v2

    .line 30
    .line 31
    mul-double/2addr v3, v0

    .line 32
    aget-wide p0, p1, v2

    .line 33
    .line 34
    mul-double/2addr p0, p2

    .line 35
    add-double/2addr p0, v3

    .line 36
    aput-wide p0, p4, v2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    const-string p0, "outResult must have a length of 3."

    .line 40
    .line 41
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static calculateContrast(II)D
    .registers 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xff

    .line 6
    .line 7
    if-ne v0, v1, :cond_2b

    .line 8
    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, v1, :cond_12

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :cond_12
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v2, 0x3fa999999999999aL    # 0.05

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    add-double/2addr v0, v2

    .line 29
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    add-double/2addr p0, v2

    .line 34
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    div-double/2addr v2, p0

    .line 43
    return-wide v2

    .line 44
    :cond_2b
    const-string p0, "background can not be translucent: #"

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, p0}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 p0, 0x0

    .line 54
    .line 55
    return-wide p0
.end method

.method public static calculateLuminance(I)D
    .registers 6
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    aget-wide v1, v0, p0

    .line 10
    .line 11
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 12
    .line 13
    div-double/2addr v1, v3

    .line 14
    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 11
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xff

    .line 6
    .line 7
    if-ne v0, v1, :cond_39

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    float-to-double v4, p2

    .line 18
    cmpg-double p2, v2, v4

    .line 19
    .line 20
    if-gez p2, :cond_17

    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 p2, 0x0

    .line 25
    move v0, p2

    .line 26
    :goto_19
    const/16 v2, 0xa

    .line 27
    .line 28
    if-gt p2, v2, :cond_38

    .line 29
    .line 30
    sub-int v2, v1, v0

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-le v2, v3, :cond_38

    .line 34
    .line 35
    add-int v2, v0, v1

    .line 36
    .line 37
    div-int/lit8 v2, v2, 0x2

    .line 38
    .line 39
    invoke-static {p0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3, p1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    cmpg-double v3, v6, v4

    .line 48
    .line 49
    if-gez v3, :cond_34

    .line 50
    .line 51
    move v0, v2

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v1, v2

    .line 54
    :goto_35
    add-int/lit8 p2, p2, 0x1

    .line 55
    .line 56
    goto :goto_19

    .line 57
    :cond_38
    return v1

    .line 58
    :cond_39
    const-string p0, "background can not be translucent: #"

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1, p0}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public static circularInterpolate(FFF)F
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sub-float v0, p1, p0

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x43340000    # 180.0f

    .line 8
    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    const/high16 v1, 0x43b40000    # 360.0f

    .line 12
    .line 13
    if-lez v0, :cond_15

    .line 14
    .line 15
    cmpl-float v0, p1, p0

    .line 16
    .line 17
    if-lez v0, :cond_14

    .line 18
    .line 19
    add-float/2addr p0, v1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    add-float/2addr p1, v1

    .line 22
    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    .line 23
    mul-float/2addr p1, p2

    .line 24
    add-float/2addr p1, p0

    .line 25
    rem-float/2addr p1, v1

    .line 26
    return p1
.end method

.method public static colorToHSL(I[F)V
    .registers 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static colorToM3HCT(I[F)V
    .registers 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/res/CamColor;->getM3HCTfromColor(I[F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 2

    .line 1
    rsub-int p1, p1, 0xff

    .line 2
    .line 3
    rsub-int p0, p0, 0xff

    .line 4
    .line 5
    mul-int/2addr p0, p1

    .line 6
    div-int/lit16 p0, p0, 0xff

    .line 7
    .line 8
    rsub-int p0, p0, 0xff

    .line 9
    .line 10
    return p0
.end method

.method public static compositeColors(II)I
    .registers 8
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p0, v1, p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public static compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;
    .registers 2
    .param p0    # Landroid/graphics/Color;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Color;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 54
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl;->compositeColors(Landroid/graphics/Color;Landroid/graphics/Color;)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method private static compositeComponent(IIIII)I
    .registers 5

    .line 1
    if-nez p4, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    mul-int/lit16 p0, p0, 0xff

    .line 6
    .line 7
    mul-int/2addr p0, p1

    .line 8
    mul-int/2addr p2, p3

    .line 9
    rsub-int p1, p1, 0xff

    .line 10
    .line 11
    mul-int/2addr p1, p2

    .line 12
    add-int/2addr p1, p0

    .line 13
    mul-int/lit16 p4, p4, 0xff

    .line 14
    .line 15
    div-int/2addr p1, p4

    .line 16
    return p1
.end method

.method private static constrain(FFF)F
    .registers 4

    .line 1
    cmpg-float v0, p0, p1

    .line 2
    .line 3
    if-gez v0, :cond_5

    .line 4
    .line 5
    return p1

    .line 6
    :cond_5
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    .line 11
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11
    .param p0    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    aget-wide v3, p1, v0

    .line 5
    .line 6
    sub-double/2addr v1, v3

    .line 7
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 8
    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/4 v2, 0x1

    .line 14
    aget-wide v5, p0, v2

    .line 15
    .line 16
    aget-wide v7, p1, v2

    .line 17
    .line 18
    sub-double/2addr v5, v7

    .line 19
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    add-double/2addr v5, v0

    .line 24
    const/4 v0, 0x2

    .line 25
    aget-wide v1, p0, v0

    .line 26
    .line 27
    aget-wide p0, p1, v0

    .line 28
    .line 29
    sub-double/2addr v1, p0

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    add-double/2addr p0, v5

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    return-wide p0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    .line 1
    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [D

    .line 8
    .line 9
    if-nez v1, :cond_10

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    new-array v1, v1, [D

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-object v1
.end method

.method private static pivotXyzComponent(D)D
    .registers 4

    .line 1
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpl-double v0, p0, v0

    .line 7
    .line 8
    if-lez v0, :cond_13

    .line 9
    .line 10
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    return-wide p0

    .line 20
    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr p0, v0

    .line 26
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 27
    .line 28
    add-double/2addr p0, v0

    .line 29
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    .line 30
    .line 31
    div-double/2addr p0, v0

    .line 32
    return-wide p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    if-ltz p1, :cond_e

    .line 2
    .line 3
    const/16 v0, 0xff

    .line 4
    .line 5
    if-gt p1, v0, :cond_e

    .line 6
    .line 7
    const v0, 0xffffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, v0

    .line 11
    shl-int/lit8 p1, p1, 0x18

    .line 12
    .line 13
    or-int/2addr p0, p1

    .line 14
    return p0

    .line 15
    :cond_e
    const-string p0, "alpha must be between 0 and 255."

    .line 16
    .line 17
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method
