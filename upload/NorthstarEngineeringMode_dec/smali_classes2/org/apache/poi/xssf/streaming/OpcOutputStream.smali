.class Lorg/apache/poi/xssf/streaming/OpcOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "SourceFile"


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final spec:Lorg/apache/poi/xssf/streaming/Zip64Impl;

.field private written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->entries:Ljava/util/List;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->crc:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->finished:Z

    new-instance v0, Lorg/apache/poi/xssf/streaming/Zip64Impl;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->spec:Lorg/apache/poi/xssf/streaming/Zip64Impl;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->finish()V

    iget-object p0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public closeEntry()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :goto_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->size:J

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->compressedSize:I

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->crc:J

    iget v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget v2, v1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->compressedSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->spec:Lorg/apache/poi/xssf/streaming/Zip64Impl;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeDAT(Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->reset()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not current zip current"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finish()V
    .locals 5

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->closeEntry()V

    :cond_1
    iget v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget v3, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iget-object v4, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->spec:Lorg/apache/poi/xssf/streaming/Zip64Impl;

    invoke-virtual {v4, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeCEN(Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->spec:Lorg/apache/poi/xssf/streaming/Zip64Impl;

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeEND(III)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->finished:Z

    return-void
.end method

.method public putNextEntry(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->closeEntry()V

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    iget p1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iput p1, v0, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->offset:I

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->spec:Lorg/apache/poi/xssf/streaming/Zip64Impl;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeLFH(Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->written:I

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->entries:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->current:Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iget-object p0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {p0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1

    monitor-enter p0

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1

    if-nez p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/OpcOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
