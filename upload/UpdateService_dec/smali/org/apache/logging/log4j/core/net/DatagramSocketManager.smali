.class public Lorg/apache/logging/log4j/core/net/DatagramSocketManager;
.super Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
.source "DatagramSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;,
        Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;
    }
.end annotation


# static fields
.field private static final FACTORY:Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;-><init>(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;->FACTORY:Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/InetAddress;Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "inetAddress"    # Ljava/net/InetAddress;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p7, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            ">;I)V"
        }
    .end annotation

    .line 49
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/InetAddress;Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;ZI)V

    .line 50
    return-void
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static getSocketManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;I)Lorg/apache/logging/log4j/core/net/DatagramSocketManager;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "port",
            "layout",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I)",
            "Lorg/apache/logging/log4j/core/net/DatagramSocketManager;"
        }
    .end annotation

    .line 62
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    if-lez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UDP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;I)V

    sget-object v2, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;->FACTORY:Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A port value is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A host name is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 84
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "protocol"

    const-string v2, "udp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "direction"

    const-string v2, "out"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object v0
.end method
