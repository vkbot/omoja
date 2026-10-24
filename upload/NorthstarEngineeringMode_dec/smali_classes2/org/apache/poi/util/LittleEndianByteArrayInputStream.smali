.class public Lorg/apache/poi/util/LittleEndianByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public checkPosition(I)V
    .locals 3

    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer overrun, having "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes in the stream and position is at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    const-string v2, ", but trying to increment position by "

    invoke-static {v1, p0, v2, p1}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReadIndex()I
    .locals 0

    iget p0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return p0
.end method

.method public limit(I)V
    .locals 1

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ljava/io/ByteArrayInputStream;->count:I

    return-void
.end method

.method public readByte()B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 2

    .line 3
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    const/4 v0, 0x0

    .line 4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    return-void
.end method

.method public readInt()I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    const-wide/16 v1, 0x4

    invoke-super {p0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return v0
.end method

.method public readLong()J
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    invoke-super {p0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    return-void
.end method

.method public readShort()S
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->checkPosition(I)V

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    const-wide/16 v1, 0x2

    invoke-super {p0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return v0
.end method

.method public readUByte()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public readUInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUShort()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public setReadIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid position: "

    const-string v2, " with count "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
