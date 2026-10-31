.class public abstract Lu6/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x4

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lu6/a;->a:[I

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    const/4 v1, 0x3

    .line 13
    const/4 v2, 0x6

    .line 14
    const/4 v3, 0x2

    .line 15
    filled-new-array {v2, v3, v0, v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lu6/a;->b:[I

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    fill-array-data v0, :array_28

    .line 26
    .line 27
    .line 28
    sput-object v0, Lu6/a;->c:[I

    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    new-array v0, v0, [I

    .line 33
    .line 34
    fill-array-data v0, :array_3c

    .line 35
    .line 36
    .line 37
    sput-object v0, Lu6/a;->d:[I

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

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
    :array_3c
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method public static a(Lf6/b;)Ljava/util/ArrayList;
    .registers 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v2, p0, Lf6/b;->c:I

    .line 7
    .line 8
    if-lez v2, :cond_53

    .line 9
    .line 10
    iget v3, p0, Lf6/b;->b:I

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v7, v1, [Lz5/o;

    .line 15
    .line 16
    sget-object v6, Lu6/a;->c:[I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v1, p0

    .line 21
    invoke-static/range {v1 .. v6}, Lu6/a;->c(Lf6/b;IIII[I)[Lz5/o;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v8, 0x0

    .line 26
    move v6, v8

    .line 27
    :goto_1a
    const/4 v9, 0x4

    .line 28
    if-ge v6, v9, :cond_28

    .line 29
    .line 30
    sget-object v9, Lu6/a;->a:[I

    .line 31
    .line 32
    aget v9, v9, v6

    .line 33
    .line 34
    aget-object v10, p0, v6

    .line 35
    .line 36
    aput-object v10, v7, v9

    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_1a

    .line 41
    :cond_28
    aget-object p0, v7, v9

    .line 42
    .line 43
    if-eqz p0, :cond_32

    .line 44
    .line 45
    iget v4, p0, Lz5/o;->a:F

    .line 46
    .line 47
    float-to-int v5, v4

    .line 48
    iget p0, p0, Lz5/o;->b:F

    .line 49
    .line 50
    float-to-int v4, p0

    .line 51
    :cond_32
    sget-object v6, Lu6/a;->d:[I

    .line 52
    .line 53
    invoke-static/range {v1 .. v6}, Lu6/a;->c(Lf6/b;IIII[I)[Lz5/o;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    move v1, v8

    .line 58
    :goto_39
    if-ge v1, v9, :cond_46

    .line 59
    .line 60
    sget-object v2, Lu6/a;->b:[I

    .line 61
    .line 62
    aget v2, v2, v1

    .line 63
    .line 64
    aget-object v3, p0, v1

    .line 65
    .line 66
    aput-object v3, v7, v2

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_39

    .line 71
    :cond_46
    aget-object p0, v7, v8

    .line 72
    .line 73
    if-nez p0, :cond_50

    .line 74
    .line 75
    const/4 p0, 0x3

    .line 76
    aget-object p0, v7, p0

    .line 77
    .line 78
    if-nez p0, :cond_50

    .line 79
    .line 80
    goto :goto_53

    .line 81
    :cond_50
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_53
    :goto_53
    return-object v0
.end method

.method public static b(Lf6/b;III[I[I)[I
    .registers 14

    .line 1
    array-length v0, p5

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p5, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    .line 5
    .line 6
    move v0, v1

    .line 7
    :goto_6
    invoke-virtual {p0, p1, p2}, Lf6/b;->b(II)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_17

    .line 12
    .line 13
    if-lez p1, :cond_17

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-ge v0, v3, :cond_17

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    array-length v0, p4

    .line 25
    move v2, p1

    .line 26
    move v3, v1

    .line 27
    move v4, v3

    .line 28
    :goto_1b
    const v5, 0x3ed70a3d    # 0.42f

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-ge p1, p3, :cond_5a

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lf6/b;->b(II)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eq v7, v4, :cond_2d

    .line 39
    .line 40
    aget v5, p5, v3

    .line 41
    .line 42
    add-int/2addr v5, v6

    .line 43
    aput v5, p5, v3

    .line 44
    .line 45
    goto :goto_57

    .line 46
    :cond_2d
    add-int/lit8 v7, v0, -0x1

    .line 47
    .line 48
    if-ne v3, v7, :cond_51

    .line 49
    .line 50
    invoke-static {p5, p4}, Lu6/a;->d([I[I)F

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    cmpg-float v5, v7, v5

    .line 55
    .line 56
    if-gez v5, :cond_3e

    .line 57
    .line 58
    filled-new-array {v2, p1}, [I

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3e
    aget v5, p5, v1

    .line 64
    .line 65
    aget v7, p5, v6

    .line 66
    .line 67
    add-int/2addr v5, v7

    .line 68
    add-int/2addr v2, v5

    .line 69
    add-int/lit8 v5, v3, -0x1

    .line 70
    .line 71
    const/4 v7, 0x2

    .line 72
    invoke-static {p5, v7, p5, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    aput v1, p5, v5

    .line 76
    .line 77
    aput v1, p5, v3

    .line 78
    .line 79
    add-int/lit8 v3, v3, -0x1

    .line 80
    .line 81
    goto :goto_53

    .line 82
    :cond_51
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    :goto_53
    aput v6, p5, v3

    .line 85
    .line 86
    xor-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    :goto_57
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    goto :goto_1b

    .line 91
    :cond_5a
    sub-int/2addr v0, v6

    .line 92
    if-ne v3, v0, :cond_6b

    .line 93
    .line 94
    invoke-static {p5, p4}, Lu6/a;->d([I[I)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    cmpg-float p0, p0, v5

    .line 99
    .line 100
    if-gez p0, :cond_6b

    .line 101
    .line 102
    sub-int/2addr p1, v6

    .line 103
    filled-new-array {v2, p1}, [I

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_6b
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public static c(Lf6/b;IIII[I)[Lz5/o;
    .registers 19

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lz5/o;

    .line 3
    .line 4
    move-object/from16 v5, p5

    .line 5
    .line 6
    array-length v1, v5

    .line 7
    new-array v6, v1, [I

    .line 8
    .line 9
    move/from16 v3, p3

    .line 10
    .line 11
    :goto_a
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    if-ge v3, p1, :cond_48

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    move v4, p2

    .line 17
    move/from16 v2, p4

    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Lu6/a;->b(Lf6/b;III[I[I)[I

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    if-eqz v9, :cond_43

    .line 24
    .line 25
    move-object v10, v9

    .line 26
    :goto_19
    move v9, v3

    .line 27
    if-lez v9, :cond_2c

    .line 28
    .line 29
    add-int/lit8 v3, v9, -0x1

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    move v4, p2

    .line 33
    move/from16 v2, p4

    .line 34
    .line 35
    move-object/from16 v5, p5

    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lu6/a;->b(Lf6/b;III[I[I)[I

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    if-eqz v11, :cond_2c

    .line 42
    .line 43
    move-object v10, v11

    .line 44
    goto :goto_19

    .line 45
    :cond_2c
    new-instance v1, Lz5/o;

    .line 46
    .line 47
    aget v2, v10, v8

    .line 48
    .line 49
    int-to-float v2, v2

    .line 50
    int-to-float v3, v9

    .line 51
    invoke-direct {v1, v2, v3}, Lz5/o;-><init>(FF)V

    .line 52
    .line 53
    .line 54
    aput-object v1, v0, v8

    .line 55
    .line 56
    new-instance v1, Lz5/o;

    .line 57
    .line 58
    aget v2, v10, v7

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    invoke-direct {v1, v2, v3}, Lz5/o;-><init>(FF)V

    .line 62
    .line 63
    .line 64
    aput-object v1, v0, v7

    .line 65
    .line 66
    move v1, v7

    .line 67
    goto :goto_4a

    .line 68
    :cond_43
    add-int/lit8 v3, v3, 0x5

    .line 69
    .line 70
    move-object/from16 v5, p5

    .line 71
    .line 72
    goto :goto_a

    .line 73
    :cond_48
    move v9, v3

    .line 74
    move v1, v8

    .line 75
    :goto_4a
    add-int/lit8 v2, v9, 0x1

    .line 76
    .line 77
    if-eqz v1, :cond_ac

    .line 78
    .line 79
    const/4 v10, 0x2

    .line 80
    new-array v1, v10, [I

    .line 81
    .line 82
    aget-object v3, v0, v8

    .line 83
    .line 84
    iget v3, v3, Lz5/o;->a:F

    .line 85
    .line 86
    float-to-int v3, v3

    .line 87
    aput v3, v1, v8

    .line 88
    .line 89
    aget-object v3, v0, v7

    .line 90
    .line 91
    iget v3, v3, Lz5/o;->a:F

    .line 92
    .line 93
    float-to-int v3, v3

    .line 94
    aput v3, v1, v7

    .line 95
    .line 96
    move-object v11, v1

    .line 97
    move v3, v2

    .line 98
    move v12, v8

    .line 99
    :goto_62
    if-ge v3, p1, :cond_93

    .line 100
    .line 101
    aget v2, v11, v8

    .line 102
    .line 103
    move-object v1, p0

    .line 104
    move v4, p2

    .line 105
    move-object/from16 v5, p5

    .line 106
    .line 107
    invoke-static/range {v1 .. v6}, Lu6/a;->b(Lf6/b;III[I[I)[I

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_8a

    .line 112
    .line 113
    aget v1, v11, v8

    .line 114
    .line 115
    aget v4, v2, v8

    .line 116
    .line 117
    sub-int/2addr v1, v4

    .line 118
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/4 v4, 0x5

    .line 123
    if-ge v1, v4, :cond_8a

    .line 124
    .line 125
    aget v1, v11, v7

    .line 126
    .line 127
    aget v5, v2, v7

    .line 128
    .line 129
    sub-int/2addr v1, v5

    .line 130
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-ge v1, v4, :cond_8a

    .line 135
    .line 136
    move-object v11, v2

    .line 137
    move v12, v8

    .line 138
    goto :goto_90

    .line 139
    :cond_8a
    const/16 v1, 0x19

    .line 140
    .line 141
    if-gt v12, v1, :cond_93

    .line 142
    .line 143
    add-int/lit8 v12, v12, 0x1

    .line 144
    .line 145
    :goto_90
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_62

    .line 148
    :cond_93
    add-int/2addr v12, v7

    .line 149
    sub-int v2, v3, v12

    .line 150
    .line 151
    new-instance p0, Lz5/o;

    .line 152
    .line 153
    aget p1, v11, v8

    .line 154
    .line 155
    int-to-float p1, p1

    .line 156
    int-to-float v1, v2

    .line 157
    invoke-direct {p0, p1, v1}, Lz5/o;-><init>(FF)V

    .line 158
    .line 159
    .line 160
    aput-object p0, v0, v10

    .line 161
    .line 162
    new-instance p0, Lz5/o;

    .line 163
    .line 164
    aget p1, v11, v7

    .line 165
    .line 166
    int-to-float p1, p1

    .line 167
    invoke-direct {p0, p1, v1}, Lz5/o;-><init>(FF)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x3

    .line 171
    aput-object p0, v0, p1

    .line 172
    .line 173
    :cond_ac
    sub-int/2addr v2, v9

    .line 174
    const/16 p0, 0xa

    .line 175
    .line 176
    if-ge v2, p0, :cond_b5

    .line 177
    .line 178
    const/4 p0, 0x0

    .line 179
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_b5
    return-object v0
.end method

.method public static d([I[I)F
    .registers 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    :goto_5
    if-ge v2, v0, :cond_10

    .line 7
    .line 8
    aget v5, p0, v2

    .line 9
    .line 10
    add-int/2addr v3, v5

    .line 11
    aget v5, p1, v2

    .line 12
    .line 13
    add-int/2addr v4, v5

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_5

    .line 17
    :cond_10
    if-ge v3, v4, :cond_13

    .line 18
    .line 19
    goto :goto_31

    .line 20
    :cond_13
    int-to-float v2, v3

    .line 21
    int-to-float v3, v4

    .line 22
    div-float v3, v2, v3

    .line 23
    .line 24
    const v4, 0x3f4ccccd    # 0.8f

    .line 25
    .line 26
    .line 27
    mul-float/2addr v4, v3

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_1c
    if-ge v1, v0, :cond_38

    .line 30
    .line 31
    aget v6, p0, v1

    .line 32
    .line 33
    aget v7, p1, v1

    .line 34
    .line 35
    int-to-float v7, v7

    .line 36
    mul-float/2addr v7, v3

    .line 37
    int-to-float v6, v6

    .line 38
    cmpl-float v8, v6, v7

    .line 39
    .line 40
    if-lez v8, :cond_2b

    .line 41
    .line 42
    sub-float/2addr v6, v7

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    sub-float v6, v7, v6

    .line 45
    .line 46
    :goto_2d
    cmpl-float v7, v6, v4

    .line 47
    .line 48
    if-lez v7, :cond_34

    .line 49
    .line 50
    :goto_31
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 51
    .line 52
    return p0

    .line 53
    :cond_34
    add-float/2addr v5, v6

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1c

    .line 57
    :cond_38
    div-float/2addr v5, v2

    .line 58
    return v5
.end method
