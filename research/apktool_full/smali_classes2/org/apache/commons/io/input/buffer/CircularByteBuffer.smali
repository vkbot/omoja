.class public Lorg/apache/commons/io/input/buffer/CircularByteBuffer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final buffer:[B

.field private currentNumberOfBytes:I

.field private endOffset:I

.field private startOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    .line 18
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 12
    .line 13
    iput p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 14
    .line 15
    iput p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 3

    .line 79
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 80
    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    aput-byte p1, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 81
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/lit8 v2, v2, 0x1

    .line 82
    iput v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    array-length p1, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    :cond_0
    return-void

    .line 84
    :cond_1
    const-string p1, "No space available"

    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    return-void
.end method

.method public add([BII)V
    .locals 5

    .line 1
    const-string v0, "Buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_4

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    if-ge p2, v0, :cond_4

    .line 10
    .line 11
    if-ltz p3, :cond_3

    .line 12
    .line 13
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 14
    .line 15
    add-int/2addr v0, p3

    .line 16
    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    if-gt v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    :goto_0
    if-ge v1, p3, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 26
    .line 27
    iget v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 28
    .line 29
    add-int v4, p2, v1

    .line 30
    .line 31
    aget-byte v4, p1, v4

    .line 32
    .line 33
    aput-byte v4, v2, v3

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    iput v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 38
    .line 39
    array-length v2, v2

    .line 40
    if-ne v3, v2, :cond_0

    .line 41
    .line 42
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 43
    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 48
    .line 49
    add-int/2addr p1, p3

    .line 50
    iput p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string p1, "No space available"

    .line 54
    .line 55
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    const-string p1, "Illegal length: "

    .line 60
    .line 61
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    const-string p1, "Illegal offset: "

    .line 70
    .line 71
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 3
    .line 4
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 7
    .line 8
    return-void
.end method

.method public getCurrentNumberOfBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpace()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    return v0
.end method

.method public hasBytes()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public hasSpace()Z
    .locals 2

    .line 13
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSpace(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget-object p1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    if-gt v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public peek([BII)Z
    .locals 6

    .line 1
    const-string v0, "Buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_5

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    if-ge p2, v0, :cond_5

    .line 10
    .line 11
    if-ltz p3, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-gt p3, v0, :cond_4

    .line 17
    .line 18
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-ge p3, v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 25
    .line 26
    move v2, v1

    .line 27
    :goto_0
    if-ge v2, p3, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 30
    .line 31
    aget-byte v4, v3, v0

    .line 32
    .line 33
    add-int v5, v2, p2

    .line 34
    .line 35
    aget-byte v5, p1, v5

    .line 36
    .line 37
    if-eq v4, v5, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    array-length v3, v3

    .line 43
    if-ne v0, v3, :cond_2

    .line 44
    .line 45
    move v0, v1

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_4
    const-string p1, "Illegal length: "

    .line 52
    .line 53
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_5
    const-string p1, "Illegal offset: "

    .line 63
    .line 64
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1
.end method

.method public read()B
    .locals 4

    .line 122
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    if-lez v0, :cond_1

    .line 123
    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    aget-byte v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    .line 124
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/lit8 v2, v2, 0x1

    .line 125
    iput v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    array-length v0, v1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    :cond_0
    return v3

    .line 127
    :cond_1
    const-string v0, "No bytes available."

    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)V
    .locals 6

    .line 1
    const-string v0, "targetBuffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_5

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    if-ge p2, v0, :cond_5

    .line 10
    .line 11
    if-ltz p3, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-gt p3, v0, :cond_4

    .line 17
    .line 18
    add-int v0, p2, p3

    .line 19
    .line 20
    array-length v1, p1

    .line 21
    if-gt v0, v1, :cond_3

    .line 22
    .line 23
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 24
    .line 25
    if-lt v0, p3, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    move v1, v0

    .line 29
    :goto_0
    if-ge v1, p3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v2, p2, 0x1

    .line 32
    .line 33
    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 34
    .line 35
    iget v4, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 36
    .line 37
    aget-byte v5, v3, v4

    .line 38
    .line 39
    aput-byte v5, p1, p2

    .line 40
    .line 41
    iget p2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 42
    .line 43
    add-int/lit8 p2, p2, -0x1

    .line 44
    .line 45
    iput p2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    iput v4, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 50
    .line 51
    array-length p2, v3

    .line 52
    if-ne v4, p2, :cond_0

    .line 53
    .line 54
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    move p2, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    iget p2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Currently, there are only "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, "in the buffer, not "

    .line 76
    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_3
    array-length p1, p1

    .line 92
    const-string p2, " bytes, but offset, and length would require "

    .line 93
    .line 94
    add-int/lit8 v0, v0, -0x1

    .line 95
    .line 96
    const-string p3, "The supplied byte array contains only "

    .line 97
    .line 98
    invoke-static {p3, p1, v0, p2}, Ln0/b;->o(Ljava/lang/String;IILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    const-string p1, "Illegal length: "

    .line 103
    .line 104
    invoke-static {p3, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    const-string p1, "Illegal offset: "

    .line 113
    .line 114
    invoke-static {p2, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
