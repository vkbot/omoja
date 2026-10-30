.class public final Lorg/apache/commons/net/time/TimeUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final DEFAULT_PORT:I = 0x25

.field public static final SECONDS_1900_TO_1970:J = 0x83aa7e80L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toTime([B)J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 5
    .line 6
    shl-int/lit8 v0, v0, 0x18

    .line 7
    .line 8
    int-to-long v0, v0

    .line 9
    const-wide v2, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v0, v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aget-byte v4, p0, v4

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    shl-int/lit8 v4, v4, 0x10

    .line 21
    .line 22
    int-to-long v4, v4

    .line 23
    and-long/2addr v4, v2

    .line 24
    or-long/2addr v0, v4

    .line 25
    const/4 v4, 0x2

    .line 26
    aget-byte v4, p0, v4

    .line 27
    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 29
    .line 30
    shl-int/lit8 v4, v4, 0x8

    .line 31
    .line 32
    int-to-long v4, v4

    .line 33
    and-long/2addr v4, v2

    .line 34
    or-long/2addr v0, v4

    .line 35
    const/4 v4, 0x3

    .line 36
    aget-byte p0, p0, v4

    .line 37
    .line 38
    and-int/lit16 p0, p0, 0xff

    .line 39
    .line 40
    int-to-long v4, p0

    .line 41
    and-long/2addr v2, v4

    .line 42
    or-long/2addr v0, v2

    .line 43
    return-wide v0
.end method


# virtual methods
.method public getDate(Ljava/net/InetAddress;)Ljava/util/Date;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide v3, 0x83aa7e80L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    sub-long/2addr v1, v3

    .line 15
    const-wide/16 v3, 0x3e8

    .line 16
    .line 17
    mul-long/2addr v1, v3

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getDate(Ljava/net/InetAddress;I)Ljava/util/Date;
    .locals 3

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide p1

    const-wide v1, 0x83aa7e80L

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;)J
    .locals 2

    const/16 v0, 0x25

    .line 36
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime(Ljava/net/InetAddress;I)J
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    new-array v3, v2, [B

    .line 6
    .line 7
    new-instance v4, Ljava/net/DatagramPacket;

    .line 8
    .line 9
    invoke-direct {v4, v1, v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/net/DatagramPacket;

    .line 13
    .line 14
    invoke-direct {p1, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lorg/apache/commons/net/time/TimeUDPClient;->toTime([B)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    return-wide p1
.end method
