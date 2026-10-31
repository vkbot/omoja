.class public Lorg/apache/commons/io/input/NullInputStream;
.super Lorg/apache/commons/io/input/AbstractInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/input/NullInputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readLimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/NullInputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/NullInputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/input/NullInputStream;->INSTANCE:Lorg/apache/commons/io/input/NullInputStream;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 16
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/AbstractInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 7
    .line 8
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 9
    .line 10
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 11
    .line 12
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    .line 13
    .line 14
    return-void
.end method

.method private checkThrowEof(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method private handleEof()I
    .locals 1

    .line 1
    const-string v0, "handleEof()"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/NullInputStream;->checkThrowEof(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    return v0
.end method


# virtual methods
.method public available()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 10
    .line 11
    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 12
    .line 13
    sub-long/2addr v2, v4

    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    const-wide/32 v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    cmp-long v0, v2, v0

    .line 25
    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    const v0, 0x7fffffff

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    long-to-int v0, v2

    .line 33
    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->close()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 7
    .line 8
    return-void
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public init()Lorg/apache/commons/io/input/NullInputStream;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/AbstractInputStream;->setClosed(Z)V

    .line 3
    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J

    .line 14
    .line 15
    return-object p0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 9
    .line 10
    int-to-long v0, p1

    .line 11
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1

    .line 22
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public processByte()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public processBytes([BII)V
    .locals 0

    .line 1
    return-void
.end method

.method public read()I
    .locals 4

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->checkOpen()V

    .line 43
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->handleEof()I

    move-result v0

    return v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 45
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 41
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->checkOpen()V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 12
    .line 13
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->handleEof()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    int-to-long v4, p3

    .line 25
    add-long/2addr v0, v4

    .line 26
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-lez v4, :cond_2

    .line 31
    .line 32
    sub-long/2addr v0, v2

    .line 33
    long-to-int v0, v0

    .line 34
    sub-int/2addr p3, v0

    .line 35
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    .line 38
    .line 39
    .line 40
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 7

    .line 1
    const-string v0, "Marked position ["

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v3, v1, v3

    .line 13
    .line 14
    if-ltz v3, :cond_1

    .line 15
    .line 16
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 17
    .line 18
    iget-wide v5, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J

    .line 19
    .line 20
    add-long/2addr v5, v1

    .line 21
    cmp-long v3, v3, v5

    .line 22
    .line 23
    if-gtz v3, :cond_0

    .line 24
    .line 25
    iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/AbstractInputStream;->setClosed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "] is no longer valid - passed the read limit ["

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->readLimit:J

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "]"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 71
    .line 72
    const-string v1, "No position has been marked"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->reset()Ljava/lang/UnsupportedOperationException;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    throw v0

    .line 83
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v0
.end method

.method public skip(J)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AbstractInputStream;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "skip(long)"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/NullInputStream;->checkThrowEof(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 16
    .line 17
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->handleEof()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long p1, p1

    .line 28
    return-wide p1

    .line 29
    :cond_1
    add-long/2addr v0, p1

    .line 30
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-lez v4, :cond_2

    .line 35
    .line 36
    sub-long/2addr v0, v2

    .line 37
    sub-long/2addr p1, v0

    .line 38
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 39
    .line 40
    :cond_2
    return-wide p1
.end method
