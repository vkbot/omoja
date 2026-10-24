.class public Lorg/apache/ftpserver/command/impl/PASS;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "PASS.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 57
    const-class v0, Lorg/apache/ftpserver/command/impl/PASS;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private delayAfterLoginFailure(I)V
    .locals 3
    .param p1, "loginFailureDelay"    # I

    .line 259
    if-lez p1, :cond_0

    .line 260
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds due to login failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 264
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 269
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 22
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 66
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 68
    .local v9, "success":Z
    nop

    .line 69
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    .line 73
    .local v10, "stat":Lorg/apache/ftpserver/impl/ServerFtpStatistics;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 76
    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 80
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUserArgument()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 82
    .local v12, "userName":Ljava/lang/String;
    if-nez v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    const/16 v5, 0x1f7

    const-string v6, "PASS"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    if-nez v9, :cond_0

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 86
    :cond_0
    return-void

    .line 90
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    const/16 v5, 0xca

    const-string v6, "PASS"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    if-nez v9, :cond_2

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 94
    :cond_2
    return-void

    .line 99
    :cond_3
    const/4 v13, 0x0

    if-eqz v12, :cond_4

    :try_start_2
    const-string v0, "anonymous"

    .line 100
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v13

    :goto_0
    move v14, v0

    .line 101
    .local v14, "anonymous":Z
    if-eqz v14, :cond_7

    .line 102
    invoke-interface {v10}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->getCurrentAnonymousLoginNumber()I

    move-result v0

    .line 103
    .local v0, "currAnonLogin":I
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v2

    .line 104
    invoke-interface {v2}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxAnonymousLogins()I

    move-result v2

    move v15, v2

    .line 105
    .local v15, "maxAnonLogin":I
    if-nez v15, :cond_5

    .line 106
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Currently {} anonymous users logged in, unlimited allowed"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Currently {} out of {} anonymous users logged in"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    :goto_1
    if-lt v0, v15, :cond_7

    .line 112
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Too many anonymous users logged in, user will be disconnected"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 113
    const/16 v5, 0x1a5

    const-string v6, "PASS.anonymous"

    const/4 v7, 0x0

    .line 115
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 114
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    if-nez v9, :cond_6

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 121
    :cond_6
    return-void

    .line 126
    .end local v0    # "currAnonLogin":I
    .end local v15    # "maxAnonLogin":I
    :cond_7
    :try_start_3
    invoke-interface {v10}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->getCurrentLoginNumber()I

    move-result v0

    move v15, v0

    .line 127
    .local v15, "currLogin":I
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLogins()I

    move-result v0

    move v7, v0

    .line 128
    .local v7, "maxLogin":I
    if-nez v7, :cond_8

    .line 129
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Currently {} users logged in, unlimited allowed"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_8
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Currently {} out of {} users logged in"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :goto_2
    if-eqz v7, :cond_a

    if-lt v15, v7, :cond_a

    .line 134
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Too many users logged in, user will be disconnected"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 135
    const/16 v5, 0x1a5

    const-string v6, "PASS.login"

    const/4 v0, 0x0

    .line 137
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v16, v7

    .end local v7    # "maxLogin":I
    .local v16, "maxLogin":I
    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    .line 136
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    if-nez v9, :cond_9

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 143
    :cond_9
    return-void

    .line 133
    .end local v16    # "maxLogin":I
    .restart local v7    # "maxLogin":I
    :cond_a
    move/from16 v16, v7

    .line 147
    .end local v7    # "maxLogin":I
    .restart local v16    # "maxLogin":I
    :try_start_4
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v0

    .line 148
    .local v7, "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    const/4 v2, 0x0

    .line 150
    .local v2, "authenticatedUser":Lorg/apache/ftpserver/ftplet/User;
    :try_start_5
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;-><init>()V

    .line 152
    .local v0, "userMetadata":Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_b

    .line 153
    nop

    .line 154
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->setInetAddress(Ljava/net/InetAddress;)V

    .line 156
    :cond_b
    nop

    .line 157
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getClientCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 156
    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->setCertificateChain([Ljava/security/cert/Certificate;)V

    .line 160
    if-eqz v14, :cond_c

    .line 161
    new-instance v3, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    invoke-direct {v3, v0}, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;-><init>(Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V

    .local v3, "auth":Lorg/apache/ftpserver/ftplet/Authentication;
    goto :goto_3

    .line 163
    .end local v3    # "auth":Lorg/apache/ftpserver/ftplet/Authentication;
    :cond_c
    new-instance v3, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    invoke-direct {v3, v12, v11, v0}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V

    .line 167
    .restart local v3    # "auth":Lorg/apache/ftpserver/ftplet/Authentication;
    :goto_3
    invoke-interface {v7, v3}, Lorg/apache/ftpserver/ftplet/UserManager;->authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v4
    :try_end_5
    .catch Lorg/apache/ftpserver/ftplet/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v4

    goto :goto_4

    .line 170
    .end local v0    # "userMetadata":Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
    .end local v3    # "auth":Lorg/apache/ftpserver/ftplet/Authentication;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 172
    :try_start_6
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v4, "PASS.execute()"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_5

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v4, "User failed to log in"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;
    :goto_4
    move-object v0, v2

    .line 177
    .end local v2    # "authenticatedUser":Lorg/apache/ftpserver/ftplet/User;
    .local v0, "authenticatedUser":Lorg/apache/ftpserver/ftplet/User;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v2

    move-object v6, v2

    .line 178
    .local v6, "oldUser":Lorg/apache/ftpserver/ftplet/User;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUserArgument()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 179
    .local v5, "oldUserArgument":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getMaxIdleTime()I

    move-result v2

    move v4, v2

    .line 181
    .local v4, "oldMaxIdleTime":I
    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 182
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 183
    const/16 v13, 0x212

    const-string v17, "PASS"

    const/16 v18, 0x0

    .line 185
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v19, v4

    .end local v4    # "oldMaxIdleTime":I
    .local v19, "oldMaxIdleTime":I
    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .end local v5    # "oldUserArgument":Ljava/lang/String;
    .local v20, "oldUserArgument":Ljava/lang/String;
    move v5, v13

    move-object v13, v6

    .end local v6    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v13, "oldUser":Lorg/apache/ftpserver/ftplet/User;
    move-object/from16 v6, v17

    move-object/from16 v17, v7

    .end local v7    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    .local v17, "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    .line 184
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    if-nez v9, :cond_d

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 191
    :cond_d
    return-void

    .line 195
    .end local v13    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .end local v17    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    .end local v19    # "oldMaxIdleTime":I
    .end local v20    # "oldUserArgument":Ljava/lang/String;
    .restart local v4    # "oldMaxIdleTime":I
    .restart local v5    # "oldUserArgument":Ljava/lang/String;
    .restart local v6    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v7    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    :cond_e
    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v17, v7

    move-object v7, v6

    .end local v4    # "oldMaxIdleTime":I
    .end local v5    # "oldUserArgument":Ljava/lang/String;
    .end local v6    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v7, "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v17    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    .restart local v19    # "oldMaxIdleTime":I
    .restart local v20    # "oldUserArgument":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUser(Lorg/apache/ftpserver/ftplet/User;)V

    .line 196
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUserArgument(Ljava/lang/String;)V

    .line 197
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->setMaxIdleTime(I)V

    .line 198
    const/4 v9, 0x1

    goto :goto_6

    .line 200
    .end local v17    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    .end local v19    # "oldMaxIdleTime":I
    .end local v20    # "oldUserArgument":Ljava/lang/String;
    .restart local v4    # "oldMaxIdleTime":I
    .restart local v5    # "oldUserArgument":Ljava/lang/String;
    .restart local v6    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v7, "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    :cond_f
    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v17, v7

    move-object v7, v6

    .end local v4    # "oldMaxIdleTime":I
    .end local v5    # "oldUserArgument":Ljava/lang/String;
    .end local v6    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v7, "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v17    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    .restart local v19    # "oldMaxIdleTime":I
    .restart local v20    # "oldUserArgument":Ljava/lang/String;
    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUser(Lorg/apache/ftpserver/ftplet/User;)V

    .line 203
    :goto_6
    if-nez v9, :cond_12

    .line 205
    invoke-virtual {v8, v7}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUser(Lorg/apache/ftpserver/ftplet/User;)V

    .line 206
    move-object/from16 v6, v20

    .end local v20    # "oldUserArgument":Ljava/lang/String;
    .local v6, "oldUserArgument":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUserArgument(Ljava/lang/String;)V

    .line 207
    move/from16 v5, v19

    .end local v19    # "oldMaxIdleTime":I
    .local v5, "oldMaxIdleTime":I
    invoke-virtual {v8, v5}, Lorg/apache/ftpserver/impl/FtpIoSession;->setMaxIdleTime(I)V

    .line 209
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Lorg/apache/ftpserver/ConnectionConfig;->getLoginFailureDelay()I

    move-result v2

    .line 209
    invoke-direct {v1, v2}, Lorg/apache/ftpserver/command/impl/PASS;->delayAfterLoginFailure(I)V

    .line 212
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Login failure - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 213
    const/16 v18, 0x212

    const-string v19, "PASS"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v20, v5

    .end local v5    # "oldMaxIdleTime":I
    .local v20, "oldMaxIdleTime":I
    move/from16 v5, v18

    move-object/from16 v18, v6

    .end local v6    # "oldUserArgument":Ljava/lang/String;
    .local v18, "oldUserArgument":Ljava/lang/String;
    move-object/from16 v6, v19

    move-object/from16 v19, v7

    .end local v7    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v19, "oldUser":Lorg/apache/ftpserver/ftplet/User;
    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 215
    invoke-interface {v10, v8}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->increaseFailedLogins()V

    .line 220
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v2

    .line 221
    invoke-interface {v2}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLoginFailures()I

    move-result v2

    .line 222
    .local v2, "maxAllowedLoginFailues":I
    if-eqz v2, :cond_10

    .line 223
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFailedLogins()I

    move-result v3

    if-lt v3, v2, :cond_10

    .line 224
    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v4, "User exceeded the number of allowed failed logins, session will be closed"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v8, v13}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly(J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 251
    :cond_10
    if-nez v9, :cond_11

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 229
    :cond_11
    return-void

    .line 233
    .end local v2    # "maxAllowedLoginFailues":I
    .end local v18    # "oldUserArgument":Ljava/lang/String;
    .restart local v7    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v19, "oldMaxIdleTime":I
    .local v20, "oldUserArgument":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v20

    move/from16 v20, v19

    move-object/from16 v19, v7

    .end local v7    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .restart local v18    # "oldUserArgument":Ljava/lang/String;
    .local v19, "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .local v20, "oldMaxIdleTime":I
    :try_start_8
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    move-result-object v2

    move-object v13, v2

    .line 234
    .local v13, "fmanager":Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    nop

    .line 235
    invoke-interface {v13, v0}, Lorg/apache/ftpserver/ftplet/FileSystemFactory;->createFileSystemView(Lorg/apache/ftpserver/ftplet/User;)Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v2

    move-object v7, v2

    .line 236
    .local v7, "fsview":Lorg/apache/ftpserver/ftplet/FileSystemView;
    invoke-virtual {v8, v7}, Lorg/apache/ftpserver/impl/FtpIoSession;->setLogin(Lorg/apache/ftpserver/ftplet/FileSystemView;)V

    .line 237
    invoke-interface {v10, v8}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 240
    const/16 v5, 0xe6

    const-string v6, "PASS"

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v21, v7

    .end local v7    # "fsview":Lorg/apache/ftpserver/ftplet/FileSystemView;
    .local v21, "fsview":Lorg/apache/ftpserver/ftplet/FileSystemView;
    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 242
    if-eqz v14, :cond_13

    .line 243
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Anonymous login success - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_7

    .line 245
    :cond_13
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Login success - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 251
    .end local v0    # "authenticatedUser":Lorg/apache/ftpserver/ftplet/User;
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "userName":Ljava/lang/String;
    .end local v13    # "fmanager":Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    .end local v14    # "anonymous":Z
    .end local v15    # "currLogin":I
    .end local v16    # "maxLogin":I
    .end local v17    # "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    .end local v18    # "oldUserArgument":Ljava/lang/String;
    .end local v19    # "oldUser":Lorg/apache/ftpserver/ftplet/User;
    .end local v20    # "oldMaxIdleTime":I
    .end local v21    # "fsview":Lorg/apache/ftpserver/ftplet/FileSystemView;
    :goto_7
    if-nez v9, :cond_14

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 255
    :cond_14
    return-void

    .line 251
    :catchall_0
    move-exception v0

    if-nez v9, :cond_15

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    .line 254
    :cond_15
    throw v0
.end method
