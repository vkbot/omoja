.class public final Lorg/apache/poi/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static BYTE_ARRAY_MAX_OVERRIDE:I = 0x0

.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final LOG:La5/d;

.field private static MAX_BYTE_ARRAY_INIT_SIZE:I = 0x0

.field private static final SKIP_BUFFER_SIZE:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/IOUtils;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/IOUtils;->LOG:La5/d;

    const/4 v0, -0x1

    sput v0, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    sput v0, Lorg/apache/poi/util/IOUtils;->MAX_BYTE_ARRAY_INIT_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateByteArrayInitLength(ZII)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1000

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    sget p0, Lorg/apache/poi/util/IOUtils;->MAX_BYTE_ARRAY_INIT_SIZE:I

    if-lez p0, :cond_1

    if-le p1, p0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public static calculateChecksum(Ljava/io/InputStream;)J
    .locals 4

    .line 4
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateChecksum([B)J
    .locals 3

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static checkByteSizeLimit(I)V
    .locals 3

    sget v0, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-le p0, v0, :cond_0

    int-to-long v1, p0

    .line 1
    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/IOUtils;->throwRFE(JI)V

    :cond_0
    return-void
.end method

.method private static checkByteSizeLimit(J)V
    .locals 3

    sget v0, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/IOUtils;->throwRFE(JI)V

    :cond_0
    return-void
.end method

.method private static checkLength(JI)V
    .locals 3

    sget v0, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    if-lez v0, :cond_0

    int-to-long v1, v0

    cmp-long p2, p0, v1

    if-lez p2, :cond_1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/IOUtils;->throwRFE(JI)V

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/IOUtils;->throwRFE(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/util/IOUtils;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "Unable to close resource"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)J
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t create destination directory: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-wide v0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 12
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 11

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    move-wide v4, v1

    :cond_0
    cmp-long v6, p2, v1

    const-wide/16 v7, 0x1000

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    sub-long v9, p2, v4

    .line 2
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_0
    long-to-int v6, v7

    if-lez v6, :cond_3

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v0, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 4
    invoke-virtual {p1, v0, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v6

    add-long/2addr v4, v7

    :cond_2
    move v3, v6

    :cond_3
    if-ltz v3, :cond_4

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_0

    cmp-long v6, v4, p2

    if-ltz v6, :cond_0

    :cond_4
    return-wide v4
.end method

.method public static getMaxByteArrayInitSize()I
    .locals 1

    sget v0, Lorg/apache/poi/util/IOUtils;->MAX_BYTE_ARRAY_INIT_SIZE:I

    return v0
.end method

.method public static peekFirst8Bytes(Ljava/io/InputStream;)[B
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static peekFirstNBytes(Ljava/io/InputStream;I)[B
    .locals 6

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->checkByteSizeLimit(I)V

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    new-instance v0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v0, p1}, Lj4/d;->j(I)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    sget v1, Ln4/a;->Z:I

    new-instance v1, Ln4/a$b;

    invoke-direct {v1}, Ln4/a$b;-><init>()V

    new-instance v2, Lj4/a$c;

    invoke-direct {v2, p0}, Lj4/a;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lj4/b;->c:Lj4/a;

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Ln4/a$a;->f1:J

    invoke-virtual {v1}, Ln4/a$b;->k()Ln4/a;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-ge v1, p1, :cond_0

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p1

    instance-of v2, p0, Ljava/io/PushbackInputStream;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/io/PushbackInputStream;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-object p1

    :cond_2
    :try_start_1
    new-instance p0, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p0}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    if-ne v0, p3, :cond_0

    return v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x0

    .line 3
    :cond_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_3
    return v0
.end method

.method public static safelyAllocate(JI)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->checkByteSizeLimit(J)V

    long-to-int p0, p0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static safelyAllocateCheck(JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/IOUtils;->checkLength(JI)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Can\'t allocate an array > 2147483647"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t allocate an array of length < 0, but had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static safelyClone([BIII)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1, p3}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Invalid offset/length specified: offset: "

    const-string v1, ", lenght: "

    const-string v2, ", maxLength: "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setByteArrayMaxOverride(I)V
    .locals 0

    sput p0, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    return-void
.end method

.method public static setMaxByteArrayInitSize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/util/IOUtils;->MAX_BYTE_ARRAY_INIT_SIZE:I

    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x800

    new-array v2, v2, [B

    move-wide v3, p1

    :goto_0
    cmp-long v5, v3, v0

    if-lez v5, :cond_2

    const-wide/16 v5, 0x800

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long p0, p1, v3

    if-nez p0, :cond_3

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    sub-long/2addr p1, v3

    return-wide p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip count must be non-negative, actual: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwRFE(JI)V
    .locals 2

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Tried to allocate an array of length %,d, but the maximum length for this record type is %,d.%nIf the file is not corrupt and not large, please open an issue on bugzilla to request %nincreasing the maximum allowable size for this record type.%nYou can set a higher override value with IOUtils.setByteArrayMaxOverride()"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwRecordTruncationException(I)V
    .locals 3

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Tried to read data but the maximum length for this record type is %,d.%nIf the file is not corrupt and not large, please open an issue on bugzilla to request %nincreasing the maximum allowable size for this record type.%nYou can set a higher override value with IOUtils.setByteArrayMaxOverride()"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 1

    const v0, 0x7fffffff

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;II)[B
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;IIZZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static toByteArray(Ljava/io/InputStream;IIZZ)[B
    .locals 8

    if-ltz p1, :cond_9

    if-ltz p2, :cond_9

    sget v0, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    int-to-long v1, p1

    .line 5
    invoke-static {v1, v2, p2}, Lorg/apache/poi/util/IOUtils;->checkLength(JI)V

    :cond_1
    if-eqz p4, :cond_2

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, p2

    .line 7
    :goto_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/util/IOUtils;->calculateByteArrayInitLength(ZII)I

    move-result p1

    .line 8
    sget v2, Lorg/apache/commons/io/output/j;->c:I

    .line 9
    new-instance v2, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v2}, Lorg/apache/commons/io/output/j$a;-><init>()V

    .line 10
    invoke-virtual {v2, p1}, Lj4/d;->j(I)V

    invoke-virtual {v2}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object p1

    const/16 v2, 0x1000

    :try_start_0
    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :cond_3
    sub-int v6, v1, v5

    .line 11
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 12
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v5, v7

    if-lez v6, :cond_4

    .line 13
    invoke-virtual {p1, v3, v4, v6}, Lorg/apache/commons/io/output/j;->write([BII)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 14
    :cond_4
    :goto_1
    invoke-static {v5}, Lorg/apache/poi/util/IOUtils;->checkByteSizeLimit(I)V

    const/4 v7, -0x1

    if-ge v5, v1, :cond_5

    if-gt v6, v7, :cond_3

    :cond_5
    sget v2, Lorg/apache/poi/util/IOUtils;->BYTE_ARRAY_MAX_OVERRIDE:I

    if-gez v2, :cond_6

    if-le v6, v7, :cond_6

    if-nez p4, :cond_6

    .line 15
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_6

    .line 16
    invoke-static {p2}, Lorg/apache/poi/util/IOUtils;->throwRecordTruncationException(I)V

    :cond_6
    if-eqz p3, :cond_8

    if-eq v1, v0, :cond_8

    if-lt v5, v1, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    new-instance p0, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected EOF - expected len: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - actual len: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    .line 20
    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 21
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2

    .line 22
    :cond_9
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Can\'t allocate an array of length < 0"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Ljava/nio/ByteBuffer;I)[B
    .locals 1

    .line 23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->checkByteSizeLimit(I)V

    .line 26
    new-array p1, p1, [B

    .line 27
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, v0, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;IIZZ)[B

    move-result-object p0

    return-object p0
.end method
