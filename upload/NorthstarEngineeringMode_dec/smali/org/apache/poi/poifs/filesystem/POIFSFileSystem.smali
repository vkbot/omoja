.class public Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
.super Lorg/apache/poi/poifs/filesystem/BlockStore;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static final LOG:La5/d;

.field private static final MAX_ALLOCATION_SIZE:I = 0xee6b280

.field private static final MAX_BLOCK_COUNT:I = 0xffff

.field private static MAX_RECORD_LENGTH:I = 0x186a0


# instance fields
.field private final _bat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected _data:Lorg/apache/poi/poifs/nio/DataSource;

.field private _header:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field private _mini_store:Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

.field private _property_table:Lorg/apache/poi/poifs/property/PropertyTable;

.field private _root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private final _xbat_blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Z)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 10
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    filled-new-array {v0}, [I

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x2

    .line 15
    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->setNextBlock(II)V

    const/4 v1, -0x3

    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->setNextBlock(II)V

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTable;->setStartBlock(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Z)V

    .line 36
    :try_start_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x200

    .line 37
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 39
    new-instance v3, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v3, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 40
    invoke-virtual {v3}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->sanityCheckBlockCount(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 41
    invoke-static {v3}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateMaximumSize(Lorg/apache/poi/poifs/storage/HeaderBlock;)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    const v5, 0xee6b280

    .line 42
    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    long-to-int v3, v3

    .line 43
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-static {v1, v3}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    .line 48
    new-instance v2, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 49
    :try_start_2
    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 50
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->readCoreContents()V

    return-void

    :catchall_1
    move-exception v2

    goto :goto_1

    .line 52
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable read a >2gb file via an InputStream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz v1, :cond_2

    .line 54
    :try_start_5
    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 55
    :goto_3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->closeInputStream(Ljava/io/InputStream;Z)V

    .line 56
    throw v1
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Z)V

    if-eqz p2, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-eqz p5, :cond_0

    .line 25
    new-instance p5, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {p5, p2, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/File;Z)V

    .line 26
    invoke-virtual {p5}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p5, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 27
    :cond_0
    new-instance p0, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p0, p2}, Lorg/apache/poi/EmptyFileException;-><init>(Ljava/io/File;)V

    throw p0

    .line 28
    :cond_1
    new-instance p2, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-direct {p2, p1, p3, p5}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;ZZ)V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    :goto_0
    const/16 p2, 0x200

    .line 29
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    .line 31
    new-instance p3, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {p3, p2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->readCoreContents()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 34
    :cond_2
    throw p0
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 21
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;ZZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p3

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/nio/channels/FileChannel;Ljava/io/File;ZZZ)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/BlockStore;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 3
    new-instance v1, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 4
    new-instance v0, Lorg/apache/poi/poifs/property/PropertyTable;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    .line 5
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createNewDataSource()V

    :cond_0
    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;Z)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-nez p2, :cond_0

    sget-object p1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->h()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "can\'t close input stream"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 4

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method

.method private createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x1

    int-to-long v3, p1

    add-long/2addr v3, v1

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    return-object p2
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "two arguments required: input filename and output filename"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v3, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    aget-object p0, p0, v2

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_7
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v2

    if-eqz p0, :cond_3

    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception p0

    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v0
.end method

