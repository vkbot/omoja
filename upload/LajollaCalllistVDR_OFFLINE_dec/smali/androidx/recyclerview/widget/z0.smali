.class public final Landroidx/recyclerview/widget/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/y0;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iput-object p1, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/z0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/z0;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/z0;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/z0;->e:I

    iput p1, p0, Landroidx/recyclerview/widget/z0;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/i1;Z)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/i1;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/k1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/k1;->e:Landroidx/recyclerview/widget/j1;

    instance-of v3, v1, Landroidx/recyclerview/widget/j1;

    iget-object v4, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v1, v1, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/b;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v4, v1}, Lh0/q0;->j(Landroid/view/View;Lh0/b;)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/j0;->f(Landroidx/recyclerview/widget/i1;)V

    :cond_2
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    if-eqz p2, :cond_3

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/p1;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/p1;->m(Landroidx/recyclerview/widget/i1;)V

    :cond_3
    iput-object v2, p1, Landroidx/recyclerview/widget/i1;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/z0;->c()Landroidx/recyclerview/widget/y0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, Landroidx/recyclerview/widget/i1;->f:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/y0;->a(I)Landroidx/recyclerview/widget/x0;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/x0;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/recyclerview/widget/y0;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/x0;

    iget p0, p0, Landroidx/recyclerview/widget/x0;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p0, p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->m()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final b(I)I
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/f1;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Landroidx/recyclerview/widget/y0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/y0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/y0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    return-object p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/z0;->e(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/r;

    iget-object v0, p0, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/r;->d:I

    return-void
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/i1;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/z0;->a(Landroidx/recyclerview/widget/i1;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/i1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i1;->k()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i1;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/recyclerview/widget/i1;->n:Landroidx/recyclerview/widget/z0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z0;->j(Landroidx/recyclerview/widget/i1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/i1;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Landroidx/recyclerview/widget/i1;->j:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/z0;->g(Landroidx/recyclerview/widget/i1;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/p0;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/i1;->h()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/p0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/p0;->d(Landroidx/recyclerview/widget/i1;)V

    :cond_3
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/i1;)V
    .locals 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->j()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    iget-object v4, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    if-nez v0, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->k()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->o()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p1, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lh0/z;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->h()Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Landroidx/recyclerview/widget/z0;->f:I

    if-lez v4, :cond_b

    iget v4, p1, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit16 v4, v4, 0x20e

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_b

    iget-object v4, p0, Landroidx/recyclerview/widget/z0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/z0;->f:I

    if-lt v5, v6, :cond_3

    if-lez v5, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/z0;->e(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_3
    sget-object v6, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    if-lez v5, :cond_a

    iget v6, p1, Landroidx/recyclerview/widget/i1;->c:I

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->c0:Landroidx/recyclerview/widget/r;

    iget-object v8, v7, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v8, :cond_5

    iget v8, v7, Landroidx/recyclerview/widget/r;->d:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_5

    iget-object v10, v7, Landroidx/recyclerview/widget/r;->c:[I

    aget v10, v10, v9

    if-ne v10, v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_3
    if-nez v6, :cond_a

    :cond_6
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/i1;

    iget v6, v6, Landroidx/recyclerview/widget/i1;->c:I

    iget-object v8, v7, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v8, :cond_8

    iget v8, v7, Landroidx/recyclerview/widget/r;->d:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v1

    :goto_4
    if-ge v9, v8, :cond_8

    iget-object v10, v7, Landroidx/recyclerview/widget/r;->c:[I

    aget v10, v10, v9

    if-ne v10, v6, :cond_7

    move v6, v3

    goto :goto_5

    :cond_7
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    :cond_8
    move v6, v1

    :goto_5
    if-nez v6, :cond_6

    :cond_9
    add-int/2addr v5, v3

    :cond_a
    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v4, v3

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    if-nez v4, :cond_c

    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/z0;->a(Landroidx/recyclerview/widget/i1;Z)V

    move v1, v3

    :cond_c
    move p0, v1

    move v1, v4

    goto :goto_7

    :cond_d
    move p0, v1

    :goto_7
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/p1;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/p1;->m(Landroidx/recyclerview/widget/i1;)V

    if-nez v1, :cond_e

    if-nez p0, :cond_e

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/i1;->r:Landroidx/recyclerview/widget/RecyclerView;

    :cond_e
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_12

    move v1, v3

    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Landroid/view/View;)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/i1;

    move-result-object p1

    iget v0, p1, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 v1, v0, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_a

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_a

    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/p0;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->d()Ljava/util/List;

    move-result-object v1

    check-cast v0, Landroidx/recyclerview/widget/k;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Landroidx/recyclerview/widget/k;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v2

    :goto_7
    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    :cond_9
    iput-object p0, p1, Landroidx/recyclerview/widget/i1;->n:Landroidx/recyclerview/widget/z0;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/i1;->o:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_a
    :goto_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i1;->i()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/j0;->b:Z

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_9
    iput-object p0, p1, Landroidx/recyclerview/widget/i1;->n:Landroidx/recyclerview/widget/z0;

    iput-boolean v3, p1, Landroidx/recyclerview/widget/i1;->o:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    return-void
.end method

.method public final i(IJ)Landroidx/recyclerview/widget/i1;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v1, :cond_49

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v3

    if-ge v1, v3, :cond_49

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/f1;->g:Z

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_2

    iget-object v8, v0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/i1;->p()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/i1;->c()I

    move-result v9

    if-ne v9, v1, :cond_1

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/i1;->b(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/j0;->b:Z

    if-eqz v7, :cond_4

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v7, v1, v5}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/j0;->b(I)J

    move-result-wide v7

    move v9, v5

    :goto_1
    if-ge v9, v4, :cond_4

    iget-object v10, v0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/i1;->p()Z

    move-result v11

    if-nez v11, :cond_3

    iget-wide v11, v10, Landroidx/recyclerview/widget/i1;->e:J

    cmp-long v11, v11, v7

    if-nez v11, :cond_3

    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/i1;->b(I)V

    move-object v8, v10

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :cond_6
    move v4, v5

    :goto_4
    iget-object v7, v0, Landroidx/recyclerview/widget/z0;->c:Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/recyclerview/widget/z0;->a:Ljava/util/ArrayList;

    const/4 v10, -0x1

    if-nez v8, :cond_1c

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v11, v5

    :goto_5
    if-ge v11, v8, :cond_9

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/i1;->p()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v12}, Landroidx/recyclerview/widget/i1;->c()I

    move-result v13

    if-ne v13, v1, :cond_8

    invoke-virtual {v12}, Landroidx/recyclerview/widget/i1;->g()Z

    move-result v13

    if-nez v13, :cond_8

    iget-boolean v13, v3, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v13, :cond_7

    invoke-virtual {v12}, Landroidx/recyclerview/widget/i1;->i()Z

    move-result v13

    if-nez v13, :cond_8

    :cond_7
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/i1;->b(I)V

    move-object v8, v12

    goto/16 :goto_c

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/d;

    iget-object v11, v8, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v5

    :goto_6
    if-ge v13, v12, :cond_b

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    iget-object v15, v8, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/i0;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/i1;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/recyclerview/widget/i1;->c()I

    move-result v6

    if-ne v6, v1, :cond_a

    invoke-virtual {v15}, Landroidx/recyclerview/widget/i1;->g()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v15}, Landroidx/recyclerview/widget/i1;->i()Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x20

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_11

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/i1;

    move-result-object v6

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/d;

    iget-object v11, v8, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/i0;

    iget-object v11, v11, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ltz v11, :cond_10

    iget-object v12, v8, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/c;->a(I)V

    invoke-virtual {v8, v14}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/d;

    iget-object v11, v8, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/i0;

    iget-object v11, v11, Landroidx/recyclerview/widget/i0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ne v11, v10, :cond_c

    goto :goto_8

    :cond_c
    iget-object v8, v8, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v12

    if-eqz v12, :cond_d

    :goto_8
    move v11, v10

    goto :goto_9

    :cond_d
    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/c;->b(I)I

    move-result v8

    sub-int/2addr v11, v8

    :goto_9
    if-eq v11, v10, :cond_e

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/d;

    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/d;->c(I)V

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/z0;->h(Landroid/view/View;)V

    const/16 v8, 0x2020

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/i1;->b(I)V

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v5

    :goto_a
    if-ge v8, v6, :cond_13

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/i1;->g()Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v11}, Landroidx/recyclerview/widget/i1;->c()I

    move-result v12

    if-ne v12, v1, :cond_12

    invoke-virtual {v11}, Landroidx/recyclerview/widget/i1;->e()Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v11

    goto :goto_c

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v6, 0x0

    :goto_b
    move-object v8, v6

    :goto_c
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Landroidx/recyclerview/widget/i1;->i()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-boolean v6, v3, Landroidx/recyclerview/widget/f1;->g:Z

    goto :goto_f

    :cond_14
    iget v6, v8, Landroidx/recyclerview/widget/i1;->c:I

    if-ltz v6, :cond_1b

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v11

    if-ge v6, v11, :cond_1b

    iget-boolean v6, v3, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v6, :cond_15

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    iget v11, v8, Landroidx/recyclerview/widget/i1;->c:I

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/j0;->c(I)I

    move-result v6

    iget v11, v8, Landroidx/recyclerview/widget/i1;->f:I

    if-eq v6, v11, :cond_15

    goto :goto_d

    :cond_15
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    iget-boolean v11, v6, Landroidx/recyclerview/widget/j0;->b:Z

    if-eqz v11, :cond_17

    iget-wide v11, v8, Landroidx/recyclerview/widget/i1;->e:J

    iget v13, v8, Landroidx/recyclerview/widget/i1;->c:I

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/j0;->b(I)J

    move-result-wide v13

    cmp-long v6, v11, v13

    if-nez v6, :cond_16

    goto :goto_e

    :cond_16
    :goto_d
    move v6, v5

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v6, 0x1

    :goto_f
    if-nez v6, :cond_1a

    const/4 v6, 0x4

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/i1;->b(I)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/i1;->j()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v8, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v2, v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v6, v8, Landroidx/recyclerview/widget/i1;->n:Landroidx/recyclerview/widget/z0;

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/z0;->j(Landroidx/recyclerview/widget/i1;)V

    goto :goto_10

    :cond_18
    invoke-virtual {v8}, Landroidx/recyclerview/widget/i1;->p()Z

    move-result v6

    if-eqz v6, :cond_19

    iget v6, v8, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v8, Landroidx/recyclerview/widget/i1;->j:I

    :cond_19
    :goto_10
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/z0;->g(Landroidx/recyclerview/widget/i1;)V

    const/4 v8, 0x0

    goto :goto_11

    :cond_1a
    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_11
    const/4 v6, 0x2

    if-nez v8, :cond_30

    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v15, v1, v5}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v5

    if-ltz v5, :cond_2f

    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v15}, Landroidx/recyclerview/widget/j0;->a()I

    move-result v15

    if-ge v5, v15, :cond_2f

    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v15, v5}, Landroidx/recyclerview/widget/j0;->c(I)I

    move-result v15

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    iget-boolean v14, v13, Landroidx/recyclerview/widget/j0;->b:Z

    if-eqz v14, :cond_24

    invoke-virtual {v13, v5}, Landroidx/recyclerview/widget/j0;->b(I)J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v10

    :goto_12
    if-ltz v8, :cond_20

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/i1;

    iget-wide v11, v10, Landroidx/recyclerview/widget/i1;->e:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_1f

    invoke-virtual {v10}, Landroidx/recyclerview/widget/i1;->p()Z

    move-result v11

    if-nez v11, :cond_1f

    iget v11, v10, Landroidx/recyclerview/widget/i1;->f:I

    if-ne v15, v11, :cond_1e

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/i1;->b(I)V

    invoke-virtual {v10}, Landroidx/recyclerview/widget/i1;->i()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-boolean v7, v3, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v7, :cond_1d

    iget v7, v10, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 v7, v7, -0xf

    or-int/2addr v7, v6

    iput v7, v10, Landroidx/recyclerview/widget/i1;->j:I

    :cond_1d
    move-object v8, v10

    goto :goto_13

    :cond_1e
    const/16 v11, 0x20

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, v10, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/i1;

    move-result-object v10

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/recyclerview/widget/i1;->n:Landroidx/recyclerview/widget/z0;

    iput-boolean v12, v10, Landroidx/recyclerview/widget/i1;->o:Z

    iget v11, v10, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 v11, v11, -0x21

    iput v11, v10, Landroidx/recyclerview/widget/i1;->j:I

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/z0;->g(Landroidx/recyclerview/widget/i1;)V

    :cond_1f
    add-int/lit8 v8, v8, -0x1

    goto :goto_12

    :cond_20
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_21
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_23

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/i1;

    iget-wide v10, v9, Landroidx/recyclerview/widget/i1;->e:J

    cmp-long v10, v10, v13

    if-nez v10, :cond_21

    invoke-virtual {v9}, Landroidx/recyclerview/widget/i1;->e()Z

    move-result v10

    if-nez v10, :cond_21

    iget v10, v9, Landroidx/recyclerview/widget/i1;->f:I

    if-ne v15, v10, :cond_22

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v8, v9

    goto :goto_13

    :cond_22
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/z0;->e(I)V

    :cond_23
    const/4 v7, 0x0

    move-object v8, v7

    :goto_13
    if-eqz v8, :cond_24

    iput v5, v8, Landroidx/recyclerview/widget/i1;->c:I

    const/4 v4, 0x1

    :cond_24
    if-nez v8, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/z0;->c()Landroidx/recyclerview/widget/y0;

    move-result-object v5

    iget-object v5, v5, Landroidx/recyclerview/widget/y0;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/x0;

    if-eqz v5, :cond_26

    iget-object v5, v5, Landroidx/recyclerview/widget/x0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_26

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_25
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_26

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/i1;->e()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/i1;

    goto :goto_14

    :cond_26
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Landroidx/recyclerview/widget/i1;->m()V

    sget-object v7, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    :cond_27
    move-object v8, v5

    :cond_28
    if-nez v8, :cond_30

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v5, p2, v9

    if-eqz v5, :cond_2b

    iget-object v5, v0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    invoke-virtual {v5, v15}, Landroidx/recyclerview/widget/y0;->a(I)Landroidx/recyclerview/widget/x0;

    move-result-object v5

    iget-wide v9, v5, Landroidx/recyclerview/widget/x0;->c:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_2a

    add-long/2addr v9, v7

    cmp-long v5, v9, p2

    if-gez v5, :cond_29

    goto :goto_15

    :cond_29
    const/4 v5, 0x0

    goto :goto_16

    :cond_2a
    :goto_15
    const/4 v5, 0x1

    :goto_16
    if-nez v5, :cond_2b

    const/4 v0, 0x0

    return-object v0

    :cond_2b
    const/4 v5, 0x0

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v10, "RV CreateView"

    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v15}, Landroidx/recyclerview/widget/j0;->e(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/i1;

    move-result-object v9

    iget-object v10, v9, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_2e

    iput v15, v9, Landroidx/recyclerview/widget/i1;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object v10, Landroidx/recyclerview/widget/RecyclerView;->t0:[I

    iget-object v10, v9, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, v9, Landroidx/recyclerview/widget/i1;->b:Ljava/lang/ref/WeakReference;

    :cond_2c
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    iget-object v12, v0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    sub-long/2addr v10, v7

    invoke-virtual {v12, v15}, Landroidx/recyclerview/widget/y0;->a(I)Landroidx/recyclerview/widget/x0;

    move-result-object v7

    iget-wide v12, v7, Landroidx/recyclerview/widget/x0;->c:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-nez v8, :cond_2d

    goto :goto_17

    :cond_2d
    const-wide/16 v14, 0x4

    div-long/2addr v12, v14

    const-wide/16 v18, 0x3

    mul-long v12, v12, v18

    div-long/2addr v10, v14

    add-long/2addr v10, v12

    :goto_17
    iput-wide v10, v7, Landroidx/recyclerview/widget/x0;->c:J

    goto :goto_18

    :cond_2e
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Inconsistency detected. Invalid item position "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(offset:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").state:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v5, 0x0

    move-object v9, v8

    :goto_18
    if-eqz v4, :cond_32

    iget-boolean v7, v3, Landroidx/recyclerview/widget/f1;->g:Z

    if-nez v7, :cond_32

    iget v7, v9, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit16 v8, v7, 0x2000

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    goto :goto_19

    :cond_31
    const/4 v8, 0x0

    :goto_19
    if-eqz v8, :cond_32

    and-int/lit16 v7, v7, -0x2001

    or-int/lit8 v7, v7, 0x0

    iput v7, v9, Landroidx/recyclerview/widget/i1;->j:I

    iget-boolean v7, v3, Landroidx/recyclerview/widget/f1;->j:Z

    if-eqz v7, :cond_32

    invoke-static {v9}, Landroidx/recyclerview/widget/p0;->b(Landroidx/recyclerview/widget/i1;)V

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/p0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/i1;->d()Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/recyclerview/widget/o0;

    invoke-direct {v7}, Landroidx/recyclerview/widget/o0;-><init>()V

    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/o0;->a(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v2, v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->V(Landroidx/recyclerview/widget/i1;Landroidx/recyclerview/widget/o0;)V

    :cond_32
    iget-boolean v7, v3, Landroidx/recyclerview/widget/f1;->g:Z

    if-eqz v7, :cond_33

    invoke-virtual {v9}, Landroidx/recyclerview/widget/i1;->f()Z

    move-result v7

    if-eqz v7, :cond_33

    iput v1, v9, Landroidx/recyclerview/widget/i1;->g:I

    goto :goto_1b

    :cond_33
    invoke-virtual {v9}, Landroidx/recyclerview/widget/i1;->f()Z

    move-result v7

    if-eqz v7, :cond_36

    iget v7, v9, Landroidx/recyclerview/widget/i1;->j:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_34

    const/4 v6, 0x1

    goto :goto_1a

    :cond_34
    const/4 v6, 0x0

    :goto_1a
    if-nez v6, :cond_36

    invoke-virtual {v9}, Landroidx/recyclerview/widget/i1;->g()Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_1c

    :cond_35
    :goto_1b
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_36
    :goto_1c
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/b;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v6

    iput-object v2, v9, Landroidx/recyclerview/widget/i1;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget v8, v9, Landroidx/recyclerview/widget/i1;->f:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, p2, v12

    if-eqz v12, :cond_39

    iget-object v12, v0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/y0;->a(I)Landroidx/recyclerview/widget/x0;

    move-result-object v8

    iget-wide v12, v8, Landroidx/recyclerview/widget/x0;->d:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-eqz v8, :cond_38

    add-long/2addr v12, v10

    cmp-long v8, v12, p2

    if-gez v8, :cond_37

    goto :goto_1d

    :cond_37
    move v8, v7

    goto :goto_1e

    :cond_38
    :goto_1d
    const/4 v8, 0x1

    :goto_1e
    if-nez v8, :cond_39

    const/4 v0, 0x1

    move v1, v7

    move v3, v1

    goto/16 :goto_24

    :cond_39
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v6, v9, Landroidx/recyclerview/widget/i1;->c:I

    iget-boolean v12, v8, Landroidx/recyclerview/widget/j0;->b:Z

    if-eqz v12, :cond_3a

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/j0;->b(I)J

    move-result-wide v12

    iput-wide v12, v9, Landroidx/recyclerview/widget/i1;->e:J

    :cond_3a
    iget v12, v9, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit16 v12, v12, -0x208

    or-int/lit8 v12, v12, 0x1

    iput v12, v9, Landroidx/recyclerview/widget/i1;->j:I

    const-string v12, "RV OnBindView"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/i1;->d()Ljava/util/List;

    invoke-virtual {v8, v9, v6}, Landroidx/recyclerview/widget/j0;->d(Landroidx/recyclerview/widget/i1;I)V

    iget-object v6, v9, Landroidx/recyclerview/widget/i1;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_3b
    iget v6, v9, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit16 v6, v6, -0x401

    iput v6, v9, Landroidx/recyclerview/widget/i1;->j:I

    iget-object v6, v9, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v12, v8, Landroidx/recyclerview/widget/t0;

    if-eqz v12, :cond_3c

    check-cast v8, Landroidx/recyclerview/widget/t0;

    const/4 v12, 0x1

    iput-boolean v12, v8, Landroidx/recyclerview/widget/t0;->c:Z

    :cond_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    iget-object v0, v0, Landroidx/recyclerview/widget/z0;->g:Landroidx/recyclerview/widget/y0;

    iget v8, v9, Landroidx/recyclerview/widget/i1;->f:I

    sub-long/2addr v12, v10

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/y0;->a(I)Landroidx/recyclerview/widget/x0;

    move-result-object v0

    iget-wide v10, v0, Landroidx/recyclerview/widget/x0;->d:J

    const-wide/16 v14, 0x0

    cmp-long v8, v10, v14

    if-nez v8, :cond_3d

    goto :goto_1f

    :cond_3d
    const-wide/16 v14, 0x4

    div-long/2addr v10, v14

    const-wide/16 v16, 0x3

    mul-long v10, v10, v16

    div-long/2addr v12, v14

    add-long/2addr v12, v10

    :goto_1f
    iput-wide v12, v0, Landroidx/recyclerview/widget/x0;->d:J

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_20

    :cond_3e
    move v0, v7

    :goto_20
    if-eqz v0, :cond_44

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Lh0/z;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lh0/z;->s(Landroid/view/View;I)V

    goto :goto_21

    :cond_3f
    const/4 v0, 0x1

    :goto_21
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/k1;

    if-nez v8, :cond_40

    goto :goto_23

    :cond_40
    iget-object v8, v8, Landroidx/recyclerview/widget/k1;->e:Landroidx/recyclerview/widget/j1;

    instance-of v10, v8, Landroidx/recyclerview/widget/j1;

    if-eqz v10, :cond_43

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lh0/l0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v10

    if-nez v10, :cond_41

    goto :goto_22

    :cond_41
    instance-of v5, v10, Lh0/a;

    if-eqz v5, :cond_42

    check-cast v10, Lh0/a;

    iget-object v5, v10, Lh0/a;->a:Lh0/b;

    goto :goto_22

    :cond_42
    new-instance v5, Lh0/b;

    invoke-direct {v5, v10}, Lh0/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_22
    if-eqz v5, :cond_43

    if-eq v5, v8, :cond_43

    iget-object v10, v8, Landroidx/recyclerview/widget/j1;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v6, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    invoke-static {v6, v8}, Lh0/q0;->j(Landroid/view/View;Lh0/b;)V

    goto :goto_23

    :cond_44
    const/4 v0, 0x1

    :goto_23
    iget-boolean v3, v3, Landroidx/recyclerview/widget/f1;->g:Z

    if-eqz v3, :cond_45

    iput v1, v9, Landroidx/recyclerview/widget/i1;->g:I

    :cond_45
    move v3, v0

    move v1, v7

    :goto_24
    iget-object v5, v9, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, v9, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    if-nez v5, :cond_46

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_25

    :cond_46
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_47

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_25

    :cond_47
    move-object v2, v5

    check-cast v2, Landroidx/recyclerview/widget/t0;

    :goto_25
    iput-object v9, v2, Landroidx/recyclerview/widget/t0;->a:Landroidx/recyclerview/widget/i1;

    if-eqz v4, :cond_48

    if-eqz v3, :cond_48

    goto :goto_26

    :cond_48
    move v0, v1

    :goto_26
    iput-boolean v0, v2, Landroidx/recyclerview/widget/t0;->d:Z

    return-object v9

    :cond_49
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid item position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Item count:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView;->d0:Landroidx/recyclerview/widget/f1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/f1;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Landroidx/recyclerview/widget/i1;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/i1;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/z0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/i1;->n:Landroidx/recyclerview/widget/z0;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/recyclerview/widget/i1;->o:Z

    iget p0, p1, Landroidx/recyclerview/widget/i1;->j:I

    and-int/lit8 p0, p0, -0x21

    iput p0, p1, Landroidx/recyclerview/widget/i1;->j:I

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/s0;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/s0;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/z0;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/z0;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/z0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/z0;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/z0;->e(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
