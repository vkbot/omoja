.class public Lorg/apache/ftpserver/command/impl/RNTO;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "RNTO.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 48
    const-class v0, Lorg/apache/ftpserver/command/impl/RNTO;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/RNTO;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 19
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    .line 59
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 60
    .local v10, "toFileStr":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 61
    const/16 v5, 0x1f5

    const-string v6, "RNTO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 63
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v0

    .line 62
    invoke-virtual {v14, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 69
    return-void

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0

    move-object v13, v0

    .line 74
    .local v13, "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    if-nez v13, :cond_1

    .line 75
    const/16 v5, 0x1f7

    const-string v6, "RNTO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 78
    return-void

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 84
    .local v2, "toFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v0

    .line 87
    move-object v0, v2

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/RNTO;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception getting file object"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 88
    .end local v2    # "toFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v0, "toFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    if-nez v0, :cond_2

    .line 89
    const/16 v5, 0x229

    const-string v6, "RNTO.invalid"

    const/4 v7, 0x0

    .line 91
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v8, v13

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v2

    .line 90
    invoke-virtual {v14, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 97
    return-void

    .line 99
    :cond_2
    :try_start_4
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 102
    .end local v10    # "toFileStr":Ljava/lang/String;
    .local v15, "toFileStr":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 103
    const/16 v5, 0x229

    const-string v6, "RNTO.permission"

    const/4 v7, 0x0

    .line 105
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v8, v13

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v2

    .line 104
    invoke-virtual {v14, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 111
    return-void

    .line 115
    :cond_3
    :try_start_5
    invoke-interface {v13}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v2

    if-nez v2, :cond_4

    .line 116
    const/16 v5, 0x229

    const-string v6, "RNTO.missing"

    const/4 v7, 0x0

    .line 118
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v8, v13

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v2

    .line 117
    invoke-virtual {v14, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 124
    return-void

    .line 128
    :cond_4
    :try_start_6
    invoke-interface {v13}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 131
    .local v9, "logFrFileAbsolutePath":Ljava/lang/String;
    invoke-interface {v13, v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->move(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    const/16 v2, 0xfa

    const-string v3, "RNTO"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move-object/from16 v18, v13

    .end local v13    # "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v18, "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    move v13, v2

    move-object v8, v14

    move-object v14, v3

    move-object/from16 v16, v18

    move-object/from16 v17, v0

    :try_start_7
    invoke-static/range {v10 .. v17}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 136
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/RNTO;->LOG:Lorg/slf4j/Logger;

    const-string v3, "File rename from \"{}\" to \"{}\""

    .line 137
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-interface {v2, v3, v9, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v8

    goto :goto_1

    .line 139
    .end local v18    # "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v13    # "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    :cond_5
    move-object/from16 v18, v13

    move-object v8, v14

    .end local v13    # "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    .restart local v18    # "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    const/16 v5, 0x229

    const-string v6, "RNTO"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 141
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v15

    move-object v10, v8

    move-object/from16 v8, v18

    move-object v11, v9

    .end local v9    # "logFrFileAbsolutePath":Ljava/lang/String;
    .local v11, "logFrFileAbsolutePath":Ljava/lang/String;
    move-object v9, v0

    :try_start_8
    invoke-static/range {v2 .. v9}, Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/ftplet/FtpFile;Lorg/apache/ftpserver/ftplet/FtpFile;)Lorg/apache/ftpserver/impl/LocalizedRenameFtpReply;

    move-result-object v2

    .line 140
    invoke-virtual {v10, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 150
    .end local v0    # "toFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v11    # "logFrFileAbsolutePath":Ljava/lang/String;
    .end local v15    # "toFileStr":Ljava/lang/String;
    .end local v18    # "frFile":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v10, v8

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v10, v14

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 151
    throw v0
.end method
