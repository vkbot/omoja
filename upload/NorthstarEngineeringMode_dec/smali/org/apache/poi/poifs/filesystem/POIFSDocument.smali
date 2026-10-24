.class public final Lorg/apache/poi/poifs/filesystem/POIFSDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/poifs/dev/POIFSViewable;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private _block_size:I

.field private _filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

.field private _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    .line 16
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 17
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;->getBlockStoreBlockSize()I

    move-result p3

    iput p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-direct {v0, p3}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 19
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockStoreBlockSize()I

    move-result p3

    iput p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    .line 20
    :goto_0
    new-instance p3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    .line 21
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 22
    invoke-virtual {p3, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 23
    new-instance p3, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    int-to-long v0, p2

    invoke-direct {p3, p0, v0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;J)V

    .line 24
    :try_start_0
    new-instance p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    const-string v0, "\\\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>([Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    invoke-direct {v0, p3, p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V

    .line 27
    invoke-interface {p4, v0}, Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;->processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 30
    :try_start_2
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/io/InputStream;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 11
    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->store(Ljava/io/InputStream;)I

    move-result p2

    .line 12
    new-instance p3, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 14
    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DocumentProperty;

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result p2

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    .line 6
    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;->getBlockStoreBlockSize()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getStartBlock()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockStoreBlockSize()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    :goto_0
    return-void
.end method

.method private store(Ljava/io/InputStream;)I
    .locals 5

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1001

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    const-wide/16 v1, 0x1000

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_0

    new-instance p1, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;->getBlockStoreBlockSize()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p1, v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockStoreBlockSize()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    int-to-long v2, p0

    rem-long v2, v0, v2

    long-to-int v2, v2

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    sub-int/2addr p0, v2

    int-to-long v2, p0

    invoke-static {}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMaxRecordLength()I

    move-result p0

    invoke-static {v2, v3, p0}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object p0

    const/4 v2, -0x1

    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
.end method


# virtual methods
.method public free()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->free()V

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    return-void
.end method

.method public getBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentBlockSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    return p0
.end method

.method public getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    return-object p0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_filesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    return-object p0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Document: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result p0

    return p0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getSize()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMaxRecordLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_block_size:I

    array-length v6, v0

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v2}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "<NO DATA>"

    :goto_1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public preferArray()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public replaceContents(Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->free()V

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->store(Ljava/io/InputStream;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    return-void
.end method
