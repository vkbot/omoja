.class public final Lcom/google/protobuf/k;
.super Lcom/google/protobuf/n;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BII)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2d

    .line 5
    .line 6
    or-int v0, p2, p3

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    add-int v2, p2, p3

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    or-int/2addr v0, v1

    .line 13
    if-ltz v0, :cond_15

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/protobuf/k;->d:[B

    .line 16
    .line 17
    iput p2, p0, Lcom/google/protobuf/k;->f:I

    .line 18
    .line 19
    iput v2, p0, Lcom/google/protobuf/k;->e:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    array-length p1, p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 40
    .line 41
    invoke-static {p2, p1}, Ln0/b;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    throw p1

    .line 46
    :cond_2d
    const-string p1, "buffer"

    .line 47
    .line 48
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1
.end method


# virtual methods
.method public final A(J)V
    .registers 12

    .line 1
    sget-boolean v0, Lcom/google/protobuf/n;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget-object v2, p0, Lcom/google/protobuf/k;->d:[B

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    const-wide/16 v5, -0x80

    .line 9
    .line 10
    if-eqz v0, :cond_36

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/k;->B()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    if-lt v0, v7, :cond_36

    .line 19
    .line 20
    :goto_13
    and-long v7, p1, v5

    .line 21
    .line 22
    cmp-long v0, v7, v3

    .line 23
    .line 24
    iget v7, p0, Lcom/google/protobuf/k;->f:I

    .line 25
    .line 26
    if-nez v0, :cond_26

    .line 27
    .line 28
    add-int/lit8 v0, v7, 0x1

    .line 29
    .line 30
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 31
    .line 32
    int-to-long v0, v7

    .line 33
    long-to-int p1, p1

    .line 34
    int-to-byte p1, p1

    .line 35
    invoke-static {v2, v0, v1, p1}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    add-int/lit8 v0, v7, 0x1

    .line 40
    .line 41
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 42
    .line 43
    int-to-long v7, v7

    .line 44
    long-to-int v0, p1

    .line 45
    and-int/lit8 v0, v0, 0x7f

    .line 46
    .line 47
    or-int/lit16 v0, v0, 0x80

    .line 48
    .line 49
    int-to-byte v0, v0

    .line 50
    invoke-static {v2, v7, v8, v0}, Lcom/google/protobuf/s1;->k([BJB)V

    .line 51
    .line 52
    .line 53
    ushr-long/2addr p1, v1

    .line 54
    goto :goto_13

    .line 55
    :cond_36
    :goto_36
    and-long v7, p1, v5

    .line 56
    .line 57
    cmp-long v0, v7, v3

    .line 58
    .line 59
    iget v7, p0, Lcom/google/protobuf/k;->f:I

    .line 60
    .line 61
    if-nez v0, :cond_49

    .line 62
    .line 63
    add-int/lit8 v0, v7, 0x1

    .line 64
    .line 65
    :try_start_40
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 66
    .line 67
    long-to-int p1, p1

    .line 68
    int-to-byte p1, p1

    .line 69
    aput-byte p1, v2, v7

    .line 70
    .line 71
    return-void

    .line 72
    :catch_47
    move-exception p1

    .line 73
    goto :goto_57

    .line 74
    :cond_49
    add-int/lit8 v0, v7, 0x1

    .line 75
    .line 76
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 77
    .line 78
    long-to-int v0, p1

    .line 79
    and-int/lit8 v0, v0, 0x7f

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x80

    .line 82
    .line 83
    int-to-byte v0, v0

    .line 84
    aput-byte v0, v2, v7
    :try_end_55
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_55} :catch_47

    .line 85
    .line 86
    ushr-long/2addr p1, v1

    .line 87
    goto :goto_36

    .line 88
    :goto_57
    new-instance p2, Lcom/google/protobuf/l;

    .line 89
    .line 90
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 112
    .line 113
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 118
    .line 119
    .line 120
    throw p2
.end method

.method public final B()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/k;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final C([BII)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/k;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/protobuf/k;->f:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/protobuf/k;->f:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    .line 12
    .line 13
    return-void

    .line 14
    :catch_d
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/protobuf/l;

    .line 16
    .line 17
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 38
    .line 39
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-direct {p2, p3, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 44
    .line 45
    .line 46
    throw p2
.end method

.method public final g(B)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/k;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 8
    .line 9
    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    .line 10
    .line 11
    return-void

    .line 12
    :catch_b
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/protobuf/l;

    .line 14
    .line 15
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/google/protobuf/k;->e:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 37
    .line 38
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final h(IZ)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    int-to-byte p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->g(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i(I[B)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->y(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/protobuf/k;->C([BII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(ILcom/google/protobuf/g;)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->k(Lcom/google/protobuf/g;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k(Lcom/google/protobuf/g;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/g;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/k;->y(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/protobuf/g;->c:[B

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/g;->f()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/g;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/k;->r([BII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final l(II)V
    .registers 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->m(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m(I)V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/k;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 8
    .line 9
    and-int/lit16 v3, p1, 0xff

    .line 10
    .line 11
    int-to-byte v3, v3

    .line 12
    aput-byte v3, v0, v1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 17
    .line 18
    shr-int/lit8 v4, p1, 0x8

    .line 19
    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 21
    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, v0, v2

    .line 24
    .line 25
    add-int/lit8 v2, v1, 0x3

    .line 26
    .line 27
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 28
    .line 29
    shr-int/lit8 v4, p1, 0x10

    .line 30
    .line 31
    and-int/lit16 v4, v4, 0xff

    .line 32
    .line 33
    int-to-byte v4, v4

    .line 34
    aput-byte v4, v0, v3

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x4

    .line 37
    .line 38
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 39
    .line 40
    shr-int/lit8 p1, p1, 0x18

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xff

    .line 43
    .line 44
    int-to-byte p1, p1

    .line 45
    aput-byte p1, v0, v2
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 46
    .line 47
    return-void

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    new-instance v0, Lcom/google/protobuf/l;

    .line 50
    .line 51
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v2, p0, Lcom/google/protobuf/k;->e:I

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 73
    .line 74
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final n(IJ)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/k;->o(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(J)V
    .registers 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/k;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 8
    .line 9
    long-to-int v3, p1

    .line 10
    and-int/lit16 v3, v3, 0xff

    .line 11
    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v0, v1

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x2

    .line 16
    .line 17
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 18
    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    shr-long v5, p1, v4

    .line 22
    .line 23
    long-to-int v5, v5

    .line 24
    and-int/lit16 v5, v5, 0xff

    .line 25
    .line 26
    int-to-byte v5, v5

    .line 27
    aput-byte v5, v0, v2

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x3

    .line 30
    .line 31
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 32
    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    shr-long v5, p1, v5

    .line 36
    .line 37
    long-to-int v5, v5

    .line 38
    and-int/lit16 v5, v5, 0xff

    .line 39
    .line 40
    int-to-byte v5, v5

    .line 41
    aput-byte v5, v0, v3

    .line 42
    .line 43
    add-int/lit8 v3, v1, 0x4

    .line 44
    .line 45
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 46
    .line 47
    const/16 v5, 0x18

    .line 48
    .line 49
    shr-long v5, p1, v5

    .line 50
    .line 51
    long-to-int v5, v5

    .line 52
    and-int/lit16 v5, v5, 0xff

    .line 53
    .line 54
    int-to-byte v5, v5

    .line 55
    aput-byte v5, v0, v2

    .line 56
    .line 57
    add-int/lit8 v2, v1, 0x5

    .line 58
    .line 59
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 60
    .line 61
    const/16 v5, 0x20

    .line 62
    .line 63
    shr-long v5, p1, v5

    .line 64
    .line 65
    long-to-int v5, v5

    .line 66
    and-int/lit16 v5, v5, 0xff

    .line 67
    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, v0, v3

    .line 70
    .line 71
    add-int/lit8 v3, v1, 0x6

    .line 72
    .line 73
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 74
    .line 75
    const/16 v5, 0x28

    .line 76
    .line 77
    shr-long v5, p1, v5

    .line 78
    .line 79
    long-to-int v5, v5

    .line 80
    and-int/lit16 v5, v5, 0xff

    .line 81
    .line 82
    int-to-byte v5, v5

    .line 83
    aput-byte v5, v0, v2

    .line 84
    .line 85
    add-int/lit8 v2, v1, 0x7

    .line 86
    .line 87
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 88
    .line 89
    const/16 v5, 0x30

    .line 90
    .line 91
    shr-long v5, p1, v5

    .line 92
    .line 93
    long-to-int v5, v5

    .line 94
    and-int/lit16 v5, v5, 0xff

    .line 95
    .line 96
    int-to-byte v5, v5

    .line 97
    aput-byte v5, v0, v3

    .line 98
    .line 99
    add-int/2addr v1, v4

    .line 100
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 101
    .line 102
    const/16 v1, 0x38

    .line 103
    .line 104
    shr-long/2addr p1, v1

    .line 105
    long-to-int p1, p1

    .line 106
    and-int/lit16 p1, p1, 0xff

    .line 107
    .line 108
    int-to-byte p1, p1

    .line 109
    aput-byte p1, v0, v2
    :try_end_6e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 110
    .line 111
    return-void

    .line 112
    :catch_6f
    move-exception p1

    .line 113
    new-instance p2, Lcom/google/protobuf/l;

    .line 114
    .line 115
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 137
    .line 138
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 143
    .line 144
    .line 145
    throw p2
.end method

.method public final p(II)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->q(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->y(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/k;->A(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r([BII)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/k;->C([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final s(ILcom/google/protobuf/a;Lcom/google/protobuf/b1;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->y(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/protobuf/n;->a:Lcom/google/protobuf/l0;

    .line 13
    .line 14
    invoke-interface {p3, p2, p1}, Lcom/google/protobuf/b1;->a(Ljava/lang/Object;Lcom/google/protobuf/l0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t(Lcom/google/protobuf/a;)V
    .registers 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/protobuf/y;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/k;->y(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/google/protobuf/a;->c(Lcom/google/protobuf/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final u(ILjava/lang/String;)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->v(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 2
    .line 3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/protobuf/n;->d(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lcom/google/protobuf/n;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_14
    .catch Lcom/google/protobuf/u1; {:try_start_2 .. :try_end_14} :catch_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_14} :catch_31

    .line 21
    iget-object v3, p0, Lcom/google/protobuf/k;->d:[B

    .line 22
    .line 23
    if-ne v2, v1, :cond_35

    .line 24
    .line 25
    add-int v1, v0, v2

    .line 26
    .line 27
    :try_start_1a
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/protobuf/k;->B()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sget-object v5, Lcom/google/protobuf/v1;->a:Lcom/google/protobuf/t1;

    .line 34
    .line 35
    invoke-virtual {v5, p1, v3, v1, v4}, Lcom/google/protobuf/t1;->b(Ljava/lang/String;[BII)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 40
    .line 41
    sub-int v3, v1, v0

    .line 42
    .line 43
    sub-int/2addr v3, v2

    .line 44
    invoke-virtual {p0, v3}, Lcom/google/protobuf/k;->y(I)V

    .line 45
    .line 46
    .line 47
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 48
    .line 49
    return-void

    .line 50
    :catch_31
    move-exception p1

    .line 51
    goto :goto_4b

    .line 52
    :catch_33
    move-exception v1

    .line 53
    goto :goto_51

    .line 54
    :cond_35
    invoke-static {p1}, Lcom/google/protobuf/v1;->b(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p0, v1}, Lcom/google/protobuf/k;->y(I)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/k;->B()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sget-object v4, Lcom/google/protobuf/v1;->a:Lcom/google/protobuf/t1;

    .line 68
    .line 69
    invoke-virtual {v4, p1, v3, v1, v2}, Lcom/google/protobuf/t1;->b(Ljava/lang/String;[BII)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, p0, Lcom/google/protobuf/k;->f:I
    :try_end_4a
    .catch Lcom/google/protobuf/u1; {:try_start_1a .. :try_end_4a} :catch_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_4a} :catch_31

    .line 74
    .line 75
    return-void

    .line 76
    :goto_4b
    new-instance v0, Lcom/google/protobuf/l;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :goto_51
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 83
    .line 84
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Lcom/google/protobuf/u1;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final w(II)V
    .registers 3

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->y(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final x(II)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->y(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final y(I)V
    .registers 6

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/protobuf/k;->d:[B

    .line 6
    .line 7
    if-nez v0, :cond_12

    .line 8
    .line 9
    add-int/lit8 v0, v1, 0x1

    .line 10
    .line 11
    :try_start_a
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 12
    .line 13
    int-to-byte p1, p1

    .line 14
    aput-byte p1, v2, v1

    .line 15
    .line 16
    return-void

    .line 17
    :catch_10
    move-exception p1

    .line 18
    goto :goto_20

    .line 19
    :cond_12
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 22
    .line 23
    and-int/lit8 v0, p1, 0x7f

    .line 24
    .line 25
    or-int/lit16 v0, v0, 0x80

    .line 26
    .line 27
    int-to-byte v0, v0

    .line 28
    aput-byte v0, v2, v1
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_1d} :catch_10

    .line 29
    .line 30
    ushr-int/lit8 p1, p1, 0x7

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_20
    new-instance v0, Lcom/google/protobuf/l;

    .line 34
    .line 35
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/google/protobuf/k;->e:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 57
    .line 58
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public final z(IJ)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->w(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/k;->A(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
