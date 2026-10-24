.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# instance fields
.field public final i:Landroidx/fragment/app/n;

.field public final j:Landroidx/lifecycle/p;

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/w;

    invoke-direct {v0, p0}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v1, Landroidx/fragment/app/n;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->m:Z

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Landroidx/savedstate/d;

    iget-object v0, v0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    new-instance v1, Landroidx/fragment/app/u;

    invoke-direct {v1, p0}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/c;->b(Ljava/lang/String;Landroidx/savedstate/b;)V

    new-instance v0, Landroidx/fragment/app/v;

    invoke-direct {v0, p0}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->i(La/b;)V

    return-void
.end method

.method public static k(Landroidx/fragment/app/k0;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 6

    iget-object p0, p0, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/q0;

    invoke-virtual {p0}, Landroidx/fragment/app/q0;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/t;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/t;->t:Landroidx/fragment/app/w;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/w;->B:Landroidx/fragment/app/FragmentActivity;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/k0;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/FragmentActivity;->k(Landroidx/fragment/app/k0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/t;->O:Landroidx/fragment/app/d1;

    const-string v3, "setCurrentState"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/d1;->c()V

    iget-object v2, v2, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    iget-object v2, v2, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v1, Landroidx/fragment/app/t;->O:Landroidx/fragment/app/d1;

    iget-object v0, v0, Landroidx/fragment/app/d1;->c:Landroidx/lifecycle/p;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/p;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->f(Landroidx/lifecycle/Lifecycle$State;)V

    move v0, v4

    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/t;->N:Landroidx/lifecycle/p;

    iget-object v2, v2, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/t;->N:Landroidx/lifecycle/p;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/p;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->f(Landroidx/lifecycle/Lifecycle$State;)V

    move v0, v4

    goto :goto_0

    :cond_5
    return v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->k:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->l:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->m:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Landroidx/lifecycle/h0;->d()Landroidx/lifecycle/g0;

    move-result-object v1

    const-class v2, Lp0/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/f0;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lp0/a;

    invoke-direct {v4}, Lp0/a;-><init>()V

    iget-object v1, v1, Landroidx/lifecycle/g0;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/f0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/f0;->a()V

    :cond_1
    :goto_0
    check-cast v4, Lp0/a;

    iget-object v1, v4, Lp0/a;->b:Lj/k;

    iget v2, v1, Lj/k;->d:I

    if-lez v2, :cond_4

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loaders:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v1, Lj/k;->d:I

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lj/k;->c:[Ljava/lang/Object;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, v1, Lj/k;->b:[I

    aget p1, p1, p2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/k0;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k0;->h(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object p1, p1, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/w;

    iget-object p1, p1, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/k0;->A:Z

    iput-boolean v0, p1, Landroidx/fragment/app/k0;->B:Z

    iget-object v1, p1, Landroidx/fragment/app/k0;->H:Landroidx/fragment/app/m0;

    iput-boolean v0, v1, Landroidx/fragment/app/m0;->g:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/k0;->s(I)V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object p2, p2, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/w;

    iget-object p2, p2, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {p2}, Landroidx/fragment/app/k0;->j()Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/k0;->f:Landroidx/fragment/app/c0;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/c0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    .line 7
    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/k0;->f:Landroidx/fragment/app/c0;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/c0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/k0;->k()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/k0;->l()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p2, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/w;

    iget-object p1, p1, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {p1}, Landroidx/fragment/app/k0;->i()Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p2, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/w;

    iget-object p1, p1, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {p1}, Landroidx/fragment/app/k0;->n()Z

    move-result p1

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k0;->m(Z)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/k0;->o()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->l:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->s(I)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k0;->q(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/k0;->A:Z

    iput-boolean v1, v0, Landroidx/fragment/app/k0;->B:Z

    iget-object v2, v0, Landroidx/fragment/app/k0;->H:Landroidx/fragment/app/m0;

    iput-boolean v1, v2, Landroidx/fragment/app/m0;->g:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->s(I)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object p2, p2, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/w;

    iget-object p2, p2, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {p2}, Landroidx/fragment/app/k0;->r()Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->l:Z

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->x(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->m:Z

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->k:Z

    const/4 v3, 0x1

    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    if-nez v2, :cond_0

    iput-boolean v3, p0, Landroidx/fragment/app/FragmentActivity;->k:Z

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/w;

    iget-object v2, v2, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    iput-boolean v1, v2, Landroidx/fragment/app/k0;->A:Z

    iput-boolean v1, v2, Landroidx/fragment/app/k0;->B:Z

    iget-object v4, v2, Landroidx/fragment/app/k0;->H:Landroidx/fragment/app/m0;

    iput-boolean v1, v4, Landroidx/fragment/app/m0;->g:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/k0;->s(I)V

    :cond_0
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/w;

    iget-object v2, v2, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/k0;->x(Z)Z

    iget-object v2, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    check-cast v0, Landroidx/fragment/app/w;

    iget-object v0, v0, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    iput-boolean v1, v0, Landroidx/fragment/app/k0;->A:Z

    iput-boolean v1, v0, Landroidx/fragment/app/k0;->B:Z

    iget-object v2, v0, Landroidx/fragment/app/k0;->H:Landroidx/fragment/app/m0;

    iput-boolean v1, v2, Landroidx/fragment/app/m0;->g:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/k0;->s(I)V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->f()V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->m:Z

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->i:Landroidx/fragment/app/n;

    iget-object v2, v1, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/w;

    iget-object v2, v2, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v2, v3}, Landroidx/fragment/app/FragmentActivity;->k(Landroidx/fragment/app/k0;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/n;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/w;

    iget-object v1, v1, Landroidx/fragment/app/w;->A:Landroidx/fragment/app/l0;

    iput-boolean v0, v1, Landroidx/fragment/app/k0;->B:Z

    iget-object v2, v1, Landroidx/fragment/app/k0;->H:Landroidx/fragment/app/m0;

    iput-boolean v0, v2, Landroidx/fragment/app/m0;->g:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k0;->s(I)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->j:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
