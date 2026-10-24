.class public final Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm/g;

.field public b:Z

.field public c:Z

.field public final d:Lm/g;

.field public final e:Ljava/util/ArrayList;

.field public f:Ln/h;

.field public final g:Ln/b;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lm/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln/e;->b:Z

    iput-boolean v0, p0, Ln/e;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln/e;->f:Ln/h;

    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Ln/e;->g:Ln/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/e;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Ln/e;->a:Lm/g;

    iput-object p1, p0, Ln/e;->d:Lm/g;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V
    .locals 9

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->d:Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/h;->c:Ln/g;

    if-nez p3, :cond_a

    iget-object p3, p0, Ln/e;->a:Lm/g;

    iget-object v0, p3, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eq p1, v0, :cond_a

    iget-object p3, p3, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-ne p1, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Ln/g;

    invoke-direct {p5, p1}, Ln/g;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/h;)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p5, p1, Landroidx/constraintlayout/core/widgets/analyzer/h;->c:Ln/g;

    iget-object p3, p5, Ln/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_0

    :cond_3
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    if-ne p2, v7, :cond_7

    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/g;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_2

    :cond_7
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_3

    :cond_8
    iget-object p3, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_4

    :cond_9
    if-ne p2, v7, :cond_a

    instance-of p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-eqz p3, :cond_a

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/g;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Lm/g;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/f;

    iget-object v3, v2, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v9, 0x1

    aget-object v3, v3, v9

    iget v6, v2, Lm/f;->i0:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iput-boolean v9, v2, Lm/f;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Lm/f;->w:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v10

    const/4 v8, 0x2

    if-gez v7, :cond_2

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_2

    iput v8, v2, Lm/f;->r:I

    :cond_2
    iget v7, v2, Lm/f;->z:F

    cmpg-float v11, v7, v10

    if-gez v11, :cond_3

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v11, :cond_3

    iput v8, v2, Lm/f;->s:I

    :cond_3
    iget v11, v2, Lm/f;->Y:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    const/4 v12, 0x3

    if-lez v11, :cond_9

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v11, :cond_5

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v13, :cond_4

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v13, :cond_5

    :cond_4
    iput v12, v2, Lm/f;->r:I

    goto :goto_1

    :cond_5
    if-ne v3, v11, :cond_7

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v13, :cond_6

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_7

    :cond_6
    iput v12, v2, Lm/f;->s:I

    goto :goto_1

    :cond_7
    if-ne v5, v11, :cond_9

    if-ne v3, v11, :cond_9

    iget v11, v2, Lm/f;->r:I

    if-nez v11, :cond_8

    iput v12, v2, Lm/f;->r:I

    :cond_8
    iget v11, v2, Lm/f;->s:I

    if-nez v11, :cond_9

    iput v12, v2, Lm/f;->s:I

    :cond_9
    :goto_1
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v13, v2, Lm/f;->L:Lm/d;

    iget-object v14, v2, Lm/f;->J:Lm/d;

    if-ne v5, v11, :cond_b

    iget v15, v2, Lm/f;->r:I

    if-ne v15, v9, :cond_b

    iget-object v15, v14, Lm/d;->f:Lm/d;

    if-eqz v15, :cond_a

    iget-object v15, v13, Lm/d;->f:Lm/d;

    if-nez v15, :cond_b

    :cond_a
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_b
    iget-object v15, v2, Lm/f;->M:Lm/d;

    iget-object v10, v2, Lm/f;->K:Lm/d;

    if-ne v3, v11, :cond_d

    iget v4, v2, Lm/f;->s:I

    if-ne v4, v9, :cond_d

    iget-object v4, v10, Lm/d;->f:Lm/d;

    if-eqz v4, :cond_c

    iget-object v4, v15, Lm/d;->f:Lm/d;

    if-nez v4, :cond_d

    :cond_c
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_d
    move-object v4, v3

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iput-object v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v8, v2, Lm/f;->r:I

    iput v8, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->a:I

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, v2, Lm/f;->s:I

    iput v9, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->a:I

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_e

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v12, :cond_e

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v12, :cond_f

    :cond_e
    if-eq v4, v3, :cond_24

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v12, :cond_24

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_f

    goto/16 :goto_3

    :cond_f
    const/high16 v10, 0x3f000000    # 0.5f

    iget-object v12, v2, Lm/f;->R:[Lm/d;

    if-ne v5, v11, :cond_17

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v13, :cond_10

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_17

    :cond_10
    const/4 v14, 0x3

    if-ne v8, v14, :cond_12

    if-ne v4, v13, :cond_11

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_11
    invoke-virtual {v2}, Lm/f;->m()I

    move-result v8

    int-to-float v3, v8

    iget v4, v2, Lm/f;->Y:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v10

    float-to-int v6, v3

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v14, 0x1

    iput-boolean v14, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_12
    const/4 v14, 0x1

    if-ne v8, v14, :cond_13

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v14, v4

    move-object v4, v2

    move-object v5, v13

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto/16 :goto_0

    :cond_13
    move-object v14, v4

    const/4 v4, 0x2

    if-ne v8, v4, :cond_15

    iget-object v4, v0, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v4, v4, v13

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v13, :cond_14

    if-ne v4, v3, :cond_18

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v8

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x1

    const/4 v15, 0x0

    aget-object v10, v12, v15

    iget-object v10, v10, Lm/d;->f:Lm/d;

    if-eqz v10, :cond_16

    aget-object v10, v12, v4

    iget-object v4, v10, Lm/d;->f:Lm/d;

    if-nez v4, :cond_18

    :cond_16
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v13

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_17
    move-object v14, v4

    :cond_18
    if-ne v14, v11, :cond_21

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v10, :cond_19

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_21

    :cond_19
    const/4 v4, 0x3

    if-ne v9, v4, :cond_1c

    if-ne v5, v10, :cond_1a

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v10

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_1a
    invoke-virtual {v2}, Lm/f;->s()I

    move-result v6

    iget v3, v2, Lm/f;->Y:F

    iget v4, v2, Lm/f;->Z:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1b
    int-to-float v4, v6

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v4, v3

    float-to-int v8, v4

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_1c
    const/4 v4, 0x1

    if-ne v9, v4, :cond_1d

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto/16 :goto_0

    :cond_1d
    const/4 v4, 0x2

    if-ne v9, v4, :cond_1f

    iget-object v4, v0, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v4, v4, v10

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v10, :cond_1e

    if-ne v4, v3, :cond_21

    :cond_1e
    invoke-virtual {v2}, Lm/f;->s()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v7, v3

    float-to-int v8, v7

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_1f
    move v3, v4

    aget-object v4, v12, v3

    iget-object v3, v4, Lm/d;->f:Lm/d;

    if-eqz v3, :cond_20

    const/4 v3, 0x3

    aget-object v3, v12, v3

    iget-object v3, v3, Lm/d;->f:Lm/d;

    if-nez v3, :cond_21

    :cond_20
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v10

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_21
    const/4 v3, 0x1

    if-ne v5, v11, :cond_0

    if-ne v14, v11, :cond_0

    if-eq v8, v3, :cond_23

    if-ne v9, v3, :cond_22

    goto :goto_2

    :cond_22
    const/4 v4, 0x2

    if-ne v9, v4, :cond_0

    if-ne v8, v4, :cond_0

    iget-object v4, v0, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_0

    aget-object v4, v4, v3

    if-ne v4, v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    add-float/2addr v7, v3

    float-to-int v9, v7

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v8

    move-object v7, v8

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_23
    :goto_2
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto/16 :goto_0

    :cond_24
    :goto_3
    invoke-virtual {v2}, Lm/f;->s()I

    move-result v6

    if-ne v5, v3, :cond_25

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v5

    iget v6, v14, Lm/d;->g:I

    sub-int/2addr v5, v6

    iget v6, v13, Lm/d;->g:I

    sub-int/2addr v5, v6

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v16, v6

    move v6, v5

    move-object/from16 v5, v16

    :cond_25
    invoke-virtual {v2}, Lm/f;->m()I

    move-result v7

    if-ne v4, v3, :cond_26

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v3

    iget v4, v10, Lm/d;->g:I

    sub-int/2addr v3, v4

    iget v4, v15, Lm/d;->g:I

    sub-int/2addr v3, v4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v8, v3

    goto :goto_4

    :cond_26
    move v8, v7

    :goto_4
    move-object v7, v4

    move-object/from16 v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iget-object v3, v2, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v2}, Lm/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/f;->a:Z

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Ln/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Ln/e;->d:Lm/g;

    iget-object v2, v1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/e;->f()V

    iget-object v2, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/g;->f()V

    iget-object v2, v1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/f;

    instance-of v7, v4, Lm/k;

    if-eqz v7, :cond_1

    new-instance v5, Ln/f;

    invoke-direct {v5, v4}, Ln/f;-><init>(Lm/f;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lm/f;->z()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Lm/f;->b:Ln/c;

    if-nez v7, :cond_2

    new-instance v7, Ln/c;

    invoke-direct {v7, v6, v4}, Ln/c;-><init>(ILm/f;)V

    iput-object v7, v4, Lm/f;->b:Ln/c;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v6, v4, Lm/f;->b:Ln/c;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v4, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, Lm/f;->A()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v4, Lm/f;->c:Ln/c;

    if-nez v6, :cond_5

    new-instance v6, Ln/c;

    invoke-direct {v6, v5, v4}, Ln/c;-><init>(ILm/f;)V

    iput-object v6, v4, Lm/f;->c:Ln/c;

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v5, v4, Lm/f;->c:Ln/c;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, v4, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v5, v4, Lm/m;

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/c;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/core/widgets/analyzer/c;-><init>(Lm/f;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/h;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/h;->f()V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    if-ne v3, v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/h;->d()V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Ln/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Ln/e;->a:Lm/g;

    iget-object v2, v1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {p0, v2, v6, v0}, Ln/e;->e(Landroidx/constraintlayout/core/widgets/analyzer/h;ILjava/util/ArrayList;)V

    iget-object v1, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {p0, v1, v5, v0}, Ln/e;->e(Landroidx/constraintlayout/core/widgets/analyzer/h;ILjava/util/ArrayList;)V

    iput-boolean v6, p0, Ln/e;->b:Z

    return-void
.end method

.method public final d(Lm/g;I)I
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v3, v1, Ln/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_d

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln/g;

    iget-object v8, v8, Ln/g;->a:Landroidx/constraintlayout/core/widgets/analyzer/h;

    instance-of v9, v8, Ln/c;

    if-eqz v9, :cond_0

    move-object v9, v8

    check-cast v9, Ln/c;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->f:I

    if-eq v9, v2, :cond_2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-nez v9, :cond_2

    goto :goto_1

    :cond_1
    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-nez v9, :cond_2

    :goto_1
    const-wide/16 v8, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_7

    :cond_2
    if-nez v2, :cond_3

    iget-object v9, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    goto :goto_2

    :cond_3
    iget-object v9, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    :goto_2
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-nez v2, :cond_4

    iget-object v10, v0, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    goto :goto_3

    :cond_4
    iget-object v10, v0, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    :goto_3
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/h;->j()J

    move-result-wide v12

    iget-object v14, v8, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    const-wide/16 v9, 0x0

    invoke-static {v14, v9, v10}, Ln/g;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v15

    invoke-static {v11, v9, v10}, Ln/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v9

    sub-long/2addr v15, v12

    iget v0, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    neg-int v1, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    int-to-long v3, v1

    cmp-long v1, v15, v3

    if-ltz v1, :cond_5

    int-to-long v0, v0

    add-long/2addr v15, v0

    :cond_5
    move-wide v0, v15

    neg-long v3, v9

    sub-long/2addr v3, v12

    iget v9, v14, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v9, v9

    sub-long/2addr v3, v9

    cmp-long v15, v3, v9

    if-ltz v15, :cond_6

    sub-long/2addr v3, v9

    :cond_6
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Lm/f;

    if-nez v2, :cond_7

    iget v8, v8, Lm/f;->f0:F

    goto :goto_4

    :cond_7
    const/4 v9, 0x1

    if-ne v2, v9, :cond_8

    iget v8, v8, Lm/f;->g0:F

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, -0x40800000    # -1.0f

    :goto_4
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v9, :cond_9

    long-to-float v3, v3

    div-float/2addr v3, v8

    long-to-float v0, v0

    sub-float v1, v10, v8

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-long v0, v0

    goto :goto_5

    :cond_9
    const-wide/16 v0, 0x0

    :goto_5
    long-to-float v0, v0

    mul-float v1, v0, v8

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-long v1, v1

    invoke-static {v10, v8, v0, v3}, Landroidx/activity/b;->a(FFFF)F

    move-result v0

    float-to-long v3, v0

    add-long/2addr v1, v12

    add-long/2addr v1, v3

    iget v0, v14, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v3, v0

    add-long/2addr v3, v1

    iget v0, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    move-wide v8, v3

    goto :goto_7

    :cond_a
    move-object/from16 v17, v3

    move/from16 v18, v4

    if-eqz v9, :cond_b

    iget v0, v14, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    invoke-static {v14, v0, v1}, Ln/g;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v0

    iget v2, v14, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v12

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_6
    move-wide v8, v0

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_c

    iget v0, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    invoke-static {v11, v0, v1}, Ln/g;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;J)J

    move-result-wide v0

    iget v2, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    neg-int v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v12

    neg-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6

    :cond_c
    iget v0, v14, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/h;->j()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget v0, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    move-wide v8, v2

    :goto_7
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v6

    return v0
.end method

.method public final e(Landroidx/constraintlayout/core/widgets/analyzer/h;ILjava/util/ArrayList;)V
    .locals 9

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/d;

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/d;

    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/g;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Ln/e;->a(Landroidx/constraintlayout/core/widgets/analyzer/a;IILjava/util/ArrayList;Ln/g;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    iget-object v0, p0, Ln/e;->g:Ln/b;

    iput-object p2, v0, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, v0, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, v0, Ln/b;->c:I

    iput p5, v0, Ln/b;->d:I

    iget-object p2, p0, Ln/e;->f:Ln/h;

    invoke-virtual {p2, p1, v0}, Ln/h;->b(Lm/f;Ln/b;)V

    iget p2, v0, Ln/b;->e:I

    invoke-virtual {p1, p2}, Lm/f;->P(I)V

    iget p2, v0, Ln/b;->f:I

    invoke-virtual {p1, p2}, Lm/f;->M(I)V

    iget-boolean p2, v0, Ln/b;->h:Z

    iput-boolean p2, p1, Lm/f;->E:Z

    iget p2, v0, Ln/b;->g:I

    iput p2, p1, Lm/f;->c0:I

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lm/f;->E:Z

    return-void
.end method

.method public final g()V
    .locals 12

    iget-object v0, p0, Ln/e;->a:Lm/g;

    iget-object v0, v0, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/f;

    iget-boolean v2, v1, Lm/f;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Lm/f;->r:I

    iget v4, v1, Lm/f;->s:I

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v6, :cond_3

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v6, :cond_4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object v7, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v5, :cond_6

    if-eqz v11, :cond_6

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-virtual/range {v2 .. v7}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iput-boolean v9, v1, Lm/f;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v8, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lm/f;->m()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lm/f;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iput-boolean v9, v1, Lm/f;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Ln/e;->f(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lm/f;->s()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lm/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Lm/f;->s()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    iput-boolean v9, v1, Lm/f;->a:Z

    :cond_a
    :goto_3
    iget-boolean v2, v1, Lm/f;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lm/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/g;->l:Ln/a;

    if-eqz v2, :cond_0

    iget v1, v1, Lm/f;->c0:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
