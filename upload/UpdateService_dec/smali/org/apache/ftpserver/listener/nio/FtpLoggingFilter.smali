.class public Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;
.super Lorg/apache/mina/filter/logging/LoggingFilter;
.source "FtpLoggingFilter.java"


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private maskPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 51
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    .line 60
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->logger:Lorg/slf4j/Logger;

    .line 61
    return-void
.end method


# virtual methods
.method public isMaskPassword()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "request":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "PASS *****"

    .local v1, "logMessage":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 84
    .restart local v1    # "logMessage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->logger:Lorg/slf4j/Logger;

    const-string v3, "RECEIVED: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public setMaskPassword(Z)V
    .locals 0
    .param p1, "maskPassword"    # Z

    .line 104
    iput-boolean p1, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    .line 105
    return-void
.end method
