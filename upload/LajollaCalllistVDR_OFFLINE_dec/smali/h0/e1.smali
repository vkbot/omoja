.class public Lh0/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lh0/f1;


# instance fields
.field public final a:Lh0/f1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh0/x0;

    invoke-direct {v0}, Lh0/x0;-><init>()V

    invoke-virtual {v0}, Lh0/y0;->b()Lh0/f1;

    move-result-object v0

    iget-object v0, v0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {v0}, Lh0/e1;->a()Lh0/f1;

    move-result-object v0

    iget-object v0, v0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {v0}, Lh0/e1;->b()Lh0/f1;

    move-result-object v0

    iget-object v0, v0, Lh0/f1;->a:Lh0/e1;

    invoke-virtual {v0}, Lh0/e1;->c()Lh0/f1;

    move-result-object v0

    sput-object v0, Lh0/e1;->b:Lh0/f1;

    return-void
.end method

.method public constructor <init>(Lh0/f1;)V
    .locals 0
    .param p1    # Lh0/f1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/e1;->a:Lh0/f1;

    return-void
.end method


# virtual methods
.method public a()Lh0/f1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh0/e1;->a:Lh0/f1;

    return-object p0
.end method

.method public b()Lh0/f1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh0/e1;->a:Lh0/f1;

    return-object p0
.end method

.method public c()Lh0/f1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lh0/e1;->a:Lh0/f1;

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public e()Lh0/j;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh0/e1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh0/e1;

    invoke-virtual {p0}, Lh0/e1;->l()Z

    move-result v1

    invoke-virtual {p1}, Lh0/e1;->l()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lh0/e1;->k()Z

    move-result v1

    invoke-virtual {p1}, Lh0/e1;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object v1

    invoke-virtual {p1}, Lh0/e1;->i()Lz/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lh0/e1;->g()Lz/b;

    move-result-object v1

    invoke-virtual {p1}, Lh0/e1;->g()Lz/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lh0/e1;->e()Lh0/j;

    move-result-object p0

    invoke-virtual {p1}, Lh0/e1;->e()Lh0/j;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Lz/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object p0

    return-object p0
.end method

.method public g()Lz/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lz/b;->e:Lz/b;

    return-object p0
.end method

.method public h()Lz/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lh0/e1;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lh0/e1;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lh0/e1;->i()Lz/b;

    move-result-object v2

    invoke-virtual {p0}, Lh0/e1;->g()Lz/b;

    move-result-object v3

    invoke-virtual {p0}, Lh0/e1;->e()Lh0/j;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i()Lz/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lz/b;->e:Lz/b;

    return-object p0
.end method

.method public j(IIII)Lh0/f1;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lh0/e1;->b:Lh0/f1;

    return-object p0
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m([Lz/b;)V
    .locals 0

    return-void
.end method

.method public n(Lh0/f1;)V
    .locals 0
    .param p1    # Lh0/f1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
