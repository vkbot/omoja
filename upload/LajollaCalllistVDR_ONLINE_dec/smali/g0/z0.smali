.class public Lg0/z0;
.super Lg0/b1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg0/b1;-><init>()V

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/v0;->e()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lg0/z0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lg0/i1;)V
    .locals 0
    .param p1    # Lg0/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lg0/b1;-><init>(Lg0/i1;)V

    .line 4
    invoke-virtual {p1}, Lg0/i1;->g()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->f(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/v0;->e()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg0/z0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lg0/i1;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lg0/b1;->a()V

    iget-object v0, p0, Lg0/z0;->a:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, Landroidx/appcompat/widget/v0;->g(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg0/i1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Lg0/i1;

    move-result-object v0

    iget-object v2, v0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v2, v1}, Lg0/h1;->m([Ly/b;)V

    return-object v0
.end method

.method public c(Ly/b;)V
    .locals 1
    .param p1    # Ly/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lg0/z0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ly/b;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/v0;->x(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public d(Ly/b;)V
    .locals 1
    .param p1    # Ly/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lg0/z0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ly/b;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/v0;->l(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
