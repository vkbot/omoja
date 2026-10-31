.class public final Lo6/e;
.super Lo6/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[[I


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0x46

    .line 2
    .line 3
    const/16 v1, 0x7e

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    const/16 v4, 0x22

    .line 9
    .line 10
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lo6/e;->i:[I

    .line 15
    .line 16
    const/16 v0, 0x30

    .line 17
    .line 18
    const/16 v1, 0x51

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    const/16 v4, 0x14

    .line 22
    .line 23
    filled-new-array {v3, v4, v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lo6/e;->j:[I

    .line 28
    .line 29
    const/16 v0, 0x7df

    .line 30
    .line 31
    const/16 v1, 0xa9b

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0xa1

    .line 35
    .line 36
    const/16 v6, 0x3c1

    .line 37
    .line 38
    filled-new-array {v4, v5, v6, v0, v1}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lo6/e;->k:[I

    .line 43
    .line 44
    const/16 v0, 0x40c

    .line 45
    .line 46
    const/16 v1, 0x5ec

    .line 47
    .line 48
    const/16 v5, 0x150

    .line 49
    .line 50
    filled-new-array {v4, v5, v0, v1}, [I

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lo6/e;->l:[I

    .line 55
    .line 56
    const/16 v0, 0x8

    .line 57
    .line 58
    const/4 v1, 0x6

    .line 59
    const/4 v4, 0x3

    .line 60
    filled-new-array {v0, v1, v3, v4, v2}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    sput-object v5, Lo6/e;->m:[I

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    filled-new-array {v5, v3, v1, v0}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sput-object v6, Lo6/e;->n:[I

    .line 72
    .line 73
    filled-new-array {v4, v0, v5, v2}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const/4 v6, 0x5

    .line 78
    filled-new-array {v4, v6, v6, v2}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const/4 v9, 0x7

    .line 83
    move v10, v9

    .line 84
    filled-new-array {v4, v4, v10, v2}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    const/16 v11, 0x9

    .line 89
    .line 90
    move v12, v10

    .line 91
    filled-new-array {v4, v2, v11, v2}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    filled-new-array {v5, v12, v3, v2}, [I

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    filled-new-array {v5, v6, v1, v2}, [I

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    filled-new-array {v5, v4, v0, v2}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    filled-new-array {v2, v6, v12, v2}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    filled-new-array {v2, v4, v11, v2}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    move-object v12, v1

    .line 116
    move-object v11, v3

    .line 117
    filled-new-array/range {v7 .. v15}, [[I

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sput-object v0, Lo6/e;->o:[[I

    .line 122
    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo6/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo6/e;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo6/e;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static j(Ljava/util/ArrayList;Lo6/d;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :cond_1
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    check-cast v2, Lo6/d;

    .line 18
    .line 19
    iget v3, v2, Lo6/b;->a:I

    .line 20
    .line 21
    iget v4, p1, Lo6/b;->a:I

    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    iget p0, v2, Lo6/d;->d:I

    .line 26
    .line 27
    add-int/lit8 p0, p0, 0x1

    .line 28
    .line 29
    iput p0, v2, Lo6/d;->d:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final b(ILf6/a;Ljava/util/Map;)Lz5/m;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, v0, p1, p3}, Lo6/e;->l(Lf6/a;ZILjava/util/Map;)Lo6/d;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lo6/e;->g:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v2, v1}, Lo6/e;->j(Ljava/util/ArrayList;Lo6/d;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lf6/a;->i()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p2, v1, p1, p3}, Lo6/e;->l(Lf6/a;ZILjava/util/Map;)Lo6/d;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p3, p0, Lo6/e;->h:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-static {p3, p1}, Lo6/e;->j(Ljava/util/ArrayList;Lo6/d;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lf6/a;->i()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    move p2, v0

    .line 32
    :cond_0
    if-ge p2, p1, :cond_8

    .line 33
    .line 34
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    check-cast v3, Lo6/d;

    .line 41
    .line 42
    iget v4, v3, Lo6/d;->d:I

    .line 43
    .line 44
    iget-object v5, v3, Lo6/d;->c:Lo6/c;

    .line 45
    .line 46
    if-le v4, v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    move v6, v0

    .line 53
    :cond_1
    if-ge v6, v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    check-cast v7, Lo6/d;

    .line 62
    .line 63
    iget v8, v7, Lo6/d;->d:I

    .line 64
    .line 65
    iget-object v9, v7, Lo6/d;->c:Lo6/c;

    .line 66
    .line 67
    if-le v8, v1, :cond_1

    .line 68
    .line 69
    iget v8, v3, Lo6/b;->b:I

    .line 70
    .line 71
    iget v10, v7, Lo6/b;->b:I

    .line 72
    .line 73
    mul-int/lit8 v10, v10, 0x10

    .line 74
    .line 75
    add-int/2addr v10, v8

    .line 76
    rem-int/lit8 v10, v10, 0x4f

    .line 77
    .line 78
    iget v8, v5, Lo6/c;->a:I

    .line 79
    .line 80
    mul-int/lit8 v8, v8, 0x9

    .line 81
    .line 82
    iget v11, v9, Lo6/c;->a:I

    .line 83
    .line 84
    add-int/2addr v8, v11

    .line 85
    const/16 v11, 0x48

    .line 86
    .line 87
    if-le v8, v11, :cond_2

    .line 88
    .line 89
    add-int/lit8 v8, v8, -0x1

    .line 90
    .line 91
    :cond_2
    const/16 v11, 0x8

    .line 92
    .line 93
    if-le v8, v11, :cond_3

    .line 94
    .line 95
    add-int/lit8 v8, v8, -0x1

    .line 96
    .line 97
    :cond_3
    if-ne v10, v8, :cond_1

    .line 98
    .line 99
    iget p1, v3, Lo6/b;->a:I

    .line 100
    .line 101
    int-to-long p1, p1

    .line 102
    const-wide/32 v2, 0x453af5

    .line 103
    .line 104
    .line 105
    mul-long/2addr p1, v2

    .line 106
    iget p3, v7, Lo6/b;->a:I

    .line 107
    .line 108
    int-to-long v2, p3

    .line 109
    add-long/2addr p1, v2

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const/16 p3, 0xe

    .line 117
    .line 118
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    const/16 v2, 0xd

    .line 126
    .line 127
    rsub-int/lit8 p3, p3, 0xd

    .line 128
    .line 129
    :goto_0
    const/16 v3, 0x30

    .line 130
    .line 131
    if-lez p3, :cond_4

    .line 132
    .line 133
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    add-int/lit8 p3, p3, -0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move p1, v0

    .line 143
    move p3, p1

    .line 144
    :goto_1
    if-ge p1, v2, :cond_6

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    sub-int/2addr v4, v3

    .line 151
    and-int/lit8 v6, p1, 0x1

    .line 152
    .line 153
    if-nez v6, :cond_5

    .line 154
    .line 155
    mul-int/lit8 v4, v4, 0x3

    .line 156
    .line 157
    :cond_5
    add-int/2addr p3, v4

    .line 158
    add-int/lit8 p1, p1, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    const/16 p1, 0xa

    .line 162
    .line 163
    rem-int/2addr p3, p1

    .line 164
    rsub-int/lit8 p3, p3, 0xa

    .line 165
    .line 166
    if-ne p3, p1, :cond_7

    .line 167
    .line 168
    move p3, v0

    .line 169
    :cond_7
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object p1, v5, Lo6/c;->c:[Lz5/o;

    .line 173
    .line 174
    iget-object p3, v9, Lo6/c;->c:[Lz5/o;

    .line 175
    .line 176
    new-instance v2, Lz5/m;

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    aget-object v3, p1, v0

    .line 183
    .line 184
    aget-object p1, p1, v1

    .line 185
    .line 186
    aget-object v0, p3, v0

    .line 187
    .line 188
    aget-object p3, p3, v1

    .line 189
    .line 190
    filled-new-array {v3, p1, v0, p3}, [Lz5/o;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    sget-object p3, Lz5/a;->n:Lz5/a;

    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-direct {v2, p2, v0, p1, p3}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;)V

    .line 198
    .line 199
    .line 200
    return-object v2

    .line 201
    :cond_8
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 202
    .line 203
    throw p1
.end method

.method public final k(Lf6/a;Lo6/c;Z)Lo6/b;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lo6/a;->b:[I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    move-object/from16 v5, p2

    .line 14
    .line 15
    iget-object v5, v5, Lo6/c;->b:[I

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    aget v5, v5, v4

    .line 21
    .line 22
    invoke-static {v5, v1, v3}, Ln6/h;->f(ILf6/a;[I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    aget v5, v5, v6

    .line 27
    .line 28
    invoke-static {v5, v1, v3}, Ln6/h;->e(ILf6/a;[I)V

    .line 29
    .line 30
    .line 31
    array-length v1, v3

    .line 32
    sub-int/2addr v1, v6

    .line 33
    move v5, v4

    .line 34
    :goto_0
    if-ge v5, v1, :cond_1

    .line 35
    .line 36
    aget v7, v3, v5

    .line 37
    .line 38
    aget v8, v3, v1

    .line 39
    .line 40
    aput v8, v3, v5

    .line 41
    .line 42
    aput v7, v3, v1

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/16 v1, 0x10

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v1, 0xf

    .line 55
    .line 56
    :goto_2
    invoke-static {v3}, La/a;->x([I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    int-to-float v5, v5

    .line 61
    int-to-float v7, v1

    .line 62
    div-float/2addr v5, v7

    .line 63
    move v7, v4

    .line 64
    :goto_3
    array-length v8, v3

    .line 65
    iget-object v9, v0, Lo6/a;->d:[F

    .line 66
    .line 67
    iget-object v10, v0, Lo6/a;->c:[F

    .line 68
    .line 69
    iget-object v11, v0, Lo6/a;->f:[I

    .line 70
    .line 71
    iget-object v12, v0, Lo6/a;->e:[I

    .line 72
    .line 73
    if-ge v7, v8, :cond_6

    .line 74
    .line 75
    aget v8, v3, v7

    .line 76
    .line 77
    int-to-float v8, v8

    .line 78
    div-float/2addr v8, v5

    .line 79
    const/high16 v13, 0x3f000000    # 0.5f

    .line 80
    .line 81
    add-float/2addr v13, v8

    .line 82
    float-to-int v13, v13

    .line 83
    if-gtz v13, :cond_3

    .line 84
    .line 85
    move v13, v6

    .line 86
    goto :goto_4

    .line 87
    :cond_3
    const/16 v14, 0x8

    .line 88
    .line 89
    if-le v13, v14, :cond_4

    .line 90
    .line 91
    move v13, v14

    .line 92
    :cond_4
    :goto_4
    div-int/lit8 v14, v7, 0x2

    .line 93
    .line 94
    and-int/lit8 v15, v7, 0x1

    .line 95
    .line 96
    if-nez v15, :cond_5

    .line 97
    .line 98
    aput v13, v12, v14

    .line 99
    .line 100
    int-to-float v9, v13

    .line 101
    sub-float/2addr v8, v9

    .line 102
    aput v8, v10, v14

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    aput v13, v11, v14

    .line 106
    .line 107
    int-to-float v10, v13

    .line 108
    sub-float/2addr v8, v10

    .line 109
    aput v8, v9, v14

    .line 110
    .line 111
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    invoke-static {v12}, La/a;->x([I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-static {v11}, La/a;->x([I)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    const/16 v7, 0xa

    .line 123
    .line 124
    const/4 v8, 0x4

    .line 125
    const/16 v13, 0xc

    .line 126
    .line 127
    if-eqz v2, :cond_b

    .line 128
    .line 129
    if-le v3, v13, :cond_7

    .line 130
    .line 131
    move v14, v4

    .line 132
    move v15, v6

    .line 133
    goto :goto_6

    .line 134
    :cond_7
    if-ge v3, v8, :cond_8

    .line 135
    .line 136
    move v15, v4

    .line 137
    move v14, v6

    .line 138
    goto :goto_6

    .line 139
    :cond_8
    move v14, v4

    .line 140
    move v15, v14

    .line 141
    :goto_6
    if-le v5, v13, :cond_9

    .line 142
    .line 143
    :goto_7
    move/from16 v16, v4

    .line 144
    .line 145
    move/from16 v17, v6

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_9
    if-ge v5, v8, :cond_a

    .line 149
    .line 150
    :goto_8
    move/from16 v17, v4

    .line 151
    .line 152
    move/from16 v16, v6

    .line 153
    .line 154
    goto :goto_a

    .line 155
    :cond_a
    move/from16 v16, v4

    .line 156
    .line 157
    move/from16 v17, v16

    .line 158
    .line 159
    goto :goto_a

    .line 160
    :cond_b
    const/16 v14, 0xb

    .line 161
    .line 162
    if-le v3, v14, :cond_c

    .line 163
    .line 164
    move v14, v4

    .line 165
    move v15, v6

    .line 166
    goto :goto_9

    .line 167
    :cond_c
    const/4 v14, 0x5

    .line 168
    if-ge v3, v14, :cond_d

    .line 169
    .line 170
    move v15, v4

    .line 171
    move v14, v6

    .line 172
    goto :goto_9

    .line 173
    :cond_d
    move v14, v4

    .line 174
    move v15, v14

    .line 175
    :goto_9
    if-le v5, v7, :cond_e

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_e
    if-ge v5, v8, :cond_a

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :goto_a
    add-int v18, v3, v5

    .line 182
    .line 183
    sub-int v1, v18, v1

    .line 184
    .line 185
    and-int/lit8 v7, v3, 0x1

    .line 186
    .line 187
    if-ne v7, v2, :cond_f

    .line 188
    .line 189
    move v7, v6

    .line 190
    goto :goto_b

    .line 191
    :cond_f
    move v7, v4

    .line 192
    :goto_b
    and-int/lit8 v4, v5, 0x1

    .line 193
    .line 194
    if-ne v4, v6, :cond_10

    .line 195
    .line 196
    move v4, v6

    .line 197
    goto :goto_c

    .line 198
    :cond_10
    const/4 v4, 0x0

    .line 199
    :goto_c
    const/4 v8, -0x1

    .line 200
    if-eq v1, v8, :cond_1a

    .line 201
    .line 202
    if-eqz v1, :cond_15

    .line 203
    .line 204
    if-ne v1, v6, :cond_14

    .line 205
    .line 206
    if-eqz v7, :cond_12

    .line 207
    .line 208
    if-nez v4, :cond_11

    .line 209
    .line 210
    move v15, v6

    .line 211
    goto :goto_d

    .line 212
    :cond_11
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 213
    .line 214
    throw v1

    .line 215
    :cond_12
    if-eqz v4, :cond_13

    .line 216
    .line 217
    move/from16 v17, v6

    .line 218
    .line 219
    goto :goto_d

    .line 220
    :cond_13
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 221
    .line 222
    throw v1

    .line 223
    :cond_14
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 224
    .line 225
    throw v1

    .line 226
    :cond_15
    if-eqz v7, :cond_18

    .line 227
    .line 228
    if-eqz v4, :cond_17

    .line 229
    .line 230
    if-ge v3, v5, :cond_16

    .line 231
    .line 232
    move v14, v6

    .line 233
    move/from16 v17, v14

    .line 234
    .line 235
    goto :goto_d

    .line 236
    :cond_16
    move v15, v6

    .line 237
    move/from16 v16, v15

    .line 238
    .line 239
    goto :goto_d

    .line 240
    :cond_17
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 241
    .line 242
    throw v1

    .line 243
    :cond_18
    if-nez v4, :cond_19

    .line 244
    .line 245
    goto :goto_d

    .line 246
    :cond_19
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 247
    .line 248
    throw v1

    .line 249
    :cond_1a
    if-eqz v7, :cond_1c

    .line 250
    .line 251
    if-nez v4, :cond_1b

    .line 252
    .line 253
    move v14, v6

    .line 254
    goto :goto_d

    .line 255
    :cond_1b
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 256
    .line 257
    throw v1

    .line 258
    :cond_1c
    if-eqz v4, :cond_28

    .line 259
    .line 260
    move/from16 v16, v6

    .line 261
    .line 262
    :goto_d
    if-eqz v14, :cond_1e

    .line 263
    .line 264
    if-nez v15, :cond_1d

    .line 265
    .line 266
    invoke-static {v12, v10}, Lo6/a;->h([I[F)V

    .line 267
    .line 268
    .line 269
    goto :goto_e

    .line 270
    :cond_1d
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 271
    .line 272
    throw v1

    .line 273
    :cond_1e
    :goto_e
    if-eqz v15, :cond_1f

    .line 274
    .line 275
    invoke-static {v12, v10}, Lo6/a;->g([I[F)V

    .line 276
    .line 277
    .line 278
    :cond_1f
    if-eqz v16, :cond_21

    .line 279
    .line 280
    if-nez v17, :cond_20

    .line 281
    .line 282
    invoke-static {v11, v10}, Lo6/a;->h([I[F)V

    .line 283
    .line 284
    .line 285
    goto :goto_f

    .line 286
    :cond_20
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 287
    .line 288
    throw v1

    .line 289
    :cond_21
    :goto_f
    if-eqz v17, :cond_22

    .line 290
    .line 291
    invoke-static {v11, v9}, Lo6/a;->g([I[F)V

    .line 292
    .line 293
    .line 294
    :cond_22
    array-length v1, v12

    .line 295
    sub-int/2addr v1, v6

    .line 296
    const/4 v3, 0x0

    .line 297
    const/4 v4, 0x0

    .line 298
    :goto_10
    if-ltz v1, :cond_23

    .line 299
    .line 300
    mul-int/lit8 v3, v3, 0x9

    .line 301
    .line 302
    aget v5, v12, v1

    .line 303
    .line 304
    add-int/2addr v3, v5

    .line 305
    add-int/2addr v4, v5

    .line 306
    add-int/lit8 v1, v1, -0x1

    .line 307
    .line 308
    goto :goto_10

    .line 309
    :cond_23
    array-length v1, v11

    .line 310
    sub-int/2addr v1, v6

    .line 311
    const/4 v5, 0x0

    .line 312
    const/4 v7, 0x0

    .line 313
    :goto_11
    if-ltz v1, :cond_24

    .line 314
    .line 315
    mul-int/lit8 v5, v5, 0x9

    .line 316
    .line 317
    aget v8, v11, v1

    .line 318
    .line 319
    add-int/2addr v5, v8

    .line 320
    add-int/2addr v7, v8

    .line 321
    add-int/lit8 v1, v1, -0x1

    .line 322
    .line 323
    goto :goto_11

    .line 324
    :cond_24
    mul-int/lit8 v5, v5, 0x3

    .line 325
    .line 326
    add-int/2addr v5, v3

    .line 327
    if-eqz v2, :cond_26

    .line 328
    .line 329
    and-int/lit8 v1, v4, 0x1

    .line 330
    .line 331
    if-nez v1, :cond_25

    .line 332
    .line 333
    if-gt v4, v13, :cond_25

    .line 334
    .line 335
    const/4 v1, 0x4

    .line 336
    if-lt v4, v1, :cond_25

    .line 337
    .line 338
    sub-int/2addr v13, v4

    .line 339
    div-int/lit8 v13, v13, 0x2

    .line 340
    .line 341
    sget-object v1, Lo6/e;->m:[I

    .line 342
    .line 343
    aget v1, v1, v13

    .line 344
    .line 345
    rsub-int/lit8 v2, v1, 0x9

    .line 346
    .line 347
    const/4 v3, 0x0

    .line 348
    invoke-static {v12, v1, v3}, Lo4/b;->u([IIZ)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    invoke-static {v11, v2, v6}, Lo4/b;->u([IIZ)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    sget-object v3, Lo6/e;->i:[I

    .line 357
    .line 358
    aget v3, v3, v13

    .line 359
    .line 360
    sget-object v4, Lo6/e;->k:[I

    .line 361
    .line 362
    aget v4, v4, v13

    .line 363
    .line 364
    new-instance v6, Lo6/b;

    .line 365
    .line 366
    mul-int/2addr v1, v3

    .line 367
    add-int/2addr v1, v2

    .line 368
    add-int/2addr v1, v4

    .line 369
    invoke-direct {v6, v1, v5}, Lo6/b;-><init>(II)V

    .line 370
    .line 371
    .line 372
    return-object v6

    .line 373
    :cond_25
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 374
    .line 375
    throw v1

    .line 376
    :cond_26
    and-int/lit8 v1, v7, 0x1

    .line 377
    .line 378
    if-nez v1, :cond_27

    .line 379
    .line 380
    const/16 v1, 0xa

    .line 381
    .line 382
    if-gt v7, v1, :cond_27

    .line 383
    .line 384
    const/4 v2, 0x4

    .line 385
    if-lt v7, v2, :cond_27

    .line 386
    .line 387
    rsub-int/lit8 v7, v7, 0xa

    .line 388
    .line 389
    div-int/lit8 v7, v7, 0x2

    .line 390
    .line 391
    sget-object v1, Lo6/e;->n:[I

    .line 392
    .line 393
    aget v1, v1, v7

    .line 394
    .line 395
    rsub-int/lit8 v2, v1, 0x9

    .line 396
    .line 397
    invoke-static {v12, v1, v6}, Lo4/b;->u([IIZ)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    const/4 v3, 0x0

    .line 402
    invoke-static {v11, v2, v3}, Lo4/b;->u([IIZ)I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    sget-object v3, Lo6/e;->j:[I

    .line 407
    .line 408
    aget v3, v3, v7

    .line 409
    .line 410
    sget-object v4, Lo6/e;->l:[I

    .line 411
    .line 412
    aget v4, v4, v7

    .line 413
    .line 414
    new-instance v6, Lo6/b;

    .line 415
    .line 416
    mul-int/2addr v2, v3

    .line 417
    add-int/2addr v2, v1

    .line 418
    add-int/2addr v2, v4

    .line 419
    invoke-direct {v6, v2, v5}, Lo6/b;-><init>(II)V

    .line 420
    .line 421
    .line 422
    return-object v6

    .line 423
    :cond_27
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 424
    .line 425
    throw v1

    .line 426
    :cond_28
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 427
    .line 428
    throw v1
.end method

.method public final l(Lf6/a;ZILjava/util/Map;)Lo6/d;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lo6/e;->m(Lf6/a;Z)[I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, p1, p3, p2, v1}, Lo6/e;->n(Lf6/a;IZ[I)Lo6/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    move-object p4, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lz5/d;->k:Lz5/d;

    .line 15
    .line 16
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    check-cast p4, Lz5/p;

    .line 21
    .line 22
    :goto_0
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    iget-object v4, v1, Lo6/c;->b:[I

    .line 27
    .line 28
    aget v5, v4, v2

    .line 29
    .line 30
    aget v4, v4, v3

    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    sub-int/2addr v5, v3

    .line 34
    int-to-float v4, v5

    .line 35
    const/high16 v5, 0x40000000    # 2.0f

    .line 36
    .line 37
    div-float/2addr v4, v5

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    iget p2, p1, Lf6/a;->c:I

    .line 41
    .line 42
    sub-int/2addr p2, v3

    .line 43
    int-to-float p2, p2

    .line 44
    sub-float v4, p2, v4

    .line 45
    .line 46
    :cond_1
    new-instance p2, Lz5/o;

    .line 47
    .line 48
    int-to-float p3, p3

    .line 49
    invoke-direct {p2, v4, p3}, Lz5/o;-><init>(FF)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p4, p2}, Lz5/p;->a(Lz5/o;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, p1, v1, v3}, Lo6/e;->k(Lf6/a;Lo6/c;Z)Lo6/b;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, v1, v2}, Lo6/e;->k(Lf6/a;Lo6/c;Z)Lo6/b;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p3, Lo6/d;

    .line 64
    .line 65
    iget p4, p2, Lo6/b;->a:I

    .line 66
    .line 67
    mul-int/lit16 p4, p4, 0x63d

    .line 68
    .line 69
    iget v2, p1, Lo6/b;->a:I

    .line 70
    .line 71
    add-int/2addr p4, v2

    .line 72
    iget p2, p2, Lo6/b;->b:I

    .line 73
    .line 74
    iget p1, p1, Lo6/b;->b:I

    .line 75
    .line 76
    mul-int/lit8 p1, p1, 0x4

    .line 77
    .line 78
    add-int/2addr p1, p2

    .line 79
    invoke-direct {p3, p4, p1, v1}, Lo6/d;-><init>(IILo6/c;)V
    :try_end_0
    .catch Lz5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    return-object p3

    .line 83
    :catch_0
    return-object v0
.end method

.method public final m(Lf6/a;Z)[I
    .locals 11

    .line 1
    iget-object v0, p0, Lo6/a;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v1, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    aput v1, v0, v3

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    aput v1, v0, v4

    .line 14
    .line 15
    iget v5, p1, Lf6/a;->c:I

    .line 16
    .line 17
    move v6, v1

    .line 18
    move v7, v6

    .line 19
    :goto_0
    if-ge v6, v5, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v6}, Lf6/a;->d(I)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    xor-int/2addr v7, v2

    .line 26
    if-eq p2, v7, :cond_0

    .line 27
    .line 28
    add-int/lit8 v6, v6, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v8, v1

    .line 32
    move p2, v6

    .line 33
    :goto_1
    if-ge v6, v5, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1, v6}, Lf6/a;->d(I)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eq v9, v7, :cond_1

    .line 40
    .line 41
    aget v9, v0, v8

    .line 42
    .line 43
    add-int/2addr v9, v2

    .line 44
    aput v9, v0, v8

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    if-ne v8, v4, :cond_3

    .line 48
    .line 49
    invoke-static {v0}, Lo6/a;->i([I)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    filled-new-array {p2, v6}, [I

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_2
    aget v9, v0, v1

    .line 61
    .line 62
    aget v10, v0, v2

    .line 63
    .line 64
    add-int/2addr v9, v10

    .line 65
    add-int/2addr p2, v9

    .line 66
    aget v9, v0, v3

    .line 67
    .line 68
    aput v9, v0, v1

    .line 69
    .line 70
    aget v9, v0, v4

    .line 71
    .line 72
    aput v9, v0, v2

    .line 73
    .line 74
    aput v1, v0, v3

    .line 75
    .line 76
    aput v1, v0, v4

    .line 77
    .line 78
    add-int/lit8 v8, v8, -0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 82
    .line 83
    :goto_2
    aput v2, v0, v8

    .line 84
    .line 85
    xor-int/lit8 v7, v7, 0x1

    .line 86
    .line 87
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 91
    .line 92
    throw p1
.end method

.method public final n(Lf6/a;IZ[I)Lo6/c;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p4, v0

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lf6/a;->d(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    aget v2, p4, v0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v2, v3

    .line 12
    :goto_0
    if-ltz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lf6/a;->d(I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eq v1, v4, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/2addr v2, v3

    .line 24
    aget v1, p4, v0

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    iget-object v4, p0, Lo6/a;->a:[I

    .line 28
    .line 29
    array-length v5, v4

    .line 30
    sub-int/2addr v5, v3

    .line 31
    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    aput v1, v4, v0

    .line 35
    .line 36
    move v7, v0

    .line 37
    :goto_1
    const/16 v0, 0x9

    .line 38
    .line 39
    if-ge v7, v0, :cond_3

    .line 40
    .line 41
    sget-object v0, Lo6/e;->o:[[I

    .line 42
    .line 43
    aget-object v0, v0, v7

    .line 44
    .line 45
    const v1, 0x3ee66666    # 0.45f

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v0, v1}, Ln6/h;->d([I[IF)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const v1, 0x3e4ccccd    # 0.2f

    .line 53
    .line 54
    .line 55
    cmpg-float v0, v0, v1

    .line 56
    .line 57
    if-gez v0, :cond_2

    .line 58
    .line 59
    aget v0, p4, v3

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    iget p1, p1, Lf6/a;->c:I

    .line 64
    .line 65
    sub-int/2addr p1, v3

    .line 66
    sub-int v1, p1, v2

    .line 67
    .line 68
    sub-int/2addr p1, v0

    .line 69
    move v9, p1

    .line 70
    move v8, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    move v9, v0

    .line 73
    move v8, v2

    .line 74
    :goto_2
    new-instance v6, Lo6/c;

    .line 75
    .line 76
    filled-new-array {v2, v0}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    move v10, p2

    .line 81
    invoke-direct/range {v6 .. v11}, Lo6/c;-><init>(IIII[I)V

    .line 82
    .line 83
    .line 84
    return-object v6

    .line 85
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 89
    .line 90
    throw p1
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/e;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo6/e;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
