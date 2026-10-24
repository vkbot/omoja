.class public final Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "VmPipeAcceptor.java"


# static fields
.field static final boundHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
            "Lorg/apache/mina/transport/vmpipe/VmPipe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 64
    new-instance v0, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 65
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    .line 68
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    const-string v1, "idleStatusChecker"

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v0, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    sget-object v1, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 131
    .local v3, "a":Ljava/net/SocketAddress;
    move-object v4, v3

    check-cast v4, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 132
    .local v4, "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {v4}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->getPort()I

    move-result v5

    if-ltz v5, :cond_2

    .line 147
    sget-object v5, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_4

    .line 148
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address already bound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .end local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .end local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    throw v2

    .line 146
    .restart local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .restart local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Bind port number must be 0 or above."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .end local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .end local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    throw v2

    .line 133
    .restart local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .restart local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 134
    const/16 v5, 0x2710

    .local v5, "i":I
    :goto_2
    const v6, 0x7fffffff

    if-ge v5, v6, :cond_5

    .line 135
    new-instance v6, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    invoke-direct {v6, v5}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    .line 136
    .local v6, "newLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    sget-object v7, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 137
    move-object v4, v6

    .line 138
    goto :goto_3

    .line 134
    .end local v6    # "newLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 142
    .end local v5    # "i":I
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 151
    :goto_4
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    nop

    .end local v3    # "a":Ljava/net/SocketAddress;
    .end local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    goto :goto_0

    .line 143
    .restart local v3    # "a":Ljava/net/SocketAddress;
    .restart local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v5, "No port available."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .end local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .end local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    throw v2

    .line 154
    .end local v3    # "a":Ljava/net/SocketAddress;
    .end local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .restart local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .restart local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 155
    .restart local v3    # "a":Ljava/net/SocketAddress;
    move-object v4, v3

    check-cast v4, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 156
    .restart local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    sget-object v5, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 157
    sget-object v5, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    new-instance v6, Lorg/apache/mina/transport/vmpipe/VmPipe;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v8

    invoke-direct {v6, p0, v4, v7, v8}, Lorg/apache/mina/transport/vmpipe/VmPipe;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/core/service/IoServiceListenerSupport;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v3    # "a":Ljava/net/SocketAddress;
    .end local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    goto :goto_5

    .line 159
    .restart local v3    # "a":Ljava/net/SocketAddress;
    .restart local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketAddress;

    .line 160
    .local v5, "a2":Ljava/net/SocketAddress;
    sget-object v6, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    nop

    .end local v5    # "a2":Ljava/net/SocketAddress;
    goto :goto_6

    .line 162
    :cond_9
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate local address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .end local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .end local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    throw v2

    .line 165
    .end local v3    # "a":Ljava/net/SocketAddress;
    .end local v4    # "localAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .restart local v0    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local p0    # "this":Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .restart local p1    # "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    :cond_a
    monitor-exit v1

    .line 167
    return-object v0

    .line 165
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dispose0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancel()V

    .line 119
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->unbind()V

    .line 120
    return-void
.end method

.method doFinishSessionInitialization(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 188
    return-void
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getDefaultLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 98
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .line 90
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDefaultLocalAddress(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)V
    .locals 0
    .param p1, "localAddress"    # Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 109
    invoke-super {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    .line 110
    return-void
.end method

.method protected unbind0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    monitor-enter v0

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    .line 174
    .local v2, "a":Ljava/net/SocketAddress;
    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    nop

    .end local v2    # "a":Ljava/net/SocketAddress;
    goto :goto_0

    .line 176
    :cond_0
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