.method private readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 1

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readCoreContents()V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-direct {p0, v5, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATIndex()I

    move-result v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getXBATCount()I

    move-result v5

    const/4 v6, -0x2

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v7, v5}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v2

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v7}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_2

    invoke-virtual {v5, v8}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    if-ne v9, v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, v9, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->readBAT(ILorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sub-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/poi/poifs/property/PropertyTable;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/poifs/property/PropertyTable;-><init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-direct {v2, p0, v4, v1, v5}, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/property/RootProperty;Ljava/util/List;Lorg/apache/poi/poifs/storage/HeaderBlock;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATStart()I

    move-result v2

    :goto_4
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getSBATCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-eq v2, v6, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-static {v5, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setOurBlockIndex(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getNextBlock(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private static sanityCheckBlockCount(I)V
    .locals 3

    if-lez p0, :cond_1

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Block count "

    const-string v2, " is too high. POI maximum is 65535."

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Illegal block count; minimum count is 1, got "

    const-string v2, " instead"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method private syncWithDataSource()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;->syncWithDataSource()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/PropertyTable;->preWrite()V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/property/PropertyTable;->write(Lorg/apache/poi/poifs/filesystem/POIFSStream;)V

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lj4/d;->j(I)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->writeData(Ljava/io/OutputStream;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->writeData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/BATBlock;->getOurBlockIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->writeData(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public _get_property_table()Lorg/apache/poi/poifs/property/PropertyTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    return-object p0
.end method

.method public addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public addDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/nio/DataSource;->close()V

    return-void
.end method

.method public createBlockIfNeeded(I)Ljava/nio/ByteBuffer;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBigBlockSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v3, v2, v0, v1}, Lorg/apache/poi/poifs/nio/DataSource;->write(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBlockAt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p0

    return-object p0
.end method

.method public createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p0

    return-object p0
.end method

.method public createNewDataSource()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    new-instance v2, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;

    sget v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/nio/ByteArrayBackedDataSource;-><init>([B)V

    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    return-void
.end method

.method public createOrUpdateDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createOrUpdateDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p0

    return-object p0
.end method

.method public getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lorg/apache/poi/poifs/storage/BATBlock;->getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p0

    return-object p0
.end method

.method public getBigBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result p0

    return p0
.end method

.method public getBigBlockSizeDetails()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object p0
.end method

.method public getBlockAt(I)Ljava/nio/ByteBuffer;
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result p0

    invoke-virtual {v2, p0, v0, v1}, Lorg/apache/poi/poifs/nio/DataSource;->read(IJ)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Block "

    const-string v2, " not found"

    invoke-static {v1, p1, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public getBlockStoreBlockSize()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBigBlockSize()I

    move-result p0

    return p0
.end method

.method public getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V

    return-object v0
.end method

.method public getFreeBlock()I
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_1

    invoke-virtual {v4, v6}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v7

    if-ne v7, v5, :cond_0

    add-int/2addr v3, v6

    return v3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v1

    const/4 v4, -0x3

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v4

    const/16 v6, 0x6d

    if-lt v4, v6, :cond_8

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/storage/BATBlock;->hasFreeSectors()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createBAT(IZ)Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    const/4 v2, -0x4

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATStart(I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/storage/BATBlock;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    :goto_3
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_xbat_blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setXBATCount(I)V

    move v3, v4

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v1

    if-ge v2, v1, :cond_9

    invoke-virtual {v6, v2}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {v6, v2, v3}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v5}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATArray()[I

    move-result-object v5

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v3, v4, v1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATArray([I)V

    :cond_9
    :goto_5
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_bat_blocks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setBATCount(I)V

    add-int/2addr v3, v0

    return v3
.end method

.method public getHeaderBlock()Lorg/apache/poi/poifs/storage/HeaderBlock;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_header:Lorg/apache/poi/poifs/storage/HeaderBlock;

    return-object p0
.end method

.method public getMiniStore()Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_mini_store:Lorg/apache/poi/poifs/filesystem/POIFSMiniStore;

    return-object p0
.end method

.method public getNextBlock(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/storage/BATBlock;->getValueAt(I)I

    move-result p0

    return p0
.end method

.method public getPropertyTable()Lorg/apache/poi/poifs/property/PropertyTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    return-object p0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/PropertyTable;->getRoot()Lorg/apache/poi/poifs/property/RootProperty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object p0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "POIFS FileSystem"

    return-object p0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->preferArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getViewableArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->preferArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getViewableIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public isInPlaceWriteable()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public preferArray()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->preferArray()Z

    move-result p0

    return p0
.end method

.method public releaseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    instance-of v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->free()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_property_table:Lorg/apache/poi/poifs/property/PropertyTable;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTable;->removeProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public setNextBlock(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getBATBlockAndIndex(I)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getBlock()Lorg/apache/poi/poifs/storage/BATBlock;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/poifs/storage/BATBlock;->setValueAt(II)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/nio/DataSource;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public writeFilesystem()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 1
    instance-of v1, v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->isWriteable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->syncWithDataSource()V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "POIFS opened in read only mode, so writeFilesystem() may not be called. Open the FileSystem in read-write mode first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "POIFS opened from an inputstream, so writeFilesystem() may not be called. Use writeFilesystem(OutputStream) instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeFilesystem(Ljava/io/OutputStream;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->syncWithDataSource()V

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/nio/DataSource;->copyTo(Ljava/io/OutputStream;)V

    return-void
.end method
