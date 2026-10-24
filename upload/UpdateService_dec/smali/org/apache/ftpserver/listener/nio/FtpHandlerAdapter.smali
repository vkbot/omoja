.class public Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "FtpHandlerAdapter.java"


# instance fields
.field private final context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpHandler;)V
    .locals 0
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;
    .param p2, "ftpHandler"    # Lorg/apache/ftpserver/impl/FtpHandler;

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 48
    iput-object p2, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    .line 49
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 54
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, v0, p2}, Lorg/apache/ftpserver/impl/FtpHandler;->exceptionCaught(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public getFtpHandler()Lorg/apache/ftpserver/impl/FtpHandler;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 60
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    new-instance v1, Lorg/apache/ftpserver/impl/DefaultFtpRequest;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "request":Lorg/apache/ftpserver/ftplet/FtpRequest;
    iget-object v2, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v2, v0, v1}, Lorg/apache/ftpserver/impl/FtpHandler;->messageReceived(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)V

    .line 63
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 67
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    move-object v2, p2

    check-cast v2, Lorg/apache/ftpserver/ftplet/FtpReply;

    invoke-interface {v1, v0, v2}, Lorg/apache/ftpserver/impl/FtpHandler;->messageSent(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpReply;)V

    .line 68
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 72
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionClosed(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 73
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 77
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getSessionId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session"

    invoke-static {p1, v2, v1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionCreated(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 81
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 86
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, v0, p2}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionIdle(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 87
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    .line 91
    .local v0, "ftpSession":Lorg/apache/ftpserver/impl/FtpIoSession;
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionOpened(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    .line 92
    return-void
.end method

.method public setFtpHandler(Lorg/apache/ftpserver/impl/FtpHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/ftpserver/impl/FtpHandler;

    .line 99
    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    .line 101
    return-void
.end method
