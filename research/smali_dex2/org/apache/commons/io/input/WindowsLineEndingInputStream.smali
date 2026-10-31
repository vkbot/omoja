.class public Lorg/apache/commons/io/input/WindowsLineEndingInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private atEos:Z

.field private atSlashCr:Z

.field private atSlashLf:Z

.field private final in:Ljava/io/InputStream;

.field private injectSlashLf:Z

.field private final lineFeedAtEos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->lineFeedAtEos:Z

    .line 7
    .line 8
    return-void
.end method

.method private handleEos()I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->lineFeedAtEos:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashLf:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_14

    .line 11
    .line 12
    iget-boolean v3, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 13
    .line 14
    if-nez v3, :cond_14

    .line 15
    .line 16
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 17
    .line 18
    const/16 v0, 0xd

    .line 19
    .line 20
    return v0

    .line 21
    :cond_14
    if-nez v0, :cond_1e

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashLf:Z

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1e
    return v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->in:Ljava/io/InputStream;

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
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atEos:Z

    .line 3
    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->handleEos()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    goto :goto_4b

    .line 14
    :cond_d
    :try_start_d
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashLf:Z

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_18

    .line 20
    .line 21
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashLf:Z
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_b

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :cond_18
    :try_start_18
    iget-boolean v0, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 26
    .line 27
    iget-object v3, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, -0x1

    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v3, v4, :cond_26

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v4, v2

    .line 40
    :goto_27
    iput-boolean v4, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atEos:Z

    .line 41
    .line 42
    const/16 v6, 0xd

    .line 43
    .line 44
    if-nez v4, :cond_39

    .line 45
    .line 46
    if-ne v3, v6, :cond_31

    .line 47
    .line 48
    move v7, v5

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v7, v2

    .line 51
    :goto_32
    iput-boolean v7, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashCr:Z

    .line 52
    .line 53
    if-ne v3, v1, :cond_37

    .line 54
    .line 55
    move v2, v5

    .line 56
    :cond_37
    iput-boolean v2, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->atSlashLf:Z

    .line 57
    .line 58
    :cond_39
    if-eqz v4, :cond_41

    .line 59
    .line 60
    invoke-direct {p0}, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->handleEos()I

    .line 61
    .line 62
    .line 63
    move-result v0
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_b

    .line 64
    monitor-exit p0

    .line 65
    return v0

    .line 66
    :cond_41
    if-ne v3, v1, :cond_49

    .line 67
    .line 68
    if-nez v0, :cond_49

    .line 69
    .line 70
    :try_start_45
    iput-boolean v5, p0, Lorg/apache/commons/io/input/WindowsLineEndingInputStream;->injectSlashLf:Z
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_b

    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return v6

    .line 74
    :cond_49
    monitor-exit p0

    .line 75
    return v3

    .line 76
    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_b

    .line 77
    throw v0
.end method
