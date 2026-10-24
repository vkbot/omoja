.class public final Lorg/apache/mina/core/service/IoServiceStatistics$Config;
.super Ljava/lang/Object;
.source "IoServiceStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/IoServiceStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private volatile isLastReadTimeCalcEnabled:Z

.field private volatile isLastWriteTimeCalcEnabled:Z

.field private volatile isReadBytesCalcEnabled:Z

.field private volatile isReadMessagesCalcEnabled:Z

.field private volatile isScheduledWriteBytesCalcEnabled:Z

.field private volatile isScheduledWriteMessagesCalcEnabled:Z

.field private volatile isStatisticsCalcEnabled:Z

.field private volatile isWrittenBytesCalcEnabled:Z

.field private volatile isWrittenMessagesCalcEnabled:Z

.field private final throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadBytesCalcEnabled:Z

    .line 757
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenBytesCalcEnabled:Z

    .line 758
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadMessagesCalcEnabled:Z

    .line 759
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenMessagesCalcEnabled:Z

    .line 760
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastReadTimeCalcEnabled:Z

    .line 761
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastWriteTimeCalcEnabled:Z

    .line 762
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteBytesCalcEnabled:Z

    .line 763
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteMessagesCalcEnabled:Z

    .line 766
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 768
    iput-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isStatisticsCalcEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isStatisticsCalcEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastReadTimeCalcEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastWriteTimeCalcEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadBytesCalcEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenBytesCalcEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadMessagesCalcEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenMessagesCalcEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteBytesCalcEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/service/IoServiceStatistics$Config;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/service/IoServiceStatistics$Config;

    .line 755
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteMessagesCalcEnabled:Z

    return v0
.end method


# virtual methods
.method public getThroughputCalculationInterval()I
    .locals 1

    .line 920
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getThroughputCalculationIntervalInMillis()J
    .locals 4

    .line 928
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public isLastReadTimeCalcEnabled()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastReadTimeCalcEnabled:Z

    return v0
.end method

.method public isLastWriteTimeCalcEnabled()Z
    .locals 1

    .line 871
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastWriteTimeCalcEnabled:Z

    return v0
.end method

.method public isReadBytesCalcEnabled()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadBytesCalcEnabled:Z

    return v0
.end method

.method public isReadMessagesCalcEnabled()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadMessagesCalcEnabled:Z

    return v0
.end method

.method public isScheduledWriteBytesCalcEnabled()Z
    .locals 1

    .line 887
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteBytesCalcEnabled:Z

    return v0
.end method

.method public isScheduledWriteMessagesCalcEnabled()Z
    .locals 1

    .line 903
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteMessagesCalcEnabled:Z

    return v0
.end method

.method public isStatisticsCalcEnabled()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isStatisticsCalcEnabled:Z

    return v0
.end method

.method public isWrittenBytesCalcEnabled()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenBytesCalcEnabled:Z

    return v0
.end method

.method public isWrittenMessagesCalcEnabled()Z
    .locals 1

    .line 838
    iget-boolean v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenMessagesCalcEnabled:Z

    return v0
.end method

.method public setLastReadTimeCalcEnabled(Z)V
    .locals 0
    .param p1, "lastReadTimeCalcEnabled"    # Z

    .line 863
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastReadTimeCalcEnabled:Z

    .line 864
    return-void
.end method

.method public setLastWriteTimeCalcEnabled(Z)V
    .locals 0
    .param p1, "lastWriteTimeCalcEnabled"    # Z

    .line 880
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isLastWriteTimeCalcEnabled:Z

    .line 881
    return-void
.end method

.method public setReadBytesCalcEnabled(Z)V
    .locals 0
    .param p1, "readBytesCalcEnabled"    # Z

    .line 799
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadBytesCalcEnabled:Z

    .line 800
    return-void
.end method

.method public setReadMessagesCalcEnabled(Z)V
    .locals 0
    .param p1, "readMessagesCalcEnabled"    # Z

    .line 831
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isReadMessagesCalcEnabled:Z

    .line 832
    return-void
.end method

.method public setScheduledWriteBytesCalcEnabled(Z)V
    .locals 0
    .param p1, "scheduledWriteBytesCalcEnabled"    # Z

    .line 896
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteBytesCalcEnabled:Z

    .line 897
    return-void
.end method

.method public setScheduledWriteMessagesCalcEnabled(Z)V
    .locals 0
    .param p1, "scheduledWriteMessagesCalcEnabled"    # Z

    .line 912
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isScheduledWriteMessagesCalcEnabled:Z

    .line 913
    return-void
.end method

.method public setStatisticsCalcEnabled(Z)V
    .locals 0
    .param p1, "statisticsCalcEnabled"    # Z

    .line 783
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isStatisticsCalcEnabled:Z

    .line 784
    return-void
.end method

.method public setThroughputCalculationInterval(I)V
    .locals 3
    .param p1, "throughputCalculationInterval"    # I

    .line 938
    if-ltz p1, :cond_0

    .line 942
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->throughputCalculationInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 943
    return-void

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throughputCalculationInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrittenBytesCalcEnabled(Z)V
    .locals 0
    .param p1, "writtenBytesCalcEnabled"    # Z

    .line 815
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenBytesCalcEnabled:Z

    .line 816
    return-void
.end method

.method public setWrittenMessagesCalcEnabled(Z)V
    .locals 0
    .param p1, "writtenMessagesCalcEnabled"    # Z

    .line 847
    iput-boolean p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics$Config;->isWrittenMessagesCalcEnabled:Z

    .line 848
    return-void
.end method
