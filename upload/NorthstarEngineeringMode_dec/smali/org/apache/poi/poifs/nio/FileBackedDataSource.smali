.class public Lorg/apache/poi/poifs/nio/FileBackedDataSource;
.super Lorg/apache/poi/poifs/nio/DataSource;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private final buffersToClean:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final channel:Ljava/nio/channels/FileChannel;

.field private channelSize:Ljava/lang/Long;

.field private final closeChannelOnClose:Z

.field private final srcFile:Ljava/io/RandomAccessFile;

.field private final writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string/jumbo v0, "r"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "r"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "rw"

    .line 2
    :goto_0
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;ZZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/poifs/nio/DataSource;-><init>()V

    .line 7
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->srcFile:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    iput-boolean p4, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->closeChannelOnClose:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;ZZ)V

    return-void
.end method

.method public static synthetic a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->lambda$close$0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static synthetic lambda$close$0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->unmap(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static unmap(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeapByteBuffer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_SUPPORTED:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/poi/poifs/nio/CleanerUtil;->getCleaner()Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;->freeBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "Failed to unmap the buffer"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/IdentityHashMap;

    new-instance v1, Lorg/apache/poi/poifs/nio/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/nio/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->srcFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->closeChannelOnClose:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public copyTo(Ljava/io/OutputStream;)V
    .locals 6

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method public isWriteable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    return p0
.end method

.method public read(IJ)Ljava/nio/ByteBuffer;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->size()J

    move-result-wide v0

    cmp-long v0, p2, v0

    const-string v1, " past the end of the file"

    const-string v2, "Position "

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v7, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->buffersToClean:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->unmap(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channelSize:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channelSize:Ljava/lang/Long;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channelSize:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    iget-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channelSize:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channelSize:Ljava/lang/Long;

    :cond_0
    return-void
.end method
