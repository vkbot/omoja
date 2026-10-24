.class Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;
.super Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;
.source "SslSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/SslSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SslSocketManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<",
        "Lorg/apache/logging/log4j/core/net/SslSocketManager;",
        "Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/net/SslSocketManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/net/SslSocketManager$1;

    .line 158
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method createManager(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;)Lorg/apache/logging/log4j/core/net/SslSocketManager;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "data"    # Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "os",
            "socket",
            "inetAddress",
            "data"
        }
    .end annotation

    .line 163
    move-object/from16 v0, p5

    new-instance v15, Lorg/apache/logging/log4j/core/net/SslSocketManager;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->host:Ljava/lang/String;

    iget v8, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->port:I

    iget v9, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->connectTimeoutMillis:I

    iget v10, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->reconnectDelayMillis:I

    iget-boolean v11, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->immediateFail:Z

    iget-object v12, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    iget v13, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->bufferSize:I

    iget-object v14, v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v14}, Lorg/apache/logging/log4j/core/net/SslSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    return-object v15
.end method

.method bridge synthetic createManager(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "name",
            "os",
            "socket",
            "inetAddress",
            "data"
        }
    .end annotation

    .line 158
    move-object v5, p5

    check-cast v5, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;->createManager(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;)Lorg/apache/logging/log4j/core/net/SslSocketManager;

    move-result-object p1

    return-object p1
.end method

.method createSocket(Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;)Ljava/net/Socket;
    .locals 7
    .param p1, "data"    # Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;->RESOLVER:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    iget-object v1, p1, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->host:Ljava/lang/String;

    iget v2, p1, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;->resolveHost(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, "ioe":Ljava/io/IOException;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 174
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    iget v4, p1, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->connectTimeoutMillis:I

    iget-object v5, p1, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    iget-object v6, p1, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    invoke-static {v3, v4, v5, v6}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->createSocket(Ljava/net/InetSocketAddress;ILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Lorg/apache/logging/log4j/core/net/SocketOptions;)Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .local v4, "ex":Ljava/io/IOException;
    move-object v1, v4

    .line 179
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 180
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;->errorMessage(Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method bridge synthetic createSocket(Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    check-cast p1, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/net/SslSocketManager$SslSocketManagerFactory;->createSocket(Lorg/apache/logging/log4j/core/net/SslSocketManager$SslFactoryData;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
