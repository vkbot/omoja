.class public Lorg/apache/ftpserver/command/impl/STAT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "STAT.java"


# static fields
.field private static final LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;


# instance fields
.field private final directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/impl/STAT;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 53
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/STAT;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 18
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 65
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    move-result-object v14

    .line 69
    .local v14, "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    const/4 v1, 0x0

    .line 71
    .local v1, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-virtual {v14}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v7
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_4

    .line 72
    .end local v1    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v7, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_1
    invoke-interface {v7}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v0
    :try_end_1
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_0

    .line 73
    const/16 v4, 0x1c2

    :try_start_2
    const-string v5, "LIST"

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedDataTransferFtpReply;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    return-void

    .line 92
    :catch_0
    move-exception v0

    move-object/from16 v6, p0

    move-object v1, v0

    move-object v0, v7

    move-object/from16 v16, v14

    goto :goto_1

    .line 79
    :cond_0
    move-object/from16 v6, p0

    :try_start_3
    iget-object v0, v6, Lorg/apache/ftpserver/command/impl/STAT;->directoryLister:Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v1

    sget-object v2, Lorg/apache/ftpserver/command/impl/STAT;->LIST_FILE_FORMATER:Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;

    .line 79
    invoke-virtual {v0, v14, v1, v2}, Lorg/apache/ftpserver/command/impl/listing/DirectoryLister;->listFiles(Lorg/apache/ftpserver/command/impl/listing/ListArgument;Lorg/apache/ftpserver/ftplet/FileSystemView;Lorg/apache/ftpserver/command/impl/listing/FileFormater;)Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, "dirList":Ljava/lang/String;
    invoke-interface {v7}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/16 v0, 0xd4

    .local v0, "replyCode":I
    goto :goto_0

    .line 86
    .end local v0    # "replyCode":I
    :cond_1
    const/16 v0, 0xd5

    .line 89
    .restart local v0    # "replyCode":I
    :goto_0
    const-string v12, "STAT"
    :try_end_3
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move v11, v0

    move-object/from16 v16, v14

    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .local v16, "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    move-object v14, v7

    :try_start_4
    invoke-static/range {v8 .. v14}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_4 .. :try_end_4} :catch_1

    .line 101
    nop

    .end local v0    # "replyCode":I
    .end local v13    # "dirList":Ljava/lang/String;
    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    .end local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :catch_2
    move-exception v0

    move-object/from16 v16, v14

    move-object v1, v0

    move-object v0, v7

    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    goto :goto_1

    .end local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v16, v14

    move-object v1, v0

    move-object v0, v7

    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    goto :goto_1

    .end local v7    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .restart local v1    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v16, v14

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    .end local v1    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v14    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .local v0, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :goto_1
    move-object v8, v1

    .line 93
    .local v8, "e":Lorg/apache/ftpserver/ftplet/FtpException;
    const/16 v4, 0x1c2

    const/4 v7, 0x0

    .line 95
    const-string v5, "STAT"

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v6, v7

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedFileActionFtpReply;

    move-result-object v1

    .line 94
    invoke-virtual {v15, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 103
    .end local v0    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v8    # "e":Lorg/apache/ftpserver/ftplet/FtpException;
    .end local v16    # "parsedArg":Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    :goto_2
    goto :goto_3

    .line 105
    :cond_2
    const/16 v4, 0xd3

    const/4 v6, 0x0

    const-string v5, "STAT"

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 108
    :goto_3
    return-void
.end method
