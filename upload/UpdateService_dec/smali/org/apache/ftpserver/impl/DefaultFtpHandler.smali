.class public Lorg/apache/ftpserver/impl/DefaultFtpHandler;
.super Ljava/lang/Object;
.source "DefaultFtpHandler.java"

# interfaces
.implements Lorg/apache/ftpserver/impl/FtpHandler;


# static fields
.field private static final NON_AUTHENTICATED_COMMANDS:[Ljava/lang/String;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private listener:Lorg/apache/ftpserver/listener/Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    const-string v0, "USER"

    const-string v1, "PASS"

    const-string v2, "AUTH"

    const-string v3, "QUIT"

    const-string v4, "PROT"

    const-string v5, "PBSZ"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->NON_AUTHENTICATED_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private isCommandOkWithoutAuthentication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "okay":Z
    sget-object v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->NON_AUTHENTICATED_COMMANDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 167
    .local v4, "allowed":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 169
    goto :goto_1

    .line 166
    .end local v4    # "allowed":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    instance-of v0, p2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    move-object v1, p2

    check-cast v1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .line 147
    invoke-virtual {v1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->getHexdump()Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "Client sent command that could not be decoded: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    new-instance v0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v1, 0x1f5

    const-string v2, "Invalid character in command"

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0

    .line 149
    :cond_0
    instance-of v0, p2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    const-wide/16 v1, 0x2710

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 150
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    .line 152
    .local v0, "writeToClosedSessionException":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    iget-object v4, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    .line 154
    invoke-virtual {v0}, Lorg/apache/mina/core/write/WriteToClosedSessionException;->getRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    .line 152
    const-string v6, "Client closed connection before all replies could be sent, last reply was {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 156
    .end local v0    # "writeToClosedSessionException":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception caught, closing session"

    invoke-interface {v0, v4, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 162
    :goto_0
    return-void
.end method

.method public init(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "listener"    # Lorg/apache/ftpserver/listener/Listener;

    .line 58
    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 59
    iput-object p2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->listener:Lorg/apache/ftpserver/listener/Listener;

    .line 60
    return-void
.end method

.method public messageReceived(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 19
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 178
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->updateLastAccessTime()V

    .line 180
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 181
    .local v10, "commandName":Ljava/lang/String;
    iget-object v0, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v0

    move-object v11, v0

    .line 182
    .local v11, "commandFactory":Lorg/apache/ftpserver/command/CommandFactory;
    invoke-interface {v11, v10}, Lorg/apache/ftpserver/command/CommandFactory;->getCommand(Ljava/lang/String;)Lorg/apache/ftpserver/command/Command;

    move-result-object v0

    move-object v12, v0

    .line 185
    .local v12, "command":Lorg/apache/ftpserver/command/Command;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-direct {v1, v10}, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->isCommandOkWithoutAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v4, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const/16 v5, 0x212

    const-string v6, "permission"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 190
    return-void

    .line 193
    :cond_0
    iget-object v0, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v13, v0

    .line 197
    .local v13, "ftplets":Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v0

    invoke-interface {v13, v0, v9}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .local v0, "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    move-object v14, v0

    goto :goto_0

    .line 199
    .end local v0    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Ftplet container threw exception"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-object v14, v2

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    .local v14, "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :goto_0
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-wide/16 v6, 0x2710

    const/4 v15, 0x0

    if-ne v14, v0, :cond_1

    .line 204
    iget-object v0, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Ftplet returned DISCONNECT, session will be closed"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v8, v15}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 206
    return-void

    .line 207
    :cond_1
    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v14, v0, :cond_3

    .line 209
    if-eqz v12, :cond_2

    .line 210
    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    :try_start_3
    iget-object v0, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v12, v8, v0, v9}, Lorg/apache/ftpserver/command/Command;->execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V

    .line 212
    monitor-exit p1

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide v10, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpHandler;
    .end local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local p2    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    :try_start_4
    throw v0

    .line 214
    .restart local p0    # "this":Lorg/apache/ftpserver/impl/DefaultFtpHandler;
    .restart local p1    # "session":Lorg/apache/ftpserver/impl/FtpIoSession;
    .restart local p2    # "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    :cond_2
    iget-object v4, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const/16 v5, 0x1f6

    const-string v0, "not.implemented"

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-wide v10, v6

    .end local v10    # "commandName":Ljava/lang/String;
    .end local v11    # "commandFactory":Lorg/apache/ftpserver/command/CommandFactory;
    .local v17, "commandName":Ljava/lang/String;
    .local v18, "commandFactory":Lorg/apache/ftpserver/command/CommandFactory;
    move-object v6, v0

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 221
    :goto_1
    nop

    .line 222
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v0

    .line 223
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastReply()Lorg/apache/ftpserver/ftplet/FtpReply;

    move-result-object v2

    .line 221
    invoke-interface {v13, v0, v9, v2}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 227
    .end local v14    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    .local v0, "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    goto :goto_2

    .line 224
    .end local v0    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    .restart local v14    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Ftplet container threw exception"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-object v0, v2

    .line 228
    .end local v14    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    .local v0, "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :goto_2
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-ne v0, v2, :cond_4

    .line 229
    iget-object v2, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Ftplet returned DISCONNECT, session will be closed"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v8, v15}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 232
    return-void

    .line 207
    .end local v0    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    .end local v17    # "commandName":Ljava/lang/String;
    .end local v18    # "commandFactory":Lorg/apache/ftpserver/command/CommandFactory;
    .restart local v10    # "commandName":Ljava/lang/String;
    .restart local v11    # "commandFactory":Lorg/apache/ftpserver/command/CommandFactory;
    .restart local v14    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :cond_3
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    .line 250
    .end local v10    # "commandName":Ljava/lang/String;
    .end local v11    # "commandFactory":Lorg/apache/ftpserver/command/CommandFactory;
    .end local v12    # "command":Lorg/apache/ftpserver/command/Command;
    .end local v13    # "ftplets":Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
    .end local v14    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :cond_4
    goto :goto_4

    .line 236
    :catch_2
    move-exception v0

    move-object v10, v0

    .line 239
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_7
    iget-object v4, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const/16 v5, 0x226

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 243
    goto :goto_3

    .line 242
    :catch_3
    move-exception v0

    .line 245
    :goto_3
    instance-of v0, v10, Ljava/io/IOException;

    if-nez v0, :cond_5

    .line 248
    iget-object v0, v1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "RequestHandler.service()"

    invoke-interface {v0, v2, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 246
    .restart local v10    # "ex":Ljava/lang/Exception;
    :cond_5
    move-object v0, v10

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public messageSent(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpReply;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "reply"    # Lorg/apache/ftpserver/ftplet/FtpReply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public sessionClosed(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Closing session"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Ftplet threw an exception on disconnect"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    .line 107
    .local v0, "dc":Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->closeDataConnection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .end local v0    # "dc":Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
    :cond_0
    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Data connection threw an exception on disconnect"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    .line 116
    .local v0, "fs":Lorg/apache/ftpserver/ftplet/FileSystemView;
    if-eqz v0, :cond_1

    .line 118
    :try_start_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    goto :goto_2

    .line 119
    :catch_2
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FileSystemView threw an exception on disposal"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 125
    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 127
    .local v1, "stats":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1, p1}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 129
    invoke-interface {v1, p1}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 130
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Statistics login and connection count decreased due to session close"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 132
    :cond_2
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Statistics not available in session, can not decrease login and connection count"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 134
    :goto_3
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Session closed"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public sessionCreated(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->listener:Lorg/apache/ftpserver/listener/Listener;

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setListener(Lorg/apache/ftpserver/listener/Listener;)V

    .line 65
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 66
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 68
    .local v0, "stats":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 71
    :cond_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Session idle, closing"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 258
    return-void
.end method

.method public sessionOpened(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 11
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    .line 78
    .local v0, "ftplets":Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v1, "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    goto :goto_0

    .line 79
    .end local v1    # "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Ftplet threw exception"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-object v1, v2

    .line 83
    .local v1, "ftpletRet":Lorg/apache/ftpserver/ftplet/FtpletResult;
    :goto_0
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Ftplet returned DISCONNECT, session will be closed"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-interface {v2, v3, v4}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->updateLastAccessTime()V

    .line 89
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const/16 v8, 0xdc

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 92
    :goto_1
    return-void
.end method
