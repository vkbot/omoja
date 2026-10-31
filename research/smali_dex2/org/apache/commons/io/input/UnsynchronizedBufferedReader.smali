.class public Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;
.super Lorg/apache/commons/io/input/UnsynchronizedReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final NUL:C


# instance fields
.field private buf:[C

.field private end:I

.field private final in:Ljava/io/Reader;

.field private mark:I

.field private markLimit:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/16 v0, 0x2000

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 6
    .line 7
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    .line 8
    .line 9
    if-lez p2, :cond_11

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 12
    .line 13
    new-array p1, p2, [C

    .line 14
    .line 15
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    const-string p1, "size <= 0"

    .line 19
    .line 20
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1
.end method

.method private fillBuf()I
    .registers 7

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_50

    .line 6
    .line 7
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 8
    .line 9
    sub-int/2addr v3, v0

    .line 10
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    .line 11
    .line 12
    if-lt v3, v4, :cond_e

    .line 13
    .line 14
    goto :goto_50

    .line 15
    :cond_e
    if-nez v0, :cond_25

    .line 16
    .line 17
    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 18
    .line 19
    array-length v5, v3

    .line 20
    if-le v4, v5, :cond_25

    .line 21
    .line 22
    array-length v0, v3

    .line 23
    mul-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    if-le v0, v4, :cond_1b

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v4, v0

    .line 29
    :goto_1c
    new-array v0, v4, [C

    .line 30
    .line 31
    array-length v4, v3

    .line 32
    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 36
    .line 37
    goto :goto_3c

    .line 38
    :cond_25
    if-lez v0, :cond_3c

    .line 39
    .line 40
    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    sub-int/2addr v4, v0

    .line 44
    invoke-static {v3, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 48
    .line 49
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 50
    .line 51
    sub-int/2addr v0, v3

    .line 52
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 53
    .line 54
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 55
    .line 56
    sub-int/2addr v0, v3

    .line 57
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 58
    .line 59
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 60
    .line 61
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 62
    .line 63
    iget-object v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 64
    .line 65
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 66
    .line 67
    array-length v4, v1

    .line 68
    sub-int/2addr v4, v3

    .line 69
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eq v0, v2, :cond_4f

    .line 74
    .line 75
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 76
    .line 77
    add-int/2addr v1, v0

    .line 78
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 79
    .line 80
    :cond_4f
    return v0

    .line 81
    :cond_50
    :goto_50
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 82
    .line 83
    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 84
    .line 85
    array-length v4, v3

    .line 86
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-lez v0, :cond_61

    .line 91
    .line 92
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 93
    .line 94
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 95
    .line 96
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 97
    .line 98
    :cond_61
    return v0
.end method


# virtual methods
.method public final chompNewline()V
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_d

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_1b

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 15
    .line 16
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 17
    .line 18
    aget-char v0, v0, v1

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    if-ne v0, v2, :cond_1b

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_11

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 14
    .line 15
    invoke-super {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->close()V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public mark(I)V
    .registers 2

    .line 1
    if-ltz p1, :cond_c

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    .line 7
    .line 8
    iget p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 9
    .line 10
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    invoke-static {}, Ll9/i;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public peek()I
    .registers 2

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark(I)V

    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->read()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->reset()V

    return v0
.end method

.method public peek([C)I
    .registers 4

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark(I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->read([CII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->reset()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public read()I
    .registers 4

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 94
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    goto :goto_12

    :cond_11
    return v1

    .line 95
    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    aget-char v0, v0, v1

    return v0
.end method

.method public read([CII)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([CII)V

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    move v0, p3

    .line 12
    :cond_b
    const/4 v1, -0x1

    .line 13
    if-lez v0, :cond_53

    .line 14
    .line 15
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 16
    .line 17
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 18
    .line 19
    sub-int/2addr v2, v3

    .line 20
    if-lez v2, :cond_24

    .line 21
    .line 22
    if-lt v2, v0, :cond_18

    .line 23
    .line 24
    move v2, v0

    .line 25
    :cond_18
    iget-object v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 26
    .line 27
    invoke-static {v4, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 31
    .line 32
    add-int/2addr v3, v2

    .line 33
    iput v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 34
    .line 35
    add-int/2addr p2, v2

    .line 36
    sub-int/2addr v0, v2

    .line 37
    :cond_24
    if-eqz v0, :cond_53

    .line 38
    .line 39
    if-ge v0, p3, :cond_31

    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_31

    .line 48
    .line 49
    goto :goto_53

    .line 50
    :cond_31
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 51
    .line 52
    if-eq v2, v1, :cond_3c

    .line 53
    .line 54
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 55
    .line 56
    sub-int/2addr v3, v2

    .line 57
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->markLimit:I

    .line 58
    .line 59
    if-lt v3, v2, :cond_4d

    .line 60
    .line 61
    :cond_3c
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 62
    .line 63
    array-length v2, v2

    .line 64
    if-lt v0, v2, :cond_4d

    .line 65
    .line 66
    iget-object v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 67
    .line 68
    invoke-virtual {v2, p1, p2, v0}, Ljava/io/Reader;->read([CII)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-lez p1, :cond_53

    .line 73
    .line 74
    sub-int/2addr v0, p1

    .line 75
    iput v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 76
    .line 77
    goto :goto_53

    .line 78
    :cond_4d
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ne v2, v1, :cond_b

    .line 83
    .line 84
    :cond_53
    :goto_53
    sub-int p1, p3, v0

    .line 85
    .line 86
    if-gtz p1, :cond_5b

    .line 87
    .line 88
    if-ne p1, p3, :cond_5a

    .line 89
    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    return v1

    .line 92
    :cond_5b
    :goto_5b
    return p1
.end method

.method public readLine()Ljava/lang/String;
    .registers 10

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    if-ne v0, v1, :cond_12

    .line 11
    .line 12
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v3, :cond_12

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_12
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 20
    .line 21
    :goto_14
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 22
    .line 23
    iget-object v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 24
    .line 25
    const/16 v5, 0xd

    .line 26
    .line 27
    const/16 v6, 0xa

    .line 28
    .line 29
    if-ge v0, v1, :cond_5c

    .line 30
    .line 31
    aget-char v1, v4, v0

    .line 32
    .line 33
    if-le v1, v5, :cond_23

    .line 34
    .line 35
    goto :goto_59

    .line 36
    :cond_23
    if-ne v1, v6, :cond_33

    .line 37
    .line 38
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 41
    .line 42
    sub-int v3, v0, v2

    .line 43
    .line 44
    invoke-direct {v1, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_33
    if-ne v1, v5, :cond_59

    .line 53
    .line 54
    new-instance v1, Ljava/lang/String;

    .line 55
    .line 56
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 57
    .line 58
    sub-int v5, v0, v2

    .line 59
    .line 60
    invoke-direct {v1, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 66
    .line 67
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 68
    .line 69
    if-lt v0, v2, :cond_4c

    .line 70
    .line 71
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eq v0, v3, :cond_58

    .line 76
    .line 77
    :cond_4c
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 78
    .line 79
    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 80
    .line 81
    aget-char v0, v0, v2

    .line 82
    .line 83
    if-ne v0, v6, :cond_58

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    iput v2, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 88
    .line 89
    :cond_58
    return-object v1

    .line 90
    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_14

    .line 93
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 v1, 0x50

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 101
    .line 102
    iget v7, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 103
    .line 104
    sub-int/2addr v7, v1

    .line 105
    invoke-virtual {v0, v4, v1, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_6c
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 110
    .line 111
    iput v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 112
    .line 113
    if-ne v1, v6, :cond_77

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0

    .line 120
    :cond_77
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-ne v4, v3, :cond_8c

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-gtz v3, :cond_87

    .line 131
    .line 132
    if-eqz v1, :cond_86

    .line 133
    .line 134
    goto :goto_87

    .line 135
    :cond_86
    return-object v2

    .line 136
    :cond_87
    :goto_87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :cond_8c
    iget v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 142
    .line 143
    :goto_8e
    iget v7, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 144
    .line 145
    if-ge v4, v7, :cond_c6

    .line 146
    .line 147
    iget-object v7, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 148
    .line 149
    aget-char v8, v7, v4

    .line 150
    .line 151
    if-eqz v1, :cond_be

    .line 152
    .line 153
    if-ne v1, v5, :cond_ac

    .line 154
    .line 155
    if-ne v8, v6, :cond_ac

    .line 156
    .line 157
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 158
    .line 159
    if-le v4, v1, :cond_a7

    .line 160
    .line 161
    sub-int v2, v4, v1

    .line 162
    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 164
    .line 165
    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_a7
    add-int/lit8 v4, v4, 0x1

    .line 169
    .line 170
    iput v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 171
    .line 172
    goto :goto_b9

    .line 173
    :cond_ac
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 174
    .line 175
    if-le v4, v1, :cond_b7

    .line 176
    .line 177
    sub-int v2, v4, v1

    .line 178
    .line 179
    add-int/lit8 v2, v2, -0x1

    .line 180
    .line 181
    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    :cond_b7
    iput v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 185
    .line 186
    :goto_b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    return-object v0

    .line 191
    :cond_be
    if-eq v8, v6, :cond_c2

    .line 192
    .line 193
    if-ne v8, v5, :cond_c3

    .line 194
    .line 195
    :cond_c2
    move v1, v8

    .line 196
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    .line 197
    .line 198
    goto :goto_8e

    .line 199
    :cond_c6
    iget-object v4, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->buf:[C

    .line 200
    .line 201
    if-nez v1, :cond_d1

    .line 202
    .line 203
    iget v8, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 204
    .line 205
    sub-int/2addr v7, v8

    .line 206
    invoke-virtual {v0, v4, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    goto :goto_6c

    .line 210
    :cond_d1
    iget v8, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 211
    .line 212
    sub-int/2addr v7, v8

    .line 213
    add-int/lit8 v7, v7, -0x1

    .line 214
    .line 215
    invoke-virtual {v0, v4, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    goto :goto_6c
.end method

.method public ready()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 5
    .line 6
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    if-gtz v0, :cond_15

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->in:Ljava/io/Reader;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public reset()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->mark:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_b

    .line 8
    .line 9
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    const-string v0, "mark == -1"

    .line 13
    .line 14
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public skip(J)J
    .registers 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_51

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->checkOpen()V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    cmp-long v2, p1, v2

    .line 13
    .line 14
    if-gez v2, :cond_10

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_10
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 18
    .line 19
    iget v1, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 20
    .line 21
    sub-int v2, v0, v1

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    cmp-long v2, v2, p1

    .line 25
    .line 26
    if-ltz v2, :cond_23

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 34
    .line 35
    return-wide p1

    .line 36
    :cond_23
    sub-int v1, v0, v1

    .line 37
    .line 38
    int-to-long v1, v1

    .line 39
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 40
    .line 41
    :goto_28
    cmp-long v0, v1, p1

    .line 42
    .line 43
    if-gez v0, :cond_50

    .line 44
    .line 45
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->fillBuf()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v3, -0x1

    .line 50
    if-ne v0, v3, :cond_34

    .line 51
    .line 52
    return-wide v1

    .line 53
    :cond_34
    iget v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->end:I

    .line 54
    .line 55
    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 56
    .line 57
    sub-int v4, v0, v3

    .line 58
    .line 59
    int-to-long v4, v4

    .line 60
    sub-long v6, p1, v1

    .line 61
    .line 62
    cmp-long v4, v4, v6

    .line 63
    .line 64
    if-ltz v4, :cond_49

    .line 65
    .line 66
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v0, v3

    .line 71
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 72
    .line 73
    return-wide p1

    .line 74
    :cond_49
    sub-int v3, v0, v3

    .line 75
    .line 76
    int-to-long v3, v3

    .line 77
    add-long/2addr v1, v3

    .line 78
    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedBufferedReader;->pos:I

    .line 79
    .line 80
    goto :goto_28

    .line 81
    :cond_50
    return-wide p1

    .line 82
    :cond_51
    invoke-static {}, Ll9/i;->a()V

    .line 83
    .line 84
    .line 85
    const-wide/16 p1, 0x0

    .line 86
    .line 87
    return-wide p1
.end method
