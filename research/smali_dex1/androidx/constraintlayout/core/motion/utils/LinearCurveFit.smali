.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 14

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object v1, p2, v0

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    new-array v2, v1, [D

    .line 16
    .line 17
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-le v1, v2, :cond_34

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    move v3, v0

    .line 29
    move-wide v4, v1

    .line 30
    :goto_1d
    move-wide v6, v4

    .line 31
    array-length v8, p1

    .line 32
    if-ge v3, v8, :cond_32

    .line 33
    .line 34
    aget-object v8, p2, v3

    .line 35
    .line 36
    aget-wide v9, v8, v0

    .line 37
    .line 38
    if-lez v3, :cond_2e

    .line 39
    .line 40
    sub-double v4, v9, v4

    .line 41
    .line 42
    sub-double v6, v9, v6

    .line 43
    .line 44
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 45
    .line 46
    .line 47
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    move-wide v4, v9

    .line 50
    goto :goto_1d

    .line 51
    :cond_32
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 52
    .line 53
    :cond_34
    return-void
.end method

.method private getLength2D(D)D
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 15
    .line 16
    array-length v4, v1

    .line 17
    const/4 v5, 0x0

    .line 18
    aget-wide v6, v1, v5

    .line 19
    .line 20
    cmpg-double v6, p1, v6

    .line 21
    .line 22
    if-gtz v6, :cond_18

    .line 23
    .line 24
    return-wide v2

    .line 25
    :cond_18
    const/4 v6, 0x1

    .line 26
    sub-int/2addr v4, v6

    .line 27
    aget-wide v7, v1, v4

    .line 28
    .line 29
    cmpl-double v1, p1, v7

    .line 30
    .line 31
    if-ltz v1, :cond_23

    .line 32
    .line 33
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 34
    .line 35
    return-wide v1

    .line 36
    :cond_23
    move-wide v7, v2

    .line 37
    move-wide v9, v7

    .line 38
    move-wide v11, v9

    .line 39
    move v1, v5

    .line 40
    :goto_27
    if-ge v1, v4, :cond_7c

    .line 41
    .line 42
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 43
    .line 44
    aget-object v13, v13, v1

    .line 45
    .line 46
    aget-wide v14, v13, v5

    .line 47
    .line 48
    aget-wide v16, v13, v6

    .line 49
    .line 50
    if-lez v1, :cond_3c

    .line 51
    .line 52
    sub-double v9, v14, v9

    .line 53
    .line 54
    sub-double v11, v16, v11

    .line 55
    .line 56
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v9

    .line 60
    add-double/2addr v7, v9

    .line 61
    :cond_3c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 62
    .line 63
    aget-wide v10, v9, v1

    .line 64
    .line 65
    cmpl-double v12, p1, v10

    .line 66
    .line 67
    if-nez v12, :cond_45

    .line 68
    .line 69
    return-wide v7

    .line 70
    :cond_45
    add-int/lit8 v12, v1, 0x1

    .line 71
    .line 72
    aget-wide v18, v9, v12

    .line 73
    .line 74
    cmpg-double v9, p1, v18

    .line 75
    .line 76
    if-gez v9, :cond_77

    .line 77
    .line 78
    sub-double v18, v18, v10

    .line 79
    .line 80
    sub-double v2, p1, v10

    .line 81
    .line 82
    div-double v2, v2, v18

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 85
    .line 86
    aget-object v1, v4, v1

    .line 87
    .line 88
    aget-wide v9, v1, v5

    .line 89
    .line 90
    aget-object v4, v4, v12

    .line 91
    .line 92
    aget-wide v11, v4, v5

    .line 93
    .line 94
    aget-wide v18, v1, v6

    .line 95
    .line 96
    aget-wide v5, v4, v6

    .line 97
    .line 98
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 99
    .line 100
    sub-double v20, v20, v2

    .line 101
    .line 102
    mul-double v18, v18, v20

    .line 103
    .line 104
    mul-double/2addr v5, v2

    .line 105
    add-double v5, v5, v18

    .line 106
    .line 107
    sub-double v4, v16, v5

    .line 108
    .line 109
    mul-double v9, v9, v20

    .line 110
    .line 111
    mul-double/2addr v11, v2

    .line 112
    add-double/2addr v11, v9

    .line 113
    sub-double/2addr v14, v11

    .line 114
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    add-double/2addr v1, v7

    .line 119
    return-wide v1

    .line 120
    :cond_77
    move v1, v12

    .line 121
    move-wide v9, v14

    .line 122
    move-wide/from16 v11, v16

    .line 123
    .line 124
    goto :goto_27

    .line 125
    :cond_7c
    return-wide v2
.end method


# virtual methods
.method public getPos(DI)D
    .registers 12

    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 225
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    .line 226
    aget-wide v4, v0, v3

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_1c

    .line 227
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v3

    aget-wide v1, v0, p3

    sub-double/2addr p1, v4

    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v3

    :goto_19
    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    return-wide v3

    :cond_1c
    add-int/lit8 v2, v1, -0x1

    .line 228
    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_4c

    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v2

    aget-wide v1, v0, p3

    sub-double/2addr p1, v4

    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v3

    goto :goto_19

    .line 230
    :cond_30
    aget-wide v4, v0, v3

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_3d

    .line 231
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    return-wide p2

    :cond_3d
    add-int/lit8 v2, v1, -0x1

    .line 232
    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_4c

    .line 233
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v2

    aget-wide p2, p1, p3

    return-wide p2

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_7d

    .line 234
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v0, v3

    cmpl-double v2, p1, v4

    if-nez v2, :cond_5f

    .line 235
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    return-wide p2

    :cond_5f
    add-int/lit8 v2, v3, 0x1

    .line 236
    aget-wide v6, v0, v2

    cmpg-double v0, p1, v6

    if-gez v0, :cond_7b

    sub-double/2addr v6, v4

    sub-double/2addr p1, v4

    div-double/2addr p1, v6

    .line 237
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v0, v3

    aget-wide v3, v1, p3

    .line 238
    aget-object v0, v0, v2

    aget-wide v1, v0, p3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double/2addr v5, v3

    mul-double/2addr v1, p1

    add-double/2addr v1, v5

    return-wide v1

    :cond_7b
    move v3, v2

    goto :goto_4c

    :cond_7d
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 16

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 205
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 206
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_58

    .line 207
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_32

    .line 208
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    move v0, v3

    :goto_19
    if-ge v0, v2, :cond_c4

    .line 209
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v1, v3

    sub-double v6, p1, v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v1, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    aput-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_32
    add-int/lit8 v4, v1, -0x1

    .line 210
    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_81

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    :goto_3f
    if-ge v3, v2, :cond_c4

    .line 212
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v4

    aget-wide v5, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v0, v4

    sub-double v0, p1, v7

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v7, v3

    mul-double/2addr v0, v8

    add-double/2addr v0, v5

    aput-wide v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 213
    :cond_58
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_6c

    move p1, v3

    :goto_5f
    if-ge p1, v2, :cond_c4

    .line 214
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5f

    :cond_6c
    add-int/lit8 v4, v1, -0x1

    .line 215
    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_81

    :goto_74
    if-ge v3, v2, :cond_c4

    .line 216
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v4

    aget-wide v0, p1, v3

    aput-wide v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_81
    move v0, v3

    :goto_82
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_c4

    .line 217
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_9c

    move v4, v3

    :goto_8f
    if-ge v4, v2, :cond_9c

    .line 218
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    .line 219
    :cond_9c
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_c2

    .line 220
    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_ab
    if-ge v3, v2, :cond_c4

    .line 221
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 222
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v10, v6

    mul-double/2addr v8, p1

    add-double/2addr v8, v10

    .line 223
    aput-wide v8, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    :cond_c2
    move v0, v5

    goto :goto_82

    :cond_c4
    return-void
.end method

.method public getPos(D[F)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aget-object v2, v2, v3

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 11
    .line 12
    if-eqz v4, :cond_5a

    .line 13
    .line 14
    aget-wide v4, v0, v3

    .line 15
    .line 16
    cmpg-double v6, p1, v4

    .line 17
    .line 18
    if-gtz v6, :cond_33

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 21
    .line 22
    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    .line 23
    .line 24
    .line 25
    move v0, v3

    .line 26
    :goto_19
    if-ge v0, v2, :cond_ca

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 29
    .line 30
    aget-object v1, v1, v3

    .line 31
    .line 32
    aget-wide v4, v1, v0

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 35
    .line 36
    aget-wide v6, v1, v3

    .line 37
    .line 38
    sub-double v6, p1, v6

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 41
    .line 42
    aget-wide v8, v1, v0

    .line 43
    .line 44
    mul-double/2addr v6, v8

    .line 45
    add-double/2addr v6, v4

    .line 46
    double-to-float v1, v6

    .line 47
    aput v1, p3, v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_19

    .line 52
    :cond_33
    add-int/lit8 v4, v1, -0x1

    .line 53
    .line 54
    aget-wide v5, v0, v4

    .line 55
    .line 56
    cmpl-double v0, p1, v5

    .line 57
    .line 58
    if-ltz v0, :cond_85

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 61
    .line 62
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    .line 63
    .line 64
    .line 65
    :goto_40
    if-ge v3, v2, :cond_ca

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 68
    .line 69
    aget-object v0, v0, v4

    .line 70
    .line 71
    aget-wide v5, v0, v3

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 74
    .line 75
    aget-wide v7, v0, v4

    .line 76
    .line 77
    sub-double v0, p1, v7

    .line 78
    .line 79
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 80
    .line 81
    aget-wide v8, v7, v3

    .line 82
    .line 83
    mul-double/2addr v0, v8

    .line 84
    add-double/2addr v0, v5

    .line 85
    double-to-float v0, v0

    .line 86
    aput v0, p3, v3

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_40

    .line 91
    :cond_5a
    aget-wide v4, v0, v3

    .line 92
    .line 93
    cmpg-double v4, p1, v4

    .line 94
    .line 95
    if-gtz v4, :cond_6f

    .line 96
    .line 97
    move p1, v3

    .line 98
    :goto_61
    if-ge p1, v2, :cond_ca

    .line 99
    .line 100
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 101
    .line 102
    aget-object p2, p2, v3

    .line 103
    .line 104
    aget-wide v0, p2, p1

    .line 105
    .line 106
    double-to-float p2, v0

    .line 107
    aput p2, p3, p1

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    .line 111
    goto :goto_61

    .line 112
    :cond_6f
    add-int/lit8 v4, v1, -0x1

    .line 113
    .line 114
    aget-wide v5, v0, v4

    .line 115
    .line 116
    cmpl-double v0, p1, v5

    .line 117
    .line 118
    if-ltz v0, :cond_85

    .line 119
    .line 120
    :goto_77
    if-ge v3, v2, :cond_ca

    .line 121
    .line 122
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 123
    .line 124
    aget-object p1, p1, v4

    .line 125
    .line 126
    aget-wide v0, p1, v3

    .line 127
    .line 128
    double-to-float p1, v0

    .line 129
    aput p1, p3, v3

    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_77

    .line 134
    :cond_85
    move v0, v3

    .line 135
    :goto_86
    add-int/lit8 v4, v1, -0x1

    .line 136
    .line 137
    if-ge v0, v4, :cond_ca

    .line 138
    .line 139
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 140
    .line 141
    aget-wide v5, v4, v0

    .line 142
    .line 143
    cmpl-double v4, p1, v5

    .line 144
    .line 145
    if-nez v4, :cond_a1

    .line 146
    .line 147
    move v4, v3

    .line 148
    :goto_93
    if-ge v4, v2, :cond_a1

    .line 149
    .line 150
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 151
    .line 152
    aget-object v5, v5, v0

    .line 153
    .line 154
    aget-wide v6, v5, v4

    .line 155
    .line 156
    double-to-float v5, v6

    .line 157
    aput v5, p3, v4

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_93

    .line 162
    :cond_a1
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 163
    .line 164
    add-int/lit8 v5, v0, 0x1

    .line 165
    .line 166
    aget-wide v6, v4, v5

    .line 167
    .line 168
    cmpg-double v8, p1, v6

    .line 169
    .line 170
    if-gez v8, :cond_c8

    .line 171
    .line 172
    aget-wide v8, v4, v0

    .line 173
    .line 174
    sub-double/2addr v6, v8

    .line 175
    sub-double/2addr p1, v8

    .line 176
    div-double/2addr p1, v6

    .line 177
    :goto_b0
    if-ge v3, v2, :cond_ca

    .line 178
    .line 179
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 180
    .line 181
    aget-object v4, v1, v0

    .line 182
    .line 183
    aget-wide v6, v4, v3

    .line 184
    .line 185
    aget-object v1, v1, v5

    .line 186
    .line 187
    aget-wide v8, v1, v3

    .line 188
    .line 189
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 190
    .line 191
    sub-double/2addr v10, p1

    .line 192
    mul-double/2addr v10, v6

    .line 193
    mul-double/2addr v8, p1

    .line 194
    add-double/2addr v8, v10

    .line 195
    double-to-float v1, v8

    .line 196
    aput v1, p3, v3

    .line 197
    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 199
    .line 200
    goto :goto_b0

    .line 201
    :cond_c8
    move v0, v5

    .line 202
    goto :goto_86

    .line 203
    :cond_ca
    return-void
.end method

.method public getSlope(DI)D
    .registers 11

    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 68
    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_c

    :goto_a
    move-wide p1, v3

    goto :goto_15

    :cond_c
    add-int/lit8 v3, v1, -0x1

    .line 69
    aget-wide v3, v0, v3

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_15

    goto :goto_a

    :cond_15
    :goto_15
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_35

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_33

    .line 71
    aget-wide p1, v0, v2

    sub-double/2addr v4, p1

    .line 72
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p1, v2

    aget-wide v0, p2, p3

    .line 73
    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    sub-double/2addr p2, v0

    div-double/2addr p2, v4

    return-wide p2

    :cond_33
    move v2, v3

    goto :goto_15

    :cond_35
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aget-object v2, v2, v3

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    aget-wide v4, v0, v3

    .line 11
    .line 12
    cmpg-double v6, p1, v4

    .line 13
    .line 14
    if-gtz v6, :cond_11

    .line 15
    .line 16
    :goto_f
    move-wide p1, v4

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    add-int/lit8 v4, v1, -0x1

    .line 19
    .line 20
    aget-wide v4, v0, v4

    .line 21
    .line 22
    cmpl-double v0, p1, v4

    .line 23
    .line 24
    if-ltz v0, :cond_1a

    .line 25
    .line 26
    goto :goto_f

    .line 27
    :cond_1a
    :goto_1a
    move v0, v3

    .line 28
    :goto_1b
    add-int/lit8 v4, v1, -0x1

    .line 29
    .line 30
    if-ge v0, v4, :cond_41

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 33
    .line 34
    add-int/lit8 v5, v0, 0x1

    .line 35
    .line 36
    aget-wide v6, v4, v5

    .line 37
    .line 38
    cmpg-double v8, p1, v6

    .line 39
    .line 40
    if-gtz v8, :cond_3f

    .line 41
    .line 42
    aget-wide p1, v4, v0

    .line 43
    .line 44
    sub-double/2addr v6, p1

    .line 45
    :goto_2c
    if-ge v3, v2, :cond_41

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    .line 48
    .line 49
    aget-object p2, p1, v0

    .line 50
    .line 51
    aget-wide v8, p2, v3

    .line 52
    .line 53
    aget-object p1, p1, v5

    .line 54
    .line 55
    aget-wide v10, p1, v3

    .line 56
    .line 57
    sub-double/2addr v10, v8

    .line 58
    div-double/2addr v10, v6

    .line 59
    aput-wide v10, p3, v3

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_2c

    .line 64
    :cond_3f
    move v0, v5

    .line 65
    goto :goto_1b

    .line 66
    :cond_41
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 2
    .line 3
    return-object v0
.end method
