.class public Lorg/apache/ftpserver/command/impl/PORT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "PORT.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 62
    const-class v0, Lorg/apache/ftpserver/command/impl/PORT;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/PORT;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 10
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 75
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->hasArgument()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    const-string v5, "PORT"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 79
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    .line 85
    .local v0, "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isActiveEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    const/16 v5, 0x1f5

    const/4 v7, 0x0

    const-string v6, "PORT.disabled"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 88
    return-void

    .line 93
    :cond_1
    :try_start_0
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->decode(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 96
    .local v1, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2
    :try_end_0
    .catch Lorg/apache/ftpserver/util/IllegalInetAddressException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ftpserver/util/IllegalPortException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 125
    nop

    .line 128
    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isActiveIpCheck()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    .line 130
    nop

    .line 131
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 132
    .local v2, "clientAddr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    const/16 v7, 0x1f5

    const/4 v9, 0x0

    const-string v8, "PORT.mismatch"

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 135
    return-void

    .line 140
    .end local v2    # "clientAddr":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->initActiveDataConnection(Ljava/net/InetSocketAddress;)V

    .line 141
    const/16 v6, 0xc8

    const/4 v8, 0x0

    const-string v7, "PORT"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 143
    return-void

    .line 97
    :cond_3
    :try_start_1
    new-instance v2, Lorg/apache/ftpserver/util/IllegalPortException;

    const-string v3, "PORT port must not be 0"

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/util/IllegalPortException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    .end local p0    # "this":Lorg/apache/ftpserver/command/impl/PORT;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .end local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    throw v2
    :try_end_1
    .catch Lorg/apache/ftpserver/util/IllegalInetAddressException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ftpserver/util/IllegalPortException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .end local v1    # "address":Ljava/net/InetSocketAddress;
    .restart local v0    # "dataCfg":Lorg/apache/ftpserver/DataConnectionConfiguration;
    .restart local p0    # "this":Lorg/apache/ftpserver/command/impl/PORT;
    .restart local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .restart local p2    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    .restart local p3    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/PORT;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Unknown host"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    const/16 v7, 0x1f5

    const/4 v9, 0x0

    .line 118
    const-string v8, "PORT.host"

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 117
    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 124
    return-void

    .line 103
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Lorg/apache/ftpserver/util/IllegalPortException;
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/PORT;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const/16 v7, 0x1f5

    const/4 v9, 0x0

    .line 107
    const-string v8, "PORT.invalid"

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 106
    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 113
    return-void

    .line 99
    .end local v1    # "e":Lorg/apache/ftpserver/util/IllegalPortException;
    :catch_2
    move-exception v1

    .line 100
    .local v1, "e":Lorg/apache/ftpserver/util/IllegalInetAddressException;
    const/16 v5, 0x1f5

    const/4 v7, 0x0

    const-string v6, "PORT"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 102
    return-void
.end method
