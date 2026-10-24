.class public Lorg/apache/mina/core/future/DefaultWriteFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultWriteFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/WriteFuture;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 37
    return-void
.end method

.method public static newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 60
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 61
    .local v0, "unwrittenFuture":Lorg/apache/mina/core/future/DefaultWriteFuture;
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 63
    return-object v0
.end method

.method public static newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 46
    new-instance v0, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 47
    .local v0, "writtenFuture":Lorg/apache/mina/core/future/DefaultWriteFuture;
    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setWritten()V

    .line 49
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .line 139
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->await()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 123
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 131
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 91
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 95
    .end local v0    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isWritten()Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 75
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 79
    .end local v0    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .line 147
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 111
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setValue(Ljava/lang/Object;)Z

    .line 116
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWritten()V
    .locals 1

    .line 103
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultWriteFuture;->setValue(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method
