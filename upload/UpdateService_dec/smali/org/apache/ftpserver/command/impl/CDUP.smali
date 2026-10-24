.class public Lorg/apache/ftpserver/command/impl/CDUP;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "CDUP.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 50
    const-class v0, Lorg/apache/ftpserver/command/impl/CDUP;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/CDUP;->LOG:Lorg/slf4j/Logger;

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
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    .line 64
    .local v0, "fsview":Lorg/apache/ftpserver/ftplet/FileSystemView;
    const/4 v1, 0x0

    .line 66
    .local v1, "success":Z
    :try_start_0
    const-string v2, ".."

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/ftpserver/command/impl/CDUP;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Failed to change directory in file system"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v9

    .line 71
    .local v9, "cwd":Lorg/apache/ftpserver/ftplet/FtpFile;
    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v9}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "dirName":Ljava/lang/String;
    const/16 v5, 0xfa

    const-string v6, "CDUP"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v7, v10

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 76
    .end local v10    # "dirName":Ljava/lang/String;
    goto :goto_1

    .line 77
    :cond_0
    const/16 v5, 0x226

    const/4 v7, 0x0

    .line 78
    const-string v6, "CDUP"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v2

    .line 77
    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 82
    :goto_1
    return-void
.end method
