.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/input/NullReader;


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readLimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/NullReader;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/NullReader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/input/NullReader;->INSTANCE:Lorg/apache/commons/io/input/NullReader;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 16
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 7
    .line 8
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 9
    .line 10
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 11
    .line 12
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    .line 13
    .line 14
    return-void
.end method

.method private doEndOfFile()I
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    .line 5
    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 11
    .line 12
    return-void
.end method

.method public getPosition()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 3
    .line 4
    if-eqz v0, :cond_10

    .line 5
    .line 6
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 9
    .line 10
    int-to-long v0, p1

    .line 11
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readLimit:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    :try_start_10
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1

    .line 22
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_e

    .line 23
    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public processChar()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public processChars([CII)V
    .registers 4

    .line 1
    return-void
.end method

.method public read()I
    .registers 5

    .line 50
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-nez v0, :cond_1b

    .line 51
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    return v0

    :cond_11
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 53
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result v0

    return v0

    .line 55
    :cond_1b
    const-string v0, "Read after end of file"

    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public read([C)I
    .registers 4

    const/4 v0, 0x0

    .line 49
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .registers 10

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([CII)V

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
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 9
    .line 10
    if-nez v0, :cond_29

    .line 11
    .line 12
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 13
    .line 14
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-nez v4, :cond_18

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_18
    int-to-long v4, p3

    .line 26
    add-long/2addr v0, v4

    .line 27
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-lez v4, :cond_25

    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    long-to-int v0, v0

    .line 35
    sub-int/2addr p3, v0

    .line 36
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 37
    .line 38
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

    .line 39
    .line 40
    .line 41
    return p3

    .line 42
    :cond_29
    const-string p1, "Read after end of file"

    .line 43
    .line 44
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public declared-synchronized reset()V
    .registers 8

    .line 1
    const-string v0, "Marked position ["

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 5
    .line 6
    if-eqz v1, :cond_4c

    .line 7
    .line 8
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v3, v1, v3

    .line 13
    .line 14
    if-ltz v3, :cond_44

    .line 15
    .line 16
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 17
    .line 18
    iget-wide v5, p0, Lorg/apache/commons/io/input/NullReader;->readLimit:J

    .line 19
    .line 20
    add-long/2addr v5, v1

    .line 21
    cmp-long v3, v3, v5

    .line 22
    .line 23
    if-gtz v3, :cond_21

    .line 24
    .line 25
    iput-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    goto :goto_51

    .line 34
    :cond_21
    :try_start_21
    new-instance v1, Ljava/io/IOException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "] is no longer valid - passed the read limit ["

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->readLimit:J

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "]"

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_44
    new-instance v0, Ljava/io/IOException;

    .line 70
    .line 71
    const-string v1, "No position has been marked"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_4c
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->reset()Ljava/lang/UnsupportedOperationException;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    throw v0

    .line 82
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_1f

    .line 83
    throw v0
.end method

.method public skip(J)J
    .registers 8

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 2
    .line 3
    if-nez v0, :cond_1e

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 6
    .line 7
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_12

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-long p1, p1

    .line 18
    return-wide p1

    .line 19
    :cond_12
    add-long/2addr v0, p1

    .line 20
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 21
    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-lez v4, :cond_1d

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    sub-long/2addr p1, v0

    .line 28
    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 29
    .line 30
    :cond_1d
    return-wide p1

    .line 31
    :cond_1e
    const-string p1, "Skip after end of file"

    .line 32
    .line 33
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    return-wide p1
.end method
