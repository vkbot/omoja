.class public Lorg/apache/ftpserver/command/impl/OPTS;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "OPTS.java"


# static fields
.field private static final COMMAND_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/ftpserver/command/impl/OPTS;->COMMAND_MAP:Ljava/util/HashMap;

    .line 102
    new-instance v1, Lorg/apache/ftpserver/command/impl/OPTS_MLST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/OPTS_MLST;-><init>()V

    const-string v2, "OPTS_MLST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/ftpserver/command/impl/OPTS;->COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/OPTS_UTF8;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/OPTS_UTF8;-><init>()V

    const-string v2, "OPTS_UTF8"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 48
    const-class v0, Lorg/apache/ftpserver/command/impl/OPTS;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/OPTS;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 15
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 61
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 64
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "argument":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    const-string v5, "OPTS"

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 69
    return-void

    .line 73
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 74
    .local v8, "spaceIndex":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_1

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 80
    .end local v0    # "argument":Ljava/lang/String;
    .local v9, "argument":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPTS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "optsRequest":Ljava/lang/String;
    sget-object v0, Lorg/apache/ftpserver/command/impl/OPTS;->COMMAND_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/apache/ftpserver/command/Command;

    .line 83
    .local v11, "command":Lorg/apache/ftpserver/command/Command;
    if-eqz v11, :cond_2

    .line 84
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    :try_start_0
    invoke-interface {v11, v7, v12, v13}, Lorg/apache/ftpserver/command/Command;->execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V

    goto :goto_0

    .line 86
    :cond_2
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 87
    const/16 v4, 0x1f6

    const-string v5, "OPTS.not.implemented"

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    move-object v14, p0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    move-object v14, p0

    iget-object v1, v14, Lorg/apache/ftpserver/command/impl/OPTS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "OPTS.execute()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 94
    const/16 v4, 0x1f4

    const/4 v6, 0x0

    const-string v5, "OPTS"

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 98
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
