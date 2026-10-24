.class public Lcom/mega/engineeringmode/utils/RetryUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/utils/RetryUtils$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/mega/engineeringmode/utils/RetryUtils$b;

.field public c:J

.field public d:I

.field public e:Landroid/os/Handler;

.field public f:Lcom/mega/engineeringmode/utils/RetryUtils$a;


# virtual methods
.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p1, p0, Lcom/mega/engineeringmode/utils/RetryUtils;->f:Lcom/mega/engineeringmode/utils/RetryUtils$a;

    iget-object v0, p0, Lcom/mega/engineeringmode/utils/RetryUtils;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/RetryUtils;->b:Lcom/mega/engineeringmode/utils/RetryUtils$b;

    return-void
.end method
