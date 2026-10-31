.class public final Lorg/apache/commons/net/tftp/TFTPAckPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field blockNumber:I


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 3

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
    const/4 v2, 0x4

    .line 10
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    aget-byte v1, p1, v1

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aget-byte v0, p1, v0

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    aget-byte p1, p1, v1

    .line 35
    .line 36
    and-int/lit16 p1, p1, 0xff

    .line 37
    .line 38
    or-int/2addr p1, v0

    .line 39
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 43
    .line 44
    const-string v0, "TFTP operator code does not match type."

    .line 45
    .line 46
    invoke-direct {p1, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 1

    const/4 v0, 0x4

    .line 50
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 51
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

    return-void
.end method


# virtual methods
.method public getBlockNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 6

    .line 46
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    int-to-byte v0, v0

    .line 47
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

    const v2, 0xffff

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x4

    .line 48
    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    const/4 v5, 0x1

    aput-byte v0, v4, v5

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v1, v4, v0

    .line 49
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    invoke-direct {v0, v4, v3, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 3

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
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

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
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 39
    .line 40
    .line 41
    const/4 p2, 0x4

    .line 42
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public setBlockNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

    .line 2
    .line 3
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
    const-string v1, " ACK "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPAckPacket;->blockNumber:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
