.class public Lorg/apache/mina/core/service/IoServiceStatistics;
.super Ljava/lang/Object;
.source "IoServiceStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/IoServiceStatistics$Config;
    }
.end annotation


# instance fields
.field private final config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

.field private largestReadBytesThroughput:D

.field private largestReadMessagesThroughput:D

.field private largestWrittenBytesThroughput:D

.field private largestWrittenMessagesThroughput:D

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private readBytes:J

.field private readBytesThroughput:D

.field private readMessages:J

.field private readMessagesThroughput:D

.field private scheduledWriteBytes:I

.field private scheduledWriteMessages:I

.field private final service:Lorg/apache/mina/core/service/IoService;

.field private final throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

.field private writtenBytes:J

.field private writtenBytesThroughput:D

.field private writtenMessages:J

.field private writtenMessagesThroughput:D


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/IoService;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    .line 94
    new-instance v0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-direct {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 102
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/IoService;

    .line 103
    return-void
.end method

.method private resetThroughput()V
    .locals 2

    .line 461
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoService;->getManagedSessionCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    .line 463
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    .line 464
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    .line 465
    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    .line 467
    :cond_0
    return-void
.end method


# virtual methods
.method public final decreaseScheduledWriteMessages()V
    .locals 2

    .line 708
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$800(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 715
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 718
    nop

    .line 719
    return-void

    .line 717
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 718
    throw v0

    .line 709
    :cond_1
    :goto_0
    return-void
.end method

.method public final getConfig()Lorg/apache/mina/core/service/IoServiceStatistics$Config;
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    return-object v0
.end method

.method public final getCumulativeManagedSessionCount()J
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/IoService;

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getCumulativeManagedSessionCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLargestManagedSessionCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/IoService;

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getLargestManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getLargestReadBytesThroughput()D
    .locals 3

    .line 323
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$300(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 330
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 330
    return-wide v0

    .line 332
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 333
    throw v0

    .line 324
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLargestReadMessagesThroughput()D
    .locals 3

    .line 359
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$500(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 366
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    return-wide v0

    .line 368
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 369
    throw v0

    .line 360
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLargestWrittenBytesThroughput()D
    .locals 3

    .line 341
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$400(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 348
    return-wide v0

    .line 350
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    throw v0

    .line 342
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLargestWrittenMessagesThroughput()D
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$600(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 384
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 384
    return-wide v0

    .line 386
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 387
    throw v0

    .line 378
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLastIoTime()J
    .locals 4

    .line 127
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    return-wide v1

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$100(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$200(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    return-wide v0

    .line 140
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    throw v0

    .line 132
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public final getLastReadTime()J
    .locals 3

    .line 148
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$100(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    return-wide v0

    .line 157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 158
    throw v0

    .line 149
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLastWriteTime()J
    .locals 3

    .line 165
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$200(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 172
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 172
    return-wide v0

    .line 174
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 175
    throw v0

    .line 166
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getReadBytes()J
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$300(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    return-wide v0

    .line 191
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    throw v0

    .line 183
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getReadBytesThroughput()D
    .locals 3

    .line 250
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$300(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 257
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 258
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 258
    return-wide v0

    .line 260
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 261
    throw v0

    .line 251
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getReadMessages()J
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$500(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 223
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 223
    return-wide v0

    .line 225
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    throw v0

    .line 217
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$500(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 294
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 294
    return-wide v0

    .line 296
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 297
    throw v0

    .line 287
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getScheduledWriteBytes()I
    .locals 2

    .line 638
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$700(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 645
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 645
    return v0

    .line 647
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 648
    throw v0

    .line 639
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 2

    .line 674
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$800(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 681
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 681
    return v0

    .line 683
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 684
    throw v0

    .line 675
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getThroughputCalculationInterval()I
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->getThroughputCalculationInterval()I

    move-result v0

    return v0
.end method

.method public final getThroughputCalculationIntervalInMillis()J
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWrittenBytes()J
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$400(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 206
    return-wide v0

    .line 208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    throw v0

    .line 200
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 3

    .line 268
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$400(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 276
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    return-wide v0

    .line 278
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 279
    throw v0

    .line 269
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getWrittenMessages()J
    .locals 3

    .line 233
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$600(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 240
    return-wide v0

    .line 242
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 243
    throw v0

    .line 234
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 3

    .line 304
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$600(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 311
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 312
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 312
    return-wide v0

    .line 314
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    throw v0

    .line 305
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final increaseReadBytes(JJ)V
    .locals 2
    .param p1, "nbBytesRead"    # J
    .param p3, "currentTime"    # J

    .line 536
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$300(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$100(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 547
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    .line 548
    iput-wide p3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 551
    nop

    .line 552
    return-void

    .line 550
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 551
    throw v0
.end method

.method public final increaseReadMessages(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 562
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$500(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$100(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 573
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    .line 574
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 577
    nop

    .line 578
    return-void

    .line 576
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 577
    throw v0
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 2
    .param p1, "increment"    # I

    .line 657
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$700(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 664
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 667
    nop

    .line 668
    return-void

    .line 666
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 667
    throw v0

    .line 658
    :cond_1
    :goto_0
    return-void
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 2

    .line 691
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$800(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 698
    :try_start_0
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 701
    nop

    .line 702
    return-void

    .line 700
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 701
    throw v0

    .line 692
    :cond_1
    :goto_0
    return-void
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 4
    .param p1, "nbBytesWritten"    # I
    .param p2, "currentTime"    # J

    .line 590
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$400(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$200(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 601
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    .line 602
    iput-wide p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 605
    nop

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 605
    throw v0
.end method

.method public final increaseWrittenMessages(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 616
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$600(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$200(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 627
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    .line 628
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 631
    nop

    .line 632
    return-void

    .line 630
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 631
    throw v0
.end method

.method protected final setLastReadTime(J)V
    .locals 2
    .param p1, "lastReadTime"    # J

    .line 423
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$100(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 430
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    nop

    .line 434
    return-void

    .line 432
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    throw v0

    .line 424
    :cond_1
    :goto_0
    return-void
.end method

.method protected setLastThroughputCalculationTime(J)V
    .locals 2
    .param p1, "lastThroughputCalculationTime"    # J

    .line 727
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->getThroughputCalculationInterval()I

    move-result v0

    if-nez v0, :cond_1

    .line 732
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 738
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 741
    nop

    .line 742
    return-void

    .line 740
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 741
    throw v0
.end method

.method protected final setLastWriteTime(J)V
    .locals 2
    .param p1, "lastWriteTime"    # J

    .line 443
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$200(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 450
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 453
    throw v0

    .line 444
    :cond_1
    :goto_0
    return-void
.end method

.method public final setThroughputCalculationInterval(I)V
    .locals 1
    .param p1, "throughputCalculationInterval"    # I

    .line 413
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->setThroughputCalculationInterval(I)V

    .line 414
    return-void
.end method

.method public updateThroughput(J)V
    .locals 11
    .param p1, "currentTime"    # J

    .line 475
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-static {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->config:Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v0

    .line 481
    .local v0, "minInterval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 482
    return-void

    .line 485
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 488
    :try_start_0
    iget-wide v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 490
    .local v2, "interval":I
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_2

    .line 522
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 491
    return-void

    .line 494
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    iget-wide v5, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    int-to-double v7, v2

    div-double/2addr v3, v7

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    .line 495
    iget-wide v7, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    iget-wide v9, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    sub-long/2addr v7, v9

    long-to-double v7, v7

    mul-double/2addr v7, v5

    int-to-double v9, v2

    div-double/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    .line 496
    iget-wide v7, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    iget-wide v9, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    sub-long/2addr v7, v9

    long-to-double v7, v7

    mul-double/2addr v7, v5

    int-to-double v9, v2

    div-double/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    .line 497
    iget-wide v7, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    iget-wide v9, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    sub-long/2addr v7, v9

    long-to-double v7, v7

    mul-double/2addr v7, v5

    int-to-double v5, v2

    div-double/2addr v7, v5

    iput-wide v7, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    .line 499
    iget-wide v5, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_3

    .line 500
    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    .line 503
    :cond_3
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    iget-wide v5, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 504
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    .line 507
    :cond_4
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    iget-wide v5, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_5

    .line 508
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    .line 511
    :cond_5
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    iget-wide v5, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_6

    .line 512
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    .line 515
    :cond_6
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:J

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    .line 516
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:J

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    .line 517
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:J

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    .line 518
    iget-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:J

    iput-wide v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    .line 520
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    .end local v2    # "interval":I
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 523
    throw v2
.end method
