.class public Lg0/f1;
.super Lg0/e1;
.source "SourceFile"


# instance fields
.field public l:Ly/b;

.field public m:Ly/b;


# direct methods
.method public constructor <init>(Lg0/i1;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Lg0/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lg0/e1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg0/f1;->l:Ly/b;

    iput-object p1, p0, Lg0/f1;->m:Ly/b;

    return-void
.end method


# virtual methods
.method public f()Ly/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/f1;->m:Ly/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/v0;->v(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ly/b;->b(Landroid/graphics/Insets;)Ly/b;

    move-result-object v0

    iput-object v0, p0, Lg0/f1;->m:Ly/b;

    :cond_0
    iget-object v0, p0, Lg0/f1;->m:Ly/b;

    return-object v0
.end method

.method public h()Ly/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/f1;->l:Ly/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/appcompat/widget/v0;->c(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ly/b;->b(Landroid/graphics/Insets;)Ly/b;

    move-result-object v0

    iput-object v0, p0, Lg0/f1;->l:Ly/b;

    :cond_0
    iget-object v0, p0, Lg0/f1;->l:Ly/b;

    return-object v0
.end method

.method public j(IIII)Lg0/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/v0;->h(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lg0/i1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;

    move-result-object p1

    return-object p1
.end method

.method public o(Ly/b;)V
    .locals 0
    .param p1    # Ly/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
