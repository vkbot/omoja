.class public abstract Lh0/c1;
.super Lh0/b1;
.source "SourceFile"


# instance fields
.field public f:Lz/b;

.field public g:Lz/b;


# direct methods
.method public constructor <init>(Lh0/f1;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Lh0/f1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lh0/b1;-><init>(Lh0/f1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lh0/c1;->f:Lz/b;

    iput-object p1, p0, Lh0/c1;->g:Lz/b;

    return-void
.end method


# virtual methods
.method public f()Lz/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lh0/c1;->g:Lz/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz/b;->b(Landroid/graphics/Insets;)Lz/b;

    move-result-object v0

    iput-object v0, p0, Lh0/c1;->g:Lz/b;

    :cond_0
    iget-object p0, p0, Lh0/c1;->g:Lz/b;

    return-object p0
.end method

.method public h()Lz/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lh0/c1;->f:Lz/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lz/b;->b(Landroid/graphics/Insets;)Lz/b;

    move-result-object v0

    iput-object v0, p0, Lh0/c1;->f:Lz/b;

    :cond_0
    iget-object p0, p0, Lh0/c1;->f:Lz/b;

    return-object p0
.end method

.method public j(IIII)Lh0/f1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lh0/f1;->f(Landroid/view/WindowInsets;Landroid/view/View;)Lh0/f1;

    move-result-object p0

    return-object p0
.end method
