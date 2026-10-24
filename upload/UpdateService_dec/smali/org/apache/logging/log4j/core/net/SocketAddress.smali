.class public Lorg/apache/logging/log4j/core/net/SocketAddress;
.super Ljava/lang/Object;
.source "SocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "SocketAddress"
    printObject = true
.end annotation


# instance fields
.field private final socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method private constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "host",
            "port"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketAddress;->socketAddress:Ljava/net/InetSocketAddress;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/InetAddress;ILorg/apache/logging/log4j/core/net/SocketAddress$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/InetAddress;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/net/SocketAddress$1;

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/SocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static getLoopback()Lorg/apache/logging/log4j/core/net/SocketAddress;
    .locals 3

    .line 43
    new-instance v0, Lorg/apache/logging/log4j/core/net/SocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/SocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 71
    new-instance v0, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketAddress;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketAddress;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketAddress;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketAddress;->socketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketAddress;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
