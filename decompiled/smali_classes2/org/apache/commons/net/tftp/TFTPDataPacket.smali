.class public final Lorg/apache/commons/net/tftp/TFTPDataPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x200

.field public static final MIN_DATA_LENGTH:I


# instance fields
.field blockNumber:I

.field private data:[B

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    aget-byte v4, v3, v4

    .line 30
    .line 31
    if-ne v1, v4, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    aget-byte v1, v3, v1

    .line 35
    .line 36
    and-int/lit16 v1, v1, 0xff

    .line 37
    .line 38
    shl-int/lit8 v1, v1, 0x8

    .line 39
    .line 40
    aget-byte v2, v3, v2

    .line 41
    .line 42
    and-int/lit16 v2, v2, 0xff

    .line 43
    .line 44
    or-int/2addr v1, v2

    .line 45
    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sub-int/2addr p1, v0

    .line 52
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 56
    .line 57
    const-string v0, "TFTP operator code does not match type."

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[B)V
    .locals 7

    const/4 v5, 0x0

    .line 63
    array-length v6, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .locals 1

    const/4 v0, 0x3

    .line 64
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 65
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 66
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 67
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 68
    iput p6, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    return-void
.end method


# virtual methods
.method public getBlockNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 5

    .line 60
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 61
    aput-byte v2, v1, v2

    .line 62
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 63
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    .line 64
    aput-byte v2, v1, v3

    .line 65
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v0, Ljava/net/DatagramPacket;

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    add-int/2addr v2, v4

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-byte v0, p2, v0

    .line 3
    .line 4
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 5
    .line 6
    int-to-byte v0, v0

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-byte v0, p2, v1

    .line 9
    .line 10
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 11
    .line 12
    const v1, 0xffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v1, v0

    .line 16
    shr-int/lit8 v1, v1, 0x8

    .line 17
    .line 18
    int-to-byte v1, v1

    .line 19
    const/4 v2, 0x2

    .line 20
    aput-byte v1, p2, v2

    .line 21
    .line 22
    and-int/lit16 v0, v0, 0xff

    .line 23
    .line 24
    int-to-byte v0, v0

    .line 25
    const/4 v1, 0x3

    .line 26
    aput-byte v0, p2, v1

    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    if-eq p2, v0, :cond_0

    .line 32
    .line 33
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 34
    .line 35
    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    .line 36
    .line 37
    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 51
    .line 52
    .line 53
    iget p2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    .line 54
    .line 55
    add-int/2addr p2, v1

    .line 56
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public setBlockNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public setData([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 2
    .line 3
    iput p2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 4
    .line 5
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " DATA "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
