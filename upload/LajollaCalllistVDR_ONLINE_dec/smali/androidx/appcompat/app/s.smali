.class public final Landroidx/appcompat/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a;


# instance fields
.field public final a:Le/a;

.field public final synthetic b:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a0;Le/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/s;->a:Le/a;

    return-void
.end method


# virtual methods
.method public final a(Le/b;Landroidx/appcompat/view/menu/p;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/s;->a:Le/a;

    invoke-interface {v0, p1, p2}, Le/a;->a(Le/b;Landroidx/appcompat/view/menu/p;)Z

    move-result p1

    return p1
.end method

.method public final b(Le/b;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/s;->a:Le/a;

    invoke-interface {v0, p1}, Le/a;->b(Le/b;)V

    iget-object p1, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    iget-object v0, p1, Landroidx/appcompat/app/a0;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/a0;->f:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/a0;->r:Landroidx/appcompat/app/p;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg0/v0;->b()V

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/a0;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lg0/s0;->a(Landroid/view/View;)Lg0/v0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg0/v0;->a(F)V

    iput-object v0, p1, Landroidx/appcompat/app/a0;->s:Lg0/v0;

    new-instance v1, Landroidx/appcompat/app/r;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/app/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg0/v0;->d(Lg0/w0;)V

    :cond_2
    iget-object v0, p1, Landroidx/appcompat/app/a0;->h:Landroidx/appcompat/app/n;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/appcompat/app/n;->f()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/a0;->o:Le/b;

    iget-object p1, p1, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/e0;->c(Landroid/view/View;)V

    return-void
.end method

.method public final c(Le/b;Landroidx/appcompat/view/menu/p;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->v:Landroid/view/ViewGroup;

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg0/e0;->c(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/s;->a:Le/a;

    invoke-interface {v0, p1, p2}, Le/a;->c(Le/b;Landroidx/appcompat/view/menu/p;)Z

    move-result p1

    return p1
.end method

.method public final d(Le/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/s;->a:Le/a;

    invoke-interface {v0, p1, p2}, Le/a;->d(Le/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
