.class public final Lcom/google/protobuf/i;
.super Lcom/google/protobuf/j;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Ljava/io/InputStream;

.field public final e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/j;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/google/protobuf/i;->k:I

    .line 8
    .line 9
    const-string v0, "input"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/protobuf/b0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/protobuf/i;->d:Ljava/io/InputStream;

    .line 15
    .line 16
    const/16 p1, 0x1000

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/protobuf/i;->e:[B

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/protobuf/i;->f:I

    .line 24
    .line 25
    iput p1, p0, Lcom/google/protobuf/i;->h:I

    .line 26
    .line 27
    iput p1, p0, Lcom/google/protobuf/i;->j:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final A(I)[B
    .registers 9

    .line 1
    if-nez p1, :cond_5

    .line 2
    .line 3
    sget-object p1, Lcom/google/protobuf/b0;->b:[B

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_5
    if-ltz p1, :cond_75

    .line 7
    .line 8
    iget v0, p0, Lcom/google/protobuf/i;->j:I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 11
    .line 12
    add-int v2, v0, v1

    .line 13
    .line 14
    add-int/2addr v2, p1

    .line 15
    const v3, 0x7fffffff

    .line 16
    .line 17
    .line 18
    sub-int v3, v2, v3

    .line 19
    .line 20
    if-gtz v3, :cond_6d

    .line 21
    .line 22
    iget v3, p0, Lcom/google/protobuf/i;->k:I

    .line 23
    .line 24
    if-gt v2, v3, :cond_63

    .line 25
    .line 26
    iget v0, p0, Lcom/google/protobuf/i;->f:I

    .line 27
    .line 28
    sub-int/2addr v0, v1

    .line 29
    sub-int v1, p1, v0

    .line 30
    .line 31
    const/16 v2, 0x1000

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    iget-object v4, p0, Lcom/google/protobuf/i;->d:Ljava/io/InputStream;

    .line 35
    .line 36
    if-lt v1, v2, :cond_32

    .line 37
    .line 38
    :try_start_25
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    .line 39
    .line 40
    .line 41
    move-result v2
    :try_end_29
    .catch Lcom/google/protobuf/d0; {:try_start_25 .. :try_end_29} :catch_2e

    .line 42
    if-gt v1, v2, :cond_2c

    .line 43
    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    iput-boolean v3, p1, Lcom/google/protobuf/d0;->b:Z

    .line 49
    .line 50
    throw p1

    .line 51
    :cond_32
    :goto_32
    new-array v1, p1, [B

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/protobuf/i;->e:[B

    .line 54
    .line 55
    iget v5, p0, Lcom/google/protobuf/i;->h:I

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static {v2, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lcom/google/protobuf/i;->j:I

    .line 62
    .line 63
    iget v5, p0, Lcom/google/protobuf/i;->f:I

    .line 64
    .line 65
    add-int/2addr v2, v5

    .line 66
    iput v2, p0, Lcom/google/protobuf/i;->j:I

    .line 67
    .line 68
    iput v6, p0, Lcom/google/protobuf/i;->h:I

    .line 69
    .line 70
    iput v6, p0, Lcom/google/protobuf/i;->f:I

    .line 71
    .line 72
    :goto_47
    if-ge v0, p1, :cond_62

    .line 73
    .line 74
    sub-int v2, p1, v0

    .line 75
    .line 76
    :try_start_4b
    invoke-virtual {v4, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 77
    .line 78
    .line 79
    move-result v2
    :try_end_4f
    .catch Lcom/google/protobuf/d0; {:try_start_4b .. :try_end_4f} :catch_5e

    .line 80
    const/4 v5, -0x1

    .line 81
    if-eq v2, v5, :cond_59

    .line 82
    .line 83
    iget v5, p0, Lcom/google/protobuf/i;->j:I

    .line 84
    .line 85
    add-int/2addr v5, v2

    .line 86
    iput v5, p0, Lcom/google/protobuf/i;->j:I

    .line 87
    .line 88
    add-int/2addr v0, v2

    .line 89
    goto :goto_47

    .line 90
    :cond_59
    invoke-static {}, Lcom/google/protobuf/d0;->e()Lcom/google/protobuf/d0;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    throw p1

    .line 95
    :catch_5e
    move-exception p1

    .line 96
    iput-boolean v3, p1, Lcom/google/protobuf/d0;->b:Z

    .line 97
    .line 98
    throw p1

    .line 99
    :cond_62
    return-object v1

    .line 100
    :cond_63
    sub-int/2addr v3, v0

    .line 101
    sub-int/2addr v3, v1

    .line 102
    invoke-virtual {p0, v3}, Lcom/google/protobuf/i;->J(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/google/protobuf/d0;->e()Lcom/google/protobuf/d0;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    throw p1

    .line 110
    :cond_6d
    new-instance p1, Lcom/google/protobuf/d0;

    .line 111
    .line 112
    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_75
    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    throw p1
.end method

.method public final B(I)Ljava/util/ArrayList;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_5
    if-lez p1, :cond_2e

    .line 7
    .line 8
    const/16 v1, 0x1000

    .line 9
    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_10
    if-ge v3, v1, :cond_29

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/protobuf/i;->d:Ljava/io/InputStream;

    .line 20
    .line 21
    sub-int v5, v1, v3

    .line 22
    .line 23
    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    if-eq v4, v5, :cond_24

    .line 29
    .line 30
    iget v5, p0, Lcom/google/protobuf/i;->j:I

    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    iput v5, p0, Lcom/google/protobuf/i;->j:I

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    goto :goto_10

    .line 37
    :cond_24
    invoke-static {}, Lcom/google/protobuf/d0;->e()Lcom/google/protobuf/d0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    throw p1

    .line 42
    :cond_29
    sub-int/2addr p1, v1

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_5

    .line 47
    :cond_2e
    return-object v0
.end method

.method public final C()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-ge v1, v2, :cond_d

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/google/protobuf/i;->I(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 13
    .line 14
    :cond_d
    add-int/lit8 v1, v0, 0x4

    .line 15
    .line 16
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/protobuf/i;->e:[B

    .line 19
    .line 20
    aget-byte v2, v1, v0

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    add-int/lit8 v3, v0, 0x1

    .line 25
    .line 26
    aget-byte v3, v1, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x8

    .line 31
    .line 32
    or-int/2addr v2, v3

    .line 33
    add-int/lit8 v3, v0, 0x2

    .line 34
    .line 35
    aget-byte v3, v1, v3

    .line 36
    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    shl-int/lit8 v3, v3, 0x10

    .line 40
    .line 41
    or-int/2addr v2, v3

    .line 42
    add-int/lit8 v0, v0, 0x3

    .line 43
    .line 44
    aget-byte v0, v1, v0

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    shl-int/lit8 v0, v0, 0x18

    .line 49
    .line 50
    or-int/2addr v0, v2

    .line 51
    return v0
.end method

.method public final D()J
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-ge v1, v2, :cond_e

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/google/protobuf/i;->I(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 14
    .line 15
    :cond_e
    add-int/lit8 v1, v0, 0x8

    .line 16
    .line 17
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/protobuf/i;->e:[B

    .line 20
    .line 21
    aget-byte v3, v1, v0

    .line 22
    .line 23
    int-to-long v3, v3

    .line 24
    const-wide/16 v5, 0xff

    .line 25
    .line 26
    and-long/2addr v3, v5

    .line 27
    add-int/lit8 v7, v0, 0x1

    .line 28
    .line 29
    aget-byte v7, v1, v7

    .line 30
    .line 31
    int-to-long v7, v7

    .line 32
    and-long/2addr v7, v5

    .line 33
    shl-long/2addr v7, v2

    .line 34
    or-long v2, v3, v7

    .line 35
    .line 36
    add-int/lit8 v4, v0, 0x2

    .line 37
    .line 38
    aget-byte v4, v1, v4

    .line 39
    .line 40
    int-to-long v7, v4

    .line 41
    and-long/2addr v7, v5

    .line 42
    const/16 v4, 0x10

    .line 43
    .line 44
    shl-long/2addr v7, v4

    .line 45
    or-long/2addr v2, v7

    .line 46
    add-int/lit8 v4, v0, 0x3

    .line 47
    .line 48
    aget-byte v4, v1, v4

    .line 49
    .line 50
    int-to-long v7, v4

    .line 51
    and-long/2addr v7, v5

    .line 52
    const/16 v4, 0x18

    .line 53
    .line 54
    shl-long/2addr v7, v4

    .line 55
    or-long/2addr v2, v7

    .line 56
    add-int/lit8 v4, v0, 0x4

    .line 57
    .line 58
    aget-byte v4, v1, v4

    .line 59
    .line 60
    int-to-long v7, v4

    .line 61
    and-long/2addr v7, v5

    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    shl-long/2addr v7, v4

    .line 65
    or-long/2addr v2, v7

    .line 66
    add-int/lit8 v4, v0, 0x5

    .line 67
    .line 68
    aget-byte v4, v1, v4

    .line 69
    .line 70
    int-to-long v7, v4

    .line 71
    and-long/2addr v7, v5

    .line 72
    const/16 v4, 0x28

    .line 73
    .line 74
    shl-long/2addr v7, v4

    .line 75
    or-long/2addr v2, v7

    .line 76
    add-int/lit8 v4, v0, 0x6

    .line 77
    .line 78
    aget-byte v4, v1, v4

    .line 79
    .line 80
    int-to-long v7, v4

    .line 81
    and-long/2addr v7, v5

    .line 82
    const/16 v4, 0x30

    .line 83
    .line 84
    shl-long/2addr v7, v4

    .line 85
    or-long/2addr v2, v7

    .line 86
    add-int/lit8 v0, v0, 0x7

    .line 87
    .line 88
    aget-byte v0, v1, v0

    .line 89
    .line 90
    int-to-long v0, v0

    .line 91
    and-long/2addr v0, v5

    .line 92
    const/16 v4, 0x38

    .line 93
    .line 94
    shl-long/2addr v0, v4

    .line 95
    or-long/2addr v0, v2

    .line 96
    return-wide v0
.end method

.method public final E()I
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_7

    .line 6
    .line 7
    goto :goto_6b

    .line 8
    :cond_7
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/protobuf/i;->e:[B

    .line 11
    .line 12
    aget-byte v4, v3, v0

    .line 13
    .line 14
    if-ltz v4, :cond_12

    .line 15
    .line 16
    iput v2, p0, Lcom/google/protobuf/i;->h:I

    .line 17
    .line 18
    return v4

    .line 19
    :cond_12
    sub-int/2addr v1, v2

    .line 20
    const/16 v5, 0x9

    .line 21
    .line 22
    if-ge v1, v5, :cond_18

    .line 23
    .line 24
    goto :goto_6b

    .line 25
    :cond_18
    add-int/lit8 v1, v0, 0x2

    .line 26
    .line 27
    aget-byte v2, v3, v2

    .line 28
    .line 29
    shl-int/lit8 v2, v2, 0x7

    .line 30
    .line 31
    xor-int/2addr v2, v4

    .line 32
    if-gez v2, :cond_24

    .line 33
    .line 34
    xor-int/lit8 v0, v2, -0x80

    .line 35
    .line 36
    goto :goto_79

    .line 37
    :cond_24
    add-int/lit8 v4, v0, 0x3

    .line 38
    .line 39
    aget-byte v1, v3, v1

    .line 40
    .line 41
    shl-int/lit8 v1, v1, 0xe

    .line 42
    .line 43
    xor-int/2addr v1, v2

    .line 44
    if-ltz v1, :cond_31

    .line 45
    .line 46
    xor-int/lit16 v0, v1, 0x3f80

    .line 47
    .line 48
    :goto_2f
    move v1, v4

    .line 49
    goto :goto_79

    .line 50
    :cond_31
    add-int/lit8 v2, v0, 0x4

    .line 51
    .line 52
    aget-byte v4, v3, v4

    .line 53
    .line 54
    shl-int/lit8 v4, v4, 0x15

    .line 55
    .line 56
    xor-int/2addr v1, v4

    .line 57
    if-gez v1, :cond_40

    .line 58
    .line 59
    const v0, -0x1fc080

    .line 60
    .line 61
    .line 62
    xor-int/2addr v0, v1

    .line 63
    :goto_3e
    move v1, v2

    .line 64
    goto :goto_79

    .line 65
    :cond_40
    add-int/lit8 v4, v0, 0x5

    .line 66
    .line 67
    aget-byte v2, v3, v2

    .line 68
    .line 69
    shl-int/lit8 v5, v2, 0x1c

    .line 70
    .line 71
    xor-int/2addr v1, v5

    .line 72
    const v5, 0xfe03f80

    .line 73
    .line 74
    .line 75
    xor-int/2addr v1, v5

    .line 76
    if-gez v2, :cond_75

    .line 77
    .line 78
    add-int/lit8 v2, v0, 0x6

    .line 79
    .line 80
    aget-byte v4, v3, v4

    .line 81
    .line 82
    if-gez v4, :cond_77

    .line 83
    .line 84
    add-int/lit8 v4, v0, 0x7

    .line 85
    .line 86
    aget-byte v2, v3, v2

    .line 87
    .line 88
    if-gez v2, :cond_75

    .line 89
    .line 90
    add-int/lit8 v2, v0, 0x8

    .line 91
    .line 92
    aget-byte v4, v3, v4

    .line 93
    .line 94
    if-gez v4, :cond_77

    .line 95
    .line 96
    add-int/lit8 v4, v0, 0x9

    .line 97
    .line 98
    aget-byte v2, v3, v2

    .line 99
    .line 100
    if-gez v2, :cond_75

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0xa

    .line 103
    .line 104
    aget-byte v2, v3, v4

    .line 105
    .line 106
    if-gez v2, :cond_71

    .line 107
    .line 108
    :goto_6b
    invoke-virtual {p0}, Lcom/google/protobuf/i;->G()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    long-to-int v0, v0

    .line 113
    return v0

    .line 114
    :cond_71
    move v6, v1

    .line 115
    move v1, v0

    .line 116
    move v0, v6

    .line 117
    goto :goto_79

    .line 118
    :cond_75
    move v0, v1

    .line 119
    goto :goto_2f

    .line 120
    :cond_77
    move v0, v1

    .line 121
    goto :goto_3e

    .line 122
    :goto_79
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 123
    .line 124
    return v0
.end method

.method public final F()J
    .registers 13

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_b6

    .line 8
    .line 9
    :cond_8
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/protobuf/i;->e:[B

    .line 12
    .line 13
    aget-byte v4, v3, v0

    .line 14
    .line 15
    if-ltz v4, :cond_14

    .line 16
    .line 17
    iput v2, p0, Lcom/google/protobuf/i;->h:I

    .line 18
    .line 19
    int-to-long v0, v4

    .line 20
    return-wide v0

    .line 21
    :cond_14
    sub-int/2addr v1, v2

    .line 22
    const/16 v5, 0x9

    .line 23
    .line 24
    if-ge v1, v5, :cond_1b

    .line 25
    .line 26
    goto/16 :goto_b6

    .line 27
    .line 28
    :cond_1b
    add-int/lit8 v1, v0, 0x2

    .line 29
    .line 30
    aget-byte v2, v3, v2

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x7

    .line 33
    .line 34
    xor-int/2addr v2, v4

    .line 35
    if-gez v2, :cond_29

    .line 36
    .line 37
    xor-int/lit8 v0, v2, -0x80

    .line 38
    .line 39
    int-to-long v2, v0

    .line 40
    goto/16 :goto_bd

    .line 41
    .line 42
    :cond_29
    add-int/lit8 v4, v0, 0x3

    .line 43
    .line 44
    aget-byte v1, v3, v1

    .line 45
    .line 46
    shl-int/lit8 v1, v1, 0xe

    .line 47
    .line 48
    xor-int/2addr v1, v2

    .line 49
    if-ltz v1, :cond_38

    .line 50
    .line 51
    xor-int/lit16 v0, v1, 0x3f80

    .line 52
    .line 53
    int-to-long v2, v0

    .line 54
    move v1, v4

    .line 55
    goto/16 :goto_bd

    .line 56
    .line 57
    :cond_38
    add-int/lit8 v2, v0, 0x4

    .line 58
    .line 59
    aget-byte v4, v3, v4

    .line 60
    .line 61
    shl-int/lit8 v4, v4, 0x15

    .line 62
    .line 63
    xor-int/2addr v1, v4

    .line 64
    if-gez v1, :cond_4b

    .line 65
    .line 66
    const v0, -0x1fc080

    .line 67
    .line 68
    .line 69
    xor-int/2addr v0, v1

    .line 70
    int-to-long v0, v0

    .line 71
    :goto_46
    move-wide v10, v0

    .line 72
    move v1, v2

    .line 73
    move-wide v2, v10

    .line 74
    goto/16 :goto_bd

    .line 75
    .line 76
    :cond_4b
    int-to-long v4, v1

    .line 77
    add-int/lit8 v1, v0, 0x5

    .line 78
    .line 79
    aget-byte v2, v3, v2

    .line 80
    .line 81
    int-to-long v6, v2

    .line 82
    const/16 v2, 0x1c

    .line 83
    .line 84
    shl-long/2addr v6, v2

    .line 85
    xor-long/2addr v4, v6

    .line 86
    const-wide/16 v6, 0x0

    .line 87
    .line 88
    cmp-long v2, v4, v6

    .line 89
    .line 90
    if-ltz v2, :cond_60

    .line 91
    .line 92
    const-wide/32 v2, 0xfe03f80

    .line 93
    .line 94
    .line 95
    :goto_5e
    xor-long/2addr v2, v4

    .line 96
    goto :goto_bd

    .line 97
    :cond_60
    add-int/lit8 v2, v0, 0x6

    .line 98
    .line 99
    aget-byte v1, v3, v1

    .line 100
    .line 101
    int-to-long v8, v1

    .line 102
    const/16 v1, 0x23

    .line 103
    .line 104
    shl-long/2addr v8, v1

    .line 105
    xor-long/2addr v4, v8

    .line 106
    cmp-long v1, v4, v6

    .line 107
    .line 108
    if-gez v1, :cond_74

    .line 109
    .line 110
    const-wide v0, -0x7f01fc080L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :goto_72
    xor-long/2addr v0, v4

    .line 116
    goto :goto_46

    .line 117
    :cond_74
    add-int/lit8 v1, v0, 0x7

    .line 118
    .line 119
    aget-byte v2, v3, v2

    .line 120
    .line 121
    int-to-long v8, v2

    .line 122
    const/16 v2, 0x2a

    .line 123
    .line 124
    shl-long/2addr v8, v2

    .line 125
    xor-long/2addr v4, v8

    .line 126
    cmp-long v2, v4, v6

    .line 127
    .line 128
    if-ltz v2, :cond_87

    .line 129
    .line 130
    const-wide v2, 0x3f80fe03f80L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    goto :goto_5e

    .line 136
    :cond_87
    add-int/lit8 v2, v0, 0x8

    .line 137
    .line 138
    aget-byte v1, v3, v1

    .line 139
    .line 140
    int-to-long v8, v1

    .line 141
    const/16 v1, 0x31

    .line 142
    .line 143
    shl-long/2addr v8, v1

    .line 144
    xor-long/2addr v4, v8

    .line 145
    cmp-long v1, v4, v6

    .line 146
    .line 147
    if-gez v1, :cond_9a

    .line 148
    .line 149
    const-wide v0, -0x1fc07f01fc080L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    goto :goto_72

    .line 155
    :cond_9a
    add-int/lit8 v1, v0, 0x9

    .line 156
    .line 157
    aget-byte v2, v3, v2

    .line 158
    .line 159
    int-to-long v8, v2

    .line 160
    const/16 v2, 0x38

    .line 161
    .line 162
    shl-long/2addr v8, v2

    .line 163
    xor-long/2addr v4, v8

    .line 164
    const-wide v8, 0xfe03f80fe03f80L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    xor-long/2addr v4, v8

    .line 170
    cmp-long v2, v4, v6

    .line 171
    .line 172
    if-gez v2, :cond_bc

    .line 173
    .line 174
    add-int/lit8 v0, v0, 0xa

    .line 175
    .line 176
    aget-byte v1, v3, v1

    .line 177
    .line 178
    int-to-long v1, v1

    .line 179
    cmp-long v1, v1, v6

    .line 180
    .line 181
    if-gez v1, :cond_bb

    .line 182
    .line 183
    :goto_b6
    invoke-virtual {p0}, Lcom/google/protobuf/i;->G()J

    .line 184
    .line 185
    .line 186
    move-result-wide v0

    .line 187
    return-wide v0

    .line 188
    :cond_bb
    move v1, v0

    .line 189
    :cond_bc
    move-wide v2, v4

    .line 190
    :goto_bd
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 191
    .line 192
    return-wide v2
.end method

.method public final G()J
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_28

    .line 7
    .line 8
    iget v3, p0, Lcom/google/protobuf/i;->h:I

    .line 9
    .line 10
    iget v4, p0, Lcom/google/protobuf/i;->f:I

    .line 11
    .line 12
    if-ne v3, v4, :cond_11

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {p0, v3}, Lcom/google/protobuf/i;->I(I)V

    .line 16
    .line 17
    .line 18
    :cond_11
    iget v3, p0, Lcom/google/protobuf/i;->h:I

    .line 19
    .line 20
    add-int/lit8 v4, v3, 0x1

    .line 21
    .line 22
    iput v4, p0, Lcom/google/protobuf/i;->h:I

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/protobuf/i;->e:[B

    .line 25
    .line 26
    aget-byte v3, v4, v3

    .line 27
    .line 28
    and-int/lit8 v4, v3, 0x7f

    .line 29
    .line 30
    int-to-long v4, v4

    .line 31
    shl-long/2addr v4, v2

    .line 32
    or-long/2addr v0, v4

    .line 33
    and-int/lit16 v3, v3, 0x80

    .line 34
    .line 35
    if-nez v3, :cond_25

    .line 36
    .line 37
    return-wide v0

    .line 38
    :cond_25
    add-int/lit8 v2, v2, 0x7

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_28
    invoke-static {}, Lcom/google/protobuf/d0;->c()Lcom/google/protobuf/d0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    throw v0
.end method

.method public final H()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->g:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/protobuf/i;->f:I

    .line 7
    .line 8
    iget v1, p0, Lcom/google/protobuf/i;->j:I

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    iget v2, p0, Lcom/google/protobuf/i;->k:I

    .line 12
    .line 13
    if-le v1, v2, :cond_15

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/google/protobuf/i;->g:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/i;->f:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/google/protobuf/i;->g:I

    .line 24
    .line 25
    return-void
.end method

.method public final I(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i;->K(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1e

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/google/protobuf/i;->j:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-le p1, v0, :cond_19

    .line 17
    .line 18
    new-instance p1, Lcom/google/protobuf/d0;

    .line 19
    .line 20
    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_19
    invoke-static {}, Lcom/google/protobuf/d0;->e()Lcom/google/protobuf/d0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :cond_1e
    return-void
.end method

.method public final J(I)V
    .registers 11

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    if-gt p1, v2, :cond_e

    .line 8
    .line 9
    if-ltz p1, :cond_e

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v2, p0, Lcom/google/protobuf/i;->d:Ljava/io/InputStream;

    .line 16
    .line 17
    if-ltz p1, :cond_9f

    .line 18
    .line 19
    iget v3, p0, Lcom/google/protobuf/i;->j:I

    .line 20
    .line 21
    add-int v4, v3, v1

    .line 22
    .line 23
    add-int v5, v4, p1

    .line 24
    .line 25
    iget v6, p0, Lcom/google/protobuf/i;->k:I

    .line 26
    .line 27
    if-gt v5, v6, :cond_95

    .line 28
    .line 29
    iput v4, p0, Lcom/google/protobuf/i;->j:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/google/protobuf/i;->f:I

    .line 34
    .line 35
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 36
    .line 37
    :goto_24
    const/4 v1, 0x1

    .line 38
    if-ge v0, p1, :cond_70

    .line 39
    .line 40
    sub-int v3, p1, v0

    .line 41
    .line 42
    int-to-long v3, v3

    .line 43
    :try_start_2a
    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v5
    :try_end_2e
    .catch Lcom/google/protobuf/d0; {:try_start_2a .. :try_end_2e} :catch_63
    .catchall {:try_start_2a .. :try_end_2e} :catchall_61

    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    cmp-long v7, v5, v7

    .line 50
    .line 51
    if-ltz v7, :cond_3e

    .line 52
    .line 53
    cmp-long v3, v5, v3

    .line 54
    .line 55
    if-gtz v3, :cond_3e

    .line 56
    .line 57
    if-nez v7, :cond_3b

    .line 58
    .line 59
    goto :goto_70

    .line 60
    :cond_3b
    long-to-int v1, v5

    .line 61
    add-int/2addr v0, v1

    .line 62
    goto :goto_24

    .line 63
    :cond_3e
    :try_start_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, "#skip returned invalid result: "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "\nThe InputStream implementation is buggy."

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :catchall_61
    move-exception p1

    .line 99
    goto :goto_67

    .line 100
    :catch_63
    move-exception p1

    .line 101
    iput-boolean v1, p1, Lcom/google/protobuf/d0;->b:Z

    .line 102
    .line 103
    throw p1
    :try_end_67
    .catchall {:try_start_3e .. :try_end_67} :catchall_61

    .line 104
    :goto_67
    iget v1, p0, Lcom/google/protobuf/i;->j:I

    .line 105
    .line 106
    add-int/2addr v1, v0

    .line 107
    iput v1, p0, Lcom/google/protobuf/i;->j:I

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/google/protobuf/i;->H()V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_70
    :goto_70
    iget v2, p0, Lcom/google/protobuf/i;->j:I

    .line 114
    .line 115
    add-int/2addr v2, v0

    .line 116
    iput v2, p0, Lcom/google/protobuf/i;->j:I

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/google/protobuf/i;->H()V

    .line 119
    .line 120
    .line 121
    if-ge v0, p1, :cond_94

    .line 122
    .line 123
    iget v0, p0, Lcom/google/protobuf/i;->f:I

    .line 124
    .line 125
    iget v2, p0, Lcom/google/protobuf/i;->h:I

    .line 126
    .line 127
    sub-int v2, v0, v2

    .line 128
    .line 129
    iput v0, p0, Lcom/google/protobuf/i;->h:I

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/google/protobuf/i;->I(I)V

    .line 132
    .line 133
    .line 134
    :goto_85
    sub-int v0, p1, v2

    .line 135
    .line 136
    iget v3, p0, Lcom/google/protobuf/i;->f:I

    .line 137
    .line 138
    if-le v0, v3, :cond_92

    .line 139
    .line 140
    add-int/2addr v2, v3

    .line 141
    iput v3, p0, Lcom/google/protobuf/i;->h:I

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lcom/google/protobuf/i;->I(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_85

    .line 147
    :cond_92
    iput v0, p0, Lcom/google/protobuf/i;->h:I

    .line 148
    .line 149
    :cond_94
    return-void

    .line 150
    :cond_95
    sub-int/2addr v6, v3

    .line 151
    sub-int/2addr v6, v1

    .line 152
    invoke-virtual {p0, v6}, Lcom/google/protobuf/i;->J(I)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/google/protobuf/d0;->e()Lcom/google/protobuf/d0;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    throw p1

    .line 160
    :cond_9f
    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    throw p1
.end method

.method public final K(I)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i;->d:Ljava/io/InputStream;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 4
    .line 5
    add-int v2, v1, p1

    .line 6
    .line 7
    iget v3, p0, Lcom/google/protobuf/i;->f:I

    .line 8
    .line 9
    if-le v2, v3, :cond_88

    .line 10
    .line 11
    iget v2, p0, Lcom/google/protobuf/i;->j:I

    .line 12
    .line 13
    const v4, 0x7fffffff

    .line 14
    .line 15
    .line 16
    sub-int v5, v4, v2

    .line 17
    .line 18
    sub-int/2addr v5, v1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-le p1, v5, :cond_16

    .line 21
    .line 22
    goto :goto_60

    .line 23
    :cond_16
    add-int/2addr v2, v1

    .line 24
    add-int/2addr v2, p1

    .line 25
    iget v5, p0, Lcom/google/protobuf/i;->k:I

    .line 26
    .line 27
    if-le v2, v5, :cond_1d

    .line 28
    .line 29
    goto :goto_60

    .line 30
    :cond_1d
    iget-object v2, p0, Lcom/google/protobuf/i;->e:[B

    .line 31
    .line 32
    if-lez v1, :cond_33

    .line 33
    .line 34
    if-le v3, v1, :cond_27

    .line 35
    .line 36
    sub-int/2addr v3, v1

    .line 37
    invoke-static {v2, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    :cond_27
    iget v3, p0, Lcom/google/protobuf/i;->j:I

    .line 41
    .line 42
    add-int/2addr v3, v1

    .line 43
    iput v3, p0, Lcom/google/protobuf/i;->j:I

    .line 44
    .line 45
    iget v3, p0, Lcom/google/protobuf/i;->f:I

    .line 46
    .line 47
    sub-int/2addr v3, v1

    .line 48
    iput v3, p0, Lcom/google/protobuf/i;->f:I

    .line 49
    .line 50
    iput v6, p0, Lcom/google/protobuf/i;->h:I

    .line 51
    .line 52
    :cond_33
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 53
    .line 54
    array-length v3, v2

    .line 55
    sub-int/2addr v3, v1

    .line 56
    iget v5, p0, Lcom/google/protobuf/i;->j:I

    .line 57
    .line 58
    sub-int/2addr v4, v5

    .line 59
    sub-int/2addr v4, v1

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x1

    .line 65
    :try_start_40
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 66
    .line 67
    .line 68
    move-result v1
    :try_end_44
    .catch Lcom/google/protobuf/d0; {:try_start_40 .. :try_end_44} :catch_84

    .line 69
    if-eqz v1, :cond_61

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    if-lt v1, v3, :cond_61

    .line 73
    .line 74
    array-length v2, v2

    .line 75
    if-gt v1, v2, :cond_61

    .line 76
    .line 77
    if-lez v1, :cond_60

    .line 78
    .line 79
    iget v0, p0, Lcom/google/protobuf/i;->f:I

    .line 80
    .line 81
    add-int/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/google/protobuf/i;->f:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/protobuf/i;->H()V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lcom/google/protobuf/i;->f:I

    .line 88
    .line 89
    if-lt v0, p1, :cond_5b

    .line 90
    .line 91
    return v4

    .line 92
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i;->K(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    return p1

    .line 97
    :cond_60
    :goto_60
    return v6

    .line 98
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, "#read(byte[]) returned invalid result: "

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\nThe InputStream implementation is buggy."

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :catch_84
    move-exception p1

    .line 134
    iput-boolean v4, p1, Lcom/google/protobuf/d0;->b:Z

    .line 135
    .line 136
    throw p1

    .line 137
    :cond_88
    const-string v0, "refillBuffer() called when "

    .line 138
    .line 139
    const-string v1, " bytes were already available in buffer"

    .line 140
    .line 141
    invoke-static {p1, v0, v1}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    return p1
.end method

.method public final a(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Lcom/google/protobuf/d0;

    .line 7
    .line 8
    const-string v0, "Protocol message end-group tag did not match expected tag."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final b()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->j:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final c()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_e

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->K(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final e(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/protobuf/i;->k:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/i;->H()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(I)I
    .registers 4

    .line 1
    if-ltz p1, :cond_17

    .line 2
    .line 3
    iget v0, p0, Lcom/google/protobuf/i;->j:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    add-int/2addr v0, p1

    .line 9
    iget p1, p0, Lcom/google/protobuf/i;->k:I

    .line 10
    .line 11
    if-gt v0, p1, :cond_12

    .line 12
    .line 13
    iput v0, p0, Lcom/google/protobuf/i;->k:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/i;->H()V

    .line 16
    .line 17
    .line 18
    return p1

    .line 19
    :cond_12
    invoke-static {}, Lcom/google/protobuf/d0;->e()Lcom/google/protobuf/d0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_17
    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    throw p1
.end method

.method public final g()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->F()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final h()Lcom/google/protobuf/g;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/protobuf/i;->h:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    iget-object v3, p0, Lcom/google/protobuf/i;->e:[B

    .line 11
    .line 12
    if-gt v0, v1, :cond_19

    .line 13
    .line 14
    if-lez v0, :cond_19

    .line 15
    .line 16
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/g;->e([BII)Lcom/google/protobuf/g;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, p0, Lcom/google/protobuf/i;->h:I

    .line 21
    .line 22
    add-int/2addr v2, v0

    .line 23
    iput v2, p0, Lcom/google/protobuf/i;->h:I

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_19
    if-nez v0, :cond_1e

    .line 27
    .line 28
    sget-object v0, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/g;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->A(I)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_2b

    .line 37
    .line 38
    array-length v0, v1

    .line 39
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/g;->e([BII)Lcom/google/protobuf/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_2b
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 45
    .line 46
    iget v4, p0, Lcom/google/protobuf/i;->f:I

    .line 47
    .line 48
    sub-int v5, v4, v1

    .line 49
    .line 50
    iget v6, p0, Lcom/google/protobuf/i;->j:I

    .line 51
    .line 52
    add-int/2addr v6, v4

    .line 53
    iput v6, p0, Lcom/google/protobuf/i;->j:I

    .line 54
    .line 55
    iput v2, p0, Lcom/google/protobuf/i;->h:I

    .line 56
    .line 57
    iput v2, p0, Lcom/google/protobuf/i;->f:I

    .line 58
    .line 59
    sub-int v4, v0, v5

    .line 60
    .line 61
    invoke-virtual {p0, v4}, Lcom/google/protobuf/i;->B(I)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-array v0, v0, [B

    .line 66
    .line 67
    invoke-static {v3, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    move v3, v2

    .line 75
    :goto_4a
    if-ge v3, v1, :cond_5b

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    check-cast v6, [B

    .line 84
    .line 85
    array-length v7, v6

    .line 86
    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    array-length v6, v6

    .line 90
    add-int/2addr v5, v6

    .line 91
    goto :goto_4a

    .line 92
    :cond_5b
    sget-object v1, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/g;

    .line 93
    .line 94
    new-instance v1, Lcom/google/protobuf/g;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lcom/google/protobuf/g;-><init>([B)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method

.method public final i()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->D()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final j()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final k()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final l()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->D()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final m()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final n()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final o()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->F()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final p()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final q()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->D()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final r()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    xor-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public final s()J
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->F()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    ushr-long v2, v0, v2

    .line 7
    .line 8
    const-wide/16 v4, 0x1

    .line 9
    .line 10
    and-long/2addr v0, v4

    .line 11
    neg-long v0, v0

    .line 12
    xor-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public final t()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/i;->e:[B

    .line 6
    .line 7
    if-lez v0, :cond_1c

    .line 8
    .line 9
    iget v2, p0, Lcom/google/protobuf/i;->f:I

    .line 10
    .line 11
    iget v3, p0, Lcom/google/protobuf/i;->h:I

    .line 12
    .line 13
    sub-int/2addr v2, v3

    .line 14
    if-gt v0, v2, :cond_1c

    .line 15
    .line 16
    new-instance v2, Ljava/lang/String;

    .line 17
    .line 18
    sget-object v4, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1c
    if-nez v0, :cond_21

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_21
    iget v2, p0, Lcom/google/protobuf/i;->f:I

    .line 35
    .line 36
    if-gt v0, v2, :cond_37

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->I(I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/lang/String;

    .line 42
    .line 43
    iget v3, p0, Lcom/google/protobuf/i;->h:I

    .line 44
    .line 45
    sget-object v4, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 51
    .line 52
    add-int/2addr v1, v0

    .line 53
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_37
    new-instance v1, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->z(I)[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v2, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method

.method public final u()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/protobuf/i;->h:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/protobuf/i;->f:I

    .line 8
    .line 9
    sub-int v3, v2, v1

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/protobuf/i;->e:[B

    .line 12
    .line 13
    if-gt v0, v3, :cond_15

    .line 14
    .line 15
    if-lez v0, :cond_15

    .line 16
    .line 17
    add-int v2, v1, v0

    .line 18
    .line 19
    iput v2, p0, Lcom/google/protobuf/i;->h:I

    .line 20
    .line 21
    goto :goto_27

    .line 22
    :cond_15
    if-nez v0, :cond_1a

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    if-gt v0, v2, :cond_23

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->I(I)V

    .line 31
    .line 32
    .line 33
    iput v0, p0, Lcom/google/protobuf/i;->h:I

    .line 34
    .line 35
    goto :goto_27

    .line 36
    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->z(I)[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :goto_27
    sget-object v2, Lcom/google/protobuf/v1;->a:Lcom/google/protobuf/t1;

    .line 41
    .line 42
    invoke-virtual {v2, v4, v1, v0}, Lcom/google/protobuf/t1;->a([BII)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public final v()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/protobuf/i;->i:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/protobuf/i;->i:I

    .line 16
    .line 17
    ushr-int/lit8 v1, v0, 0x3

    .line 18
    .line 19
    if-eqz v1, :cond_15

    .line 20
    .line 21
    return v0

    .line 22
    :cond_15
    new-instance v0, Lcom/google/protobuf/d0;

    .line 23
    .line 24
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final w()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final x()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->F()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final y(I)Z
    .registers 7

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_3f

    .line 6
    .line 7
    if-eq v0, v2, :cond_39

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_31

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x3

    .line 14
    if-eq v0, v4, :cond_1e

    .line 15
    .line 16
    if-eq v0, v3, :cond_1d

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-ne v0, p1, :cond_18

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lcom/google/protobuf/i;->J(I)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :cond_18
    invoke-static {}, Lcom/google/protobuf/d0;->b()Lcom/google/protobuf/c0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1

    .line 30
    :cond_1d
    return v1

    .line 31
    :cond_1e
    invoke-virtual {p0}, Lcom/google/protobuf/i;->v()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2a

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/google/protobuf/i;->y(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1e

    .line 42
    .line 43
    :cond_2a
    ushr-int/2addr p1, v4

    .line 44
    shl-int/2addr p1, v4

    .line 45
    or-int/2addr p1, v3

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i;->a(I)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :cond_31
    invoke-virtual {p0}, Lcom/google/protobuf/i;->E()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i;->J(I)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_39
    const/16 p1, 0x8

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i;->J(I)V

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_3f
    iget p1, p0, Lcom/google/protobuf/i;->f:I

    .line 65
    .line 66
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 67
    .line 68
    sub-int/2addr p1, v0

    .line 69
    iget-object v0, p0, Lcom/google/protobuf/i;->e:[B

    .line 70
    .line 71
    const/16 v3, 0xa

    .line 72
    .line 73
    if-lt p1, v3, :cond_5f

    .line 74
    .line 75
    :goto_4a
    if-ge v1, v3, :cond_5a

    .line 76
    .line 77
    iget p1, p0, Lcom/google/protobuf/i;->h:I

    .line 78
    .line 79
    add-int/lit8 v4, p1, 0x1

    .line 80
    .line 81
    iput v4, p0, Lcom/google/protobuf/i;->h:I

    .line 82
    .line 83
    aget-byte p1, v0, p1

    .line 84
    .line 85
    if-ltz p1, :cond_57

    .line 86
    .line 87
    goto :goto_74

    .line 88
    :cond_57
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_4a

    .line 91
    :cond_5a
    invoke-static {}, Lcom/google/protobuf/d0;->c()Lcom/google/protobuf/d0;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    throw p1

    .line 96
    :cond_5f
    :goto_5f
    if-ge v1, v3, :cond_78

    .line 97
    .line 98
    iget p1, p0, Lcom/google/protobuf/i;->h:I

    .line 99
    .line 100
    iget v4, p0, Lcom/google/protobuf/i;->f:I

    .line 101
    .line 102
    if-ne p1, v4, :cond_6a

    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lcom/google/protobuf/i;->I(I)V

    .line 105
    .line 106
    .line 107
    :cond_6a
    iget p1, p0, Lcom/google/protobuf/i;->h:I

    .line 108
    .line 109
    add-int/lit8 v4, p1, 0x1

    .line 110
    .line 111
    iput v4, p0, Lcom/google/protobuf/i;->h:I

    .line 112
    .line 113
    aget-byte p1, v0, p1

    .line 114
    .line 115
    if-ltz p1, :cond_75

    .line 116
    .line 117
    :goto_74
    return v2

    .line 118
    :cond_75
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_5f

    .line 121
    :cond_78
    invoke-static {}, Lcom/google/protobuf/d0;->c()Lcom/google/protobuf/d0;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    throw p1
.end method

.method public final z(I)[B
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i;->A(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    iget v0, p0, Lcom/google/protobuf/i;->h:I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/protobuf/i;->f:I

    .line 11
    .line 12
    sub-int v2, v1, v0

    .line 13
    .line 14
    iget v3, p0, Lcom/google/protobuf/i;->j:I

    .line 15
    .line 16
    add-int/2addr v3, v1

    .line 17
    iput v3, p0, Lcom/google/protobuf/i;->j:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/google/protobuf/i;->h:I

    .line 21
    .line 22
    iput v1, p0, Lcom/google/protobuf/i;->f:I

    .line 23
    .line 24
    sub-int v3, p1, v2

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Lcom/google/protobuf/i;->B(I)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-array p1, p1, [B

    .line 31
    .line 32
    iget-object v4, p0, Lcom/google/protobuf/i;->e:[B

    .line 33
    .line 34
    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    move v4, v1

    .line 42
    :goto_29
    if-ge v4, v0, :cond_3a

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    check-cast v5, [B

    .line 51
    .line 52
    array-length v6, v5

    .line 53
    invoke-static {v5, v1, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    array-length v5, v5

    .line 57
    add-int/2addr v2, v5

    .line 58
    goto :goto_29

    .line 59
    :cond_3a
    return-object p1
.end method
