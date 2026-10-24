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
    .locals 1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    sget p2, Landroidx/lifecycle/ReportFragment;->c:I

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ReportFragment;

    iget-object p2, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget-object p2, p2, Landroidx/lifecycle/a0;->i:Landroidx/appcompat/view/menu/i;

    iput-object p2, p1, Landroidx/lifecycle/ReportFragment;->b:Landroidx/appcompat/view/menu/i;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget v0, p1, Landroidx/lifecycle/a0;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/a0;->c:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/a0;->f:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/a0;->h:Landroidx/activity/c;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    invoke-static {p1, p2}, Landroidx/appcompat/widget/v0;->j(Landroid/app/Activity;Landroidx/lifecycle/y;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget v0, p1, Landroidx/lifecycle/a0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/a0;->b:I

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/lifecycle/a0;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/lifecycle/a0;->e:Z

    :cond_0
    return-void
.end method
