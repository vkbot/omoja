.class public final Landroidx/fragment/app/k;
.super Landroidx/fragment/app/h1;
.source "SourceFile"


# direct methods
.method public static i(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/k;->i(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static j(Lk/b;Landroid/view/View;)V
    .locals 4

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/f0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/k;->j(Lk/b;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static k(Lk/b;Ljava/util/Collection;)V
    .locals 2

    invoke-virtual {p0}, Lk/b;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lk/g;

    invoke-virtual {p0}, Lk/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/f0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .locals 33

    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/g1;

    iget-object v2, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v2, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-static {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/c;->a:[I

    iget-object v4, v1, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v13, :cond_2

    if-eq v3, v12, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eq v3, v11, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v2, v3, :cond_0

    move-object v10, v1

    goto :goto_0

    :cond_2
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v2, v3, :cond_0

    if-nez v9, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/g1;

    new-instance v2, Ld0/c;

    invoke-direct {v2}, Ld0/c;-><init>()V

    invoke-virtual {v1}, Landroidx/fragment/app/g1;->d()V

    iget-object v3, v1, Landroidx/fragment/app/g1;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/fragment/app/h;

    invoke-direct {v3, v1, v2, v7}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g1;Ld0/c;Z)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ld0/c;

    invoke-direct {v2}, Ld0/c;-><init>()V

    invoke-virtual {v1}, Landroidx/fragment/app/g1;->d()V

    iget-object v3, v1, Landroidx/fragment/app/g1;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/fragment/app/j;

    if-eqz v7, :cond_4

    if-ne v1, v9, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v10, :cond_5

    :goto_2
    move v4, v13

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v3, v1, v2, v7, v4}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/g1;Ld0/c;ZZ)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/fragment/app/t0;

    invoke-direct {v2, v6, v5, v1}, Landroidx/fragment/app/t0;-><init>(Landroidx/fragment/app/k;Ljava/util/ArrayList;Landroidx/fragment/app/g1;)V

    iget-object v1, v1, Landroidx/fragment/app/g1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->b()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v16, v0

    goto/16 :goto_7

    :cond_7
    iget-object v11, v1, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    invoke-virtual {v1, v11}, Landroidx/fragment/app/j;->c(Ljava/lang/Object;)Landroidx/fragment/app/b1;

    move-result-object v13

    iget-object v12, v1, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    invoke-virtual {v1, v12}, Landroidx/fragment/app/j;->c(Ljava/lang/Object;)Landroidx/fragment/app/b1;

    move-result-object v8

    const-string v4, " returned Transition "

    move-object/from16 v16, v0

    const-string v0, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    iget-object v1, v1, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    if-eqz v13, :cond_9

    if-eqz v8, :cond_9

    if-ne v13, v8, :cond_8

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    goto :goto_6

    :cond_a
    move-object v13, v8

    :goto_6
    if-nez v2, :cond_b

    move-object v2, v13

    goto :goto_7

    :cond_b
    if-eqz v13, :cond_d

    if-ne v2, v13, :cond_c

    goto :goto_7

    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_7
    move-object/from16 v0, v16

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_e
    iget-object v8, v6, Landroidx/fragment/app/h1;->a:Landroid/view/ViewGroup;

    const-string v11, "FragmentManager"

    if-nez v2, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    iget-object v2, v1, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->a()V

    goto :goto_8

    :cond_f
    move-object v13, v3

    move-object v15, v5

    move-object v5, v6

    move-object v12, v11

    move-object/from16 v25, v14

    const/4 v0, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1d

    :cond_10
    new-instance v12, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v26, v11

    move-object/from16 v25, v14

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v27, 0x0

    move-object v14, v9

    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v3

    move-object/from16 v3, v18

    check-cast v3, Landroidx/fragment/app/j;

    iget-object v3, v3, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    if-eqz v3, :cond_11

    const/16 v18, 0x1

    goto :goto_a

    :cond_11
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_22

    if-eqz v14, :cond_22

    if-eqz v5, :cond_22

    invoke-virtual {v2, v3}, Landroidx/fragment/app/b1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/b1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget-object v3, v5, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v5, v3, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/r;

    if-eqz v5, :cond_12

    iget-object v5, v5, Landroidx/fragment/app/r;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_13

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    iget-object v14, v14, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v6, v14, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/r;

    if-eqz v6, :cond_14

    iget-object v6, v6, Landroidx/fragment/app/r;->i:Ljava/util/ArrayList;

    if-nez v6, :cond_15

    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    move-object/from16 v29, v15

    iget-object v15, v14, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/r;

    if-eqz v15, :cond_16

    iget-object v15, v15, Landroidx/fragment/app/r;->j:Ljava/util/ArrayList;

    if-nez v15, :cond_17

    :cond_16
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    move-object/from16 v30, v12

    move-object/from16 v31, v13

    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-ge v12, v13, :cond_19

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-eq v13, v2, :cond_18

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v18

    goto :goto_b

    :cond_19
    iget-object v6, v3, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/r;

    if-eqz v6, :cond_1a

    iget-object v6, v6, Landroidx/fragment/app/r;->j:Ljava/util/ArrayList;

    if-nez v6, :cond_1b

    :cond_1a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_1c

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v15, v2}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    const/4 v2, -0x1

    goto :goto_c

    :cond_1c
    new-instance v2, Lk/b;

    invoke-direct {v2}, Lk/b;-><init>()V

    iget-object v12, v14, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-static {v2, v12}, Landroidx/fragment/app/k;->j(Lk/b;Landroid/view/View;)V

    invoke-static {v2, v5}, Landroidx/appcompat/view/menu/e;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lk/b;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-static {v0, v12}, Landroidx/appcompat/view/menu/e;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    new-instance v12, Lk/b;

    invoke-direct {v12}, Lk/b;-><init>()V

    iget-object v13, v3, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-static {v12, v13}, Landroidx/fragment/app/k;->j(Lk/b;Landroid/view/View;)V

    invoke-static {v12, v6}, Landroidx/appcompat/view/menu/e;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lk/b;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/appcompat/view/menu/e;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    sget-object v13, Landroidx/fragment/app/u0;->a:Landroidx/fragment/app/z0;

    iget v13, v0, Lk/j;->c:I

    :cond_1d
    :goto_d
    const/4 v15, -0x1

    add-int/2addr v13, v15

    if-ltz v13, :cond_1e

    invoke-virtual {v0, v13}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lk/j;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v0, v13}, Lk/j;->i(I)Ljava/lang/Object;

    goto :goto_d

    :cond_1e
    invoke-virtual {v0}, Lk/b;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-static {v2, v13}, Landroidx/fragment/app/k;->k(Lk/b;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lk/b;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/fragment/app/k;->k(Lk/b;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lk/j;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 p1, v0

    move-object v7, v4

    move-object v14, v9

    move-object v5, v10

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v28

    move-object/from16 v0, v30

    const/4 v11, 0x0

    goto/16 :goto_10

    :cond_1f
    invoke-static {v3, v14, v7}, Landroidx/fragment/app/u0;->a(Landroidx/fragment/app/t;Landroidx/fragment/app/t;Z)V

    new-instance v3, Landroidx/fragment/app/f;

    invoke-direct {v3, v10, v9, v7, v12}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/g1;Landroidx/fragment/app/g1;ZLk/b;)V

    invoke-static {v8, v3}, Lh0/t;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lk/b;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v3, v18

    invoke-virtual {v3, v2, v11}, Landroidx/fragment/app/b1;->n(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v28, v2

    goto :goto_e

    :cond_20
    move-object/from16 v3, v18

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_e
    invoke-virtual {v12}, Lk/b;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2, v5}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_21

    new-instance v6, Landroidx/appcompat/view/menu/h;

    const/4 v12, 0x1

    move-object v15, v0

    move-object v0, v6

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v32, v3

    move-object/from16 v13, v16

    move-object v3, v5

    move-object v7, v4

    const/4 v5, 0x0

    move-object/from16 v4, v31

    move-object/from16 p1, v15

    move-object/from16 v15, v17

    move v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v8, v6}, Lh0/t;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    move-object/from16 v0, v30

    move-object/from16 v2, v32

    const/16 v27, 0x1

    goto :goto_f

    :cond_21
    move-object/from16 p1, v0

    move-object v14, v1

    move-object/from16 v32, v3

    move-object v7, v4

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    move-object/from16 v0, v30

    move-object/from16 v2, v32

    :goto_f
    invoke-virtual {v2, v11, v0, v7}, Landroidx/fragment/app/b1;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/b1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    move-object v1, v14

    move-object/from16 v3, v28

    move-object v14, v9

    goto :goto_10

    :cond_22
    move-object/from16 p1, v0

    move-object v7, v4

    move-object v0, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v15

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    move-object/from16 v3, v28

    :goto_10
    move-object/from16 v6, p0

    move-object v12, v0

    move-object v4, v7

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object/from16 v15, v29

    move-object/from16 v13, v31

    move-object/from16 v0, p1

    move/from16 v7, p2

    goto/16 :goto_9

    :cond_23
    move-object/from16 p1, v0

    move-object/from16 v28, v3

    move-object v7, v4

    move-object v0, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v15

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/j;

    invoke-virtual {v12}, Landroidx/fragment/app/i;->b()Z

    move-result v16

    move-object/from16 p2, v4

    iget-object v4, v12, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    if-eqz v16, :cond_24

    move-object/from16 v24, v10

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroidx/fragment/app/i;->a()V

    move-object/from16 v4, p2

    move-object/from16 v10, v24

    goto :goto_11

    :cond_24
    move-object/from16 v24, v10

    iget-object v10, v12, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    invoke-virtual {v2, v10}, Landroidx/fragment/app/b1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v11, :cond_26

    if-eq v4, v14, :cond_25

    if-ne v4, v9, :cond_26

    :cond_25
    const/4 v9, 0x1

    goto :goto_12

    :cond_26
    const/4 v9, 0x0

    :goto_12
    if-nez v10, :cond_28

    if-nez v9, :cond_27

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroidx/fragment/app/i;->a()V

    :cond_27
    const/4 v4, 0x0

    move-object/from16 v16, v0

    move-object/from16 v32, v5

    move-object/from16 v30, v11

    move-object/from16 v9, v28

    move-object/from16 v0, v31

    move-object/from16 v5, p0

    goto/16 :goto_17

    :cond_28
    move-object/from16 v30, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v5

    iget-object v5, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v5, v5, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-static {v11, v5}, Landroidx/fragment/app/k;->i(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v9, :cond_2a

    if-ne v4, v14, :cond_29

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_29
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2a
    :goto_13
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v2, v0, v10}, Landroidx/fragment/app/b1;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_14

    :cond_2b
    invoke-virtual {v2, v10, v11}, Landroidx/fragment/app/b1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/b1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v5, v4, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v9, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v5, v9, :cond_2c

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    move-object/from16 v16, v0

    iget-object v0, v9, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v9, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {v2, v10, v0, v5}, Landroidx/fragment/app/b1;->l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v0, Landroidx/fragment/app/g;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct {v0, v9, v5, v11}, Landroidx/fragment/app/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8, v0}, Lh0/t;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_2c
    :goto_14
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v16, v0

    :goto_15
    iget-object v0, v4, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v9, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v9, :cond_2e

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v31

    if-eqz v27, :cond_2d

    invoke-virtual {v2, v10, v0}, Landroidx/fragment/app/b1;->o(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2d
    move-object/from16 v9, v28

    goto :goto_16

    :cond_2e
    move-object/from16 v9, v28

    move-object/from16 v0, v31

    invoke-virtual {v2, v9, v10}, Landroidx/fragment/app/b1;->n(Landroid/view/View;Ljava/lang/Object;)V

    :goto_16
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v12, Landroidx/fragment/app/j;->d:Z

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v10, v4}, Landroidx/fragment/app/b1;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_17

    :cond_2f
    move-object/from16 v11, v32

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v10, v4}, Landroidx/fragment/app/b1;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v32, v10

    :goto_17
    move-object/from16 v4, p2

    move-object/from16 v31, v0

    move-object/from16 v28, v9

    move-object/from16 v0, v16

    move-object/from16 v9, v24

    move-object v10, v9

    move-object/from16 v11, v30

    move-object/from16 v5, v32

    goto/16 :goto_11

    :cond_30
    move-object/from16 v24, v10

    move-object v10, v11

    move-object v11, v5

    move-object/from16 v5, p0

    invoke-virtual {v2, v6, v11, v10}, Landroidx/fragment/app/b1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/j;

    invoke-virtual {v6}, Landroidx/fragment/app/i;->b()Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_18

    :cond_31
    iget-object v9, v6, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    move-object/from16 v11, v24

    if-eqz v10, :cond_33

    if-eq v9, v14, :cond_32

    if-ne v9, v11, :cond_33

    :cond_32
    move-object/from16 p2, v4

    const/4 v12, 0x1

    goto :goto_19

    :cond_33
    move-object/from16 p2, v4

    const/4 v12, 0x0

    :goto_19
    iget-object v4, v6, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    if-nez v4, :cond_35

    if-eqz v12, :cond_34

    goto :goto_1a

    :cond_34
    move-object/from16 v12, v26

    goto :goto_1c

    :cond_35
    :goto_1a
    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v8}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_37

    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/k0;->I(I)Z

    move-result v12

    if-eqz v12, :cond_36

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "SpecialEffectsController: Container "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v26

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_36
    move-object/from16 v12, v26

    :goto_1b
    invoke-virtual {v6}, Landroidx/fragment/app/i;->a()V

    :goto_1c
    move-object/from16 v4, p2

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    goto :goto_18

    :cond_37
    move-object/from16 v12, v26

    iget-object v4, v9, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    new-instance v4, Landroidx/fragment/app/g;

    const/4 v9, 0x1

    invoke-direct {v4, v9, v5, v6}, Landroidx/fragment/app/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v4}, Landroidx/fragment/app/b1;->p(Ljava/lang/Object;Ljava/lang/Runnable;)V

    move-object/from16 v4, p2

    move-object/from16 v24, v11

    goto :goto_18

    :cond_38
    move-object/from16 v12, v26

    const/4 v9, 0x1

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v8}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_39

    const/4 v0, 0x0

    goto :goto_1d

    :cond_39
    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroidx/fragment/app/u0;->b(Ljava/util/ArrayList;I)V

    invoke-static {v1}, Landroidx/fragment/app/b1;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v8, v0}, Landroidx/fragment/app/b1;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-static {v8, v7, v1, v4, v0}, Landroidx/fragment/app/b1;->q(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lk/b;)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/fragment/app/u0;->b(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v10, v7, v1}, Landroidx/fragment/app/b1;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_1d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v0

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/h;

    invoke-virtual {v7}, Landroidx/fragment/app/i;->b()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-virtual {v7}, Landroidx/fragment/app/i;->a()V

    goto :goto_1f

    :cond_3a
    invoke-virtual {v7, v2}, Landroidx/fragment/app/h;->c(Landroid/content/Context;)Landroidx/fragment/app/z;

    move-result-object v10

    if-nez v10, :cond_3b

    invoke-virtual {v7}, Landroidx/fragment/app/i;->a()V

    goto :goto_1f

    :cond_3b
    iget-object v10, v10, Landroidx/fragment/app/z;->b:Landroid/animation/Animator;

    if-nez v10, :cond_3c

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3c
    iget-object v11, v7, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iget-object v14, v11, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/k0;->I(I)Z

    move-result v9

    if-eqz v9, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring Animator set on "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " as this Fragment was involved in a Transition."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    invoke-virtual {v7}, Landroidx/fragment/app/i;->a()V

    :goto_1f
    const/4 v0, 0x0

    :goto_20
    const/4 v9, 0x1

    goto :goto_1e

    :cond_3e
    iget-object v0, v11, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v6, :cond_3f

    const/16 v20, 0x1

    goto :goto_21

    :cond_3f
    const/16 v20, 0x0

    :goto_21
    if-eqz v20, :cond_40

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_40
    iget-object v0, v14, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v6, Landroidx/fragment/app/d;

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v0

    move-object/from16 v21, v11

    move-object/from16 v22, v7

    invoke-direct/range {v17 .. v22}, Landroidx/fragment/app/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/g1;Landroidx/fragment/app/h;)V

    invoke-virtual {v10, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    new-instance v0, Landroidx/fragment/app/d0;

    invoke-direct {v0, v5, v10}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/k;Landroid/animation/Animator;)V

    iget-object v6, v7, Landroidx/fragment/app/i;->b:Ld0/c;

    invoke-virtual {v6, v0}, Ld0/c;->b(Ld0/b;)V

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_20

    :cond_41
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/h;

    iget-object v4, v3, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iget-object v7, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    const-string v9, "Ignoring Animation set on "

    if-eqz v1, :cond_43

    const/4 v10, 0x2

    invoke-static {v10}, Landroidx/fragment/app/k0;->I(I)Z

    move-result v4

    if-eqz v4, :cond_42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as Animations cannot run alongside Transitions."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-virtual {v3}, Landroidx/fragment/app/i;->a()V

    goto :goto_22

    :cond_43
    if-eqz v6, :cond_45

    const/4 v10, 0x2

    invoke-static {v10}, Landroidx/fragment/app/k0;->I(I)Z

    move-result v4

    if-eqz v4, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as Animations cannot run alongside Animators."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-virtual {v3}, Landroidx/fragment/app/i;->a()V

    goto :goto_22

    :cond_45
    const/4 v10, 0x2

    iget-object v7, v7, Landroidx/fragment/app/t;->E:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/h;->c(Landroid/content/Context;)Landroidx/fragment/app/z;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/fragment/app/z;->a:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v11, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v4, v11, :cond_46

    invoke-virtual {v7, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroidx/fragment/app/i;->a()V

    goto :goto_23

    :cond_46
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v4, Landroidx/fragment/app/a0;

    invoke-direct {v4, v9, v8, v7}, Landroidx/fragment/app/a0;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/e;

    invoke-direct {v9, v7, v8, v3, v5}, Landroidx/fragment/app/e;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/h;Landroidx/fragment/app/k;)V

    invoke-virtual {v4, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_23
    new-instance v4, Ll/d;

    invoke-direct {v4, v7, v8, v3, v5}, Ll/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/h;Landroidx/fragment/app/k;)V

    iget-object v3, v3, Landroidx/fragment/app/i;->b:Ld0/c;

    invoke-virtual {v3, v4}, Ld0/c;->b(Ld0/b;)V

    goto/16 :goto_22

    :cond_47
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/g1;

    iget-object v2, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    iget-object v2, v2, Landroidx/fragment/app/t;->E:Landroid/view/View;

    iget-object v1, v1, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    goto :goto_24

    :cond_48
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
