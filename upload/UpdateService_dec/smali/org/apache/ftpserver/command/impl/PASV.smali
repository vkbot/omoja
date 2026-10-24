.class public Lorg/apache/ftpserver/command/impl/PASV;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "PASV.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 75
    const-class v0, Lorg/apache/ftpserver/command/impl/PASV;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/PASV;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ftpserver/DataConnectionException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v1, Lorg/apache/ftpserver/DataConnectionException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 11
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 88
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    .line 89
    .local v0, "dataCon":Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/command/impl/PASV;->getPassiveExternalAddress(Lorg/apache/ftpserver/impl/FtpIoSession;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "externalPassiveAddress":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->initPassiveDataConnection()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 97
    .local v2, "dataConAddress":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/command/impl/PASV;->resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .local v3, "servAddr":Ljava/net/InetAddress;
    goto :goto_0

    .line 100
    .end local v3    # "servAddr":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 104
    .restart local v3    # "servAddr":Ljava/net/InetAddress;
    :goto_0
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 105
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v4, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 107
    .local v4, "externalDataConAddress":Ljava/net/InetSocketAddress;
    invoke-static {v4}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->encode(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "addrStr":Ljava/lang/String;
    const/16 v8, 0xe3

    const-string v9, "PASV"

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/DataConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 118
    .end local v2    # "dataConAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "servAddr":Ljava/net/InetAddress;
    .end local v4    # "externalDataConAddress":Ljava/net/InetSocketAddress;
    .end local v10    # "addrStr":Ljava/lang/String;
    return-void

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Lorg/apache/ftpserver/DataConnectionException;
    iget-object v3, p0, Lorg/apache/ftpserver/command/impl/PASV;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Failed to open passive data connection"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/16 v8, 0x1a9

    const/4 v10, 0x0

    const-string v9, "PASV"

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 115
    return-void
.end method

.method protected getPassiveExternalAddress(Lorg/apache/ftpserver/impl/FtpIoSession;)Ljava/lang/String;
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 137
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getPassiveExernalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
