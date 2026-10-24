.class public Lorg/apache/ftpserver/command/impl/CWD;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "CWD.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 50
    const-class v0, Lorg/apache/ftpserver/command/impl/CWD;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/CWD;->LOG:Lorg/slf4j/Logger;

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
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 63
    const-string v0, "/"

    .line 64
    .local v0, "dirName":Ljava/lang/String;
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->hasArgument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    .line 70
    .local v1, "fsview":Lorg/apache/ftpserver/ftplet/FileSystemView;
    const/4 v2, 0x0

    .line 72
    .local v2, "success":Z
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    .line 74
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/ftpserver/command/impl/CWD;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Failed to change directory in file system"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v10

    .line 77
    .local v10, "cwd":Lorg/apache/ftpserver/ftplet/FtpFile;
    if-eqz v2, :cond_1

    .line 78
    invoke-interface {v10}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    const/16 v6, 0xfa

    const-string v7, "CWD"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v8, v0

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_1

    .line 83
    :cond_1
    const/16 v6, 0x226

    const/4 v8, 0x0

    .line 84
    const-string v7, "CWD"

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 88
    :goto_1
    return-void
.end method
