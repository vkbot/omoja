.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([[D)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->setup([[D)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    .registers 25

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    new-array v1, v0, [D

    .line 4
    .line 5
    new-array v2, v0, [D

    .line 6
    .line 7
    new-array v3, v0, [D

    .line 8
    .line 9
    add-int/lit8 v4, v0, -0x1

    .line 10
    .line 11
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    aput-wide v5, v1, v7

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    move v6, v5

    .line 18
    :goto_11
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    if-ge v6, v4, :cond_22

    .line 21
    .line 22
    add-int/lit8 v10, v6, -0x1

    .line 23
    .line 24
    aget-wide v10, v1, v10

    .line 25
    .line 26
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    .line 27
    .line 28
    sub-double/2addr v12, v10

    .line 29
    div-double/2addr v8, v12

    .line 30
    aput-wide v8, v1, v6

    .line 31
    .line 32
    add-int/lit8 v6, v6, 0x1

    .line 33
    .line 34
    goto :goto_11

    .line 35
    :cond_22
    add-int/lit8 v0, v0, -0x2

    .line 36
    .line 37
    aget-wide v10, v1, v0

    .line 38
    .line 39
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 40
    .line 41
    sub-double v10, v12, v10

    .line 42
    .line 43
    div-double/2addr v8, v10

    .line 44
    aput-wide v8, v1, v4

    .line 45
    .line 46
    aget-wide v8, p1, v5

    .line 47
    .line 48
    aget-wide v10, p1, v7

    .line 49
    .line 50
    sub-double/2addr v8, v10

    .line 51
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 52
    .line 53
    mul-double/2addr v8, v10

    .line 54
    aget-wide v14, v1, v7

    .line 55
    .line 56
    mul-double/2addr v8, v14

    .line 57
    aput-wide v8, v2, v7

    .line 58
    .line 59
    :goto_3a
    if-ge v5, v4, :cond_50

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x1

    .line 62
    .line 63
    aget-wide v8, p1, v6

    .line 64
    .line 65
    add-int/lit8 v14, v5, -0x1

    .line 66
    .line 67
    aget-wide v15, p1, v14

    .line 68
    .line 69
    sub-double/2addr v8, v15

    .line 70
    mul-double/2addr v8, v10

    .line 71
    aget-wide v14, v2, v14

    .line 72
    .line 73
    sub-double/2addr v8, v14

    .line 74
    aget-wide v14, v1, v5

    .line 75
    .line 76
    mul-double/2addr v8, v14

    .line 77
    aput-wide v8, v2, v5

    .line 78
    .line 79
    move v5, v6

    .line 80
    goto :goto_3a

    .line 81
    :cond_50
    aget-wide v5, p1, v4

    .line 82
    .line 83
    aget-wide v8, p1, v0

    .line 84
    .line 85
    sub-double/2addr v5, v8

    .line 86
    mul-double/2addr v5, v10

    .line 87
    aget-wide v8, v2, v0

    .line 88
    .line 89
    sub-double/2addr v5, v8

    .line 90
    aget-wide v8, v1, v4

    .line 91
    .line 92
    mul-double/2addr v5, v8

    .line 93
    aput-wide v5, v2, v4

    .line 94
    .line 95
    aput-wide v5, v3, v4

    .line 96
    .line 97
    :goto_60
    if-ltz v0, :cond_71

    .line 98
    .line 99
    aget-wide v5, v2, v0

    .line 100
    .line 101
    aget-wide v8, v1, v0

    .line 102
    .line 103
    add-int/lit8 v14, v0, 0x1

    .line 104
    .line 105
    aget-wide v14, v3, v14

    .line 106
    .line 107
    mul-double/2addr v8, v14

    .line 108
    sub-double/2addr v5, v8

    .line 109
    aput-wide v5, v3, v0

    .line 110
    .line 111
    add-int/lit8 v0, v0, -0x1

    .line 112
    .line 113
    goto :goto_60

    .line 114
    :cond_71
    new-array v0, v4, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 115
    .line 116
    :goto_73
    if-ge v7, v4, :cond_9b

    .line 117
    .line 118
    new-instance v14, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 119
    .line 120
    aget-wide v1, p1, v7

    .line 121
    .line 122
    double-to-float v5, v1

    .line 123
    float-to-double v5, v5

    .line 124
    aget-wide v17, v3, v7

    .line 125
    .line 126
    add-int/lit8 v8, v7, 0x1

    .line 127
    .line 128
    aget-wide v15, p1, v8

    .line 129
    .line 130
    sub-double v19, v15, v1

    .line 131
    .line 132
    mul-double v19, v19, v10

    .line 133
    .line 134
    mul-double v21, v17, v12

    .line 135
    .line 136
    sub-double v19, v19, v21

    .line 137
    .line 138
    aget-wide v21, v3, v8

    .line 139
    .line 140
    sub-double v19, v19, v21

    .line 141
    .line 142
    sub-double/2addr v1, v15

    .line 143
    mul-double/2addr v1, v12

    .line 144
    add-double v1, v1, v17

    .line 145
    .line 146
    add-double v21, v1, v21

    .line 147
    .line 148
    move-wide v15, v5

    .line 149
    invoke-direct/range {v14 .. v22}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    .line 150
    .line 151
    .line 152
    aput-object v14, v0, v7

    .line 153
    .line 154
    move v7, v8

    .line 155
    goto :goto_73

    .line 156
    :cond_9b
    return-object v0
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D
    .registers 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v2, v1, [D

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    move-wide v5, v3

    .line 9
    move-wide v7, v5

    .line 10
    :goto_9
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    cmpg-double v11, v5, v9

    .line 13
    .line 14
    const/4 v12, 0x0

    .line 15
    if-gez v11, :cond_33

    .line 16
    .line 17
    move-wide v9, v3

    .line 18
    :goto_11
    if-ge v12, v1, :cond_23

    .line 19
    .line 20
    aget-wide v13, v2, v12

    .line 21
    .line 22
    aget-object v11, v0, v12

    .line 23
    .line 24
    invoke-virtual {v11, v5, v6}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v15

    .line 28
    aput-wide v15, v2, v12

    .line 29
    .line 30
    sub-double/2addr v13, v15

    .line 31
    mul-double/2addr v13, v13

    .line 32
    add-double/2addr v9, v13

    .line 33
    add-int/lit8 v12, v12, 0x1

    .line 34
    .line 35
    goto :goto_11

    .line 36
    :cond_23
    cmpl-double v11, v5, v3

    .line 37
    .line 38
    if-lez v11, :cond_2c

    .line 39
    .line 40
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    add-double/2addr v7, v9

    .line 45
    :cond_2c
    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    add-double/2addr v5, v9

    .line 51
    goto :goto_9

    .line 52
    :cond_33
    :goto_33
    if-ge v12, v1, :cond_45

    .line 53
    .line 54
    aget-wide v5, v2, v12

    .line 55
    .line 56
    aget-object v11, v0, v12

    .line 57
    .line 58
    invoke-virtual {v11, v9, v10}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v13

    .line 62
    aput-wide v13, v2, v12

    .line 63
    .line 64
    sub-double/2addr v5, v13

    .line 65
    mul-double/2addr v5, v5

    .line 66
    add-double/2addr v3, v5

    .line 67
    add-int/lit8 v12, v12, 0x1

    .line 68
    .line 69
    goto :goto_33

    .line 70
    :cond_45
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    add-double/2addr v0, v7

    .line 75
    return-wide v0
.end method

.method public getPos(DI)D
    .registers 9

    .line 53
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    .line 54
    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_15

    aget-wide v2, v1, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_15

    sub-double/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 55
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object p3, v2, p3

    aget-object p3, p3, v0

    aget-wide v0, v1, v0

    div-double/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 10

    .line 49
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    .line 50
    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_16

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_16

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 51
    :cond_16
    :goto_16
    array-length v2, p3

    if-ge v0, v2, :cond_2e

    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    return-void
.end method

.method public getPos(D[F)V
    .registers 10

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 2
    .line 3
    mul-double/2addr p1, v0

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    add-int/lit8 v3, v3, -0x1

    .line 10
    .line 11
    if-ge v1, v3, :cond_16

    .line 12
    .line 13
    aget-wide v3, v2, v1

    .line 14
    .line 15
    cmpg-double v2, v3, p1

    .line 16
    .line 17
    if-gez v2, :cond_16

    .line 18
    .line 19
    sub-double/2addr p1, v3

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_5

    .line 23
    :cond_16
    :goto_16
    array-length v2, p3

    .line 24
    if-ge v0, v2, :cond_2f

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 27
    .line 28
    aget-object v2, v2, v0

    .line 29
    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 33
    .line 34
    aget-wide v4, v3, v1

    .line 35
    .line 36
    div-double v3, p1, v4

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    double-to-float v2, v2

    .line 43
    aput v2, p3, v0

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_16

    .line 48
    :cond_2f
    return-void
.end method

.method public getVelocity(D[D)V
    .registers 10

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 2
    .line 3
    mul-double/2addr p1, v0

    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    add-int/lit8 v3, v3, -0x1

    .line 10
    .line 11
    if-ge v1, v3, :cond_16

    .line 12
    .line 13
    aget-wide v3, v2, v1

    .line 14
    .line 15
    cmpg-double v2, v3, p1

    .line 16
    .line 17
    if-gez v2, :cond_16

    .line 18
    .line 19
    sub-double/2addr p1, v3

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_5

    .line 23
    :cond_16
    :goto_16
    array-length v2, p3

    .line 24
    if-ge v0, v2, :cond_2e

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 27
    .line 28
    aget-object v2, v2, v0

    .line 29
    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 33
    .line 34
    aget-wide v4, v3, v1

    .line 35
    .line 36
    div-double v3, p1, v4

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->vel(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    aput-wide v2, p3, v0

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_16

    .line 47
    :cond_2e
    return-void
.end method

.method public setup([[D)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    aput v2, v3, v4

    .line 15
    .line 16
    aput v1, v3, v0

    .line 17
    .line 18
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [[D

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 27
    .line 28
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 29
    .line 30
    new-array v1, v1, [[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 31
    .line 32
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 33
    .line 34
    move v1, v0

    .line 35
    :goto_22
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 36
    .line 37
    if-ge v1, v2, :cond_3b

    .line 38
    .line 39
    move v2, v0

    .line 40
    :goto_27
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    .line 41
    .line 42
    if-ge v2, v3, :cond_38

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 45
    .line 46
    aget-object v3, v3, v1

    .line 47
    .line 48
    aget-object v5, p1, v2

    .line 49
    .line 50
    aget-wide v6, v5, v1

    .line 51
    .line 52
    aput-wide v6, v3, v2

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_27

    .line 57
    :cond_38
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_22

    .line 60
    :cond_3b
    move p1, v0

    .line 61
    :goto_3c
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 62
    .line 63
    if-ge p1, v1, :cond_50

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 68
    .line 69
    aget-object v2, v2, p1

    .line 70
    .line 71
    array-length v3, v2

    .line 72
    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    aput-object v2, v1, p1

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    goto :goto_3c

    .line 81
    :cond_50
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    .line 82
    .line 83
    sub-int/2addr p1, v4

    .line 84
    new-array p1, p1, [D

    .line 85
    .line 86
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 87
    .line 88
    const-wide/16 v2, 0x0

    .line 89
    .line 90
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 91
    .line 92
    new-array p1, v1, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 93
    .line 94
    move v1, v0

    .line 95
    :goto_5e
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 96
    .line 97
    array-length v2, v2

    .line 98
    if-ge v1, v2, :cond_83

    .line 99
    .line 100
    move v2, v0

    .line 101
    :goto_64
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 102
    .line 103
    if-ge v2, v3, :cond_73

    .line 104
    .line 105
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    .line 106
    .line 107
    aget-object v3, v3, v2

    .line 108
    .line 109
    aget-object v3, v3, v1

    .line 110
    .line 111
    aput-object v3, p1, v2

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_64

    .line 116
    :cond_73
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 117
    .line 118
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    aput-wide v5, v4, v1

    .line 125
    .line 126
    add-double/2addr v2, v5

    .line 127
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_5e

    .line 132
    :cond_83
    return-void
.end method
