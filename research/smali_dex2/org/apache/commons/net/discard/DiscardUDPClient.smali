.class public Lorg/apache/commons/net/discard/DiscardUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final DEFAULT_PORT:I = 0x9


# instance fields
.field private final sendPacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

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
    iput-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public send([BILjava/net/InetAddress;)V
    .registers 5

    const/16 v0, 0x9

    .line 31
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    return-void
.end method

.method public send([BILjava/net/InetAddress;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lorg/apache/commons/net/discard/DiscardUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public send([BLjava/net/InetAddress;)V
    .registers 5

    .line 32
    array-length v0, p1

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    return-void
.end method
