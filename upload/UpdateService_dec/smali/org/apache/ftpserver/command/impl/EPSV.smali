.class public Lorg/apache/ftpserver/command/impl/EPSV;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "EPSV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 11
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 62
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    .line 65
    .local v0, "dataCon":Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
    nop

    .line 66
    :try_start_0
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->initPassiveDataConnection()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 68
    .local v1, "dataConAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 71
    .local v2, "servPort":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "portStr":Ljava/lang/String;
    const/16 v8, 0xe5

    const-string v9, "EPSV"

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/DataConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    .end local v1    # "dataConAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "servPort":I
    .end local v10    # "portStr":Ljava/lang/String;
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/apache/ftpserver/DataConnectionException;
    const/16 v5, 0x1a9

    const/4 v7, 0x0

    .line 77
    const-string v6, "EPSV"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 80
    return-void
.end method
