.class public Lorg/apache/commons/io/input/CircularInputStream;
.super Lorg/apache/commons/io/input/AbstractInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private byteCount:J

.field private position:I

.field private final repeatedContent:[B

.field private final targetByteCount:J


# direct methods
.method public constructor <init>([BJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/AbstractInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/io/input/CircularInputStream;->validate([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    if-eqz p1, :cond_12

    .line 15
    .line 16
    iput-wide p2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    const-string p1, "repeatContent is empty."

    .line 20
    .line 21
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method private static validate([B)[B
    .registers 5

    .line 1
    const-string v0, "repeatContent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    array-length v0, p0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_17

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_11

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_7

    .line 18
    :cond_11
    const-string p0, "repeatContent contains the end-of-stream marker -1"

    .line 19
    .line 20
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :cond_17
    return-object p0
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    .line 10
    .line 11
    const-wide/32 v2, 0x7fffffff

    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    const v3, 0x7fffffff

    .line 17
    .line 18
    .line 19
    if-gtz v2, :cond_1a

    .line 20
    .line 21
    long-to-int v0, v0

    .line 22
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1a
    return v3
.end method

.method public close()V
    .registers 3

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    .line 7
    .line 8
    return-void
.end method

.method public read()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_e

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->isClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1d

    .line 14
    .line 15
    :cond_e
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    .line 16
    .line 17
    iget-wide v2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-nez v2, :cond_18

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    return v0

    .line 25
    :cond_18
    const-wide/16 v2, 0x1

    .line 26
    .line 27
    add-long/2addr v0, v2

    .line 28
    iput-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    .line 29
    .line 30
    :cond_1d
    iget v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iget-object v1, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    rem-int/2addr v0, v2

    .line 38
    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 39
    .line 40
    aget-byte v0, v1, v0

    .line 41
    .line 42
    and-int/lit16 v0, v0, 0xff

    .line 43
    .line 44
    return v0
.end method
