.class public final Lf/h;
.super Landroid/view/ActionMode;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lf/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lf/h;->b:Lf/c;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->a()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/f0;

    iget-object v1, p0, Lf/h;->b:Lf/c;

    invoke-virtual {v1}, Lf/c;->c()Landroidx/appcompat/view/menu/p;

    move-result-object v1

    iget-object p0, p0, Lf/h;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/f0;-><init>(Landroid/content/Context;Lb0/a;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->d()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    iget-object p0, p0, Lf/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->f()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleOptionalHint()Z
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    iget-boolean p0, p0, Lf/c;->b:Z

    return p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->g()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0}, Lf/c;->h()Z

    move-result p0

    return p0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0, p1}, Lf/c;->i(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0, p1}, Lf/c;->k(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0, p1}, Lf/c;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    iput-object p1, p0, Lf/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0, p1}, Lf/c;->m(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0, p1}, Lf/c;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 0

    iget-object p0, p0, Lf/h;->b:Lf/c;

    invoke-virtual {p0, p1}, Lf/c;->o(Z)V

    return-void
.end method
