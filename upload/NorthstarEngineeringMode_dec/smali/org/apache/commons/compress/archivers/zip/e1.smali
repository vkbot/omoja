.class public final Lorg/apache/commons/compress/archivers/zip/e1;
.super Lorg/apache/commons/compress/archivers/zip/q;
.source "SourceFile"


# instance fields
.field public Z:J

.field public b1:I

.field public c:Ljava/nio/channels/FileChannel;

.field public c1:J

.field public d1:Z

.field public final e1:[B

.field public final f1:Ljava/util/ArrayList;

.field public final g1:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lorg/apache/commons/compress/archivers/zip/k;

.field public x:Ljava/nio/file/Path;

.field public final y:J


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;J)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/q;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->e1:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->f1:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->g1:Ljava/util/TreeMap;

    const-wide/32 v2, 0x10000

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->y:J

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/k;

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    iget-object p1, p2, Lorg/apache/commons/compress/archivers/zip/k;->c:Ljava/nio/channels/FileChannel;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c:Ljava/nio/channels/FileChannel;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    invoke-virtual {v1, p3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    sget-object p2, Lorg/apache/commons/compress/archivers/zip/r0;->DD_SIG:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    array-length p1, p2

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->Z:J

    array-length p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->Z:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zip split segment size should between 64K and 4,294,967,295"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/nio/file/Path;J[BII)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    :try_start_0
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Ld/f;->f0(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method


# virtual methods
.method public final a(J[BI)V
    .locals 10

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lez p4, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->g1:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c:Ljava/nio/channels/FileChannel;

    invoke-static {p3, v7, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v1, v3, v4, v5}, Ld/f;->f0(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)V

    int-to-long v1, p4

    add-long/2addr p1, v1

    add-int/2addr v7, p4

    move p4, v0

    goto :goto_0

    :cond_0
    int-to-long v3, p4

    add-long v8, p1, v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gtz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    move-object v4, p3

    move v5, v7

    move v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/e1;->d(Ljava/nio/file/Path;J[BII)V

    add-int/2addr v7, p4

    move p4, v0

    move-wide p1, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    move-object v4, p3

    move v5, v7

    move v6, v8

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/e1;->d(Ljava/nio/file/Path;J[BII)V

    int-to-long v1, v8

    add-long/2addr p1, v1

    add-int/2addr v7, v8

    sub-int/2addr p4, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/Integer;)Ljava/nio/file/Path;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li4/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ".z"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x9

    if-gt p1, v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p1, "."

    :goto_3
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    invoke-static {v1}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "split ZIP segment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already exists"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 9

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->g1:Ljava/util/TreeMap;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/k;->close()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/e1;->b(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    new-array v6, v4, [Ljava/nio/file/CopyOption;

    const/4 v7, 0x0

    sget-object v8, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v8, v6, v7

    invoke-static {v5, v0, v6}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/e1;->b(Ljava/lang/Integer;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/k;->close()V

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/k;

    invoke-direct {v5, v0}, Lorg/apache/commons/compress/archivers/zip/k;-><init>(Ljava/nio/file/Path;)V

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/k;->c:Ljava/nio/channels/FileChannel;

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c:Ljava/nio/channels/FileChannel;

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->b1:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->f1:Ljava/util/ArrayList;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/e1;->Z:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->Z:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final close()V
    .locals 6

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->d1:Z

    if-nez v0, :cond_3

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li4/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/k;->close()V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->x:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/CopyOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->d1:Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final write(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->e1:[B

    const/4 v1, 0x0

    .line 8
    aput-byte p1, v0, v1

    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/e1;->write([B)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/e1;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 8

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/e1;->y:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/e1;->c()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/e1;->write([BII)V

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    add-long v6, v0, v4

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    long-to-int v2, v2

    long-to-int v0, v0

    sub-int/2addr v2, v0

    .line 4
    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/commons/compress/archivers/zip/e1;->write([BII)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/e1;->c()V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/e1;->write([BII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/e1;->r:Lorg/apache/commons/compress/archivers/zip/k;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/k;->write([BII)V

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->c1:J

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->Z:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/e1;->Z:J

    :goto_0
    return-void
.end method
