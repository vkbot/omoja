.class public Lorg/apache/ftpserver/command/impl/USER;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "USER.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 54
    const-class v0, Lorg/apache/ftpserver/command/impl/USER;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 25
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 63
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "User failed to login, session will be closed"

    const/4 v10, 0x0

    .line 64
    .local v10, "success":Z
    nop

    .line 65
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 69
    .local v11, "stat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    const-wide/16 v12, 0x2710

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 72
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "userName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 74
    const/16 v5, 0x1f5

    const-string v6, "USER"

    const/4 v7, 0x0

    .line 76
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 75
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-nez v10, :cond_0

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 82
    :cond_0
    return-void

    .line 86
    :cond_1
    :try_start_1
    const-string v2, "userName"

    invoke-static {v8, v2, v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v2

    move-object v15, v2

    .line 90
    .local v15, "user":Lorg/apache/ftpserver/ftplet/User;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-interface {v15}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    const/16 v5, 0xe6

    const-string v6, "USER"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 95
    const/4 v10, 0x1

    goto :goto_0

    .line 97
    :cond_2
    const/16 v5, 0x212

    const-string v6, "USER.invalid"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :goto_0
    if-nez v10, :cond_3

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 100
    :cond_3
    return-void

    .line 104
    :cond_4
    :try_start_2
    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v16, v2

    .line 105
    .local v16, "anonymous":Z
    if-eqz v16, :cond_6

    .line 106
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Lorg/apache/ftpserver/ConnectionConfig;->isAnonymousLoginEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 108
    const/16 v5, 0x212

    const-string v6, "USER.anonymous"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    if-nez v10, :cond_5

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 111
    :cond_5
    return-void

    .line 115
    :cond_6
    :try_start_3
    invoke-interface {v11}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->getCurrentAnonymousLoginNumber()I

    move-result v2

    move v7, v2

    .line 116
    .local v7, "currAnonLogin":I
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v2

    .line 117
    invoke-interface {v2}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxAnonymousLogins()I

    move-result v2

    move v6, v2

    .line 118
    .local v6, "maxAnonLogin":I
    if-nez v6, :cond_7

    .line 119
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Currently {} anonymous users logged in, unlimited allowed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_7
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Currently {} out of {} anonymous users logged in"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :goto_1
    if-eqz v16, :cond_9

    if-lt v7, v6, :cond_9

    .line 124
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Too many anonymous users logged in, user will be disconnected"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 126
    const/16 v5, 0x1a5

    const-string v17, "USER.anonymous"

    const/16 v18, 0x0

    .line 128
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v19, v6

    .end local v6    # "maxAnonLogin":I
    .local v19, "maxAnonLogin":I
    move-object/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "currAnonLogin":I
    .local v17, "currAnonLogin":I
    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 127
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    if-nez v10, :cond_8

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 134
    :cond_8
    return-void

    .line 123
    .end local v17    # "currAnonLogin":I
    .end local v19    # "maxAnonLogin":I
    .restart local v6    # "maxAnonLogin":I
    .restart local v7    # "currAnonLogin":I
    :cond_9
    move/from16 v19, v6

    move/from16 v17, v7

    .line 138
    .end local v6    # "maxAnonLogin":I
    .end local v7    # "currAnonLogin":I
    .restart local v17    # "currAnonLogin":I
    .restart local v19    # "maxAnonLogin":I
    :try_start_4
    invoke-interface {v11}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->getCurrentLoginNumber()I

    move-result v2

    move v7, v2

    .line 139
    .local v7, "currLogin":I
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLogins()I

    move-result v2

    move v6, v2

    .line 141
    .local v6, "maxLogin":I
    if-nez v6, :cond_a

    .line 142
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Currently {} users logged in, unlimited allowed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 144
    :cond_a
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Currently {} out of {} users logged in"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    :goto_2
    if-eqz v6, :cond_c

    if-lt v7, v6, :cond_c

    .line 148
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Too many users logged in, user will be disconnected"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 150
    const/16 v5, 0x1a5

    const-string v18, "USER.login"

    const/16 v20, 0x0

    .line 152
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v21, v6

    .end local v6    # "maxLogin":I
    .local v21, "maxLogin":I
    move-object/from16 v6, v18

    move/from16 v18, v7

    .end local v7    # "currLogin":I
    .local v18, "currLogin":I
    move-object/from16 v7, v20

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 151
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    if-nez v10, :cond_b

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 158
    :cond_b
    return-void

    .line 147
    .end local v18    # "currLogin":I
    .end local v21    # "maxLogin":I
    .restart local v6    # "maxLogin":I
    .restart local v7    # "currLogin":I
    :cond_c
    move/from16 v21, v6

    move/from16 v18, v7

    .line 161
    .end local v6    # "maxLogin":I
    .end local v7    # "currLogin":I
    .restart local v18    # "currLogin":I
    .restart local v21    # "maxLogin":I
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/ftpserver/ftplet/UserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v2

    move-object v7, v2

    .line 162
    .local v7, "configUser":Lorg/apache/ftpserver/ftplet/User;
    if-eqz v7, :cond_10

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_d

    .line 167
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 168
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v2, v3

    move-object v6, v2

    goto :goto_3

    .line 166
    :cond_d
    move-object v6, v2

    .line 171
    .end local v2    # "address":Ljava/net/InetAddress;
    .local v6, "address":Ljava/net/InetAddress;
    :goto_3
    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    .line 172
    invoke-interface {v11, v7}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 173
    invoke-interface {v11, v7, v6}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;Ljava/net/InetAddress;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;-><init>(II)V

    move-object v5, v2

    .line 175
    .local v5, "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    invoke-interface {v7, v5}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v2

    if-nez v2, :cond_f

    .line 176
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v3, "User logged in too many sessions, user will be disconnected"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 177
    const/16 v20, 0x1a5

    const-string v22, "USER.login"

    const/16 v23, 0x0

    .line 179
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v24, v5

    .end local v5    # "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    .local v24, "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    move/from16 v5, v20

    move-object/from16 v20, v6

    .end local v6    # "address":Ljava/net/InetAddress;
    .local v20, "address":Ljava/net/InetAddress;
    move-object/from16 v6, v22

    move-object/from16 v22, v7

    .end local v7    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    .local v22, "configUser":Lorg/apache/ftpserver/ftplet/User;
    move-object/from16 v7, v23

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 178
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    if-nez v10, :cond_e

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 185
    :cond_e
    return-void

    .line 175
    .end local v20    # "address":Ljava/net/InetAddress;
    .end local v22    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    .end local v24    # "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    .restart local v5    # "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    .restart local v6    # "address":Ljava/net/InetAddress;
    .restart local v7    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    :cond_f
    move-object/from16 v24, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .end local v5    # "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v20    # "address":Ljava/net/InetAddress;
    .restart local v22    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v24    # "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    goto :goto_4

    .line 162
    .end local v20    # "address":Ljava/net/InetAddress;
    .end local v22    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    .end local v24    # "loginRequest":Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    .restart local v7    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    :cond_10
    move-object/from16 v22, v7

    .line 190
    .end local v7    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v22    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    :goto_4
    const/4 v10, 0x1

    .line 191
    :try_start_6
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUserArgument(Ljava/lang/String;)V

    .line 192
    if-eqz v16, :cond_11

    .line 193
    const/16 v5, 0x14b

    const-string v6, "USER.anonymous"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_5

    .line 197
    :cond_11
    const/16 v5, 0x14b

    const-string v6, "USER"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 204
    .end local v0    # "userName":Ljava/lang/String;
    .end local v15    # "user":Lorg/apache/ftpserver/ftplet/User;
    .end local v16    # "anonymous":Z
    .end local v17    # "currAnonLogin":I
    .end local v18    # "currLogin":I
    .end local v19    # "maxAnonLogin":I
    .end local v21    # "maxLogin":I
    .end local v22    # "configUser":Lorg/apache/ftpserver/ftplet/User;
    :goto_5
    if-nez v10, :cond_12

    .line 205
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 209
    :cond_12
    return-void

    .line 204
    :catchall_0
    move-exception v0

    if-nez v10, :cond_13

    .line 205
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v14}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z

    .line 208
    :cond_13
    throw v0
.end method
