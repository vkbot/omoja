.class public final Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private _buffer:Ljava/nio/ByteBuffer;

.field private _closed:Z

.field private _current_block_count:I

.field private _current_offset:I

.field private _data:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final _document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

.field private final _document_size:I

.field private _marked_offset:I

.field private _marked_offset_count:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset_count:I

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_closed:Z

    .line 4
    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 6
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 8
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot open internal document storage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not a Document Node"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset_count:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_closed:Z

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    return-void
.end method

.method private atEOD()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkAvaliable(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_closed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer underrun - requested "

    const-string v2, " bytes but "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    sub-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was available"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot perform requested operation on a closed stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dieIfClosed()V
    .locals 1

    iget-boolean p0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_closed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot perform requested operation on a closed stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private remainingBytes()I
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_closed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot perform requested operation on a closed stream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->remainingBytes()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_closed:Z

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset_count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->dieIfClosed()V

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->atEOD()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([BII)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-byte p0, v2, v3

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->dieIfClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 6
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->atEOD()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 8
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->remainingBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    return p3

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "can\'t read past buffer boundaries with off: "

    const-string v1, ", len: "

    const-string v2, ", b.length: "

    .line 11
    invoke-static {v0, p2, v1, p3, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12
    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readByte()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readUByte()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 4

    if-ltz p3, :cond_3

    .line 2
    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->checkAvaliable(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    :cond_1
    sub-int v1, p3, v0

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    add-int v3, p2, v0

    .line 6
    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t read negative number of bytes, but had: "

    .line 8
    invoke-static {p1, p3}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readInt()I
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result p0

    return p0
.end method

.method public readLong()J
    .locals 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    return-void
.end method

.method public readShort()S
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result p0

    return p0
.end method

.method public readUByte()I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    aget-byte p0, v1, v2

    if-ltz p0, :cond_0

    return p0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method public readUInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->checkAvaliable(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    if-nez v0, :cond_0

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset_count:I

    if-nez v1, :cond_0

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    :goto_0
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset_count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_data:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_block_count:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->dieIfClosed()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_current_offset:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    int-to-long p1, v0

    cmp-long p1, v1, p1

    if-gez p1, :cond_1

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    :goto_0
    int-to-long v1, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->_document_size:I

    int-to-long v3, p1

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long p1, v0

    sub-long/2addr v1, p1

    const p1, 0x7fffffff

    invoke-static {v1, v2, p1}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([B)V

    return-wide v1
.end method
