.class public final Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final await(Landroidx/work/Operation;Lh3/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Operation;",
            "Lh3/d<",
            "-",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lh0/a;

    move-result-object p0

    const-string/jumbo v0, "result"

    invoke-static {p0, v0}, Lo3/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    throw p0

    :cond_1
    new-instance v0, Lv3/g;

    invoke-static {p1}, Lb1/a;->n(Lh3/d;)Lh3/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lv3/g;-><init>(Lh3/d;)V

    new-instance p1, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {p1, v0, p0}, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lv3/f;Lh0/a;)V

    sget-object v1, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-interface {p0, p1, v1}, Lh0/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lv3/g;->m()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final await$$forInline(Landroidx/work/Operation;Lh3/d;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lh0/a;

    move-result-object p0

    const-string/jumbo v0, "result"

    invoke-static {p0, v0}, Lo3/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    throw p0

    :cond_1
    new-instance v0, Lv3/g;

    invoke-static {p1}, Lb1/a;->n(Lh3/d;)Lh3/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lv3/g;-><init>(Lh3/d;)V

    new-instance p1, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {p1, v0, p0}, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lv3/f;Lh0/a;)V

    sget-object v1, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-interface {p0, p1, v1}, Lh0/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lv3/g;->m()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
