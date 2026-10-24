.class public Lorg/apache/ftpserver/command/impl/MFMT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "MFMT.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 47
    const-class v0, Lorg/apache/ftpserver/command/impl/MFMT;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/MFMT;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 14
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    move-object v7, p1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 60
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "argument":Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v13, p0

    goto/16 :goto_3

    .line 74
    :cond_0
    const-string v0, " "

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, "arguments":[Ljava/lang/String;
    array-length v0, v9

    if-eq v0, v1, :cond_1

    .line 77
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    .line 79
    const-string v5, "MFMT.invalid"

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 85
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "timestamp":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Lorg/apache/ftpserver/util/DateUtils;->parseFTPDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v11, v0

    .line 94
    .local v11, "time":Ljava/util/Date;
    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v12, v0

    .line 97
    .local v12, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 100
    .local v1, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v12}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    .line 103
    move-object v13, p0

    move-object v0, v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    move-object v13, p0

    :try_start_2
    iget-object v2, v13, Lorg/apache/ftpserver/command/impl/MFMT;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting the file object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 105
    .end local v1    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .local v0, "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->doesExist()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    const/16 v4, 0x1f5

    const-string v5, "MFMT.invalid"

    const/4 v6, 0x0

    .line 121
    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    .line 120
    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 127
    return-void

    .line 131
    :cond_3
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/ftpserver/ftplet/FtpFile;->setLastModified(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 133
    const/16 v4, 0x1c2

    const-string v5, "MFMT"

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 136
    return-void

    .line 140
    :cond_4
    const/16 v4, 0xd5

    const-string v5, "MFMT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModifyTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    .line 141
    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 148
    return-void

    .line 106
    :cond_5
    :goto_1
    const/16 v4, 0x226

    const-string v5, "MFMT.filemissing"

    .line 108
    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    return-void

    .line 150
    .end local v0    # "file":Lorg/apache/ftpserver/ftplet/FtpFile;
    .end local v11    # "time":Ljava/util/Date;
    .end local v12    # "fileName":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v13, p0

    .line 151
    .local v0, "e":Ljava/text/ParseException;
    :goto_2
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    .line 153
    const-string v5, "MFMT.invalid"

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    .line 152
    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 159
    return-void

    .line 62
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v9    # "arguments":[Ljava/lang/String;
    .end local v10    # "timestamp":Ljava/lang/String;
    :cond_6
    move-object v13, p0

    .line 63
    :goto_3
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    .line 65
    const-string v5, "MFMT.invalid"

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 71
    return-void
.end method
