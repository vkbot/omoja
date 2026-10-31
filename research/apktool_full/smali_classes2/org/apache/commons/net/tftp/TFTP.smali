.class public Lorg/apache/commons/net/tftp/TFTP;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ASCII_MODE:I = 0x0

.field public static final BINARY_MODE:I = 0x1

.field public static final DEFAULT_PORT:I = 0x45

.field public static final DEFAULT_TIMEOUT:I = 0x1388
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TIMEOUT_DURATION:Ljava/time/Duration;

.field private static final HEADER_SIZE:I = 0x4

.field public static final IMAGE_MODE:I = 0x1

.field public static final NETASCII_MODE:I = 0x0

.field public static final OCTET_MODE:I = 0x1

.field static final PACKET_SIZE:I = 0x204


# instance fields
.field private buffersInitialized:Z

.field private packetSize:I

.field private receiveBuffer:[B

.field private receiveDatagram:Ljava/net/DatagramPacket;

.field sendBuffer:[B

.field private sendDatagram:Ljava/net/DatagramPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->C()Ljava/time/Duration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/commons/net/tftp/TFTP;->DEFAULT_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x204

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 7
    .line 8
    sget-object v0, Lorg/apache/commons/net/tftp/TFTP;->DEFAULT_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/DatagramSocketClient;->setDefaultTimeout(Ljava/time/Duration;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 17
    .line 18
    return-void
.end method

.method public static final getModeName(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method


# virtual methods
.method public final beginBufferedOps()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 6
    .line 7
    new-instance v0, Ljava/net/DatagramPacket;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 16
    .line 17
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 22
    .line 23
    new-instance v0, Ljava/net/DatagramPacket;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendDatagram:Ljava/net/DatagramPacket;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/apache/commons/net/tftp/TFTP;->buffersInitialized:Z

    .line 35
    .line 36
    return-void
.end method

.method public final bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "<"

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 3

    .line 1
    const-string v0, ">"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->sendDatagram:Ljava/net/DatagramPacket;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;->newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final discardPackets()V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/DatagramPacket;

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->getSoTimeoutDuration()Ljava/time/Duration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->D()Ljava/time/Duration;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/DatagramSocketClient;->setSoTimeout(Ljava/time/Duration;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/DatagramSocketClient;->setSoTimeout(Ljava/time/Duration;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final endBufferedOps()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 3
    .line 4
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendDatagram:Ljava/net/DatagramPacket;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/apache/commons/net/tftp/TFTP;->buffersInitialized:Z

    .line 12
    .line 13
    return-void
.end method

.method public getPacketSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final receive()Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 3

    .line 1
    new-instance v0, Ljava/net/DatagramPacket;

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "<"

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final resetBuffersToSize(I)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0xffb8

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/lit8 p1, p1, 0x4

    .line 15
    .line 16
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 17
    .line 18
    iget-boolean p1, p0, Lorg/apache/commons/net/tftp/TFTP;->buffersInitialized:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->beginBufferedOps()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final send(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 1

    .line 1
    const-string v0, ">"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/net/tftp/TFTPPacket;->newDatagram()Ljava/net/DatagramPacket;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 0

    .line 1
    return-void
.end method
