.class public final Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/ListenableFutureKt;->await(Lh0/a;Lh3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $cancellableContinuation:Lv3/f;

.field final synthetic $this_await$inlined:Lh0/a;


# direct methods
.method public constructor <init>(Lv3/f;Lh0/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;->$cancellableContinuation:Lv3/f;

    iput-object p2, p0, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;->$this_await$inlined:Lh0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;->$cancellableContinuation:Lv3/f;

    iget-object v1, p0, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;->$this_await$inlined:Lh0/a;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lh3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;->$cancellableContinuation:Lv3/f;

    invoke-interface {p0, v1}, Lv3/f;->f(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;->$cancellableContinuation:Lv3/f;

    invoke-static {v1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object v0

    invoke-interface {p0, v0}, Lh3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
