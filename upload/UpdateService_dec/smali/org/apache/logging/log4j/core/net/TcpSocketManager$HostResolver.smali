.class public Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;
.super Ljava/lang/Object;
.source "TcpSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/TcpSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostResolver"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 548
    new-instance v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;->INSTANCE:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveHost(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "port"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 551
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 552
    .local v0, "addresses":[Ljava/net/InetAddress;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    .local v1, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 554
    .local v4, "address":Ljava/net/InetAddress;
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v4    # "address":Ljava/net/InetAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return-object v1
.end method
