.class public final Lorg/apache/commons/compress/archivers/zip/k;
.super Lorg/apache/commons/compress/archivers/zip/q;
.source "SourceFile"


# instance fields
.field public final c:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    .line 1
    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/q;-><init>()V

    const-string p2, "channel"

    .line 4
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/k;->c:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public final a(J[BI)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p3, v0, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    :goto_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/apache/commons/compress/archivers/zip/k;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {p4, p3, p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p4

    if-lez p4, :cond_0

    int-to-long v0, p4

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to fully write to file: written="

    invoke-static {p1, p4}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/k;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized write([BII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/k;->c:Ljava/nio/channels/FileChannel;

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
