.class public Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;
.super Ljava/lang/Object;
.source "SingleSessionIoHandlerDelegate.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HANDLER:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;

    const-string v2, "handler"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    .line 69
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public event(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/FilterEvent;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "event"    # Lorg/apache/mina/filter/FilterEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 190
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->event(Lorg/apache/mina/filter/FilterEvent;)V

    .line 191
    return-void
.end method

.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 142
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public getFactory()Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    return-object v0
.end method

.method public inputClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 177
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p1}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->inputClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 178
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 155
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->messageReceived(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 168
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->messageSent(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 116
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionClosed()V

    .line 117
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->factory:Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;

    invoke-interface {v0, p1}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerFactory;->getHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    move-result-object v0

    .line 89
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    sget-object v1, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v0}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionCreated()V

    .line 91
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 129
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0, p2}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    .line 130
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerDelegate;->HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;

    .line 103
    .local v0, "handler":Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;
    invoke-interface {v0}, Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;->sessionOpened()V

    .line 104
    return-void
.end method
