.class public final Lr7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ll9/a0;

.field public c:I

.field public d:I

.field public e:[Lr7/b;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lr7/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lr7/c;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v0, v0, [Lr7/b;

    .line 14
    .line 15
    iput-object v0, p0, Lr7/c;->e:[Lr7/b;

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    iput v0, p0, Lr7/c;->f:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lr7/c;->g:I

    .line 22
    .line 23
    iput v0, p0, Lr7/c;->h:I

    .line 24
    .line 25
    const/16 v0, 0x1000

    .line 26
    .line 27
    iput v0, p0, Lr7/c;->c:I

    .line 28
    .line 29
    iput v0, p0, Lr7/c;->d:I

    .line 30
    .line 31
    new-instance v0, Ll9/a0;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Ll9/a0;-><init>(Ll9/g0;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lr7/c;->b:Ll9/a0;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_36

    .line 3
    .line 4
    iget-object v1, p0, Lr7/c;->e:[Lr7/b;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_8
    iget v2, p0, Lr7/c;->f:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_25

    .line 12
    .line 13
    if-lez p1, :cond_25

    .line 14
    .line 15
    iget-object v2, p0, Lr7/c;->e:[Lr7/b;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    iget v2, v2, Lr7/b;->c:I

    .line 20
    .line 21
    sub-int/2addr p1, v2

    .line 22
    iget v3, p0, Lr7/c;->h:I

    .line 23
    .line 24
    sub-int/2addr v3, v2

    .line 25
    iput v3, p0, Lr7/c;->h:I

    .line 26
    .line 27
    iget v2, p0, Lr7/c;->g:I

    .line 28
    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    iput v2, p0, Lr7/c;->g:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    goto :goto_8

    .line 38
    :cond_25
    iget-object p1, p0, Lr7/c;->e:[Lr7/b;

    .line 39
    .line 40
    add-int/lit8 v1, v2, 0x1

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    iget v3, p0, Lr7/c;->g:I

    .line 46
    .line 47
    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, Lr7/c;->f:I

    .line 51
    .line 52
    add-int/2addr p1, v0

    .line 53
    iput p1, p0, Lr7/c;->f:I

    .line 54
    .line 55
    :cond_36
    return v0
.end method

.method public final b(I)Ll9/o;
    .registers 5

    .line 1
    if-ltz p1, :cond_e

    .line 2
    .line 3
    sget-object v0, Lr7/e;->b:[Lr7/b;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-gt p1, v1, :cond_e

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    iget-object p1, p1, Lr7/b;->a:Ll9/o;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_e
    sget-object v0, Lr7/e;->b:[Lr7/b;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    sub-int v0, p1, v0

    .line 19
    .line 20
    iget v1, p0, Lr7/c;->f:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    if-ltz v1, :cond_24

    .line 26
    .line 27
    iget-object v0, p0, Lr7/c;->e:[Lr7/b;

    .line 28
    .line 29
    array-length v2, v0

    .line 30
    if-ge v1, v2, :cond_24

    .line 31
    .line 32
    aget-object p1, v0, v1

    .line 33
    .line 34
    iget-object p1, p1, Lr7/b;->a:Ll9/o;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_24
    const-string v0, "Header index too large "

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    invoke-static {p1, v0}, Ln0/b;->y(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public final c(Lr7/b;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lr7/c;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lr7/b;->c:I

    .line 7
    .line 8
    iget v1, p0, Lr7/c;->d:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-le v0, v1, :cond_1e

    .line 12
    .line 13
    iget-object p1, p0, Lr7/c;->e:[Lr7/b;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lr7/c;->e:[Lr7/b;

    .line 20
    .line 21
    array-length p1, p1

    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Lr7/c;->f:I

    .line 25
    .line 26
    iput v2, p0, Lr7/c;->g:I

    .line 27
    .line 28
    iput v2, p0, Lr7/c;->h:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    iget v3, p0, Lr7/c;->h:I

    .line 32
    .line 33
    add-int/2addr v3, v0

    .line 34
    sub-int/2addr v3, v1

    .line 35
    invoke-virtual {p0, v3}, Lr7/c;->a(I)I

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lr7/c;->g:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iget-object v3, p0, Lr7/c;->e:[Lr7/b;

    .line 43
    .line 44
    array-length v4, v3

    .line 45
    if-le v1, v4, :cond_41

    .line 46
    .line 47
    array-length v1, v3

    .line 48
    mul-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    new-array v1, v1, [Lr7/b;

    .line 51
    .line 52
    array-length v4, v3

    .line 53
    array-length v5, v3

    .line 54
    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lr7/c;->e:[Lr7/b;

    .line 58
    .line 59
    array-length v2, v2

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    iput v2, p0, Lr7/c;->f:I

    .line 63
    .line 64
    iput-object v1, p0, Lr7/c;->e:[Lr7/b;

    .line 65
    .line 66
    :cond_41
    iget v1, p0, Lr7/c;->f:I

    .line 67
    .line 68
    add-int/lit8 v2, v1, -0x1

    .line 69
    .line 70
    iput v2, p0, Lr7/c;->f:I

    .line 71
    .line 72
    iget-object v2, p0, Lr7/c;->e:[Lr7/b;

    .line 73
    .line 74
    aput-object p1, v2, v1

    .line 75
    .line 76
    iget p1, p0, Lr7/c;->g:I

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    iput p1, p0, Lr7/c;->g:I

    .line 81
    .line 82
    iget p1, p0, Lr7/c;->h:I

    .line 83
    .line 84
    add-int/2addr p1, v0

    .line 85
    iput p1, p0, Lr7/c;->h:I

    .line 86
    .line 87
    return-void
.end method

.method public final d()Ll9/o;
    .registers 9

    .line 1
    iget-object v0, p0, Lr7/c;->b:Ll9/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll9/a0;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/lit16 v2, v1, 0xff

    .line 8
    .line 9
    const/16 v3, 0x80

    .line 10
    .line 11
    and-int/2addr v1, v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v1, v3, :cond_10

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v1, v4

    .line 18
    :goto_11
    const/16 v3, 0x7f

    .line 19
    .line 20
    invoke-virtual {p0, v2, v3}, Lr7/c;->e(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v1, :cond_8e

    .line 25
    .line 26
    sget-object v1, Lr7/k;->d:Lr7/k;

    .line 27
    .line 28
    int-to-long v2, v2

    .line 29
    invoke-virtual {v0, v2, v3}, Ll9/a0;->Y(J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Ll9/a0;->c:Ll9/l;

    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Ll9/l;->f0(J)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Lr7/k;->a:Lp0/c;

    .line 47
    .line 48
    move-object v6, v1

    .line 49
    move v3, v4

    .line 50
    move v5, v3

    .line 51
    :goto_32
    array-length v7, v0

    .line 52
    if-ge v4, v7, :cond_64

    .line 53
    .line 54
    aget-byte v7, v0, v4

    .line 55
    .line 56
    and-int/lit16 v7, v7, 0xff

    .line 57
    .line 58
    shl-int/lit8 v3, v3, 0x8

    .line 59
    .line 60
    or-int/2addr v3, v7

    .line 61
    add-int/lit8 v5, v5, 0x8

    .line 62
    .line 63
    :goto_3e
    const/16 v7, 0x8

    .line 64
    .line 65
    if-lt v5, v7, :cond_61

    .line 66
    .line 67
    add-int/lit8 v7, v5, -0x8

    .line 68
    .line 69
    ushr-int v7, v3, v7

    .line 70
    .line 71
    and-int/lit16 v7, v7, 0xff

    .line 72
    .line 73
    iget-object v6, v6, Lp0/c;->d:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, [Lp0/c;

    .line 76
    .line 77
    aget-object v6, v6, v7

    .line 78
    .line 79
    iget-object v7, v6, Lp0/c;->d:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v7, [Lp0/c;

    .line 82
    .line 83
    if-nez v7, :cond_5e

    .line 84
    .line 85
    iget v7, v6, Lp0/c;->b:I

    .line 86
    .line 87
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    .line 89
    .line 90
    iget v6, v6, Lp0/c;->c:I

    .line 91
    .line 92
    sub-int/2addr v5, v6

    .line 93
    move-object v6, v1

    .line 94
    goto :goto_3e

    .line 95
    :cond_5e
    add-int/lit8 v5, v5, -0x8

    .line 96
    .line 97
    goto :goto_3e

    .line 98
    :cond_61
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_32

    .line 101
    :cond_64
    :goto_64
    if-lez v5, :cond_85

    .line 102
    .line 103
    rsub-int/lit8 v0, v5, 0x8

    .line 104
    .line 105
    shl-int v0, v3, v0

    .line 106
    .line 107
    and-int/lit16 v0, v0, 0xff

    .line 108
    .line 109
    iget-object v4, v6, Lp0/c;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v4, [Lp0/c;

    .line 112
    .line 113
    aget-object v0, v4, v0

    .line 114
    .line 115
    iget-object v4, v0, Lp0/c;->d:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v4, [Lp0/c;

    .line 118
    .line 119
    iget v6, v0, Lp0/c;->c:I

    .line 120
    .line 121
    if-nez v4, :cond_85

    .line 122
    .line 123
    if-le v6, v5, :cond_7d

    .line 124
    .line 125
    goto :goto_85

    .line 126
    :cond_7d
    iget v0, v0, Lp0/c;->b:I

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    .line 130
    .line 131
    sub-int/2addr v5, v6

    .line 132
    move-object v6, v1

    .line 133
    goto :goto_64

    .line 134
    :cond_85
    :goto_85
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Ll9/o;->g([B)Ll9/o;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :cond_8e
    int-to-long v1, v2

    .line 144
    invoke-virtual {v0, v1, v2}, Ll9/a0;->f(J)Ll9/o;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0
.end method

.method public final e(II)I
    .registers 6

    .line 1
    and-int/2addr p1, p2

    .line 2
    if-ge p1, p2, :cond_4

    .line 3
    .line 4
    return p1

    .line 5
    :cond_4
    const/4 p1, 0x0

    .line 6
    :goto_5
    iget-object v0, p0, Lr7/c;->b:Ll9/a0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/a0;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/lit16 v1, v0, 0xff

    .line 13
    .line 14
    and-int/lit16 v2, v0, 0x80

    .line 15
    .line 16
    if-eqz v2, :cond_18

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x7f

    .line 19
    .line 20
    shl-int/2addr v0, p1

    .line 21
    add-int/2addr p2, v0

    .line 22
    add-int/lit8 p1, p1, 0x7

    .line 23
    .line 24
    goto :goto_5

    .line 25
    :cond_18
    shl-int p1, v1, p1

    .line 26
    .line 27
    add-int/2addr p2, p1

    .line 28
    return p2
.end method
