.class public final Lorg/apache/commons/net/echo/EchoUDPClient;
.super Lorg/apache/commons/net/discard/DiscardUDPClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final DEFAULT_PORT:I = 0x7


# instance fields
.field private final receivePacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/discard/DiscardUDPClient;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/net/DatagramPacket;

    .line 5
    .line 6
    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public receive([B)I
    .registers 3

    .line 27
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/echo/EchoUDPClient;->receive([BI)I

    move-result p1

    return p1
.end method

.method public receive([BI)I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public send([BILjava/net/InetAddress;)V
    .registers 5

    const/4 v0, 0x7

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    return-void
.end method

.method public send([BLjava/net/InetAddress;)V
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x7

    .line 3
    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
