.class public Lorg/apache/mina/core/future/DefaultConnectFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultConnectFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/ConnectFuture;


# static fields
.field private static final CANCELED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 39
    return-void
.end method

.method public static newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 48
    new-instance v0, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    .line 49
    .local v0, "failedFuture":Lorg/apache/mina/core/future/DefaultConnectFuture;
    invoke-virtual {v0, p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 157
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public await()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->await()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    .line 149
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    .line 133
    sget-object v0, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 84
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 3

    .line 59
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/mina/core/session/IoSession;

    if-eqz v1, :cond_0

    .line 62
    move-object v1, v0

    check-cast v1, Lorg/apache/mina/core/session/IoSession;

    return-object v1

    .line 63
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    .line 65
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    .line 67
    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 70
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to get the session."

    invoke-direct {v1, v2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/RuntimeIoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/RuntimeIoException;

    throw v1

    .line 66
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 64
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/session/IoSession;

    return v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 165
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 121
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 109
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)Z

    .line 114
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
