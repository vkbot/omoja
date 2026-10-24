.class Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;
.super Ljava/lang/Object;
.source "DatagramSocketManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/DatagramSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "Lorg/apache/logging/log4j/core/net/DatagramSocketManager;",
        "Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/net/DatagramSocketManager$1;

    .line 109
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createManager(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 109
    check-cast p2, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$DatagramSocketManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/DatagramSocketManager;

    move-result-object p1

    return-object p1
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/DatagramSocketManager;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v4, "inetAddress":Ljava/net/InetAddress;
    nop

    .line 120
    new-instance v3, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)I

    move-result v1

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/Layout;->getHeader()[B

    move-result-object v2

    .line 121
    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/logging/log4j/core/Layout;->getFooter()[B

    move-result-object v5

    invoke-direct {v3, v0, v1, v2, v5}, Lorg/apache/logging/log4j/core/net/DatagramOutputStream;-><init>(Ljava/lang/String;I[B[B)V

    .line 122
    .local v3, "os":Ljava/io/OutputStream;
    new-instance v0, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$300(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)I

    move-result v6

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$400(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/Layout;

    move-result-object v7

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$500(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)I

    move-result v8

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/InetAddress;Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;I)V

    return-object v0

    .line 116
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/net/UnknownHostException;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find address of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;->access$100(Lorg/apache/logging/log4j/core/net/DatagramSocketManager$FactoryData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    const/4 v1, 0x0

    return-object v1
.end method
