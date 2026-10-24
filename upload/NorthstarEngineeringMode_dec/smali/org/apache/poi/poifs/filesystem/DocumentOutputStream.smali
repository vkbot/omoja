.class public final Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private _buffer:Lorg/apache/commons/io/output/j;

.field private _closed:Z

.field private final _document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

.field private _document_size:I

.field private final _limit:J

.field private final _property:Lorg/apache/poi/poifs/property/DocumentProperty;

.field private _stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

.field private _stream_output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->createDocument(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;J)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->getDocument(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocument;J)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_closed:Z

    .line 5
    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    const/16 v1, 0x1000

    .line 6
    invoke-virtual {v0, v1}, Lj4/d;->j(I)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->free()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iput-wide p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:J

    return-void
.end method

.method private checkBufferSize()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private static createDocument(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot open internal directory storage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a Directory Node"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getDocument(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    check-cast p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open internal document storage, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not a Document Node"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DocumentProperty;->updateSize(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_property:Lorg/apache/poi/poifs/property/DocumentProperty;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/Property;->setStartBlock(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_closed:Z

    return-void
.end method

.method public size()J
    .locals 4

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    int-to-long v0, v0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    if-nez p0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    int-to-long v2, p0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_closed:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->size()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "tried to write too much data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_buffer:Lorg/apache/commons/io/output/j;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/io/output/j;->write([BII)V

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->checkBufferSize()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Lorg/apache/poi/poifs/filesystem/POIFSStream;

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream_output:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_document_size:I

    :goto_1
    return-void

    .line 9
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "cannot perform requested operation on a closed stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
