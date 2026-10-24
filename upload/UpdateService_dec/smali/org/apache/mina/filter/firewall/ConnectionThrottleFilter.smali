.class public Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ConnectionThrottleFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME:J = 0x3e8L

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private allowedInterval:J

.field private final clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;-><init>(J)V

    .line 103
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "allowedInterval"    # J

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    .line 114
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    .line 118
    new-instance v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;-><init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$1;)V

    .line 121
    .local v0, "cleanupThread":Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->setDaemon(Z)V

    .line 124
    invoke-virtual {v0}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->start()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    .line 42
    iget-wide v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 11
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 155
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 157
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 158
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 159
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 161
    .local v3, "now":J
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 164
    :try_start_0
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 166
    sget-object v5, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    sget-object v5, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "This is not a new client"

    invoke-interface {v5, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 172
    .local v5, "lastConnTime":Ljava/lang/Long;
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v3, v7

    iget-wide v9, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 177
    sget-object v6, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Session connection interval too short"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    nop

    .line 186
    iget-object v6, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 178
    return v2

    .line 181
    :cond_1
    nop

    .line 186
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    return v6

    .line 184
    .end local v5    # "lastConnTime":Ljava/lang/Long;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    nop

    .line 189
    return v6

    .line 186
    :catchall_0
    move-exception v2

    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    throw v2

    .line 192
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    .end local v3    # "now":J
    :cond_3
    return v2
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Connections coming in too fast; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 199
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 202
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 203
    return-void
.end method

.method public setAllowedInterval(J)V
    .locals 2
    .param p1, "allowedInterval"    # J

    .line 136
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    nop

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    throw v0
.end method
