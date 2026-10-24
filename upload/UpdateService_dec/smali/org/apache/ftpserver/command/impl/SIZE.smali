.class public Lorg/apache/ftpserver/command/impl/SIZE;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SIZE.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 46
    const-class v0, Lorg/apache/ftpserver/command/impl/SIZE;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/SIZE;->LOG:Lorg/slf4j/Logger;

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

    .line 56
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 59
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "fileName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 61
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    const-string v5, "SIZE"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 64
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/SIZE;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Exception getting file object"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 74
    .end local v1    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v0, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    if-nez v0, :cond_1

    .line 75
    const/16 v4, 0x226

    const-string v5, "SIZE.missing"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 78
    return-void

    .line 82
    :cond_1
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    const/16 v4, 0x226

    const-string v5, "SIZE.missing"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_1

    .line 87
    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    const/16 v4, 0x226

    const-string v5, "SIZE.invalid"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_1

    .line 92
    :cond_3
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "fileLen":Ljava/lang/String;
    const/16 v4, 0xd5

    const-string v5, "SIZE"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 96
    .end local v8    # "fileLen":Ljava/lang/String;
    :goto_1
    return-void
.end method
