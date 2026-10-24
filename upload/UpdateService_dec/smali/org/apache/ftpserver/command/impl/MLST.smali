.class public Lorg/apache/ftpserver/command/impl/MLST;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "MLST.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 50
    const-class v0, Lorg/apache/ftpserver/command/impl/MLST;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/MLST;->LOG:Lorg/slf4j/Logger;

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

    .line 60
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 63
    nop

    .line 64
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    move-result-object v0

    .line 66
    .local v0, "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    const/4 v1, 0x0

    .line 68
    .local v1, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v2

    .line 69
    invoke-virtual {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-interface {v2, v3}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v2

    move-object v1, v2

    .line 70
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;

    const-string v3, "MLST.types"

    .line 72
    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/command/impl/listing/MLSTFileFormater;-><init>([Ljava/lang/String;)V

    .line 73
    .local v2, "formater":Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    const/16 v6, 0xfa

    const-string v7, "MLST"

    .line 75
    invoke-interface {v2, v1}, Lorg/apache/ftpserver/command/impl/listing/FileFormater;->format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v8

    .line 73
    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 76
    nop

    .end local v2    # "formater":Lorg/apache/ftpserver/command/impl/listing/FileFormater;
    goto :goto_0

    .line 77
    :cond_0
    const/16 v6, 0x1f5

    const-string v7, "MLST"

    const/4 v8, 0x0

    .line 79
    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    goto :goto_1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    iget-object v3, p0, Lorg/apache/ftpserver/command/impl/MLST;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception sending the file listing"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/16 v8, 0x1f5

    const/4 v10, 0x0

    const-string v9, "MLST"

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 92
    .end local v2    # "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    :goto_1
    return-void
.end method
