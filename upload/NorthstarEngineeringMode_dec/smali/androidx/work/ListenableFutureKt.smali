.class public final Landroidx/work/ListenableFutureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final await(Lh0/a;Lh3/d;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lh0/a<",
            "TR;>;",
            "Lh3/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

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

    new-instance p1, Landroidx/work/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {p1, v0, p0}, Landroidx/work/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lv3/f;Lh0/a;)V

    sget-object v1, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-interface {p0, p1, v1}, Lh0/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lv3/g;->m()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final await$$forInline(Lh0/a;Lh3/d;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

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

    new-instance p1, Landroidx/work/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {p1, v0, p0}, Landroidx/work/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lv3/f;Lh0/a;)V

    sget-object v1, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-interface {p0, p1, v1}, Lh0/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lv3/g;->m()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
