.class public Lorg/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private atEos:Z

.field private atSlashCr:Z

.field private atSlashLf:Z

.field private final in:Ljava/io/InputStream;

.field private final lineFeedAtEndOfFile:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->lineFeedAtEndOfFile:Z

    .line 7
    .line 8
    return-void
.end method

.method private handleEos(Z)I
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_12

    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->lineFeedAtEndOfFile:Z

    .line 5
    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    goto :goto_12

    .line 9
    :cond_8
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    .line 10
    .line 11
    if-nez p1, :cond_12

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    .line 15
    .line 16
    const/16 p1, 0xa

    .line 17
    .line 18
    return p1

    .line 19
    :cond_12
    :goto_12
    return v0
.end method

.method private readWithUpdate()I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_d

    .line 11
    .line 12
    move v1, v3

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v1, v2

    .line 15
    :goto_e
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    .line 16
    .line 17
    if-eqz v1, :cond_13

    .line 18
    .line 19
    return v0

    .line 20
    :cond_13
    const/16 v1, 0xd

    .line 21
    .line 22
    if-ne v0, v1, :cond_19

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v1, v2

    .line 27
    :goto_1a
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    if-ne v0, v1, :cond_21

    .line 32
    .line 33
    move v2, v3

    .line 34
    :cond_21
    iput-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    .line 35
    .line 36
    return v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    throw p1

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    .line 9
    throw p1
.end method

.method public declared-synchronized read()I
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    .line 5
    .line 6
    if-eqz v1, :cond_f

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->handleEos(Z)I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return v0

    .line 14
    :catchall_d
    move-exception v0

    .line 15
    goto :goto_33

    .line 16
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->readWithUpdate()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1d

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->handleEos(Z)I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_d

    .line 28
    monitor-exit p0

    .line 29
    return v0

    .line 30
    :cond_1d
    :try_start_1d
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_d

    .line 31
    .line 32
    if-eqz v2, :cond_25

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    return v0

    .line 38
    :cond_25
    if-eqz v0, :cond_31

    .line 39
    .line 40
    :try_start_27
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    .line 41
    .line 42
    if-eqz v0, :cond_31

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_d

    .line 48
    monitor-exit p0

    .line 49
    return v0

    .line 50
    :cond_31
    monitor-exit p0

    .line 51
    return v1

    .line 52
    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_d

    .line 53
    throw v0
.end method
