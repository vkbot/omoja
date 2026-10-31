.class public final Lorg/apache/commons/net/chargen/CharGenUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final CHARGEN_PORT:I = 0x13

.field public static final DEFAULT_PORT:I = 0x13

.field public static final NETSTAT_PORT:I = 0xf

.field public static final QUOTE_OF_DAY_PORT:I = 0x11

.field public static final SYSTAT_PORT:I = 0xb


# instance fields
.field private final receiveData:[B

.field private final receivePacket:Ljava/net/DatagramPacket;

.field private final sendPacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x200

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->receiveData:[B

    .line 9
    .line 10
    new-instance v1, Ljava/net/DatagramPacket;

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 17
    .line 18
    new-instance v0, Ljava/net/DatagramPacket;

    .line 19
    .line 20
    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public receive()[B
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    iget-object v2, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->receiveData:[B

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public send(Ljava/net/InetAddress;)V
    .registers 3

    const/16 v0, 0x13

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/chargen/CharGenUDPClient;->send(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public send(Ljava/net/InetAddress;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->sendPacket:Ljava/net/DatagramPacket;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
