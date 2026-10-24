.class public Lorg/apache/ftpserver/command/impl/AUTH;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "AUTH.java"


# static fields
.field private static final SSL_SESSION_FILTER_NAME:Ljava/lang/String; = "sslSessionFilter"

.field private static final VALID_AUTH_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    const-string v0, "SSL"

    const-string v1, "TLS"

    const-string v2, "TLS-C"

    const-string v3, "TLS-P"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/command/impl/AUTH;->VALID_AUTH_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    .line 51
    const-class v0, Lorg/apache/ftpserver/command/impl/AUTH;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/AUTH;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private secureSession(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    .line 124
    .local v0, "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-eqz v0, :cond_5

    .line 125
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 128
    .local v1, "sslFilter":Lorg/apache/mina/filter/ssl/SslFilter;
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v2

    sget-object v3, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 129
    invoke-virtual {v1, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->setNeedClientAuth(Z)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v2

    sget-object v3, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v2, v3, :cond_1

    .line 131
    invoke-virtual {v1, v4}, Lorg/apache/mina/filter/ssl/SslFilter;->setWantClientAuth(Z)V

    .line 138
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 139
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->setEnabledProtocols([Ljava/lang/String;)V

    .line 146
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    const-string v3, "sslSessionFilter"

    invoke-interface {v2, v3, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 148
    const-string v2, "SSL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->setSecure(Z)V

    .line 151
    .end local v1    # "sslFilter":Lorg/apache/mina/filter/ssl/SslFilter;
    :cond_4
    nop

    .line 154
    return-void

    .line 152
    :cond_5
    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v2, "Socket factory SSL not configured"

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/ftpserver/impl/FtpIoSession;
    .param p2, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p3, "request"    # Lorg/apache/ftpserver/ftplet/FtpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ftpserver/ftplet/FtpException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 65
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->hasArgument()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/16 v4, 0x1f5

    const/4 v6, 0x0

    const-string v5, "AUTH"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 68
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    const/16 v4, 0x1af

    const/4 v6, 0x0

    const-string v5, "AUTH"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 74
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const/16 v4, 0x216

    const/4 v6, 0x0

    const-string v5, "AUTH"

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 93
    return-void

    .line 97
    :cond_2
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "authType":Ljava/lang/String;
    sget-object v1, Lorg/apache/ftpserver/command/impl/AUTH;->VALID_AUTH_TYPES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    const-string v1, "TLS-C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    const-string v0, "TLS"

    goto :goto_0

    .line 101
    :cond_3
    const-string v1, "TLS-P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    const-string v0, "SSL"

    .line 106
    :cond_4
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/command/impl/AUTH;->secureSession(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)V

    .line 107
    const/16 v4, 0xea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUTH."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ftpserver/command/impl/AUTH;->LOG:Lorg/slf4j/Logger;

    const-string v3, "AUTH.execute()"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v2, v3, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 108
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    throw v1

    .line 115
    .end local v1    # "ex":Lorg/apache/ftpserver/ftplet/FtpException;
    :cond_5
    const/16 v5, 0x1f6

    const/4 v7, 0x0

    const-string v6, "AUTH"

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 118
    :goto_1
    return-void
.end method
