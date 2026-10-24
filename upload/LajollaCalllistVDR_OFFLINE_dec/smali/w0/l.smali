.class public Lw0/l;
.super Landroidx/fragment/app/b1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    check-cast p2, Lw0/p;

    invoke-virtual {p2, p1}, Lw0/p;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Lw0/p;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lw0/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lw0/u;

    iget-object v0, p1, Lw0/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    if-ltz v2, :cond_2

    iget-object v3, p1, Lw0/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lw0/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/p;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v3, p2}, Lw0/l;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lw0/p;->e:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move p0, v2

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p0, 0x1

    :goto_4
    if-nez p0, :cond_6

    iget-object p0, p1, Lw0/p;->f:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5
    if-ge v2, p0, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lw0/p;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lw0/p;

    invoke-static {p1, p2}, Lw0/s;->a(Landroid/view/ViewGroup;Lw0/p;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lw0/p;

    return p0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Lw0/p;

    invoke-virtual {p1}, Lw0/p;->j()Lw0/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw0/p;

    check-cast p2, Lw0/p;

    check-cast p3, Lw0/p;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p0, Lw0/u;

    invoke-direct {p0}, Lw0/u;-><init>()V

    invoke-virtual {p0, p1}, Lw0/u;->H(Lw0/p;)V

    invoke-virtual {p0, p2}, Lw0/u;->H(Lw0/p;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lw0/u;->K(I)V

    move-object p1, p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p0, Lw0/u;

    invoke-direct {p0}, Lw0/u;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lw0/u;->H(Lw0/p;)V

    :cond_3
    invoke-virtual {p0, p3}, Lw0/u;->H(Lw0/p;)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lw0/u;

    invoke-direct {p0}, Lw0/u;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Lw0/p;

    invoke-virtual {p0, p1}, Lw0/u;->H(Lw0/p;)V

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Lw0/p;

    invoke-virtual {p0, p2}, Lw0/u;->H(Lw0/p;)V

    :cond_1
    if-eqz p3, :cond_2

    check-cast p3, Lw0/p;

    invoke-virtual {p0, p3}, Lw0/u;->H(Lw0/p;)V

    :cond_2
    return-object p0
.end method

.method public final l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    check-cast p1, Lw0/p;

    new-instance p0, Lw0/j;

    invoke-direct {p0, p2, p3}, Lw0/j;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Lw0/p;->a(Lw0/o;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lw0/p;

    new-instance v9, Lw0/k;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lw0/k;-><init>(Lw0/l;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lw0/p;->a(Lw0/o;)V

    return-void
.end method

.method public final n(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lw0/p;

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p0}, Landroidx/fragment/app/b1;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p0, Lw0/i;

    invoke-direct {p0}, Lw0/i;-><init>()V

    invoke-virtual {p2, p0}, Lw0/p;->A(Ly1/l;)V

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Lw0/p;

    new-instance p0, Lw0/i;

    invoke-direct {p0}, Lw0/i;-><init>()V

    invoke-virtual {p1, p0}, Lw0/p;->A(Ly1/l;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Lw0/u;

    iget-object v0, p1, Lw0/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/b1;->d(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Lw0/l;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    check-cast p1, Lw0/u;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lw0/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Lw0/l;->u(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lw0/u;

    invoke-direct {p0}, Lw0/u;-><init>()V

    check-cast p1, Lw0/p;

    invoke-virtual {p0, p1}, Lw0/u;->H(Lw0/p;)V

    return-object p0
.end method

.method public final u(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    check-cast p1, Lw0/p;

    instance-of v0, p1, Lw0/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lw0/u;

    iget-object v0, p1, Lw0/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_7

    if-ltz v2, :cond_1

    iget-object v3, p1, Lw0/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lw0/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/p;

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v1

    :goto_2
    invoke-virtual {p0, v3, p2, p3}, Lw0/l;->u(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lw0/p;->e:Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Landroidx/fragment/app/b1;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move p0, v2

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p0, 0x1

    :goto_4
    if-nez p0, :cond_7

    iget-object p0, p1, Lw0/p;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-interface {p0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-nez p3, :cond_5

    move p0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5
    if-ge v2, p0, :cond_6

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lw0/p;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_6
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_7

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lw0/p;->w(Landroid/view/View;)V

    goto :goto_6

    :cond_7
    return-void
.end method
