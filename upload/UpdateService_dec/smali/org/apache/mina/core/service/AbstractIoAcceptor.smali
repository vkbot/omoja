.class public abstract Lorg/apache/mina/core/service/AbstractIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoService;
.source "AbstractIoAcceptor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    }
.end annotation


# instance fields
.field protected final bindLock:Ljava/lang/Object;

.field private final boundAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultLocalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectOnUnbind:Z

.field private final unmodifiableDefaultLocalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    .line 48
    nop

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unmodifiableDefaultLocalAddresses:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method private checkAddressType(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "a"    # Ljava/net/SocketAddress;

    .line 459
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localAddress type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 222
    return-void
.end method

.method public final bind(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    .local p1, "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 290
    if-eqz p1, :cond_5

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    .line 297
    .local v2, "a":Ljava/net/SocketAddress;
    invoke-direct {p0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->checkAddressType(Ljava/net/SocketAddress;)V

    .line 298
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v2    # "a":Ljava/net/SocketAddress;
    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "activate":Z
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v2

    .line 307
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 308
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    const/4 v1, 0x1

    .line 311
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_3

    .line 318
    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindInternal(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 320
    .local v3, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v4, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 321
    :try_start_4
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 322
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    .end local v3    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    nop

    .line 328
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 330
    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 333
    :cond_2
    return-void

    .line 322
    .restart local v3    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v1    # "activate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 325
    .end local v3    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    .restart local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v1    # "activate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v4, Lorg/apache/mina/core/RuntimeIoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bind to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v1    # "activate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v4

    .line 323
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v1    # "activate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catch_1
    move-exception v3

    .line 324
    .restart local v3    # "e":Ljava/lang/Exception;
    nop

    .end local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v1    # "activate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v3

    .line 314
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v1    # "activate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "handler is not set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v1    # "activate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 311
    .restart local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v1    # "activate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catchall_1
    move-exception v4

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v1    # "activate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :try_start_a
    throw v4

    .line 328
    .restart local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v1    # "activate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v3

    .line 302
    .end local v1    # "activate":Z
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "localAddresses is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Accpetor disposed is being disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    if-eqz p1, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 236
    return-void

    .line 230
    .end local v0    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs bind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "firstLocalAddress"    # Ljava/net/SocketAddress;
    .param p2, "addresses"    # [Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 266
    :cond_0
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 275
    .local v3, "address":Ljava/net/SocketAddress;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v3    # "address":Ljava/net/SocketAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 279
    return-void

    .line 267
    .end local v0    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 268
    return-void
.end method

.method public final varargs bind([Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "addresses"    # [Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 251
    .local v3, "address":Ljava/net/SocketAddress;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v3    # "address":Ljava/net/SocketAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 255
    return-void

    .line 244
    .end local v0    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 245
    return-void
.end method

.method protected abstract bindInternal(Ljava/util/List;)Ljava/util/Set;
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
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final getDefaultLocalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unmodifiableDefaultLocalAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v0

    .line 87
    .local v0, "localAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    return-object v1
.end method

.method public final getLocalAddresses()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v0, "localAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    monitor-exit v1

    .line 105
    return-object v0

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final isCloseOnDeactivation()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    return v0
.end method

.method public final setCloseOnDeactivation(Z)V
    .locals 0
    .param p1, "disconnectClientsOnUnbind"    # Z

    .line 213
    iput-boolean p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    .line 214
    return-void
.end method

.method public final setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/SocketAddress;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V

    .line 125
    return-void
.end method

.method public final setDefaultLocalAddresses(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    if-eqz p1, :cond_3

    .line 156
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v2, "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    .line 165
    .local v4, "a":Ljava/net/SocketAddress;
    invoke-direct {p0, v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->checkAddressType(Ljava/net/SocketAddress;)V

    .line 166
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    nop

    .end local v4    # "a":Ljava/net/SocketAddress;
    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 174
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    nop

    .end local v2    # "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    return-void

    .line 170
    .restart local v2    # "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "empty localAddresses"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v3

    .line 159
    .end local v2    # "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "localAddress can\'t be set while the acceptor is bound."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v2

    .line 175
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :try_start_4
    throw v2

    .line 176
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 153
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "firstLocalAddress"    # Ljava/net/SocketAddress;
    .param p2, "otherLocalAddresses"    # [Ljava/net/SocketAddress;

    .line 185
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 186
    new-array p2, v0, [Ljava/net/SocketAddress;

    .line 189
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v1, "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    .line 194
    .local v3, "a":Ljava/net/SocketAddress;
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v3    # "a":Ljava/net/SocketAddress;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/lang/Iterable;)V

    .line 198
    return-void
.end method

.method public final setDefaultLocalAddresses(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/lang/Iterable;)V

    .line 145
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 448
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    .line 449
    .local v0, "m":Lorg/apache/mina/core/service/TransportMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " acceptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localAddress(es): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", managedSessionCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getManagedSessionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "not bound"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    return-object v1
.end method

.method public final unbind()V
    .locals 1

    .line 340
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    .line 341
    return-void
.end method

.method public final unbind(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p1, "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    if-eqz p1, :cond_6

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "deactivate":Z
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :try_start_1
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 391
    :cond_0
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v3, "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    const/4 v4, 0x0

    .line 394
    .local v4, "specifiedAddressCount":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/SocketAddress;

    .line 395
    .local v6, "a":Ljava/net/SocketAddress;
    add-int/lit8 v4, v4, 0x1

    .line 397
    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 398
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v6    # "a":Ljava/net/SocketAddress;
    :cond_1
    goto :goto_0

    .line 402
    :cond_2
    if-eqz v4, :cond_5

    .line 406
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    .line 408
    :try_start_4
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind0(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 413
    nop

    .line 415
    :try_start_5
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 417
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    const/4 v0, 0x1

    goto :goto_1

    .line 411
    :catch_0
    move-exception v5

    .line 412
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/mina/core/RuntimeIoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unbind from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "deactivate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v6

    .line 409
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "deactivate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catch_1
    move-exception v5

    .line 410
    .local v5, "e":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "deactivate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v5

    .line 421
    .end local v3    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v4    # "specifiedAddressCount":I
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "deactivate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 422
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 424
    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    .line 427
    :cond_4
    return-void

    .line 403
    .restart local v3    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v4    # "specifiedAddressCount":I
    :cond_5
    :try_start_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "localAddresses is empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "deactivate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    throw v5

    .line 421
    .end local v3    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v4    # "specifiedAddressCount":I
    .restart local v0    # "deactivate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "deactivate":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .end local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :try_start_8
    throw v3

    .line 422
    .restart local v0    # "deactivate":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/AbstractIoAcceptor;
    .restart local p1    # "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 381
    .end local v0    # "deactivate":Z
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unbind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 348
    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    .line 355
    return-void

    .line 349
    .end local v0    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs unbind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "firstLocalAddress"    # Ljava/net/SocketAddress;
    .param p2, "otherLocalAddresses"    # [Ljava/net/SocketAddress;

    .line 362
    if-eqz p1, :cond_1

    .line 365
    if-eqz p2, :cond_0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    .line 373
    return-void

    .line 366
    .end local v0    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "otherLocalAddresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstLocalAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract unbind0(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
