.class Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
.super Ljava/lang/Object;
.source "VmPipeFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VmPipeIoProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
    .param p2, "x1"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;

    .line 219
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    return-void
.end method

.method private getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 277
    move-object v0, p1

    .line 278
    .local v0, "messageCopy":Ljava/lang/Object;
    instance-of v1, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 279
    move-object v1, p1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 280
    .local v1, "rb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 281
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 282
    .local v2, "wb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 283
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 284
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 285
    move-object v0, v2

    .line 287
    .end local v1    # "rb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "wb":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 219
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->add(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public add(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 304
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 322
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 219
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 221
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue0()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 222
    .local v0, "queue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isClosing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 223
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 225
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 242
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    return-void

    .line 229
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 230
    .local v1, "currentTime":J
    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v3

    move-object v4, v3

    .local v4, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v3, :cond_3

    .line 231
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 232
    .local v3, "m":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    new-instance v6, Lorg/apache/mina/core/session/IoEvent;

    sget-object v7, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v6, v7, p1, v4}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$100(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/core/session/IoEvent;Z)V

    .line 233
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-direct {p0, v3}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 234
    instance-of v5, v3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v5, :cond_2

    .line 235
    move-object v5, v3

    check-cast v5, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1, v5, v1, v2}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->increaseWrittenBytes0(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v3    # "m":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 239
    .end local v1    # "currentTime":J
    .end local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    iget-object v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 242
    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 243
    nop

    .line 245
    invoke-static {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$400(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    goto :goto_3

    .line 239
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 240
    iget-object v2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 242
    :cond_5
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 243
    throw v1

    .line 247
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    :goto_1
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    move-object v3, v2

    .local v3, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v2, :cond_7

    .line 250
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 254
    new-instance v2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v2, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 255
    .local v2, "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 256
    .local v5, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 257
    .end local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    goto :goto_2

    .line 258
    :cond_8
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 261
    .end local v1    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .end local v2    # "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_9
    :goto_3
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 219
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->remove(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public remove(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 292
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getServiceListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 295
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    throw v0
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 219
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->updateTrafficControl(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 307
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 311
    .local v2, "aData":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v3, v2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 312
    .end local v2    # "aData":Ljava/lang/Object;
    goto :goto_0

    .line 315
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    .line 318
    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 219
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->write(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public write(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 267
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 269
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 271
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    .line 274
    :cond_0
    return-void
.end method
