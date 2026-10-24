.class public Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;
.super Ljava/lang/Object;
.source "TcpSocketManager.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/ManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/TcpSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TcpSocketManagerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/apache/logging/log4j/core/net/TcpSocketManager;",
        "T:",
        "Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/appender/ManagerFactory<",
        "TM;TT;>;"
    }
.end annotation


# static fields
.field static volatile RESOLVER:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 462
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;->INSTANCE:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    sput-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->RESOLVER:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 459
    .local p0, "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;, "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<TM;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 459
    .local p0, "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;, "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<TM;TT;>;"
    check-cast p2, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    move-result-object p1

    return-object p1
.end method

.method createManager(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/net/Socket;",
            "Ljava/net/InetAddress;",
            "TT;)TM;"
        }
    .end annotation

    .line 494
    .local p0, "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;, "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<TM;TT;>;"
    .local p5, "data":Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;, "TT;"
    move-object/from16 v0, p5

    new-instance v14, Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    iget v7, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->port:I

    iget v8, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->connectTimeoutMillis:I

    iget v9, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->reconnectDelayMillis:I

    iget-boolean v10, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->immediateFail:Z

    iget-object v11, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    iget v12, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->bufferSize:I

    iget-object v13, v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    return-object v14
.end method

.method public createManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TM;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;, "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<TM;TT;>;"
    .local p2, "data":Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;, "TT;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p2, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    .line 474
    .local v6, "inetAddress":Ljava/net/InetAddress;
    nop

    .line 475
    const/4 v1, 0x0

    .line 478
    .local v1, "socket":Ljava/net/Socket;
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->createSocket(Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Ljava/net/Socket;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    .end local v1    # "socket":Ljava/net/Socket;
    .local v5, "socket":Ljava/net/Socket;
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 480
    .local v4, "os":Ljava/io/OutputStream;
    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->createManager(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 481
    .end local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v1    # "socket":Ljava/net/Socket;
    :catch_1
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    .line 482
    .local v1, "ex":Ljava/io/IOException;
    .restart local v5    # "socket":Ljava/net/Socket;
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$1200()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "TcpSocketManager ({}) caught exception and will continue:"

    invoke-interface {v2, v3, p1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    invoke-static {}, Lorg/apache/logging/log4j/core/util/NullOutputStream;->getInstance()Lorg/apache/logging/log4j/core/util/NullOutputStream;

    move-result-object v1

    .line 485
    .local v1, "os":Ljava/io/OutputStream;
    iget v2, p2, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->reconnectDelayMillis:I

    if-nez v2, :cond_0

    .line 486
    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Closer;->closeSilently(Ljava/lang/AutoCloseable;)Z

    .line 487
    return-object v0

    .line 489
    :cond_0
    const/4 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v1

    move-object v11, v6

    move-object v12, p2

    invoke-virtual/range {v7 .. v12}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->createManager(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    move-result-object v0

    return-object v0

    .line 471
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v5    # "socket":Ljava/net/Socket;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    :catch_2
    move-exception v1

    .line 472
    .local v1, "ex":Ljava/net/UnknownHostException;
    invoke-static {}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->access$1100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    const-string v4, "Could not find address of {}: {}"

    invoke-interface {v2, v4, v3, v1, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    return-object v0
.end method

.method createSocket(Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/net/Socket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    .local p0, "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;, "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<TM;TT;>;"
    .local p1, "data":Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;, "TT;"
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->RESOLVER:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    iget-object v1, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    iget v2, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;->resolveHost(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 501
    .local v0, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    const/4 v1, 0x0

    .line 502
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

    .line 504
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    iget-object v4, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    iget v5, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->connectTimeoutMillis:I

    invoke-static {v3, v4, v5}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->createSocket(Ljava/net/InetSocketAddress;Lorg/apache/logging/log4j/core/net/SocketOptions;I)Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 505
    :catch_0
    move-exception v4

    .line 506
    .local v4, "ex":Ljava/io/IOException;
    move-object v1, v4

    .line 508
    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 509
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->errorMessage(Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected errorMessage(Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "socketAddresses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;, "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<TM;TT;>;"
    .local p1, "data":Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;, "TT;"
    .local p2, "socketAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create socket for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 516
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    const-string v2, " using ip address "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, " and port "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    :cond_0
    const-string v1, " using ip addresses and ports "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 523
    if-lez v1, :cond_1

    .line 524
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
