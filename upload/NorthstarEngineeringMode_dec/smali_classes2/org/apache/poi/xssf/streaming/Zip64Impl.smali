.class Lorg/apache/poi/xssf/streaming/Zip64Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;
    }
.end annotation


# static fields
.field private static final DATA_DESCRIPTOR_USED:I = 0x8

.field private static final MAX32:J = 0xffffffffL

.field private static final PK0102:J = 0x2014b50L

.field private static final PK0304:J = 0x4034b50L

.field private static final PK0506:J = 0x6054b50L

.field private static final PK0708:J = 0x8074b50L

.field private static final VERSION_20:I = 0x14

.field private static final VERSION_45:I = 0x2d

.field private static final ZIP64_FIELD:I = 0x1


# instance fields
.field private final out:Ljava/io/OutputStream;

.field private written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private writeInt(J)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    new-array v2, v1, [B

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v2, v6

    const/16 v5, 0x8

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    const/16 v5, 0x18

    ushr-long/2addr p1, v5

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v2, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    return-void
.end method

.method private writeLong(J)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x8

    new-array v2, v1, [B

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v2, v6

    ushr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, v2, v6

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x4

    aput-byte v5, v2, v6

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x5

    aput-byte v5, v2, v6

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v2, v6

    const/16 v5, 0x38

    ushr-long/2addr p1, v5

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v2, p2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    return-void
.end method

.method private writeShort(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->out:Ljava/io/OutputStream;

    const/4 v1, 0x2

    new-array v2, v1, [B

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v3, 0x1

    aput-byte p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    return-void
.end method


# virtual methods
.method public writeCEN(Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;)I
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    iget-wide v1, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->size:J

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-wide/32 v5, 0x2014b50    # 1.6619997E-316

    invoke-direct {p0, v5, v6}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    const/16 v5, 0x2d

    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x14

    :goto_1
    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    const-wide/16 v6, 0x0

    invoke-direct {p0, v6, v7}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget-wide v8, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->crc:J

    invoke-direct {p0, v8, v9}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget v8, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->compressedSize:I

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v3, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->size:J

    :goto_2
    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget-object v3, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->filename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    if-eqz v1, :cond_3

    const/16 v3, 0xc

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v6, v7}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget v0, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->offset:I

    int-to-long v3, v0

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget-object v0, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->filename:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz v1, :cond_4

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v5}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    iget-wide v1, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->size:J

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeLong(J)V

    :cond_4
    iget p0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    array-length p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public writeDAT(Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;)I
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    const-wide/32 v0, 0x8074b50

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget-wide v0, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->crc:J

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget v0, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->compressedSize:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeLong(J)V

    iget-wide v0, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->size:J

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeLong(J)V

    iget p0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    return p0
.end method

.method public writeEND(III)I
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    const-wide/32 v1, 0x6054b50

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    int-to-long v1, p3

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    int-to-long p1, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    return p0
.end method

.method public writeLFH(Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;)I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    const-wide/32 v1, 0x4034b50

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget-wide v3, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->crc:J

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeInt(J)V

    iget-object v1, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/Zip64Impl;->writeShort(I)V

    iget-object p1, p1, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->filename:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl;->written:I

    array-length p1, p1

    add-int/2addr p0, p1

    return p0
.end method
