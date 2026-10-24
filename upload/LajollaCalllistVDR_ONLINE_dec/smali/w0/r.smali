.class public final Lw0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final b:Lw0/p;

.field public final c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lw0/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw0/r;->b:Lw0/p;

    iput-object p1, p0, Lw0/r;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lw0/r;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v1, Lw0/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    if-nez v1, :cond_0

    return v7

    :cond_0
    invoke-static {}, Lw0/s;->b()Lj/b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v4}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v3

    :goto_1
    iget-object v8, v0, Lw0/r;->b:Lw0/p;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lw0/g;

    invoke-direct {v4, v7, v0, v1}, Lw0/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lw0/p;->a(Lw0/o;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Lw0/p;->h(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw0/p;

    invoke-virtual {v5, v2}, Lw0/p;->x(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lw0/p;->l:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v8, Lw0/p;->m:Ljava/util/ArrayList;

    iget-object v4, v8, Lw0/p;->h:Lk/d;

    iget-object v5, v8, Lw0/p;->i:Lk/d;

    new-instance v6, Lj/b;

    iget-object v9, v4, Lk/d;->b:Ljava/lang/Object;

    check-cast v9, Lj/b;

    invoke-direct {v6, v9}, Lj/b;-><init>(Lj/b;)V

    new-instance v9, Lj/b;

    iget-object v10, v5, Lk/d;->b:Ljava/lang/Object;

    check-cast v10, Lj/b;

    invoke-direct {v9, v10}, Lj/b;-><init>(Lj/b;)V

    move v10, v1

    :goto_3
    iget-object v11, v8, Lw0/p;->k:[I

    array-length v12, v11

    if-ge v10, v12, :cond_11

    aget v11, v11, v10

    if-eq v11, v7, :cond_e

    const/4 v12, 0x2

    if-eq v11, v12, :cond_c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object v7, v8

    goto/16 :goto_9

    :cond_5
    iget-object v11, v4, Lk/d;->d:Ljava/lang/Object;

    check-cast v11, Lj/d;

    iget-object v12, v5, Lk/d;->d:Ljava/lang/Object;

    check-cast v12, Lj/d;

    iget-boolean v13, v11, Lj/d;->b:Z

    if-eqz v13, :cond_6

    invoke-virtual {v11}, Lj/d;->c()V

    :cond_6
    iget v13, v11, Lj/d;->e:I

    move v14, v1

    :goto_4
    if-ge v14, v13, :cond_4

    invoke-virtual {v11, v14}, Lj/d;->f(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_8

    invoke-virtual {v8, v15}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_8

    iget-boolean v1, v11, Lj/d;->b:Z

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Lj/d;->c()V

    :cond_7
    iget-object v1, v11, Lj/d;->c:[J

    move-object/from16 v17, v8

    aget-wide v7, v1, v14

    invoke-virtual {v12, v7, v8, v3}, Lj/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v7, v17

    if-eqz v1, :cond_9

    invoke-virtual {v7, v1}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6, v15, v3}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/w;

    invoke-virtual {v9, v1, v3}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lw0/w;

    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    iget-object v0, v7, Lw0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    move-object v7, v8

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object v8, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    move-object v7, v8

    iget-object v0, v4, Lk/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, v5, Lk/d;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_10

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    invoke-virtual {v7, v11}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_b

    invoke-virtual {v7, v12}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    invoke-virtual {v6, v11, v13}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lw0/w;

    invoke-virtual {v9, v12, v13}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lw0/w;

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    iget-object v13, v7, Lw0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v7, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    move-object v7, v8

    iget-object v0, v4, Lk/d;->e:Ljava/lang/Object;

    check-cast v0, Lj/b;

    iget-object v1, v5, Lk/d;->e:Ljava/lang/Object;

    check-cast v1, Lj/b;

    iget v3, v0, Lj/j;->d:I

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_10

    invoke-virtual {v0, v8}, Lj/j;->j(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_d

    invoke-virtual {v7, v11}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v0, v8}, Lj/j;->h(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_d

    invoke-virtual {v7, v12}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v6, v11, v13}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lw0/w;

    invoke-virtual {v9, v12, v13}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lw0/w;

    if-eqz v14, :cond_d

    if-eqz v15, :cond_d

    iget-object v13, v7, Lw0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v7, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_e
    move-object v7, v8

    iget v0, v6, Lj/j;->d:I

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    invoke-virtual {v6, v0}, Lj/j;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_f

    invoke-virtual {v7, v1}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v9, v1}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/w;

    if-eqz v1, :cond_f

    iget-object v3, v1, Lw0/w;->b:Landroid/view/View;

    invoke-virtual {v7, v3}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v6, v0}, Lj/j;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/w;

    iget-object v8, v7, Lw0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v8, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_11
    move-object v7, v8

    const/4 v0, 0x0

    :goto_a
    iget v1, v6, Lj/j;->d:I

    if-ge v0, v1, :cond_13

    invoke-virtual {v6, v0}, Lj/j;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/w;

    iget-object v3, v1, Lw0/w;->b:Landroid/view/View;

    invoke-virtual {v7, v3}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v7, Lw0/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lw0/p;->m:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    :goto_b
    iget v1, v9, Lj/j;->d:I

    if-ge v0, v1, :cond_15

    invoke-virtual {v9, v0}, Lj/j;->j(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/w;

    iget-object v3, v1, Lw0/w;->b:Landroid/view/View;

    invoke-virtual {v7, v3}, Lw0/p;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v7, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lw0/p;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    invoke-static {}, Lw0/p;->o()Lj/b;

    move-result-object v0

    iget v1, v0, Lj/j;->d:I

    sget-object v3, Lw0/y;->a:Lw0/c0;

    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_c
    if-ltz v1, :cond_1e

    invoke-virtual {v0, v1}, Lj/j;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_1c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw0/n;

    if-eqz v6, :cond_1c

    iget-object v5, v6, Lw0/n;->a:Landroid/view/View;

    if-eqz v5, :cond_1c

    iget-object v8, v6, Lw0/n;->d:Lw0/i0;

    instance-of v9, v8, Lw0/h0;

    if-eqz v9, :cond_16

    check-cast v8, Lw0/h0;

    iget-object v8, v8, Lw0/h0;->a:Landroid/view/WindowId;

    invoke-virtual {v8, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    goto :goto_d

    :cond_16
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_1c

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lw0/p;->q(Landroid/view/View;Z)Lw0/w;

    move-result-object v9

    invoke-virtual {v7, v5, v8}, Lw0/p;->n(Landroid/view/View;Z)Lw0/w;

    move-result-object v10

    if-nez v9, :cond_17

    if-nez v10, :cond_17

    iget-object v8, v7, Lw0/p;->i:Lk/d;

    iget-object v8, v8, Lk/d;->b:Ljava/lang/Object;

    check-cast v8, Lj/b;

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v11}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lw0/w;

    goto :goto_e

    :cond_17
    const/4 v11, 0x0

    :goto_e
    if-nez v9, :cond_18

    if-eqz v10, :cond_19

    :cond_18
    iget-object v5, v6, Lw0/n;->e:Lw0/p;

    iget-object v6, v6, Lw0/n;->c:Lw0/w;

    invoke-virtual {v5, v6, v10}, Lw0/p;->r(Lw0/w;Lw0/w;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_f

    :cond_19
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-virtual {v0, v4}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1b
    :goto_10
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    goto :goto_11

    :cond_1c
    const/4 v11, 0x0

    :cond_1d
    :goto_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_1e
    iget-object v3, v7, Lw0/p;->h:Lk/d;

    iget-object v4, v7, Lw0/p;->i:Lk/d;

    iget-object v5, v7, Lw0/p;->l:Ljava/util/ArrayList;

    iget-object v6, v7, Lw0/p;->m:Ljava/util/ArrayList;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lw0/p;->l(Landroid/view/ViewGroup;Lk/d;Lk/d;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Lw0/p;->y()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lw0/r;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v0, Lw0/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lw0/s;->b()Lj/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/p;

    invoke-virtual {v1, p1}, Lw0/p;->x(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw0/r;->b:Lw0/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lw0/p;->i(Z)V

    return-void
.end method
