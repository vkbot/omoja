.class Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "AbstractPollingIoAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 439
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V
    .locals 0

    .line 439
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;

    .line 439
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)V

    return-void
.end method

.method private processHandles(Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    .local p1, "handles":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 550
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v1

    .line 552
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-nez v1, :cond_0

    .line 553
    goto :goto_0

    .line 556
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 559
    invoke-virtual {v1}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    .line 560
    .end local v0    # "handle":Ljava/lang/Object;, "TH;"
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    goto :goto_0

    .line 561
    :cond_1
    return-void
.end method

.method private registerHandles()I
    .locals 8

    .line 576
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 578
    .local v0, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v0, :cond_0

    .line 579
    const/4 v1, 0x0

    return v1

    .line 585
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 586
    .local v1, "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;TH;>;"
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    .line 590
    .local v2, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    .line 591
    .local v4, "a":Ljava/net/SocketAddress;
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v5

    .line 592
    .local v5, "handle":Ljava/lang/Object;, "TH;"
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v6, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    nop

    .end local v4    # "a":Ljava/net/SocketAddress;
    .end local v5    # "handle":Ljava/lang/Object;, "TH;"
    goto :goto_1

    .line 597
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 600
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 602
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 609
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 611
    .restart local v5    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v6, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    goto :goto_3

    .line 612
    :catch_0
    move-exception v6

    .line 613
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 615
    .end local v5    # "handle":Ljava/lang/Object;, "TH;"
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_2

    .line 619
    :cond_2
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 602
    :cond_3
    return v3

    .line 608
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 603
    :catch_1
    move-exception v3

    .line 605
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 609
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 611
    .local v4, "handle":Ljava/lang/Object;, "TH;"
    :try_start_3
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 614
    goto :goto_5

    .line 612
    :catch_2
    move-exception v5

    .line 613
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 615
    .end local v4    # "handle":Ljava/lang/Object;, "TH;"
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_4

    .line 619
    :cond_4
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 622
    .end local v0    # "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    .end local v1    # "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;TH;>;"
    .end local v2    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_5
    goto/16 :goto_0

    .line 608
    .restart local v0    # "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    .restart local v1    # "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;TH;>;"
    .restart local v2    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :goto_6
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 609
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 611
    .local v5, "handle":Ljava/lang/Object;, "TH;"
    :try_start_4
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v6, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 614
    goto :goto_8

    .line 612
    :catch_3
    move-exception v6

    .line 613
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 615
    .end local v5    # "handle":Ljava/lang/Object;, "TH;"
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8
    goto :goto_7

    .line 619
    :cond_6
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 621
    :cond_7
    throw v3
.end method

.method private unregisterHandles()I
    .locals 7

    .line 632
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    const/4 v0, 0x0

    .line 634
    .local v0, "cancelledHandles":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 635
    .local v1, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v1, :cond_0

    .line 636
    nop

    .line 660
    .end local v1    # "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    return v0

    .line 640
    .restart local v1    # "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 641
    .local v3, "a":Ljava/net/SocketAddress;
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 643
    .local v4, "handle":Ljava/lang/Object;, "TH;"
    if-nez v4, :cond_1

    .line 644
    goto :goto_1

    .line 648
    :cond_1
    :try_start_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V

    .line 649
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 653
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 650
    :catch_0
    move-exception v5

    .line 651
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 654
    nop

    .line 655
    .end local v3    # "a":Ljava/net/SocketAddress;
    .end local v4    # "handle":Ljava/lang/Object;, "TH;"
    goto :goto_1

    .line 653
    .restart local v3    # "a":Ljava/net/SocketAddress;
    .restart local v4    # "handle":Ljava/lang/Object;, "TH;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 654
    throw v2

    .line 657
    .end local v3    # "a":Ljava/net/SocketAddress;
    .end local v4    # "handle":Ljava/lang/Object;, "TH;"
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 658
    .end local v1    # "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 445
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    nop

    .line 447
    const/4 v0, 0x0

    .line 450
    .local v0, "nHandles":I
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 452
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->registerHandles()I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->select()I

    move-result v1

    .line 471
    .local v1, "selected":I
    if-nez v0, :cond_1

    .line 472
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 474
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    nop

    .line 476
    goto :goto_2

    .line 479
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v3, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    nop

    .line 481
    goto :goto_2

    .line 487
    :cond_1
    if-lez v1, :cond_2

    .line 490
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectedHandles()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->processHandles(Ljava/util/Iterator;)V

    .line 494
    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->unregisterHandles()I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v2

    .end local v1    # "selected":I
    goto :goto_1

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 503
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    goto :goto_1

    .line 504
    :catch_1
    move-exception v2

    .line 505
    .local v2, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 507
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0

    .line 495
    :catch_2
    move-exception v1

    .line 497
    .local v1, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 511
    .end local v1    # "cse":Ljava/nio/channels/ClosedSelectorException;
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 512
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z

    .line 514
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 515
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 519
    :cond_4
    :try_start_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    :try_start_4
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 523
    :cond_5
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "nHandles":I
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 527
    .restart local v0    # "nHandles":I
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 524
    :catch_3
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 527
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 528
    nop

    .line 529
    goto :goto_7

    .line 527
    :goto_4
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 528
    throw v1

    .line 518
    :catchall_2
    move-exception v1

    .line 519
    :try_start_7
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 520
    :try_start_8
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isDisposing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 521
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V

    .line 523
    :cond_6
    monitor-exit v2

    goto :goto_5

    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v0    # "nHandles":I
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 527
    .restart local v0    # "nHandles":I
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    :catchall_4
    move-exception v1

    goto :goto_6

    .line 524
    :catch_4
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 527
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 528
    nop

    .line 529
    throw v1

    .line 527
    :goto_6
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 528
    throw v1

    .line 531
    :cond_7
    :goto_7
    return-void
.end method
