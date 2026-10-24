.class public Lorg/apache/commons/io/output/b;
.super Lorg/apache/commons/io/output/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/io/output/a;-><init>()V

    if-ltz p1, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->needNewBuffer(I)V

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative initial size: "

    .line 7
    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-static {p0, v0}, Lorg/apache/commons/io/output/b;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/io/output/b;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/b;-><init>(I)V

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/b;->write(Ljava/io/InputStream;)I

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/b;->toInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/io/output/a;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInputStream()Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroidx/constraintlayout/core/state/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/a;->toInputStream(Lorg/apache/commons/io/output/a$a;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .locals 0

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeImpl(Ljava/io/InputStream;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(I)V
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeImpl(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_1

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/a;->writeImpl([BII)V

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeToImpl(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
