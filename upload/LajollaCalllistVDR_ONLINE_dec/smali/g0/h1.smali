.class public Lg0/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lg0/i1;


# instance fields
.field public final a:Lg0/i1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lg0/a1;

    invoke-direct {v0}, Lg0/a1;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lg0/z0;

    invoke-direct {v0}, Lg0/z0;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lg0/y0;

    invoke-direct {v0}, Lg0/y0;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lg0/b1;->b()Lg0/i1;

    move-result-object v0

    iget-object v0, v0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->a()Lg0/i1;

    move-result-object v0

    iget-object v0, v0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->b()Lg0/i1;

    move-result-object v0

    iget-object v0, v0, Lg0/i1;->a:Lg0/h1;

    invoke-virtual {v0}, Lg0/h1;->c()Lg0/i1;

    move-result-object v0

    sput-object v0, Lg0/h1;->b:Lg0/i1;

    return-void
.end method

.method public constructor <init>(Lg0/i1;)V
    .locals 0
    .param p1    # Lg0/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/h1;->a:Lg0/i1;

    return-void
.end method


# virtual methods
.method public a()Lg0/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/h1;->a:Lg0/i1;

    return-object v0
.end method

.method public b()Lg0/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/h1;->a:Lg0/i1;

    return-object v0
.end method

.method public c()Lg0/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lg0/h1;->a:Lg0/i1;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public e()Lg0/j;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg0/h1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg0/h1;

    invoke-virtual {p0}, Lg0/h1;->l()Z

    move-result v1

    invoke-virtual {p1}, Lg0/h1;->l()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lg0/h1;->k()Z

    move-result v1

    invoke-virtual {p1}, Lg0/h1;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lg0/h1;->i()Ly/b;

    move-result-object v1

    invoke-virtual {p1}, Lg0/h1;->i()Ly/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lg0/h1;->g()Ly/b;

    move-result-object v1

    invoke-virtual {p1}, Lg0/h1;->g()Ly/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lg0/h1;->e()Lg0/j;

    move-result-object v1

    invoke-virtual {p1}, Lg0/h1;->e()Lg0/j;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Ly/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    return-object v0
.end method

.method public g()Ly/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Ly/b;->e:Ly/b;

    return-object v0
.end method

.method public h()Ly/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lg0/h1;->i()Ly/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Lg0/h1;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lg0/h1;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lg0/h1;->i()Ly/b;

    move-result-object v2

    invoke-virtual {p0}, Lg0/h1;->g()Ly/b;

    move-result-object v3

    invoke-virtual {p0}, Lg0/h1;->e()Lg0/j;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ly/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Ly/b;->e:Ly/b;

    return-object v0
.end method

.method public j(IIII)Lg0/i1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p1, Lg0/h1;->b:Lg0/i1;

    return-object p1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m([Ly/b;)V
    .locals 0

    return-void
.end method

.method public n(Lg0/i1;)V
    .locals 0
    .param p1    # Lg0/i1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public o(Ly/b;)V
    .locals 0

    return-void
.end method
