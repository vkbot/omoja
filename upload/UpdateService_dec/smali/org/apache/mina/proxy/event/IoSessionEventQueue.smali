.class public Lorg/apache/mina/proxy/event/IoSessionEventQueue;
.super Ljava/lang/Object;
.source "IoSessionEventQueue.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private sessionEventsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/proxy/event/IoSessionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    .line 56
    iput-object p1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 57
    return-void
.end method

.method private discardSessionQueueEvents()V
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 67
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Event queue CLEARED"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 70
    :cond_0
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/mina/proxy/event/IoSessionEvent;

    .line 145
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Enqueuing event: {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/mina/proxy/event/IoSessionEvent;

    .line 85
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "??? >> Enqueue {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    .line 93
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->getType()Lorg/apache/mina/proxy/event/IoSessionEventType;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    if-ne v0, v1, :cond_4

    .line 100
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isAuthenticationFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/ProxyConnector;->cancelConnectFuture()V

    .line 102
    invoke-direct {p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->discardSessionQueueEvents()V

    .line 103
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->discardSessionQueueEvents()V

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->getType()Lorg/apache/mina/proxy/event/IoSessionEventType;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    if-ne v0, v1, :cond_5

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 111
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 113
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 116
    :goto_0
    return-void
.end method

.method public flushPendingSessionEvents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 129
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    move-object v2, v1

    .local v2, "evt":Lorg/apache/mina/proxy/event/IoSessionEvent;
    if-eqz v1, :cond_1

    .line 130
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, " Flushing buffered event: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-virtual {v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    .line 136
    .end local v2    # "evt":Lorg/apache/mina/proxy/event/IoSessionEvent;
    :cond_1
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
