.class public abstract Lh0/w0;
.super Lh0/y0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh0/y0;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lh0/w0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lh0/f1;)V
    .locals 1
    .param p1    # Lh0/f1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lh0/y0;-><init>(Lh0/f1;)V

    .line 4
    invoke-virtual {p1}, Lh0/f1;->e()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lh0/w0;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lh0/f1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lh0/y0;->a()V

    iget-object p0, p0, Lh0/w0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh0/f1;->f(Landroid/view/WindowInsets;Landroid/view/View;)Lh0/f1;

    move-result-object p0

    iget-object v1, p0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {v1, v0}, Lh0/e1;->m([Lz/b;)V

    return-object p0
.end method

.method public c(Lz/b;)V
    .locals 0
    .param p1    # Lz/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lh0/w0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/b;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(Lz/b;)V
    .locals 0
    .param p1    # Lz/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lh0/w0;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lz/b;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
