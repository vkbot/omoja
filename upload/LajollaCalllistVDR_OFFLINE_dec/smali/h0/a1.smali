.class public abstract Lh0/a1;
.super Lh0/z0;
.source "SourceFile"


# instance fields
.field public e:Lz/b;


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

    invoke-direct {p0, p1, p2}, Lh0/z0;-><init>(Lh0/f1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lh0/a1;->e:Lz/b;

    return-void
.end method


# virtual methods
.method public b()Lh0/f1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh0/f1;->f(Landroid/view/WindowInsets;Landroid/view/View;)Lh0/f1;

    move-result-object p0

    return-object p0
.end method

.method public c()Lh0/f1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh0/f1;->f(Landroid/view/WindowInsets;Landroid/view/View;)Lh0/f1;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lz/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lh0/a1;->e:Lz/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lz/b;->a(IIII)Lz/b;

    move-result-object v0

    iput-object v0, p0, Lh0/a1;->e:Lz/b;

    :cond_0
    iget-object p0, p0, Lh0/a1;->e:Lz/b;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lh0/z0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
