.class public Lorg/apache/ftpserver/impl/IODataConnectionFactory;
.super Ljava/lang/Object;
.source "IODataConnectionFactory.java"

# interfaces
.implements Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field address:Ljava/net/InetAddress;

.field private dataSoc:Ljava/net/Socket;

.field private isZip:Z

.field passive:Z

.field port:I

.field requestTime:J

.field secure:Z

.field servSoc:Ljava/net/ServerSocket;

.field private serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

.field serverControlAddress:Ljava/net/InetAddress;

.field session:Lorg/apache/ftpserver/impl/FtpIoSession;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 3
    .param p1, "serverContext"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J

    .line 64
    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    .line 66
    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    .line 68
    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->isZip:Z

    .line 75
    iput-object p2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 76
    iput-object p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 77
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isImplicitSsl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    .line 80
    :cond_0
    return-void
.end method

.method private declared-synchronized createDataSocket()Ljava/net/Socket;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 239
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    .line 240
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .local v1, "dataConfig":Lorg/apache/ftpserver/DataConnectionConfiguration;
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    .line 243
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Opening secure active data connection"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    .line 247
    .local v0, "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-eqz v0, :cond_2

    .line 252
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 255
    .local v2, "socFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 256
    .local v5, "ssoc":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v5, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 259
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 260
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 263
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnectionFactory;
    :cond_0
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 264
    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 267
    :cond_1
    iput-object v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    .line 268
    .end local v0    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .end local v2    # "socFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v5    # "ssoc":Ljavax/net/ssl/SSLSocket;
    goto :goto_0

    .line 248
    .restart local v0    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    :cond_2
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "Data connection SSL not configured"

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .end local v1    # "dataConfig":Lorg/apache/ftpserver/DataConnectionConfiguration;
    throw v2

    .line 269
    .end local v0    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .restart local v1    # "dataConfig":Lorg/apache/ftpserver/DataConnectionConfiguration;
    :cond_3
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Opening active data connection"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    .line 273
    :goto_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 275
    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getActiveLocalAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 278
    .local v0, "localAddr":Ljava/net/InetAddress;
    if-nez v0, :cond_4

    .line 279
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object v0, v2

    .line 282
    :cond_4
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getActiveLocalPort()I

    move-result v3

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 284
    .local v2, "localSocketAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Binding active data connection to {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 287
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    iget v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 288
    .end local v0    # "localAddr":Ljava/net/InetAddress;
    .end local v2    # "localSocketAddress":Ljava/net/SocketAddress;
    goto/16 :goto_3

    .line 290
    :cond_5
    iget-boolean v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    if-eqz v2, :cond_b

    .line 291
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Opening secure passive data connection"

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v2

    .line 299
    .local v2, "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-eqz v2, :cond_a

    .line 303
    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 305
    .local v5, "ssocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    .line 307
    .local v6, "serverSocket":Ljava/net/Socket;
    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 308
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v7, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 311
    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v8

    sget-object v9, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v8, v9, :cond_6

    .line 312
    invoke-virtual {v7, v4}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    goto :goto_1

    .line 313
    :cond_6
    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v8

    sget-object v9, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v8, v9, :cond_7

    .line 314
    invoke-virtual {v7, v4}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 317
    :cond_7
    :goto_1
    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 318
    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 321
    :cond_8
    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 322
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v7, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 325
    :cond_9
    iput-object v7, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    .line 326
    .end local v2    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .end local v5    # "ssocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v6    # "serverSocket":Ljava/net/Socket;
    .end local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    goto :goto_2

    .line 300
    .restart local v2    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    :cond_a
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v3, "Data connection SSL not configured"

    invoke-direct {v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    .end local v1    # "dataConfig":Lorg/apache/ftpserver/DataConnectionConfiguration;
    throw v0

    .line 327
    .end local v2    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .restart local v1    # "dataConfig":Lorg/apache/ftpserver/DataConnectionConfiguration;
    :cond_b
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Opening passive data connection"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    .line 332
    :goto_2
    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isPassiveIpCheck()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 335
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 336
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 337
    .local v3, "dataSocketAddress":Ljava/net/InetAddress;
    invoke-virtual {v3, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 338
    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Passive IP Check failed. Closing data connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as it does not match the expected address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    monitor-exit p0

    return-object v0

    .line 344
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    .end local v3    # "dataSocketAddress":Ljava/net/InetAddress;
    :cond_c
    :try_start_2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    .line 346
    .local v0, "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 347
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Passive data connection opened"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v0    # "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    :goto_3
    nop

    .line 354
    :try_start_3
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 359
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_d

    .line 360
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 363
    :cond_d
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    .line 351
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FtpDataConnection.getDataSocket()"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "dataConfig":Lorg/apache/ftpserver/DataConnectionConfiguration;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    .line 136
    .local v0, "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    .line 139
    .local v1, "configuration":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-nez v1, :cond_0

    .line 140
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    .line 143
    :cond_0
    return-object v1
.end method

.method private resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/DataConnectionException;
        }
    .end annotation

    .line 370
    if-nez p1, :cond_0

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 374
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v1, Lorg/apache/ftpserver/DataConnectionException;

    const-string v2, "Failed to resolve address"

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized closeDataConnection()V
    .locals 4

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    :try_start_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_0

    .line 91
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnectionFactory;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FtpDataConnection.closeDataSocket()"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 100
    :try_start_3
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    goto :goto_1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_4
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FtpDataConnection.closeDataSocket()"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    .line 107
    .local v0, "dcc":Lorg/apache/ftpserver/DataConnectionConfiguration;
    if-eqz v0, :cond_1

    .line 108
    iget v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/DataConnectionConfiguration;->releasePassivePort(I)V

    .line 112
    .end local v0    # "dcc":Lorg/apache/ftpserver/DataConnectionConfiguration;
    :cond_1
    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    .line 116
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 0

    .line 446
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    .line 447
    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 222
    iget v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    return v0
.end method

.method public declared-synchronized initActiveDataConnection(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    .line 128
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    .line 129
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 123
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnectionFactory;
    .end local p1    # "address":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initPassiveDataConnection()Ljava/net/InetSocketAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/DataConnectionException;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Initiating passive data connection"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    .line 155
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->requestPassivePort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .local v0, "passivePort":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 163
    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1

    .line 165
    .local v1, "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getPassiveAddress()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "passiveAddress":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 168
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->serverControlAddress:Ljava/net/InetAddress;

    iput-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    goto :goto_0

    .line 170
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnectionFactory;
    :cond_0
    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getPassiveAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    .line 173
    :goto_0
    iget-boolean v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Opening SSL passive data connection on address \"{}\" and port {}"

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v3

    .line 177
    .local v3, "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-eqz v3, :cond_1

    .line 185
    new-instance v5, Ljava/net/ServerSocket;

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-direct {v5, v0, v4, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    .line 186
    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v5, "SSL Passive data connection created on address \"{}\" and port {}"

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .end local v3    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    goto :goto_1

    .line 178
    .restart local v3    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    :cond_1
    new-instance v4, Lorg/apache/ftpserver/DataConnectionException;

    const-string v5, "Data connection SSL required but not configured."

    invoke-direct {v4, v5}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "passivePort":I
    throw v4

    .line 188
    .end local v3    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .restart local v0    # "passivePort":I
    :cond_2
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Opening passive data connection on address \"{}\" and port {}"

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    new-instance v3, Ljava/net/ServerSocket;

    iget-object v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-direct {v3, v0, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    .line 190
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Passive data connection created on address \"{}\" and port {}"

    iget-object v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    :goto_1
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    iput v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    .line 194
    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 197
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J

    .line 200
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    iget v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 201
    .end local v1    # "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    .end local v2    # "passiveAddress":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    .line 203
    new-instance v2, Lorg/apache/ftpserver/DataConnectionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initate passive data connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 157
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    .line 158
    new-instance v1, Lorg/apache/ftpserver/DataConnectionException;

    const-string v2, "Cannot find an available passive port."

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .end local v0    # "passivePort":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSecure()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    return v0
.end method

.method public declared-synchronized isTimeout(J)Z
    .locals 6
    .param p1, "currTime"    # J

    monitor-enter p0

    .line 419
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    monitor-exit p0

    return v1

    .line 424
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 425
    monitor-exit p0

    return v1

    .line 429
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit16 v0, v0, 0x3e8

    .line 430
    .local v0, "maxIdleTime":I
    if-nez v0, :cond_2

    .line 431
    monitor-exit p0

    return v1

    .line 435
    :cond_2
    :try_start_3
    iget-wide v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long v2, p1, v2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 436
    monitor-exit p0

    return v1

    .line 439
    :cond_3
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 418
    .end local v0    # "maxIdleTime":I
    .end local p0    # "this":Lorg/apache/ftpserver/impl/IODataConnectionFactory;
    .end local p1    # "currTime":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isZipMode()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->isZip:Z

    return v0
.end method

.method public openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    new-instance v0, Lorg/apache/ftpserver/impl/IODataConnection;

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->createDataSocket()Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/ftpserver/impl/IODataConnection;-><init>(Ljava/net/Socket;Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;)V

    return-object v0
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .line 394
    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    .line 395
    return-void
.end method

.method public setServerControlAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "serverControlAddress"    # Ljava/net/InetAddress;

    .line 453
    iput-object p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->serverControlAddress:Ljava/net/InetAddress;

    .line 454
    return-void
.end method

.method public setZipMode(Z)V
    .locals 0
    .param p1, "zip"    # Z

    .line 410
    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->isZip:Z

    .line 411
    return-void
.end method
