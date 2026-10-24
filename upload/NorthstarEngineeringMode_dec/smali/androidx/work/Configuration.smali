.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Provider;,
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mLoggingLevel:I

.field private final mMaxJobSchedulerId:I

.field private final mMaxSchedulerLimit:I

.field private final mMinJobSchedulerId:I

.field private final mTaskExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mWorkerFactory:Landroidx/work/WorkerFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1
    .param p1    # Landroidx/work/Configuration$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    :goto_1
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/work/WorkerFactory;->getDefaultWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    goto :goto_2

    :cond_2
    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    :goto_2
    iget v0, p1, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    iput v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    iget v0, p1, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    iget v0, p1, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    iget p1, p1, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    iput p1, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return-void
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getMaxJobSchedulerId()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    return p0
.end method

.method public getMaxSchedulerLimit()I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x14L
        to = 0x32L
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget p0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return p0
.end method

.method public getMinJobSchedulerId()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    return p0
.end method

.method public getMinimumLoggingLevel()I
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget p0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    return p0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    return-object p0
.end method
