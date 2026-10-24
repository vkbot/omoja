.class public Lg0/d1;
.super Lg0/c1;
.source "SourceFile"


# instance fields
.field public k:Ly/b;


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

    invoke-direct {p0, p1, p2}, Lg0/c1;-><init>(Lg0/i1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg0/d1;->k:Ly/b;

    return-void
.end method


# virtual methods
.method public b()Lg0/i1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg0/i1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lg0/i1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg0/i1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ly/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/d1;->k:Ly/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Ly/b;->a(IIII)Ly/b;

    move-result-object v0

    iput-object v0, p0, Lg0/d1;->k:Ly/b;

    :cond_0
    iget-object v0, p0, Lg0/d1;->k:Ly/b;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lg0/c1;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public o(Ly/b;)V
    .locals 0
    .param p1    # Ly/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lg0/d1;->k:Ly/b;

    return-void
.end method
