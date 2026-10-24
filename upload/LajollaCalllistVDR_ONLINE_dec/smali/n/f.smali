.class public final Ln/f;
.super Landroidx/constraintlayout/core/widgets/analyzer/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lm/f;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/h;-><init>(Lm/f;)V

    iget-object v0, p1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/e;->f()V

    iget-object v0, p1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/g;->f()V

    check-cast p1, Lm/k;

    iget p1, p1, Lm/k;->y0:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ln/d;)V
    .locals 2

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    check-cast v1, Lm/k;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    int-to-float v0, v0

    iget v1, v1, Lm/k;->u0:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    move-object v1, v0

    check-cast v1, Lm/k;

    iget v2, v1, Lm/k;->v0:I

    iget v3, v1, Lm/k;->w0:I

    iget v1, v1, Lm/k;->y0:I

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v1, v5, :cond_2

    if-eq v2, v6, :cond_0

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_0

    :cond_0
    if-eq v3, v6, :cond_1

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_0

    :cond_1
    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Ln/f;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Ln/f;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    goto :goto_2

    :cond_2
    if-eq v2, v6, :cond_3

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_1

    :cond_3
    if-eq v3, v6, :cond_4

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_1

    :cond_4
    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->V:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Ln/f;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Ln/f;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    :goto_2
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    move-object v1, v0

    check-cast v1, Lm/k;

    iget v1, v1, Lm/k;->y0:I

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-ne v1, v2, :cond_0

    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput v1, v0, Lm/f;->a0:I

    goto :goto_0

    :cond_0
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput v1, v0, Lm/f;->b0:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 1

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
