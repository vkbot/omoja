.class public final Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;
.super Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;
    }
.end annotation


# instance fields
.field protected volatile buffer:[B

.field protected count:I

.field protected markLimit:I

.field protected markPos:I

.field protected pos:I


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_15

    .line 16
    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    const-string p1, "Size must be > 0"

    .line 23
    .line 24
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;-><init>(Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream$Builder;)V

    return-void
.end method

.method private fillBuffer(Ljava/io/InputStream;[B)I
    .registers 8

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_45

    .line 6
    .line 7
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 8
    .line 9
    sub-int/2addr v3, v0

    .line 10
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markLimit:I

    .line 11
    .line 12
    if-lt v3, v4, :cond_e

    .line 13
    .line 14
    goto :goto_45

    .line 15
    :cond_e
    if-nez v0, :cond_24

    .line 16
    .line 17
    array-length v2, p2

    .line 18
    if-le v4, v2, :cond_24

    .line 19
    .line 20
    array-length v0, p2

    .line 21
    mul-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    if-le v0, v4, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v4, v0

    .line 27
    :goto_1a
    new-array v0, v4, [B

    .line 28
    .line 29
    array-length v2, p2

    .line 30
    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 34
    .line 35
    move-object p2, v0

    .line 36
    goto :goto_2b

    .line 37
    :cond_24
    if-lez v0, :cond_2b

    .line 38
    .line 39
    array-length v2, p2

    .line 40
    sub-int/2addr v2, v0

    .line 41
    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    :goto_2b
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 45
    .line 46
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 47
    .line 48
    sub-int/2addr v0, v2

    .line 49
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 50
    .line 51
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 52
    .line 53
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 54
    .line 55
    array-length v1, p2

    .line 56
    sub-int/2addr v1, v0

    .line 57
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget p2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 62
    .line 63
    if-gtz p1, :cond_41

    .line 64
    .line 65
    goto :goto_42

    .line 66
    :cond_41
    add-int/2addr p2, p1

    .line 67
    :goto_42
    iput p2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 68
    .line 69
    return p1

    .line 70
    :cond_45
    :goto_45
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-lez p1, :cond_51

    .line 75
    .line 76
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 77
    .line 78
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 79
    .line 80
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 81
    .line 82
    :cond_51
    return p1
.end method


# virtual methods
.method public available()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 10
    .line 11
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, v1

    .line 19
    return v0

    .line 20
    :cond_13
    const-string v0, "Stream is closed"

    .line 21
    .line 22
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public close()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 7
    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public getBuffer()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public mark(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markLimit:I

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 4
    .line 5
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 6
    .line 7
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public read()I
    .registers 7

    .line 139
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 140
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 141
    const-string v2, "Stream is closed"

    if-eqz v0, :cond_37

    if-eqz v1, :cond_37

    .line 142
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_18

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v1

    if-ne v1, v5, :cond_18

    return v5

    .line 143
    :cond_18
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eq v0, v1, :cond_26

    .line 144
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    if-eqz v0, :cond_21

    goto :goto_26

    .line 145
    :cond_21
    invoke-static {v2}, Ln0/b;->A(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 146
    :cond_26
    :goto_26
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_36

    add-int/lit8 v1, v2, 0x1

    .line 147
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_36
    return v5

    .line 148
    :cond_37
    invoke-static {v2}, Ln0/b;->A(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .registers 11

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_7

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 9
    .line 10
    const-string v1, "Stream is closed"

    .line 11
    .line 12
    if-eqz v0, :cond_86

    .line 13
    .line 14
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 15
    .line 16
    if-eqz v2, :cond_82

    .line 17
    .line 18
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 19
    .line 20
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 21
    .line 22
    if-ge v3, v4, :cond_34

    .line 23
    .line 24
    sub-int v5, v4, v3

    .line 25
    .line 26
    if-lt v5, p3, :cond_1d

    .line 27
    .line 28
    move v4, p3

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    sub-int/2addr v4, v3

    .line 31
    :goto_1e
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 35
    .line 36
    add-int/2addr v3, v4

    .line 37
    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 38
    .line 39
    if-eq v4, p3, :cond_33

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2f

    .line 46
    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    add-int/2addr p2, v4

    .line 49
    sub-int v3, p3, v4

    .line 50
    .line 51
    goto :goto_35

    .line 52
    :cond_33
    :goto_33
    return v4

    .line 53
    :cond_34
    move v3, p3

    .line 54
    :goto_35
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 55
    .line 56
    const/4 v5, -0x1

    .line 57
    if-ne v4, v5, :cond_48

    .line 58
    .line 59
    array-length v4, v0

    .line 60
    if-lt v3, v4, :cond_48

    .line 61
    .line 62
    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-ne v4, v5, :cond_74

    .line 67
    .line 68
    if-ne v3, p3, :cond_46

    .line 69
    .line 70
    return v5

    .line 71
    :cond_46
    sub-int/2addr p3, v3

    .line 72
    return p3

    .line 73
    :cond_48
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->fillBuffer(Ljava/io/InputStream;[B)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v4, v5, :cond_53

    .line 78
    .line 79
    if-ne v3, p3, :cond_51

    .line 80
    .line 81
    return v5

    .line 82
    :cond_51
    sub-int/2addr p3, v3

    .line 83
    return p3

    .line 84
    :cond_53
    iget-object v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 85
    .line 86
    if-eq v0, v4, :cond_61

    .line 87
    .line 88
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 89
    .line 90
    if-eqz v0, :cond_5c

    .line 91
    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_5f
    const/4 p1, 0x0

    .line 97
    return p1

    .line 98
    :cond_61
    :goto_61
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 99
    .line 100
    iget v5, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 101
    .line 102
    sub-int v6, v4, v5

    .line 103
    .line 104
    if-lt v6, v3, :cond_6b

    .line 105
    .line 106
    move v4, v3

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    sub-int/2addr v4, v5

    .line 109
    :goto_6c
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    iget v5, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 113
    .line 114
    add-int/2addr v5, v4

    .line 115
    iput v5, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 116
    .line 117
    :cond_74
    sub-int/2addr v3, v4

    .line 118
    if-nez v3, :cond_78

    .line 119
    .line 120
    return p3

    .line 121
    :cond_78
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_80

    .line 126
    .line 127
    sub-int/2addr p3, v3

    .line 128
    return p3

    .line 129
    :cond_80
    add-int/2addr p2, v4

    .line 130
    goto :goto_35

    .line 131
    :cond_82
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_5f

    .line 135
    :cond_86
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5f
.end method

.method public reset()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v1, v0, :cond_c

    .line 9
    .line 10
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const-string v0, "Mark has been invalidated"

    .line 14
    .line 15
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    const-string v0, "Stream is closed"

    .line 20
    .line 21
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public skip(J)J
    .registers 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->buffer:[B

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 4
    .line 5
    const-string v2, "Stream is closed"

    .line 6
    .line 7
    if-eqz v0, :cond_64

    .line 8
    .line 9
    const-wide/16 v3, 0x1

    .line 10
    .line 11
    cmp-long v3, p1, v3

    .line 12
    .line 13
    if-gez v3, :cond_11

    .line 14
    .line 15
    const-wide/16 p1, 0x0

    .line 16
    .line 17
    return-wide p1

    .line 18
    :cond_11
    if-eqz v1, :cond_5e

    .line 19
    .line 20
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 21
    .line 22
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 23
    .line 24
    sub-int v4, v2, v3

    .line 25
    .line 26
    int-to-long v4, v4

    .line 27
    cmp-long v4, v4, p1

    .line 28
    .line 29
    if-ltz v4, :cond_23

    .line 30
    .line 31
    long-to-int v0, p1

    .line 32
    add-int/2addr v3, v0

    .line 33
    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 34
    .line 35
    return-wide p1

    .line 36
    :cond_23
    sub-int v3, v2, v3

    .line 37
    .line 38
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 39
    .line 40
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markPos:I

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq v2, v4, :cond_56

    .line 44
    .line 45
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->markLimit:I

    .line 46
    .line 47
    int-to-long v5, v2

    .line 48
    cmp-long v2, p1, v5

    .line 49
    .line 50
    if-gtz v2, :cond_56

    .line 51
    .line 52
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->fillBuffer(Ljava/io/InputStream;[B)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v0, v4, :cond_3b

    .line 57
    .line 58
    int-to-long p1, v3

    .line 59
    return-wide p1

    .line 60
    :cond_3b
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->count:I

    .line 61
    .line 62
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 63
    .line 64
    sub-int v2, v0, v1

    .line 65
    .line 66
    int-to-long v4, v2

    .line 67
    int-to-long v6, v3

    .line 68
    sub-long v6, p1, v6

    .line 69
    .line 70
    cmp-long v2, v4, v6

    .line 71
    .line 72
    if-ltz v2, :cond_4f

    .line 73
    .line 74
    long-to-int v0, p1

    .line 75
    sub-int/2addr v0, v3

    .line 76
    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 78
    .line 79
    return-wide p1

    .line 80
    :cond_4f
    sub-int p1, v0, v1

    .line 81
    .line 82
    add-int/2addr p1, v3

    .line 83
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedInputStream;->pos:I

    .line 84
    .line 85
    int-to-long p1, p1

    .line 86
    return-wide p1

    .line 87
    :cond_56
    int-to-long v2, v3

    .line 88
    sub-long/2addr p1, v2

    .line 89
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    add-long/2addr p1, v2

    .line 94
    return-wide p1

    .line 95
    :cond_5e
    invoke-static {v2}, Ln0/b;->A(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-wide/16 p1, 0x0

    .line 99
    .line 100
    return-wide p1

    .line 101
    :cond_64
    invoke-static {v2}, Ln0/b;->A(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-wide/16 p1, 0x0

    .line 105
    .line 106
    return-wide p1
.end method
