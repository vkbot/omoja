.class Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
.super Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.source "VmPipeFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
    }
.end annotation


# instance fields
.field private final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/session/IoEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile flushEnabled:Z

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sessionOpened:Z


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    .line 48
    new-instance v0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/core/session/IoEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoEvent;
    .param p2, "x2"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    .line 44
    iget-boolean v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    .line 44
    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 44
    invoke-static {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method private fireEvent(Lorg/apache/mina/core/session/IoEvent;)V
    .locals 5
    .param p1, "e"    # Lorg/apache/mina/core/session/IoEvent;

    .line 87
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 88
    .local v0, "session":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    .line 89
    .local v1, "type":Lorg/apache/mina/core/session/IoEventType;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "data":Ljava/lang/Object;
    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 154
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-super {p0, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V

    goto/16 :goto_1

    .line 149
    :pswitch_1
    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionOpened()V

    .line 150
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->sessionOpened:Z

    .line 151
    goto/16 :goto_1

    .line 145
    :pswitch_2
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/core/session/IdleStatus;

    invoke-super {p0, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    .line 146
    goto/16 :goto_1

    .line 135
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 137
    :try_start_0
    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    nop

    .line 142
    goto :goto_1

    .line 139
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    throw v3

    .line 130
    :pswitch_4
    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    .line 131
    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireSessionClosed()V

    .line 132
    goto :goto_1

    .line 113
    :pswitch_5
    iget-boolean v3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->sessionOpened:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isReadSuspended()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isReadSuspended()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-super {p0, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    goto :goto_1

    .line 121
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw v3

    .line 124
    :cond_1
    iget-object v3, v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_1

    .line 109
    :pswitch_6
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-super {p0, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 110
    goto :goto_1

    .line 105
    :pswitch_7
    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireInputClosed()V

    .line 106
    goto :goto_1

    .line 101
    :pswitch_8
    invoke-super {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireFilterClose()V

    .line 102
    goto :goto_1

    .line 97
    :pswitch_9
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-super {p0, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 98
    goto :goto_1

    .line 93
    :pswitch_a
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/filter/FilterEvent;

    invoke-super {p0, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->fireEvent(Lorg/apache/mina/filter/FilterEvent;)V

    .line 94
    nop

    .line 157
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private flushEvents()V
    .locals 2

    .line 81
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    move-object v1, v0

    .local v1, "e":Lorg/apache/mina/core/session/IoEvent;
    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->fireEvent(Lorg/apache/mina/core/session/IoEvent;)V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private static flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 1
    .param p0, "s"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .line 160
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    .line 161
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    .line 162
    return-void
.end method

.method private pushEvent(Lorg/apache/mina/core/session/IoEvent;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/mina/core/session/IoEvent;

    .line 69
    iget-boolean v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;Z)V

    .line 70
    return-void
.end method

.method private pushEvent(Lorg/apache/mina/core/session/IoEvent;Z)V
    .locals 1
    .param p1, "e"    # Lorg/apache/mina/core/session/IoEvent;
    .param p2, "flushNow"    # Z

    .line 73
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public fireEvent(Lorg/apache/mina/filter/FilterEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/mina/filter/FilterEvent;

    .line 166
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EVENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 167
    return-void
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 186
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 187
    return-void
.end method

.method public fireFilterClose()V
    .locals 4

    .line 171
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 172
    return-void
.end method

.method public fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 181
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 182
    return-void
.end method

.method public fireInputClosed()V
    .locals 4

    .line 176
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->INPUT_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 177
    return-void
.end method

.method public fireMessageReceived(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 216
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 217
    return-void
.end method

.method public fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 191
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 192
    return-void
.end method

.method public fireSessionClosed()V
    .locals 4

    .line 196
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 197
    return-void
.end method

.method public fireSessionCreated()V
    .locals 4

    .line 201
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 202
    return-void
.end method

.method public fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .line 206
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 207
    return-void
.end method

.method public fireSessionOpened()V
    .locals 4

    .line 211
    new-instance v0, Lorg/apache/mina/core/session/IoEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->pushEvent(Lorg/apache/mina/core/session/IoEvent;)V

    .line 212
    return-void
.end method

.method getProcessor()Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method public start()V
    .locals 1

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEnabled:Z

    .line 64
    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushEvents()V

    .line 65
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-static {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->flushPendingDataQueues(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    .line 66
    return-void
.end method
