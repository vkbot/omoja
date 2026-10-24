.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h0;
.implements Landroidx/savedstate/e;
.implements Landroidx/activity/i;
.implements Landroidx/activity/result/e;


# instance fields
.field public final b:Lb/a;

.field public final c:Landroidx/lifecycle/p;

.field public final d:Landroidx/savedstate/d;

.field public e:Landroidx/lifecycle/g0;

.field public final f:Landroidx/activity/h;

.field public final g:Landroidx/activity/c;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->b:Lb/a;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/lifecycle/p;

    new-instance v1, Landroidx/savedstate/d;

    invoke-direct {v1, p0}, Landroidx/savedstate/d;-><init>(Landroidx/savedstate/e;)V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    new-instance v2, Landroidx/activity/h;

    new-instance v3, Landroidx/activity/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Landroidx/activity/h;-><init>(Landroidx/activity/b;)V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/h;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Landroidx/activity/c;

    invoke-direct {v2}, Landroidx/activity/c;-><init>()V

    iput-object v2, p0, Landroidx/activity/ComponentActivity;->g:Landroidx/activity/c;

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    new-instance v2, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    new-instance v2, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    new-instance v0, Landroidx/activity/d;

    invoke-direct {v0, p0}, Landroidx/activity/d;-><init>(Landroidx/activity/ComponentActivity;)V

    iget-object v1, v1, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    const-string v2, "android:support:activity-result"

    invoke-virtual {v1, v2, v0}, Landroidx/savedstate/c;->b(Ljava/lang/String;Landroidx/savedstate/b;)V

    new-instance v0, Landroidx/activity/e;

    invoke-direct {v0, p0}, Landroidx/activity/e;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->i(Lb/b;)V

    return-void
.end method

.method public static synthetic h(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/savedstate/c;
    .locals 0

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    iget-object p0, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    return-object p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->j()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()Landroidx/lifecycle/g0;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/lifecycle/g0;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/f;->a:Landroidx/lifecycle/g0;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/lifecycle/g0;

    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/lifecycle/g0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/g0;

    invoke-direct {v0}, Landroidx/lifecycle/g0;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/lifecycle/g0;

    :cond_1
    iget-object p0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/lifecycle/g0;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/i;
    .locals 0

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/lifecycle/p;

    return-object p0
.end method

.method public final i(Lb/b;)V
    .locals 1

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->b:Lb/a;

    iget-object v0, p0, Lb/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lb/b;->a()V

    :cond_0
    iget-object p0, p0, Lb/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/lifecycle/runtime/R$id;->view_tree_lifecycle_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->g:Landroidx/activity/c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/c;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/h;

    invoke-virtual {p0}, Landroidx/activity/h;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    invoke-virtual {v0, p1}, Landroidx/savedstate/d;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->b:Lb/a;

    iput-object p0, v0, Lb/a;->b:Landroid/content/Context;

    iget-object v0, v0, Lb/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b;

    invoke-interface {v1}, Lb/b;->a()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->g:Landroidx/activity/c;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2, v0}, Landroidx/activity/c;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/lifecycle/g0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/f;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/activity/f;->a:Landroidx/lifecycle/g0;

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Landroidx/activity/f;

    invoke-direct {p0}, Landroidx/activity/f;-><init>()V

    iput-object v0, p0, Landroidx/activity/f;->a:Landroidx/lifecycle/g0;

    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Landroidx/lifecycle/p;

    instance-of v1, v0, Landroidx/lifecycle/p;

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    const-string v2, "setCurrentState"

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->f(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    invoke-virtual {p0, p1}, Landroidx/savedstate/d;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 2

    const-string v0, "reportFullyDrawn() for "

    :try_start_0
    invoke-static {}, Ly1/l;->J0()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->j()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->j()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->j()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
