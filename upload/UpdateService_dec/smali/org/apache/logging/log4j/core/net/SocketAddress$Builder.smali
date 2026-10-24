.class public Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;
.super Ljava/lang/Object;
.source "SocketAddress.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/SocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/net/SocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private host:Ljava/net/InetAddress;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;
    .end annotation
.end field

.field private port:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;->build()Lorg/apache/logging/log4j/core/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/net/SocketAddress;
    .locals 4

    .line 96
    new-instance v0, Lorg/apache/logging/log4j/core/net/SocketAddress;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;->host:Ljava/net/InetAddress;

    iget v2, p0, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;->port:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/net/SocketAddress;-><init>(Ljava/net/InetAddress;ILorg/apache/logging/log4j/core/net/SocketAddress$1;)V

    return-object v0
.end method

.method public setHost(Ljava/net/InetAddress;)Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;
    .locals 0
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "host"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;->host:Ljava/net/InetAddress;

    .line 86
    return-object p0
.end method

.method public setPort(I)Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;
    .locals 0
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "port"
        }
    .end annotation

    .line 90
    iput p1, p0, Lorg/apache/logging/log4j/core/net/SocketAddress$Builder;->port:I

    .line 91
    return-object p0
.end method
