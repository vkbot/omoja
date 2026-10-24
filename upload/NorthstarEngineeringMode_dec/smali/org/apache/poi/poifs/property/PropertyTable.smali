.class public final Lorg/apache/poi/poifs/property/PropertyTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final _bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

.field private final _header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/property/PropertyTable;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 4
    new-instance p1, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-direct {p1}, Lorg/apache/poi/poifs/property/RootProperty;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 15
    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getMaxRecordLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    .line 16
    array-length v2, v1

    .line 17
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v2, Lorg/apache/poi/poifs/property/PropertyTable;->LOG:La5/d;

    .line 18
    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v3}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v4

    invoke-static {v4}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Short Property Block, {} bytes instead of the expected {}"

    invoke-interface {v2, v3, v5, v4}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 20
    :cond_1
    invoke-virtual {p2, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-object p2, v1

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    .line 21
    invoke-static {p2, v0}, Lorg/apache/poi/poifs/property/PropertyFactory;->convertToProperties([BLjava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/property/Property;

    if-eqz p1, :cond_4

    .line 23
    instance-of p2, p1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    if-eqz p2, :cond_3

    .line 24
    check-cast p1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    goto :goto_2

    .line 25
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid format, cannot convert property "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to DirectoryProperty"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 2

    .line 5
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/lang/Iterable;)V

    return-void
.end method

.method private isValidIndex(I)Z
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/poi/poifs/property/PropertyTable;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-static {p1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "Property index {} outside the valid range 0..{}"

    invoke-interface {v0, p1, v2, p0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method private populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getChildIndex()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTable;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getPreviousChildIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTable;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getNextChildIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/property/PropertyTable;->isValidIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public countBlocks()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    mul-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_bigBigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result p0

    int-to-long v2, p0

    div-long v4, v0, v2

    long-to-int p0, v4

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public getRoot()Lorg/apache/poi/poifs/property/RootProperty;
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/property/Property;

    instance-of v0, p0, Lorg/apache/poi/poifs/property/RootProperty;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/poifs/property/RootProperty;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format, cannot convert property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to RootProperty"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartBlock()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result p0

    return p0
.end method

.method public preWrite()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/Property;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/property/Property;->setIndex(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->preWrite()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStartBlock(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setPropertyStart(I)V

    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/POIFSStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTable;->_properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/Property;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/Property;->writeData(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/PropertyTable;->getStartBlock()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;->getStartBlock()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->setStartBlock(I)V

    :cond_2
    return-void
.end method
