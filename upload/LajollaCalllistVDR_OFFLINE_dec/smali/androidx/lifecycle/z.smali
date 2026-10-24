.class public final Landroidx/lifecycle/z;
.super Landroidx/lifecycle/e;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/a0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget p1, p0, Landroidx/lifecycle/a0;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/a0;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/a0;->e:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/lifecycle/a0;->g:Landroidx/activity/b;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    new-instance p2, Landroidx/lifecycle/y;

    invoke-direct {p2, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/z;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget p1, p0, Landroidx/lifecycle/a0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/a0;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/a0;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/a0;->d:Z

    :cond_0
    return-void
.end method
