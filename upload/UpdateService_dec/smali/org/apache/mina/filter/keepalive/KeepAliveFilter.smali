.class public Lorg/apache/mina/filter/keepalive/KeepAliveFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "KeepAliveFilter.java"


# instance fields
.field private final IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private final WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

.field private volatile forwardEvent:Z

.field private final interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

.field private final messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

.field private volatile requestInterval:I

.field private volatile requestTimeout:I

.field private volatile requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;)V
    .locals 2
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    .line 190
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 6
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "interestedIdleStatus"    # Lorg/apache/mina/core/session/IdleStatus;

    .line 206
    sget-object v3, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->CLOSE:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "interestedIdleStatus"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p3, "policy"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 239
    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V
    .locals 3
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "interestedIdleStatus"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p3, "policy"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    .param p4, "keepAliveRequestInterval"    # I
    .param p5, "keepAliveRequestTimeout"    # I

    .line 252
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 161
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "waitingForResponse"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    .line 163
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ignoreReaderIdleOnce"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    .line 253
    if-eqz p1, :cond_2

    .line 257
    if-eqz p2, :cond_1

    .line 261
    if-eqz p3, :cond_0

    .line 265
    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    .line 266
    iput-object p2, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    .line 267
    iput-object p3, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 269
    invoke-virtual {p0, p4}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestInterval(I)V

    .line 270
    invoke-virtual {p0, p5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->setRequestTimeout(I)V

    .line 271
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interestedIdleStatus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 6
    .param p1, "messageFactory"    # Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .param p2, "policy"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 222
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;-><init>(Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;Lorg/apache/mina/core/session/IdleStatus;Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;II)V

    .line 223
    return-void
.end method

.method private handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 479
    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v0

    .line 480
    .local v0, "handler":Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    sget-object v1, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-ne v0, v1, :cond_0

    .line 481
    return-void

    .line 484
    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 485
    return-void
.end method

.method private isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private markStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 488
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 489
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    .line 490
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method

.method private resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 494
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReaderIdleTime(I)V

    .line 495
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setWriterIdleTime(I)V

    .line 496
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestInterval()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 497
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method


# virtual methods
.method public getInterestedIdleStatus()Lorg/apache/mina/core/session/IdleStatus;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    return-object v0
.end method

.method public getMessageFactory()Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 1

    .line 303
    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .line 324
    iget v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    return v0
.end method

.method public getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    return-object v0
.end method

.method public isForwardEvent()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isRequest(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, "pongMessage":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 405
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 409
    .end local v0    # "pongMessage":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->isResponse(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 417
    :cond_2
    return-void

    .line 413
    :catchall_0
    move-exception v0

    invoke-direct {p0, p2, p3}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 414
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 416
    :cond_3
    throw v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalMessage()Ljava/lang/Object;

    move-result-object v0

    .line 426
    .local v0, "message":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 428
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 429
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 433
    :cond_0
    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->isKeepAliveMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 436
    :cond_1
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 385
    return-void
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 393
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t add the same filter instance more than once. Create another instance and add it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v0, :cond_3

    .line 444
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->messageFactory:Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveMessageFactory;->getRequest(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, "pingMessage":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 448
    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 452
    invoke-virtual {p0}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeoutHandler()Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;->DEAF_SPEAKER:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    if-eq v1, v2, :cond_0

    .line 453
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->markStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 454
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->interestedIdleStatus:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne v1, v2, :cond_1

    .line 455
    iget-object v1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->resetStatus(Lorg/apache/mina/core/session/IoSession;)V

    .line 461
    .end local v0    # "pingMessage":Ljava/lang/Object;
    :cond_1
    :goto_0
    goto :goto_1

    .line 462
    :cond_2
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_1

    .line 464
    :cond_3
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p3, v0, :cond_4

    .line 465
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->IGNORE_READER_IDLE_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 466
    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->WAITING_FOR_RESPONSE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->handlePingTimeout(Lorg/apache/mina/core/session/IoSession;)V

    .line 472
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    if-eqz v0, :cond_5

    .line 473
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 475
    :cond_5
    return-void
.end method

.method public setForwardEvent(Z)V
    .locals 0
    .param p1, "forwardEvent"    # Z

    .line 365
    iput-boolean p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->forwardEvent:Z

    .line 366
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 3
    .param p1, "keepAliveRequestInterval"    # I

    .line 312
    if-lez p1, :cond_0

    .line 317
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestInterval:I

    .line 318
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveRequestInterval must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestTimeout(I)V
    .locals 3
    .param p1, "keepAliveRequestTimeout"    # I

    .line 333
    if-lez p1, :cond_0

    .line 338
    iput p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeout:I

    .line 339
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveRequestTimeout must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestTimeoutHandler(Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;)V
    .locals 2
    .param p1, "timeoutHandler"    # Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 293
    if-eqz p1, :cond_0

    .line 296
    iput-object p1, p0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->requestTimeoutHandler:Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;

    .line 297
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutHandler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
