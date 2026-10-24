.class public final Lorg/apache/commons/compress/archivers/zip/s;
.super Lorg/apache/commons/compress/archivers/zip/q;
.source "SourceFile"


# instance fields
.field public final c:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/q;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J[BI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    const/4 p2, 0x0

    invoke-static {p3, p2, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1, p2}, Ld/f;->e0(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p2, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/s;->c:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Ld/f;->e0(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
