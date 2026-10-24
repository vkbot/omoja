.class Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
.super Ljava/lang/Object;
.source "AbstractPollingIoConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connector"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 418
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0

    .line 418
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;

    .line 418
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V

    return-void
.end method

.method private cancelKeys()I
    .locals 5

    .line 524
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    const/4 v0, 0x0

    .line 527
    .local v0, "nHandles":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    .line 529
    .local v1, "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    if-nez v1, :cond_1

    .line 530
    nop

    .line 544
    .end local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    if-lez v0, :cond_0

    .line 545
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    .line 548
    :cond_0
    return v0

    .line 533
    .restart local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 536
    .local v2, "handle":Ljava/lang/Object;, "TH;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v3, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 541
    goto :goto_2

    .line 540
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 537
    :catch_0
    move-exception v3

    .line 538
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 542
    .end local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    .end local v2    # "handle":Ljava/lang/Object;, "TH;"
    :goto_2
    goto :goto_0

    .line 540
    .restart local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    .restart local v2    # "handle":Ljava/lang/Object;, "TH;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 541
    throw v3
.end method

.method private processConnections(Ljava/util/Iterator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)I"
        }
    .end annotation

    .line 556
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    .local p1, "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    const/4 v0, 0x0

    .line 559
    .local v0, "nHandles":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 561
    .local v1, "handle":Ljava/lang/Object;, "TH;"
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 563
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v2

    .line 565
    .local v2, "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    if-nez v2, :cond_0

    .line 566
    goto :goto_0

    .line 569
    :cond_0
    const/4 v3, 0x0

    .line 571
    .local v3, "success":Z
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v4, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->finishConnect(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v4

    .line 573
    .local v4, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->getSessionInitializer()Lorg/apache/mina/core/session/IoSessionInitializer;

    move-result-object v6

    invoke-static {v5, v4, v2, v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 575
    invoke-virtual {v4}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    add-int/lit8 v0, v0, 0x1

    .line 578
    .end local v4    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_1
    const/4 v3, 0x1

    .line 582
    if-nez v3, :cond_2

    .line 584
    :goto_1
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 582
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 579
    :catch_0
    move-exception v4

    .line 580
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->setException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v4    # "e":Ljava/lang/Exception;
    if-nez v3, :cond_2

    .line 584
    goto :goto_1

    .line 587
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    .end local v2    # "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    .end local v3    # "success":Z
    :cond_2
    :goto_2
    goto :goto_0

    .line 582
    .restart local v1    # "handle":Ljava/lang/Object;, "TH;"
    .restart local v2    # "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    .restart local v3    # "success":Z
    :goto_3
    if-nez v3, :cond_3

    .line 584
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 586
    :cond_3
    throw v4

    .line 588
    .end local v1    # "handle":Ljava/lang/Object;, "TH;"
    .end local v2    # "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    .end local v3    # "success":Z
    :cond_4
    return v0
.end method

.method private processTimedOutSessions(Ljava/util/Iterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TH;>;)V"
        }
    .end annotation

    .line 592
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    .local p1, "handles":Ljava/util/Iterator;, "Ljava/util/Iterator<TH;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 594
    .local v0, "currentTime":J
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 596
    .local v2, "handle":Ljava/lang/Object;, "TH;"
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v3, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v3

    .line 598
    .local v3, "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 599
    new-instance v4, Ljava/net/ConnectException;

    const-string v5, "Connection timed out."

    invoke-direct {v4, v5}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->setException(Ljava/lang/Throwable;)V

    .line 600
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 602
    .end local v2    # "handle":Ljava/lang/Object;, "TH;"
    .end local v3    # "connectionRequest":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    :cond_0
    goto :goto_0

    .line 603
    :cond_1
    return-void
.end method

.method private registerNew()I
    .locals 6

    .line 500
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    const/4 v0, 0x0

    .line 502
    .local v0, "nHandles":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    .line 503
    .local v1, "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    if-nez v1, :cond_0

    .line 504
    nop

    .line 520
    .end local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    return v0

    .line 507
    .restart local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    :cond_0
    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 509
    .local v2, "handle":Ljava/lang/Object;, "TH;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v3, v2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    add-int/lit8 v0, v0, 0x1

    .line 518
    goto :goto_1

    .line 511
    :catch_0
    move-exception v3

    .line 512
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->setException(Ljava/lang/Throwable;)V

    .line 514
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v4, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    goto :goto_1

    .line 515
    :catch_1
    move-exception v4

    .line 516
    .local v4, "e2":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 519
    .end local v1    # "req":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    .end local v2    # "handle":Ljava/lang/Object;, "TH;"
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e2":Ljava/lang/Exception;
    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 424
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    nop

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "nHandles":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    const-wide/16 v1, 0x3e8

    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectTimeoutMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 433
    .local v3, "timeout":I
    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v4, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->select(I)I

    move-result v4

    .line 435
    .local v4, "selected":I
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->registerNew()I

    move-result v5

    add-int/2addr v0, v5

    .line 439
    if-nez v0, :cond_1

    .line 440
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 442
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 443
    nop

    .line 444
    goto :goto_2

    .line 447
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5, v6, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 448
    nop

    .line 449
    goto :goto_2

    .line 455
    :cond_1
    if-lez v4, :cond_2

    .line 456
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectedHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->processConnections(Ljava/util/Iterator;)I

    move-result v5

    sub-int/2addr v0, v5

    .line 459
    :cond_2
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->allHandles()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->processTimedOutSessions(Ljava/util/Iterator;)V

    .line 461
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->cancelKeys()I

    move-result v1
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    .end local v3    # "timeout":I
    .end local v4    # "selected":I
    goto :goto_1

    .line 466
    :catch_0
    move-exception v3

    .line 467
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 470
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    goto :goto_1

    .line 471
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 474
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 462
    :catch_2
    move-exception v1

    .line 464
    .local v1, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 477
    .end local v1    # "cse":Ljava/nio/channels/ClosedSelectorException;
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 478
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z

    .line 480
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 485
    :cond_4
    :try_start_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 486
    :try_start_4
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 487
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 489
    :cond_5
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "nHandles":I
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 493
    .restart local v0    # "nHandles":I
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 490
    :catch_3
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 493
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 494
    nop

    .line 495
    goto :goto_7

    .line 493
    :goto_4
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 494
    throw v1

    .line 484
    :catchall_2
    move-exception v1

    .line 485
    :try_start_7
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 486
    :try_start_8
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 487
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 489
    :cond_6
    monitor-exit v2

    goto :goto_5

    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v0    # "nHandles":I
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 493
    .restart local v0    # "nHandles":I
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    :catchall_4
    move-exception v1

    goto :goto_6

    .line 490
    :catch_4
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 493
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 494
    nop

    .line 495
    throw v1

    .line 493
    :goto_6
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 494
    throw v1

    .line 497
    :cond_7
    :goto_7
    return-void
.end method
