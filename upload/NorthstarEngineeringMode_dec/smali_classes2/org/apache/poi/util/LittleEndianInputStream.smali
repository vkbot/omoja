.class public Lorg/apache/poi/util/LittleEndianInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field private static final BUFFERED_SIZE:I = 0x1fa0

.field private static final EOF:I = -0x1


# instance fields
.field private markIndex:I

.field private readIndex:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1fa0

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/util/LittleEndianInputStream;->readIndex:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/util/LittleEndianInputStream;->markIndex:I

    return-void
.end method

.method private _read([BII)I
    .locals 3

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    return p3
.end method

.method private static checkEOF(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected end-of-file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "just delegating"
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getReadIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/util/LittleEndianInputStream;->readIndex:I

    return p0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iget p1, p0, Lorg/apache/poi/util/LittleEndianInputStream;->readIndex:I

    iput p1, p0, Lorg/apache/poi/util/LittleEndianInputStream;->markIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lorg/apache/poi/util/LittleEndianInputStream;->readIndex:I

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p0, Lorg/apache/poi/util/LittleEndianInputStream;->readIndex:I

    return p1
.end method

.method public readByte()B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->_read([BII)I

    move-result p0

    invoke-static {p0, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readInt()I
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLong()J
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readPlain([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    return-void
.end method

.method public readShort()S
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public readUByte()I
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([B)S

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readUInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    iget v0, p0, Lorg/apache/poi/util/LittleEndianInputStream;->markIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/apache/poi/util/LittleEndianInputStream;->readIndex:I

    iput v1, p0, Lorg/apache/poi/util/LittleEndianInputStream;->markIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public skipFully(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    long-to-int p0, v0

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;->checkEOF(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t skip further than 2147483647"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
