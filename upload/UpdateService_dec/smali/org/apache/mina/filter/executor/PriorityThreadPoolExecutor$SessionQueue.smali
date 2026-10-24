.class Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
.super Ljava/lang/Object;
.source "PriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionQueue"
.end annotation


# instance fields
.field private processingCompleted:Z

.field private final tasksQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->this$0:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->tasksQueue:Ljava/util/Queue;

    .line 854
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->processingCompleted:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p2, "x1"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$1;

    .line 849
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;-><init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 849
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->tasksQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 849
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->processingCompleted:Z

    return v0
.end method

.method static synthetic access$302(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    .param p1, "x1"    # Z

    .line 849
    iput-boolean p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->processingCompleted:Z

    return p1
.end method
