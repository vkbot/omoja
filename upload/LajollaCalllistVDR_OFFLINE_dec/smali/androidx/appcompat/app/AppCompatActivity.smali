.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/n;


# instance fields
.field public m:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Landroidx/savedstate/d;

    iget-object v0, v0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    new-instance v1, Landroidx/appcompat/app/l;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/c;->b(Ljava/lang/String;Landroidx/savedstate/b;)V

    new-instance v0, Landroidx/appcompat/app/m;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/m;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->i(Lb/b;)V

    return-void
.end method

.method private j()V
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


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->z()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->z()V

    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    iget-object p0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget v0, p0, Landroidx/appcompat/app/a0;->T:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/app/a0;->T:I

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Landroidx/appcompat/app/a0;->U:Landroidx/appcompat/app/p;

    invoke-static {v0, v2}, Lh0/z;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->S:Z

    :cond_0
    return-void
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Lf/k;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    new-instance v0, Lf/k;

    iget-object v1, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/k0;->b()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lf/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->i:Lf/k;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/a0;->i:Lf/k;

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Landroidx/appcompat/widget/b3;->a:I

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget v0, p0, Landroidx/appcompat/app/a0;->T:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/app/a0;->T:I

    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    iget-object v2, p0, Landroidx/appcompat/app/a0;->U:Landroidx/appcompat/app/p;

    invoke-static {v0, v2}, Lh0/z;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->S:Z

    :cond_0
    return-void
.end method

.method public final l()Landroidx/appcompat/app/o;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->m:Landroidx/appcompat/app/a0;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/o;->a:Lk/c;

    new-instance v0, Landroidx/appcompat/app/a0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Landroidx/appcompat/app/a0;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/n;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->m:Landroidx/appcompat/app/a0;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity;->m:Landroidx/appcompat/app/a0;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->c()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->e()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a0;

    invoke-virtual {p1}, Landroidx/appcompat/app/a0;->z()V

    iget-object p1, p1, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/appcompat/app/k0;->e:Landroidx/appcompat/widget/z0;

    check-cast p1, Landroidx/appcompat/widget/a3;

    iget p1, p1, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    invoke-static {p0}, Ly1/l;->s0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ly1/l;->s0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, Ly1/l;->s0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p0, v1}, Ly1/l;->t0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Ly1/l;->t0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "TaskStackBuilder"

    const-string p2, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Lx/f;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lx/a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    sget p1, Lv/a;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    return v0

    :cond_8
    return v2
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    return-void
.end method

.method public final onPostResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/k0;->t:Z

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->k(Z)Z

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->z()V

    iget-object p0, p0, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/k0;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/k0;->t:Z

    iget-object p0, p0, Landroidx/appcompat/app/k0;->s:Lf/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf/m;->a()V

    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a0;

    invoke-virtual {v0}, Landroidx/appcompat/app/a0;->z()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->h(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    .line 10
    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    .line 11
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->j()V

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    .line 19
    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    .line 20
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->l()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    iput p1, p0, Landroidx/appcompat/app/a0;->N:I

    return-void
.end method
