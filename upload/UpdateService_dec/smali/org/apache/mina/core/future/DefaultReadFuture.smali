.class public Lorg/apache/mina/core/future/DefaultReadFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "DefaultReadFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/ReadFuture;


# static fields
.field private static final CLOSED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation

    .line 170
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->await()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 154
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1

    .line 162
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 110
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 114
    .end local v0    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "v":Ljava/lang/Object;
    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    .line 54
    return-object v1

    .line 57
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    .line 61
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    .line 65
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_1

    .line 69
    return-object v0

    .line 66
    :cond_1
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 58
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 72
    .end local v0    # "v":Ljava/lang/Object;
    :cond_4
    return-object v1
.end method

.method public isClosed()Z
    .locals 3

    .line 94
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 98
    :cond_1
    return v1
.end method

.method public isRead()Z
    .locals 3

    .line 80
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "v":Ljava/lang/Object;
    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 86
    .end local v0    # "v":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation

    .line 178
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public setClosed()V
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultReadFuture;->setValue(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 142
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->setValue(Ljava/lang/Object;)Z

    .line 147
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRead(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 130
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->setValue(Ljava/lang/Object;)Z

    .line 135
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
