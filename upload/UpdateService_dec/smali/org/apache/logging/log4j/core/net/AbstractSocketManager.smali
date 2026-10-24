.class public abstract Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
.super Lorg/apache/logging/log4j/core/appender/OutputStreamManager;
.source "AbstractSocketManager.java"


# instance fields
.field protected final host:Ljava/lang/String;

.field protected final inetAddress:Ljava/net/InetAddress;

.field protected final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/InetAddress;Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;ZI)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p7, "writeHeader"    # Z
    .param p8, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "os",
            "inetAddress",
            "host",
            "port",
            "layout",
            "writeHeader",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;ZI)V"
        }
    .end annotation

    .line 61
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p6

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;ZI)V

    .line 62
    iput-object p3, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->inetAddress:Ljava/net/InetAddress;

    .line 63
    iput-object p4, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->host:Ljava/lang/String;

    .line 64
    iput p5, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->port:I

    .line 65
    return-void
.end method


# virtual methods
.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 79
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "port"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->port:I

    return v0
.end method
