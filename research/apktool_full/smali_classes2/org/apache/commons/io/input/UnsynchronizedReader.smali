.class public abstract Lorg/apache/commons/io/input/UnsynchronizedReader;
.super Ljava/io/Reader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final MAX_SKIP_BUFFER_SIZE:I = 0x2000


# instance fields
.field private closed:Z

.field private skipBuffer:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public checkOpen()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedReader;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/input/Input;->checkOpen(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnsynchronizedReader;->closed:Z

    .line 3
    .line 4
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnsynchronizedReader;->closed:Z

    .line 2
    .line 3
    return v0
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/UnsynchronizedReader;->closed:Z

    .line 2
    .line 3
    return-void
.end method

.method public skip(J)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_4

    .line 6
    .line 7
    const-wide/16 v2, 0x2000

    .line 8
    .line 9
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    long-to-int v2, v2

    .line 14
    iget-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedReader;->skipBuffer:[C

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    array-length v3, v3

    .line 19
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    :cond_0
    new-array v3, v2, [C

    .line 22
    .line 23
    iput-object v3, p0, Lorg/apache/commons/io/input/UnsynchronizedReader;->skipBuffer:[C

    .line 24
    .line 25
    :cond_1
    move-wide v3, p1

    .line 26
    :goto_0
    cmp-long v5, v3, v0

    .line 27
    .line 28
    if-lez v5, :cond_3

    .line 29
    .line 30
    iget-object v5, p0, Lorg/apache/commons/io/input/UnsynchronizedReader;->skipBuffer:[C

    .line 31
    .line 32
    int-to-long v6, v2

    .line 33
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    long-to-int v6, v6

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual {p0, v5, v7, v6}, Ljava/io/Reader;->read([CII)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, -0x1

    .line 44
    if-ne v5, v6, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    int-to-long v5, v5

    .line 48
    sub-long/2addr v3, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    sub-long/2addr p1, v3

    .line 51
    return-wide p1

    .line 52
    :cond_4
    const-string p1, "skip value < 0"

    .line 53
    .line 54
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 p1, 0x0

    .line 58
    .line 59
    return-wide p1
.end method
