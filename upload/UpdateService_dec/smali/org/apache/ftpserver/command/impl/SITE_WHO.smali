.class public Lorg/apache/ftpserver/command/impl/SITE_WHO;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SITE_WHO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 16
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 58
    move-object/from16 v6, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 61
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v7

    .line 62
    .local v7, "userManager":Lorg/apache/ftpserver/ftplet/UserManager;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/ftpserver/ftplet/UserManager;->isAdmin(Ljava/lang/String;)Z

    move-result v8

    .line 63
    .local v8, "isAdmin":Z
    if-nez v8, :cond_0

    .line 64
    const/16 v3, 0x212

    const/4 v5, 0x0

    const-string v4, "SITE"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 66
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v1

    .line 75
    .local v1, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/mina/core/session/IoSession;>;"
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 78
    .local v3, "sessionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    new-instance v4, Lorg/apache/ftpserver/impl/FtpIoSession;

    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/session/IoSession;

    move-object/from16 v9, p2

    invoke-direct {v4, v5, v9}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 82
    .local v4, "managedSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v5

    .line 87
    .local v5, "tmpUsr":Lorg/apache/ftpserver/ftplet/User;
    invoke-interface {v5}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x20

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-static {v10, v11, v12, v13}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_2

    .line 90
    nop

    .line 91
    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v10

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-static {v10, v11, v12, v13}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    nop

    .line 95
    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLoginTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 94
    invoke-static {v13, v14}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x14

    invoke-static {v10, v11, v12, v13}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    nop

    .line 97
    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 96
    invoke-static {v14, v15}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11, v12, v13}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .end local v4    # "managedSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    .end local v5    # "tmpUsr":Lorg/apache/ftpserver/ftplet/User;
    goto :goto_0

    .line 100
    :cond_3
    move-object/from16 v9, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    new-instance v2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v4, 0xc8

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    .line 101
    invoke-virtual {v6, v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 103
    return-void
.end method
