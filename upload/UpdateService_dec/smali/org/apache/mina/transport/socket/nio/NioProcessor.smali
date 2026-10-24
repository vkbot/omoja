.class public Lorg/apache/mina/transport/socket/nio/NioProcessor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.source "NioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# instance fields
.field protected selector:Ljava/nio/channels/Selector;

.field protected selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 67
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to open a selector."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 81
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 85
    if-nez p2, :cond_0

    .line 86
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    goto :goto_0

    .line 88
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 89
    invoke-virtual {p2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    nop

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to open a selector."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected allSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 157
    :try_start_0
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    throw v0
.end method

.method protected allSessionsCount()I
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method protected destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    .line 192
    .local v0, "ch":Ljava/nio/channels/ByteChannel;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 194
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 198
    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 201
    :cond_1
    return-void
.end method

.method protected doDispose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 104
    throw v0
.end method

.method protected bridge synthetic getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 0

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object p1

    return-object p1
.end method

.method protected getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 283
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 285
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_0

    .line 287
    sget-object v1, Lorg/apache/mina/core/session/SessionState;->OPENING:Lorg/apache/mina/core/session/SessionState;

    return-object v1

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    sget-object v1, Lorg/apache/mina/core/session/SessionState;->OPENED:Lorg/apache/mina/core/session/SessionState;

    return-object v1

    .line 295
    :cond_1
    sget-object v1, Lorg/apache/mina/core/session/SessionState;->CLOSING:Lorg/apache/mina/core/session/SessionState;

    return-object v1
.end method

.method protected bridge synthetic init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->init(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method protected init(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 178
    .local v0, "ch":Ljava/nio/channels/SelectableChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 179
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    throw v1
.end method

.method protected isBrokenConnection()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "brokenSession":Z
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 254
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    .line 258
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 259
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    .line 261
    .local v4, "channel":Ljava/nio/channels/SelectableChannel;
    instance-of v5, v4, Ljava/nio/channels/DatagramChannel;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    instance-of v5, v4, Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/nio/channels/SocketChannel;

    .line 262
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 265
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v0, 0x1

    .line 270
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "channel":Ljava/nio/channels/SelectableChannel;
    :cond_2
    goto :goto_0

    .line 272
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 273
    nop

    .line 275
    return v0

    .line 272
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 273
    throw v1
.end method

.method protected bridge synthetic isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 315
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 317
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected bridge synthetic isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 322
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 324
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected bridge synthetic isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 301
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 303
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isSelectorEmpty()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 134
    return v0

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    throw v0
.end method

.method protected bridge synthetic isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method protected isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 308
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 310
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected bridge synthetic read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method protected read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    .line 378
    .local v0, "channel":Ljava/nio/channels/ByteChannel;
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method

.method protected registerNewSelector()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 217
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-nez v1, :cond_0

    .line 218
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .local v1, "newSelector":Ljava/nio/channels/Selector;
    goto :goto_0

    .line 220
    .end local v1    # "newSelector":Ljava/nio/channels/Selector;
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v1

    .line 224
    .restart local v1    # "newSelector":Ljava/nio/channels/Selector;
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 225
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    .line 228
    .local v4, "ch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 229
    .local v5, "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    invoke-virtual {v4, v1, v6, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    .line 230
    .local v6, "newKey":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v5, v6}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 231
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    .end local v4    # "ch":Ljava/nio/channels/SelectableChannel;
    .end local v5    # "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    .end local v6    # "newKey":Ljava/nio/channels/SelectionKey;
    goto :goto_1

    .line 234
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V

    .line 235
    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v1    # "newSelector":Ljava/nio/channels/Selector;
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 238
    nop

    .line 240
    return-void

    .line 237
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 238
    throw v0
.end method

.method protected select()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    return v0

    .line 125
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    throw v0
.end method

.method protected select(J)I
    .locals 2
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    return v0

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 115
    throw v0
.end method

.method protected selectedSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method protected bridge synthetic setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method protected setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "isInterested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 334
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 339
    .local v1, "oldInterestOps":I
    move v2, v1

    .line 341
    .local v2, "newInterestOps":I
    if-eqz p2, :cond_1

    .line 342
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    and-int/lit8 v2, v2, -0x2

    .line 347
    :goto_0
    if-eq v1, v2, :cond_2

    .line 348
    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 350
    :cond_2
    return-void

    .line 335
    .end local v1    # "oldInterestOps":I
    .end local v2    # "newInterestOps":I
    :cond_3
    :goto_1
    return-void
.end method

.method protected bridge synthetic setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method protected setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "isInterested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 359
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 365
    .local v1, "newInterestOps":I
    if-eqz p2, :cond_1

    .line 366
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 368
    :cond_1
    and-int/lit8 v1, v1, -0x5

    .line 371
    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 372
    return-void

    .line 360
    .end local v1    # "newInterestOps":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result p1

    return p1
.end method

.method protected transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 6
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "region"    # Lorg/apache/mina/core/file/FileRegion;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v1

    int-to-long v3, p3

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    .line 400
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "temporarily unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const/4 v2, 0x0

    return v2

    .line 408
    :cond_0
    throw v0
.end method

.method protected wakeup()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 143
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selectorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    throw v0
.end method

.method protected bridge synthetic write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result p1

    return p1
.end method

.method protected write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-gt v0, p3, :cond_0

    .line 384
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 387
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 388
    .local v0, "oldLimit":I
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 390
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 390
    return v1

    .line 392
    :catchall_0
    move-exception v1

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 393
    throw v1
.end method
