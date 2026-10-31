.class public abstract Lorg/apache/commons/net/tftp/TFTPPacket;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ACKNOWLEDGEMENT:I = 0x4

.field public static final DATA:I = 0x3

.field public static final ERROR:I = 0x5

.field static final MIN_PACKET_SIZE:I = 0x4

.field public static final OACK:I = 0x6

.field public static final READ_REQUEST:I = 0x1

.field public static final SEGMENT_SIZE:I = 0x200

.field public static final WRITE_REQUEST:I = 0x2


# instance fields
.field address:Ljava/net/InetAddress;

.field port:I

.field type:I


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 7
    .line 8
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 9
    .line 10
    return-void
.end method

.method public static final newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-lt v0, v1, :cond_41

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x1

    .line 13
    aget-byte v0, v0, v2

    .line 14
    .line 15
    if-eq v0, v2, :cond_3b

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_35

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_2f

    .line 22
    .line 23
    if-eq v0, v1, :cond_29

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-ne v0, v1, :cond_21

    .line 27
    .line 28
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_21
    new-instance p0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 35
    .line 36
    const-string v0, "Bad packet.  Invalid TFTP operator code."

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_29
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2f
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_35
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3b
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_41
    new-instance p0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    .line 67
    .line 68
    const-string v0, "Bad packet. Datagram data length is too short."

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method


# virtual methods
.method public final getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPort()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public final getType()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract newDatagram()Ljava/net/DatagramPacket;
.end method

.method public abstract newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-void
.end method

.method public final setPort(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
