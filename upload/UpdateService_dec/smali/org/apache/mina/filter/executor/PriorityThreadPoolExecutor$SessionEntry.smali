.class Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
.super Ljava/lang/Object;
.source "PriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final seqNum:J

.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/Comparator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)V"
        }
    .end annotation

    .line 866
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/mina/core/session/IoSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    if-eqz p1, :cond_0

    .line 870
    invoke-static {}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$1500()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->seqNum:J

    .line 871
    iput-object p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->session:Lorg/apache/mina/core/session/IoSession;

    .line 872
    iput-object p2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->comparator:Ljava/util/Comparator;

    .line 873
    return-void

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 861
    check-cast p1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->compareTo(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;)I
    .locals 7
    .param p1, "other"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    .line 880
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 881
    return v0

    .line 884
    :cond_0
    iget-object v1, p1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->session:Lorg/apache/mina/core/session/IoSession;

    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->session:Lorg/apache/mina/core/session/IoSession;

    if-ne v1, v2, :cond_1

    .line 885
    return v0

    .line 889
    :cond_1
    invoke-static {}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$700()Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p0, v0, :cond_2

    .line 890
    return v1

    .line 892
    :cond_2
    invoke-static {}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->access$700()Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 893
    return v2

    .line 896
    :cond_3
    const/4 v0, 0x0

    .line 899
    .local v0, "res":I
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_4

    .line 900
    iget-object v4, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->session:Lorg/apache/mina/core/session/IoSession;

    iget-object v5, p1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 904
    :cond_4
    if-nez v0, :cond_6

    .line 905
    iget-wide v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->seqNum:J

    iget-wide v5, p1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->seqNum:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    move v0, v1

    .line 908
    :cond_6
    return v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 876
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method
