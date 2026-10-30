.class public Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTangent:[[D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    .line 12
    .line 13
    array-length v4, v1

    .line 14
    const/4 v5, 0x0

    .line 15
    aget-object v6, v2, v5

    .line 16
    .line 17
    array-length v6, v6

    .line 18
    new-array v7, v6, [D

    .line 19
    .line 20
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    .line 21
    .line 22
    add-int/lit8 v7, v4, -0x1

    .line 23
    .line 24
    const/4 v8, 0x2

    .line 25
    new-array v9, v8, [I

    .line 26
    .line 27
    aput v6, v9, v3

    .line 28
    .line 29
    aput v7, v9, v5

    .line 30
    .line 31
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, [[D

    .line 38
    .line 39
    new-array v11, v8, [I

    .line 40
    .line 41
    aput v6, v11, v3

    .line 42
    .line 43
    aput v4, v11, v5

    .line 44
    .line 45
    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, [[D

    .line 50
    .line 51
    move v10, v5

    .line 52
    :goto_0
    if-ge v10, v6, :cond_2

    .line 53
    .line 54
    move v11, v5

    .line 55
    :goto_1
    if-ge v11, v7, :cond_1

    .line 56
    .line 57
    add-int/lit8 v12, v11, 0x1

    .line 58
    .line 59
    aget-wide v13, v1, v12

    .line 60
    .line 61
    aget-wide v15, v1, v11

    .line 62
    .line 63
    sub-double/2addr v13, v15

    .line 64
    aget-object v15, v9, v11

    .line 65
    .line 66
    aget-object v16, v2, v12

    .line 67
    .line 68
    aget-wide v17, v16, v10

    .line 69
    .line 70
    aget-object v16, v2, v11

    .line 71
    .line 72
    aget-wide v19, v16, v10

    .line 73
    .line 74
    sub-double v17, v17, v19

    .line 75
    .line 76
    div-double v17, v17, v13

    .line 77
    .line 78
    aput-wide v17, v15, v10

    .line 79
    .line 80
    if-nez v11, :cond_0

    .line 81
    .line 82
    aget-object v11, v3, v11

    .line 83
    .line 84
    aput-wide v17, v11, v10

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_0
    aget-object v13, v3, v11

    .line 88
    .line 89
    add-int/lit8 v11, v11, -0x1

    .line 90
    .line 91
    aget-object v11, v9, v11

    .line 92
    .line 93
    aget-wide v14, v11, v10

    .line 94
    .line 95
    add-double v14, v14, v17

    .line 96
    .line 97
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 98
    .line 99
    mul-double v14, v14, v16

    .line 100
    .line 101
    aput-wide v14, v13, v10

    .line 102
    .line 103
    :goto_2
    move v11, v12

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    aget-object v11, v3, v7

    .line 106
    .line 107
    add-int/lit8 v12, v4, -0x2

    .line 108
    .line 109
    aget-object v12, v9, v12

    .line 110
    .line 111
    aget-wide v13, v12, v10

    .line 112
    .line 113
    aput-wide v13, v11, v10

    .line 114
    .line 115
    add-int/lit8 v10, v10, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    move v4, v5

    .line 119
    :goto_3
    if-ge v4, v7, :cond_6

    .line 120
    .line 121
    move v8, v5

    .line 122
    :goto_4
    if-ge v8, v6, :cond_5

    .line 123
    .line 124
    aget-object v10, v9, v4

    .line 125
    .line 126
    aget-wide v11, v10, v8

    .line 127
    .line 128
    const-wide/16 v13, 0x0

    .line 129
    .line 130
    cmpl-double v10, v11, v13

    .line 131
    .line 132
    if-nez v10, :cond_3

    .line 133
    .line 134
    aget-object v10, v3, v4

    .line 135
    .line 136
    aput-wide v13, v10, v8

    .line 137
    .line 138
    add-int/lit8 v10, v4, 0x1

    .line 139
    .line 140
    aget-object v10, v3, v10

    .line 141
    .line 142
    aput-wide v13, v10, v8

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_3
    aget-object v10, v3, v4

    .line 146
    .line 147
    aget-wide v13, v10, v8

    .line 148
    .line 149
    div-double/2addr v13, v11

    .line 150
    add-int/lit8 v10, v4, 0x1

    .line 151
    .line 152
    aget-object v15, v3, v10

    .line 153
    .line 154
    aget-wide v16, v15, v8

    .line 155
    .line 156
    div-double v11, v16, v11

    .line 157
    .line 158
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 159
    .line 160
    .line 161
    move-result-wide v15

    .line 162
    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    .line 163
    .line 164
    cmpl-double v17, v15, v17

    .line 165
    .line 166
    if-lez v17, :cond_4

    .line 167
    .line 168
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    .line 169
    .line 170
    div-double v17, v17, v15

    .line 171
    .line 172
    aget-object v15, v3, v4

    .line 173
    .line 174
    mul-double v13, v13, v17

    .line 175
    .line 176
    aget-object v16, v9, v4

    .line 177
    .line 178
    aget-wide v19, v16, v8

    .line 179
    .line 180
    mul-double v13, v13, v19

    .line 181
    .line 182
    aput-wide v13, v15, v8

    .line 183
    .line 184
    aget-object v10, v3, v10

    .line 185
    .line 186
    mul-double v17, v17, v11

    .line 187
    .line 188
    aget-wide v11, v16, v8

    .line 189
    .line 190
    mul-double v17, v17, v11

    .line 191
    .line 192
    aput-wide v17, v10, v8

    .line 193
    .line 194
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 201
    .line 202
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 203
    .line 204
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    .line 205
    .line 206
    return-void
.end method

.method public static buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 8

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    const/16 v1, 0x28

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2c

    .line 89
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 90
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    .line 91
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v4

    add-int/lit8 v1, v3, 0x1

    .line 92
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v4, v5

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    .line 93
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 94
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v4, 0x1

    .line 95
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 96
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    invoke-static {p0}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object p0

    return-object p0
.end method

.method private static buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    sub-int/2addr v1, v2

    .line 8
    array-length v3, v0

    .line 9
    const/4 v4, 0x1

    .line 10
    sub-int/2addr v3, v4

    .line 11
    int-to-double v5, v3

    .line 12
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    div-double v5, v7, v5

    .line 15
    .line 16
    new-array v2, v2, [I

    .line 17
    .line 18
    aput v4, v2, v4

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput v1, v2, v4

    .line 22
    .line 23
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, [[D

    .line 30
    .line 31
    new-array v1, v1, [D

    .line 32
    .line 33
    move v9, v4

    .line 34
    :goto_0
    array-length v10, v0

    .line 35
    if-ge v9, v10, :cond_1

    .line 36
    .line 37
    aget-wide v10, v0, v9

    .line 38
    .line 39
    add-int v12, v9, v3

    .line 40
    .line 41
    aget-object v13, v2, v12

    .line 42
    .line 43
    aput-wide v10, v13, v4

    .line 44
    .line 45
    int-to-double v13, v9

    .line 46
    mul-double/2addr v13, v5

    .line 47
    aput-wide v13, v1, v12

    .line 48
    .line 49
    if-lez v9, :cond_0

    .line 50
    .line 51
    mul-int/lit8 v12, v3, 0x2

    .line 52
    .line 53
    add-int/2addr v12, v9

    .line 54
    aget-object v15, v2, v12

    .line 55
    .line 56
    add-double v16, v10, v7

    .line 57
    .line 58
    aput-wide v16, v15, v4

    .line 59
    .line 60
    add-double v15, v13, v7

    .line 61
    .line 62
    aput-wide v15, v1, v12

    .line 63
    .line 64
    add-int/lit8 v12, v9, -0x1

    .line 65
    .line 66
    aget-object v15, v2, v12

    .line 67
    .line 68
    sub-double/2addr v10, v7

    .line 69
    sub-double/2addr v10, v5

    .line 70
    aput-wide v10, v15, v4

    .line 71
    .line 72
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 73
    .line 74
    add-double/2addr v13, v10

    .line 75
    sub-double/2addr v13, v5

    .line 76
    aput-wide v13, v1, v12

    .line 77
    .line 78
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method private static diff(DDDDDD)D
    .locals 10

    .line 1
    mul-double v0, p2, p2

    .line 2
    .line 3
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    .line 4
    .line 5
    mul-double/2addr v2, v0

    .line 6
    mul-double v2, v2, p6

    .line 7
    .line 8
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    .line 9
    .line 10
    mul-double v6, p2, v4

    .line 11
    .line 12
    mul-double v8, v6, p6

    .line 13
    .line 14
    add-double/2addr v8, v2

    .line 15
    mul-double/2addr v4, v0

    .line 16
    mul-double/2addr v4, p4

    .line 17
    add-double/2addr v4, v8

    .line 18
    mul-double/2addr v6, p4

    .line 19
    sub-double/2addr v4, v6

    .line 20
    const-wide/high16 p4, 0x4008000000000000L    # 3.0

    .line 21
    .line 22
    mul-double/2addr p4, p0

    .line 23
    mul-double v2, p4, p10

    .line 24
    .line 25
    mul-double/2addr v2, v0

    .line 26
    add-double/2addr v2, v4

    .line 27
    mul-double p4, p4, p8

    .line 28
    .line 29
    mul-double/2addr p4, v0

    .line 30
    add-double/2addr p4, v2

    .line 31
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 32
    .line 33
    mul-double/2addr v0, p0

    .line 34
    mul-double v0, v0, p10

    .line 35
    .line 36
    mul-double/2addr v0, p2

    .line 37
    sub-double/2addr p4, v0

    .line 38
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 39
    .line 40
    mul-double/2addr v0, p0

    .line 41
    mul-double v0, v0, p8

    .line 42
    .line 43
    mul-double/2addr v0, p2

    .line 44
    sub-double/2addr p4, v0

    .line 45
    mul-double p0, p0, p8

    .line 46
    .line 47
    add-double/2addr p0, p4

    .line 48
    return-wide p0
.end method

.method private static interpolate(DDDDDD)D
    .locals 12

    .line 1
    mul-double v0, p2, p2

    .line 2
    .line 3
    mul-double v2, v0, p2

    .line 4
    .line 5
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    .line 6
    .line 7
    mul-double/2addr v4, v2

    .line 8
    mul-double v4, v4, p6

    .line 9
    .line 10
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 11
    .line 12
    mul-double/2addr v6, v0

    .line 13
    mul-double v8, v6, p6

    .line 14
    .line 15
    add-double/2addr v8, v4

    .line 16
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 17
    .line 18
    mul-double v10, v2, v4

    .line 19
    .line 20
    mul-double v10, v10, p4

    .line 21
    .line 22
    add-double/2addr v10, v8

    .line 23
    mul-double v6, v6, p4

    .line 24
    .line 25
    sub-double/2addr v10, v6

    .line 26
    add-double v10, v10, p4

    .line 27
    .line 28
    mul-double v6, p0, p10

    .line 29
    .line 30
    mul-double v8, v6, v2

    .line 31
    .line 32
    add-double/2addr v8, v10

    .line 33
    mul-double v10, p0, p8

    .line 34
    .line 35
    mul-double/2addr v2, v10

    .line 36
    add-double/2addr v2, v8

    .line 37
    mul-double/2addr v6, v0

    .line 38
    sub-double/2addr v2, v6

    .line 39
    mul-double/2addr p0, v4

    .line 40
    mul-double p0, p0, p8

    .line 41
    .line 42
    mul-double/2addr p0, v0

    .line 43
    sub-double/2addr v2, p0

    .line 44
    mul-double/2addr v10, p2

    .line 45
    add-double/2addr v10, v2

    .line 46
    return-wide v10
.end method


# virtual methods
.method public getPos(DI)D
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 239
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v3, v2

    .line 240
    iget-boolean v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 241
    aget-wide v6, v2, v5

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_0

    .line 242
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v5

    aget-wide v3, v2, v1

    sub-double v8, p1, v6

    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v1

    mul-double/2addr v1, v8

    add-double/2addr v1, v3

    return-wide v1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    .line 243
    aget-wide v6, v2, v4

    cmpl-double v2, p1, v6

    if-ltz v2, :cond_3

    .line 244
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v3, v2, v1

    sub-double v8, p1, v6

    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v1

    mul-double/2addr v1, v8

    add-double/2addr v1, v3

    return-wide v1

    .line 245
    :cond_1
    aget-wide v6, v2, v5

    cmpg-double v4, p1, v6

    if-gtz v4, :cond_2

    .line 246
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v5

    aget-wide v1, v2, v1

    return-wide v1

    :cond_2
    add-int/lit8 v4, v3, -0x1

    .line 247
    aget-wide v6, v2, v4

    cmpl-double v2, p1, v6

    if-ltz v2, :cond_3

    .line 248
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v1, v2, v1

    return-wide v1

    :cond_3
    :goto_0
    add-int/lit8 v2, v3, -0x1

    if-ge v5, v2, :cond_6

    .line 249
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v6, v2, v5

    cmpl-double v4, p1, v6

    if-nez v4, :cond_4

    .line 250
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v5

    aget-wide v1, v2, v1

    return-wide v1

    :cond_4
    add-int/lit8 v4, v5, 0x1

    .line 251
    aget-wide v8, v2, v4

    cmpg-double v2, p1, v8

    if-gez v2, :cond_5

    sub-double v10, v8, v6

    sub-double v2, p1, v6

    div-double v12, v2, v10

    .line 252
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v3, v2, v5

    aget-wide v14, v3, v1

    .line 253
    aget-object v2, v2, v4

    aget-wide v16, v2, v1

    .line 254
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v3, v2, v5

    aget-wide v18, v3, v1

    .line 255
    aget-object v2, v2, v4

    aget-wide v20, v2, v1

    .line 256
    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v1

    return-wide v1

    :cond_5
    move v5, v4

    goto :goto_0

    :cond_6
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getPos(D[D)V
    .locals 23

    move-object/from16 v0, p0

    .line 217
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 218
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 219
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    if-eqz v5, :cond_1

    .line 220
    aget-wide v5, v1, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_0

    .line 221
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_6

    .line 222
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v1

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v7, v2, v4

    sub-double v7, p1, v7

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v9, v2, v1

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    aput-wide v7, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v2, -0x1

    .line 223
    aget-wide v6, v1, v5

    cmpl-double v1, p1, v6

    if-ltz v1, :cond_3

    .line 224
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    :goto_1
    if-ge v4, v3, :cond_6

    .line 225
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v4

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v8, v1, v5

    sub-double v1, p1, v8

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    aget-wide v9, v8, v4

    mul-double/2addr v1, v9

    add-double/2addr v1, v6

    aput-wide v1, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 226
    :cond_1
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_2

    move v1, v4

    :goto_2
    if-ge v1, v3, :cond_6

    .line 227
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v1

    aput-wide v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v2, -0x1

    .line 228
    aget-wide v6, v1, v5

    cmpl-double v1, p1, v6

    if-ltz v1, :cond_3

    :goto_3
    if-ge v4, v3, :cond_6

    .line 229
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v4

    aput-wide v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_4
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_6

    .line 230
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v6, v5, v1

    cmpl-double v5, p1, v6

    if-nez v5, :cond_4

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_4

    .line 231
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v5

    aput-wide v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 232
    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v5, v6

    cmpg-double v9, p1, v7

    if-gez v9, :cond_5

    .line 233
    aget-wide v9, v5, v1

    sub-double v11, v7, v9

    sub-double v7, p1, v9

    div-double v13, v7, v11

    :goto_6
    if-ge v4, v3, :cond_6

    .line 234
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v2, v1

    aget-wide v15, v5, v4

    .line 235
    aget-object v2, v2, v6

    aget-wide v17, v2, v4

    .line 236
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v5, v2, v1

    aget-wide v19, v5, v4

    .line 237
    aget-object v2, v2, v6

    aget-wide v21, v2, v4

    .line 238
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v7

    aput-wide v7, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    move v1, v6

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getPos(D[F)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v3, v3, v4

    .line 10
    .line 11
    array-length v3, v3

    .line 12
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    aget-wide v5, v1, v4

    .line 17
    .line 18
    cmpg-double v7, p1, v5

    .line 19
    .line 20
    if-gtz v7, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    .line 23
    .line 24
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    .line 25
    .line 26
    .line 27
    move v1, v4

    .line 28
    :goto_0
    if-ge v1, v3, :cond_6

    .line 29
    .line 30
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 31
    .line 32
    aget-object v2, v2, v4

    .line 33
    .line 34
    aget-wide v5, v2, v1

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 37
    .line 38
    aget-wide v7, v2, v4

    .line 39
    .line 40
    sub-double v7, p1, v7

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    .line 43
    .line 44
    aget-wide v9, v2, v1

    .line 45
    .line 46
    mul-double/2addr v7, v9

    .line 47
    add-double/2addr v7, v5

    .line 48
    double-to-float v2, v7

    .line 49
    aput v2, p3, v1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    add-int/lit8 v5, v2, -0x1

    .line 55
    .line 56
    aget-wide v6, v1, v5

    .line 57
    .line 58
    cmpl-double v1, p1, v6

    .line 59
    .line 60
    if-ltz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    .line 63
    .line 64
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    .line 65
    .line 66
    .line 67
    :goto_1
    if-ge v4, v3, :cond_6

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 70
    .line 71
    aget-object v1, v1, v5

    .line 72
    .line 73
    aget-wide v6, v1, v4

    .line 74
    .line 75
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 76
    .line 77
    aget-wide v8, v1, v5

    .line 78
    .line 79
    sub-double v1, p1, v8

    .line 80
    .line 81
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    .line 82
    .line 83
    aget-wide v9, v8, v4

    .line 84
    .line 85
    mul-double/2addr v1, v9

    .line 86
    add-double/2addr v1, v6

    .line 87
    double-to-float v1, v1

    .line 88
    aput v1, p3, v4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    aget-wide v5, v1, v4

    .line 94
    .line 95
    cmpg-double v5, p1, v5

    .line 96
    .line 97
    if-gtz v5, :cond_2

    .line 98
    .line 99
    move v1, v4

    .line 100
    :goto_2
    if-ge v1, v3, :cond_6

    .line 101
    .line 102
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 103
    .line 104
    aget-object v2, v2, v4

    .line 105
    .line 106
    aget-wide v5, v2, v1

    .line 107
    .line 108
    double-to-float v2, v5

    .line 109
    aput v2, p3, v1

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v5, v2, -0x1

    .line 115
    .line 116
    aget-wide v6, v1, v5

    .line 117
    .line 118
    cmpl-double v1, p1, v6

    .line 119
    .line 120
    if-ltz v1, :cond_3

    .line 121
    .line 122
    :goto_3
    if-ge v4, v3, :cond_6

    .line 123
    .line 124
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 125
    .line 126
    aget-object v1, v1, v5

    .line 127
    .line 128
    aget-wide v6, v1, v4

    .line 129
    .line 130
    double-to-float v1, v6

    .line 131
    aput v1, p3, v4

    .line 132
    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    move v1, v4

    .line 137
    :goto_4
    add-int/lit8 v5, v2, -0x1

    .line 138
    .line 139
    if-ge v1, v5, :cond_6

    .line 140
    .line 141
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 142
    .line 143
    aget-wide v6, v5, v1

    .line 144
    .line 145
    cmpl-double v5, p1, v6

    .line 146
    .line 147
    if-nez v5, :cond_4

    .line 148
    .line 149
    move v5, v4

    .line 150
    :goto_5
    if-ge v5, v3, :cond_4

    .line 151
    .line 152
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 153
    .line 154
    aget-object v6, v6, v1

    .line 155
    .line 156
    aget-wide v7, v6, v5

    .line 157
    .line 158
    double-to-float v6, v7

    .line 159
    aput v6, p3, v5

    .line 160
    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 165
    .line 166
    add-int/lit8 v6, v1, 0x1

    .line 167
    .line 168
    aget-wide v7, v5, v6

    .line 169
    .line 170
    cmpg-double v9, p1, v7

    .line 171
    .line 172
    if-gez v9, :cond_5

    .line 173
    .line 174
    aget-wide v9, v5, v1

    .line 175
    .line 176
    sub-double v11, v7, v9

    .line 177
    .line 178
    sub-double v7, p1, v9

    .line 179
    .line 180
    div-double v13, v7, v11

    .line 181
    .line 182
    :goto_6
    if-ge v4, v3, :cond_6

    .line 183
    .line 184
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 185
    .line 186
    aget-object v5, v2, v1

    .line 187
    .line 188
    aget-wide v15, v5, v4

    .line 189
    .line 190
    aget-object v2, v2, v6

    .line 191
    .line 192
    aget-wide v17, v2, v4

    .line 193
    .line 194
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    .line 195
    .line 196
    aget-object v5, v2, v1

    .line 197
    .line 198
    aget-wide v19, v5, v4

    .line 199
    .line 200
    aget-object v2, v2, v6

    .line 201
    .line 202
    aget-wide v21, v2, v4

    .line 203
    .line 204
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    .line 205
    .line 206
    .line 207
    move-result-wide v7

    .line 208
    double-to-float v2, v7

    .line 209
    aput v2, p3, v4

    .line 210
    .line 211
    add-int/lit8 v4, v4, 0x1

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_5
    move v1, v6

    .line 215
    goto :goto_4

    .line 216
    :cond_6
    return-void
.end method

.method public getSlope(DI)D
    .locals 23

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 88
    aget-wide v4, v1, v3

    cmpg-double v6, p1, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 89
    aget-wide v4, v1, v4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-ge v3, v1, :cond_3

    .line 90
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, v1, v6

    cmpg-double v9, v4, v7

    if-gtz v9, :cond_2

    .line 91
    aget-wide v9, v1, v3

    sub-double v11, v7, v9

    sub-double/2addr v4, v9

    div-double v13, v4, v11

    .line 92
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v1, v3

    aget-wide v15, v2, p3

    .line 93
    aget-object v1, v1, v6

    aget-wide v17, v1, p3

    .line 94
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v2, v1, v3

    aget-wide v19, v2, p3

    .line 95
    aget-object v1, v1, v6

    aget-wide v21, v1, p3

    .line 96
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v1

    div-double/2addr v1, v11

    return-wide v1

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getSlope(D[D)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v3, v3, v4

    .line 10
    .line 11
    array-length v3, v3

    .line 12
    aget-wide v5, v1, v4

    .line 13
    .line 14
    cmpg-double v7, p1, v5

    .line 15
    .line 16
    if-gtz v7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v5, v2, -0x1

    .line 20
    .line 21
    aget-wide v5, v1, v5

    .line 22
    .line 23
    cmpl-double v1, p1, v5

    .line 24
    .line 25
    if-ltz v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-wide/from16 v5, p1

    .line 29
    .line 30
    :goto_0
    move v1, v4

    .line 31
    :goto_1
    add-int/lit8 v7, v2, -0x1

    .line 32
    .line 33
    if-ge v1, v7, :cond_3

    .line 34
    .line 35
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 36
    .line 37
    add-int/lit8 v8, v1, 0x1

    .line 38
    .line 39
    aget-wide v9, v7, v8

    .line 40
    .line 41
    cmpg-double v11, v5, v9

    .line 42
    .line 43
    if-gtz v11, :cond_2

    .line 44
    .line 45
    aget-wide v11, v7, v1

    .line 46
    .line 47
    sub-double v13, v9, v11

    .line 48
    .line 49
    sub-double/2addr v5, v11

    .line 50
    div-double v15, v5, v13

    .line 51
    .line 52
    :goto_2
    if-ge v4, v3, :cond_3

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 55
    .line 56
    aget-object v5, v2, v1

    .line 57
    .line 58
    aget-wide v17, v5, v4

    .line 59
    .line 60
    aget-object v2, v2, v8

    .line 61
    .line 62
    aget-wide v19, v2, v4

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    .line 65
    .line 66
    aget-object v5, v2, v1

    .line 67
    .line 68
    aget-wide v21, v5, v4

    .line 69
    .line 70
    aget-object v2, v2, v8

    .line 71
    .line 72
    aget-wide v23, v2, v4

    .line 73
    .line 74
    invoke-static/range {v13 .. v24}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    div-double/2addr v5, v13

    .line 79
    aput-wide v5, p3, v4

    .line 80
    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v1, v8

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    .line 2
    .line 3
    return-object v0
.end method
