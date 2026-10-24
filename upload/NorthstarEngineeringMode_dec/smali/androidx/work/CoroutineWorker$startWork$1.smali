.class final Landroidx/work/CoroutineWorker$startWork$1;
.super Lj3/g;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/CoroutineWorker;->startWork()Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj3/g;",
        "Ln3/p<",
        "Lv3/z;",
        "Lh3/d<",
        "-",
        "Lf3/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lj3/e;
    c = "androidx.work.CoroutineWorker$startWork$1"
    f = "CoroutineWorker.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lv3/z;

.field final synthetic this$0:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Landroidx/work/CoroutineWorker;Lh3/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/CoroutineWorker$startWork$1;->this$0:Landroidx/work/CoroutineWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lj3/g;-><init>(ILh3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lh3/d;)Lh3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh3/d<",
            "*>;)",
            "Lh3/d<",
            "Lf3/g;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/CoroutineWorker$startWork$1;

    iget-object p0, p0, Landroidx/work/CoroutineWorker$startWork$1;->this$0:Landroidx/work/CoroutineWorker;

    invoke-direct {v0, p0, p2}, Landroidx/work/CoroutineWorker$startWork$1;-><init>(Landroidx/work/CoroutineWorker;Lh3/d;)V

    check-cast p1, Lv3/z;

    iput-object p1, v0, Landroidx/work/CoroutineWorker$startWork$1;->p$:Lv3/z;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh3/d;

    invoke-virtual {p0, p1, p2}, Landroidx/work/CoroutineWorker$startWork$1;->create(Ljava/lang/Object;Lh3/d;)Lh3/d;

    move-result-object p0

    check-cast p0, Landroidx/work/CoroutineWorker$startWork$1;

    sget-object p1, Lf3/g;->a:Lf3/g;

    invoke-virtual {p0, p1}, Landroidx/work/CoroutineWorker$startWork$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Li3/a;->c:Li3/a;

    iget v1, p0, Landroidx/work/CoroutineWorker$startWork$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/work/CoroutineWorker$startWork$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lv3/z;

    :try_start_0
    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/CoroutineWorker$startWork$1;->p$:Lv3/z;

    :try_start_1
    iget-object v1, p0, Landroidx/work/CoroutineWorker$startWork$1;->this$0:Landroidx/work/CoroutineWorker;

    iput-object p1, p0, Landroidx/work/CoroutineWorker$startWork$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/work/CoroutineWorker$startWork$1;->label:I

    invoke-virtual {v1, p0}, Landroidx/work/CoroutineWorker;->doWork(Lh3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/work/ListenableWorker$Result;

    iget-object v0, p0, Landroidx/work/CoroutineWorker$startWork$1;->this$0:Landroidx/work/CoroutineWorker;

    invoke-virtual {v0}, Landroidx/work/CoroutineWorker;->getFuture$work_runtime_ktx_release()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Landroidx/work/CoroutineWorker$startWork$1;->this$0:Landroidx/work/CoroutineWorker;

    invoke-virtual {p0}, Landroidx/work/CoroutineWorker;->getFuture$work_runtime_ktx_release()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_2
    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method
