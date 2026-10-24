.class public Lorg/apache/ftpserver/command/impl/DELE;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "DELE.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 48
    const-class v0, Lorg/apache/ftpserver/command/impl/DELE;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/DELE;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 61
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "fileName":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 63
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "DELE"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 66
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v8}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/DELE;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 77
    .end local v1    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v0, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    if-nez v0, :cond_1

    .line 78
    const/16 v4, 0x226

    const/4 v7, 0x0

    const-string v5, "DELE.invalid"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v8

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 81
    return-void

    .line 85
    :cond_1
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const/16 v4, 0x226

    const-string v5, "DELE.invalid"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v8

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 91
    return-void

    .line 94
    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    const/16 v4, 0x1c2

    const-string v5, "DELE.permission"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v8

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 98
    return-void

    .line 102
    :cond_3
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    const/16 v4, 0xfa

    const-string v5, "DELE"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v8

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 108
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/DELE;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File delete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 113
    nop

    .line 114
    invoke-interface {p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 115
    .local v2, "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    invoke-interface {v2, p1, v0}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V

    .line 116
    .end local v1    # "userName":Ljava/lang/String;
    .end local v2    # "ftpStat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    goto :goto_1

    .line 117
    :cond_4
    const/16 v4, 0x1c2

    const-string v5, "DELE"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v8

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 121
    :goto_1
    return-void
.end method
