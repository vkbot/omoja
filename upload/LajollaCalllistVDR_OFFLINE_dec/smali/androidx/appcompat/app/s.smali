.class public final Landroidx/appcompat/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/b;


# instance fields
.field public final a:Lf/b;

.field public final synthetic b:Landroidx/appcompat/app/a0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/a0;Lf/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/s;->a:Lf/b;

    return-void
.end method


# virtual methods
.method public final a(Lf/c;Landroidx/appcompat/view/menu/p;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    iget-object v0, v0, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/d0;->c(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/appcompat/app/s;->a:Lf/b;

    invoke-interface {p0, p1, p2}, Lf/b;->a(Lf/c;Landroidx/appcompat/view/menu/p;)Z

    move-result p0

    return p0
.end method

.method public final b(Lf/c;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/s;->a:Lf/b;

    invoke-interface {p0, p1, p2}, Lf/b;->b(Lf/c;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final c(Lf/c;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/s;->a:Lf/b;

    invoke-interface {v0, p1}, Lf/b;->c(Lf/c;)V

    iget-object p1, p0, Landroidx/appcompat/app/s;->b:Landroidx/appcompat/app/a0;

    iget-object v0, p1, Landroidx/appcompat/app/a0;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/app/a0;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/a0;->q:Landroidx/appcompat/app/p;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/appcompat/app/a0;->r:Lh0/t0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh0/t0;->b()V

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/a0;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lh0/q0;->a(Landroid/view/View;)Lh0/t0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh0/t0;->a(F)V

    iput-object v0, p1, Landroidx/appcompat/app/a0;->r:Lh0/t0;

    new-instance v1, Landroidx/appcompat/app/r;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/app/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh0/t0;->d(Lh0/u0;)V

    :cond_2
    iget-object p0, p1, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/app/n;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/appcompat/app/n;->e()V

    :cond_3
    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/appcompat/app/a0;->n:Lf/c;

    iget-object p0, p1, Landroidx/appcompat/app/a0;->u:Landroid/view/ViewGroup;

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/d0;->c(Landroid/view/View;)V

    return-void
.end method

.method public final d(Lf/c;Landroidx/appcompat/view/menu/p;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/s;->a:Lf/b;

    invoke-interface {p0, p1, p2}, Lf/b;->d(Lf/c;Landroidx/appcompat/view/menu/p;)Z

    move-result p0

    return p0
.end method
