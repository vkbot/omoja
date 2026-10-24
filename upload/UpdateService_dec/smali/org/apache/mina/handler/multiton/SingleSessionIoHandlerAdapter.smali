.class public Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;
.super Ljava/lang/Object;
.source "SingleSessionIoHandlerAdapter.java"

# interfaces
.implements Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;->session:Lorg/apache/mina/core/session/IoSession;

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public event(Lorg/apache/mina/filter/FilterEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/mina/filter/FilterEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public exceptionCaught(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "th"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    return-void
.end method

.method protected getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public inputClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 79
    return-void
.end method

.method public messageReceived(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public messageSent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public sessionClosed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public sessionCreated()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public sessionOpened()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    return-void
.end method
