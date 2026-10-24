.class public final Landroidx/constraintlayout/core/widgets/analyzer/c;
.super Landroidx/constraintlayout/core/widgets/analyzer/h;
.source "SourceFile"


# virtual methods
.method public final a(Ln/d;)V
    .locals 7

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    check-cast p1, Lm/a;

    iget v0, p1, Lm/a;->w0:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    if-eq v5, v3, :cond_1

    if-ge v6, v5, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    if-ge v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    iget p1, p1, Lm/a;->y0:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget p1, p1, Lm/a;->y0:I

    add-int/2addr v5, p1

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    :goto_2
    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    instance-of v1, v0, Lm/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    check-cast v0, Lm/a;

    iget v3, v0, Lm/a;->w0:I

    iget-boolean v4, v0, Lm/a;->x0:Z

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    :goto_0
    iget v2, v0, Lm/m;->v0:I

    if-ge v7, v2, :cond_2

    iget-object v2, v0, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_1

    iget v3, v2, Lm/f;->i0:I

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    goto/16 :goto_8

    :cond_3
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    :goto_2
    iget v2, v0, Lm/m;->v0:I

    if-ge v7, v2, :cond_5

    iget-object v2, v0, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_4

    iget v3, v2, Lm/f;->i0:I

    if-ne v3, v6, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    goto :goto_8

    :cond_6
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    :goto_4
    iget v2, v0, Lm/m;->v0:I

    if-ge v7, v2, :cond_8

    iget-object v2, v0, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_7

    iget v3, v2, Lm/f;->i0:I

    if-ne v3, v6, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    goto :goto_8

    :cond_9
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    :goto_6
    iget v2, v0, Lm/m;->v0:I

    if-ge v7, v2, :cond_b

    iget-object v2, v0, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_a

    iget v3, v2, Lm/f;->i0:I

    if-ne v3, v6, :cond_a

    goto :goto_7

    :cond_a
    iget-object v2, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/c;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    instance-of v1, v0, Lm/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lm/a;

    iget v1, v1, Lm/a;->w0:I

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput v1, v0, Lm/f;->b0:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput v1, v0, Lm/f;->a0:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->c:Ln/g;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    return-void
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
