.class public abstract Landroidx/appcompat/app/c0;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/n;


# instance fields
.field public a:Landroidx/appcompat/app/a0;

.field public final b:Landroidx/appcompat/app/b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$attr;->dialogTheme:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroidx/appcompat/app/b0;

    move-object v2, p0

    check-cast v2, Landroidx/appcompat/app/k;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/b0;-><init>(Landroidx/appcompat/app/k;)V

    iput-object v1, p0, Landroidx/appcompat/app/c0;->b:Landroidx/appcompat/app/b0;

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$attr;->dialogTheme:I

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, p0

    check-cast p1, Landroidx/appcompat/app/a0;

    iput p2, p1, Landroidx/appcompat/app/a0;->N:I

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/app/o;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/c0;->a:Landroidx/appcompat/app/a0;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/app/o;->a:Lk/c;

    new-instance v0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Landroidx/appcompat/app/a0;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/n;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/c0;->a:Landroidx/appcompat/app/a0;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/c0;->a:Landroidx/appcompat/app/a0;

    return-object p0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

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

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method final d(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->e()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/c0;->b:Landroidx/appcompat/app/b0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/b0;->a(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    iget-object p0, p0, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->b()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->d()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

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

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->h(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    .line 8
    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    .line 9
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a0;

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->t()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/app/t;

    .line 16
    iget-object p0, p0, Lf/n;->a:Landroid/view/Window$Callback;

    .line 17
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/o;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/c0;->a()Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->i(Ljava/lang/CharSequence;)V

    return-void
.end method
