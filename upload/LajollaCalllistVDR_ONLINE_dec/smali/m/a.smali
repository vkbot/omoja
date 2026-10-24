.class public final Lm/a;
.super Lm/m;
.source "SourceFile"


# instance fields
.field public w0:I

.field public x0:Z

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lm/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm/a;->w0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm/a;->x0:Z

    iput v0, p0, Lm/a;->y0:I

    iput-boolean v0, p0, Lm/a;->z0:Z

    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lm/a;->z0:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lm/a;->z0:Z

    return v0
.end method

.method public final U()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lm/m;->v0:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lm/m;->u0:[Lm/f;

    aget-object v4, v4, v2

    iget-boolean v7, p0, Lm/a;->x0:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lm/f;->d()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, p0, Lm/a;->w0:I

    if-eqz v7, :cond_1

    if-ne v7, v0, :cond_2

    :cond_1
    invoke-virtual {v4}, Lm/f;->C()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    iget v7, p0, Lm/a;->w0:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Lm/f;->D()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    if-lez v4, :cond_13

    move v2, v1

    move v3, v2

    :goto_3
    iget v4, p0, Lm/m;->v0:I

    if-ge v1, v4, :cond_10

    iget-object v4, p0, Lm/m;->u0:[Lm/f;

    aget-object v4, v4, v1

    iget-boolean v7, p0, Lm/a;->x0:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lm/f;->d()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-nez v3, :cond_b

    iget v3, p0, Lm/a;->w0:I

    if-nez v3, :cond_7

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v2

    invoke-virtual {v2}, Lm/d;->d()I

    move-result v2

    goto :goto_4

    :cond_7
    if-ne v3, v0, :cond_8

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v2

    invoke-virtual {v2}, Lm/d;->d()I

    move-result v2

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v2

    invoke-virtual {v2}, Lm/d;->d()I

    move-result v2

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v2

    invoke-virtual {v2}, Lm/d;->d()I

    move-result v2

    :cond_a
    :goto_4
    move v3, v0

    :cond_b
    iget v7, p0, Lm/a;->w0:I

    if-nez v7, :cond_c

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v4

    invoke-virtual {v4}, Lm/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_c
    if-ne v7, v0, :cond_d

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v4

    invoke-virtual {v4}, Lm/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_d
    if-ne v7, v6, :cond_e

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v4

    invoke-virtual {v4}, Lm/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_e
    if-ne v7, v5, :cond_f

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Lm/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lm/d;

    move-result-object v4

    invoke-virtual {v4}, Lm/d;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_10
    iget v1, p0, Lm/a;->y0:I

    add-int/2addr v2, v1

    iget v1, p0, Lm/a;->w0:I

    if-eqz v1, :cond_12

    if-ne v1, v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v2, v2}, Lm/f;->L(II)V

    goto :goto_7

    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Lm/f;->K(II)V

    :goto_7
    iput-boolean v0, p0, Lm/a;->z0:Z

    return v0

    :cond_13
    return v1
.end method

.method public final V()I
    .locals 3

    iget v0, p0, Lm/a;->w0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lk/e;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lm/f;->R:[Lm/d;

    const/4 v3, 0x0

    iget-object v4, v0, Lm/f;->J:Lm/d;

    aput-object v4, v2, v3

    const/4 v5, 0x2

    iget-object v6, v0, Lm/f;->K:Lm/d;

    aput-object v6, v2, v5

    const/4 v7, 0x1

    iget-object v8, v0, Lm/f;->L:Lm/d;

    aput-object v8, v2, v7

    const/4 v9, 0x3

    iget-object v10, v0, Lm/f;->M:Lm/d;

    aput-object v10, v2, v9

    move v11, v3

    :goto_0
    array-length v12, v2

    if-ge v11, v12, :cond_0

    aget-object v12, v2, v11

    invoke-virtual {v1, v12}, Lk/e;->k(Ljava/lang/Object;)Lk/i;

    move-result-object v13

    iput-object v13, v12, Lm/d;->i:Lk/i;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget v11, v0, Lm/a;->w0:I

    if-ltz v11, :cond_1f

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1f

    aget-object v2, v2, v11

    iget-boolean v11, v0, Lm/a;->z0:Z

    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lm/a;->U()Z

    :cond_1
    iget-boolean v11, v0, Lm/a;->z0:Z

    if-eqz v11, :cond_6

    iput-boolean v3, v0, Lm/a;->z0:Z

    iget v2, v0, Lm/a;->w0:I

    if-eqz v2, :cond_4

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    if-eq v2, v5, :cond_3

    if-ne v2, v9, :cond_5

    :cond_3
    iget-object v2, v6, Lm/d;->i:Lk/i;

    iget v3, v0, Lm/f;->b0:I

    invoke-virtual {v1, v2, v3}, Lk/e;->d(Lk/i;I)V

    iget-object v2, v10, Lm/d;->i:Lk/i;

    iget v3, v0, Lm/f;->b0:I

    invoke-virtual {v1, v2, v3}, Lk/e;->d(Lk/i;I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, v4, Lm/d;->i:Lk/i;

    iget v3, v0, Lm/f;->a0:I

    invoke-virtual {v1, v2, v3}, Lk/e;->d(Lk/i;I)V

    iget-object v2, v8, Lm/d;->i:Lk/i;

    iget v3, v0, Lm/f;->a0:I

    invoke-virtual {v1, v2, v3}, Lk/e;->d(Lk/i;I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    move v11, v3

    :goto_3
    iget v13, v0, Lm/m;->v0:I

    if-ge v11, v13, :cond_c

    iget-object v13, v0, Lm/m;->u0:[Lm/f;

    aget-object v13, v13, v11

    iget-boolean v14, v0, Lm/a;->x0:Z

    if-nez v14, :cond_7

    invoke-virtual {v13}, Lm/f;->d()Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_5

    :cond_7
    iget v14, v0, Lm/a;->w0:I

    if-eqz v14, :cond_8

    if-ne v14, v7, :cond_9

    :cond_8
    iget-object v15, v13, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v3

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v12, :cond_9

    iget-object v12, v13, Lm/f;->J:Lm/d;

    iget-object v12, v12, Lm/d;->f:Lm/d;

    if-eqz v12, :cond_9

    iget-object v12, v13, Lm/f;->L:Lm/d;

    iget-object v12, v12, Lm/d;->f:Lm/d;

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_9
    if-eq v14, v5, :cond_a

    if-ne v14, v9, :cond_b

    :cond_a
    iget-object v12, v13, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v12, v7

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_b

    iget-object v12, v13, Lm/f;->K:Lm/d;

    iget-object v12, v12, Lm/d;->f:Lm/d;

    if-eqz v12, :cond_b

    iget-object v12, v13, Lm/f;->M:Lm/d;

    iget-object v12, v12, Lm/d;->f:Lm/d;

    if-eqz v12, :cond_b

    :goto_4
    move v11, v7

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    goto :goto_3

    :cond_c
    move v11, v3

    :goto_6
    invoke-virtual {v4}, Lm/d;->g()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-virtual {v8}, Lm/d;->g()Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_7

    :cond_d
    move v12, v3

    goto :goto_8

    :cond_e
    :goto_7
    move v12, v7

    :goto_8
    invoke-virtual {v6}, Lm/d;->g()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v10}, Lm/d;->g()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    move v13, v3

    goto :goto_a

    :cond_10
    :goto_9
    move v13, v7

    :goto_a
    if-nez v11, :cond_15

    iget v11, v0, Lm/a;->w0:I

    if-nez v11, :cond_11

    if-nez v12, :cond_14

    :cond_11
    if-ne v11, v5, :cond_12

    if-nez v13, :cond_14

    :cond_12
    if-ne v11, v7, :cond_13

    if-nez v12, :cond_14

    :cond_13
    if-ne v11, v9, :cond_15

    if-eqz v13, :cond_15

    :cond_14
    move v11, v7

    goto :goto_b

    :cond_15
    move v11, v3

    :goto_b
    if-nez v11, :cond_16

    const/4 v11, 0x4

    goto :goto_c

    :cond_16
    const/4 v11, 0x5

    :goto_c
    move v12, v3

    :goto_d
    iget v13, v0, Lm/m;->v0:I

    if-ge v12, v13, :cond_1b

    iget-object v13, v0, Lm/m;->u0:[Lm/f;

    aget-object v13, v13, v12

    iget-boolean v14, v0, Lm/a;->x0:Z

    if-nez v14, :cond_17

    invoke-virtual {v13}, Lm/f;->d()Z

    move-result v14

    if-nez v14, :cond_17

    goto :goto_11

    :cond_17
    iget-object v14, v13, Lm/f;->R:[Lm/d;

    iget v15, v0, Lm/a;->w0:I

    aget-object v14, v14, v15

    invoke-virtual {v1, v14}, Lk/e;->k(Ljava/lang/Object;)Lk/i;

    move-result-object v14

    iget v15, v0, Lm/a;->w0:I

    iget-object v13, v13, Lm/f;->R:[Lm/d;

    aget-object v13, v13, v15

    iput-object v14, v13, Lm/d;->i:Lk/i;

    iget-object v9, v13, Lm/d;->f:Lm/d;

    if-eqz v9, :cond_18

    iget-object v9, v9, Lm/d;->d:Lm/f;

    if-ne v9, v0, :cond_18

    iget v9, v13, Lm/d;->g:I

    add-int/2addr v9, v3

    goto :goto_e

    :cond_18
    move v9, v3

    :goto_e
    if-eqz v15, :cond_1a

    if-ne v15, v5, :cond_19

    goto :goto_f

    :cond_19
    iget-object v13, v2, Lm/d;->i:Lk/i;

    iget v15, v0, Lm/a;->y0:I

    add-int/2addr v15, v9

    invoke-virtual/range {p1 .. p1}, Lk/e;->l()Lk/c;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lk/e;->m()Lk/i;

    move-result-object v7

    iput v3, v7, Lk/i;->e:I

    invoke-virtual {v5, v13, v14, v7, v15}, Lk/c;->b(Lk/i;Lk/i;Lk/i;I)V

    invoke-virtual {v1, v5}, Lk/e;->c(Lk/c;)V

    goto :goto_10

    :cond_1a
    :goto_f
    iget-object v5, v2, Lm/d;->i:Lk/i;

    iget v7, v0, Lm/a;->y0:I

    sub-int/2addr v7, v9

    invoke-virtual/range {p1 .. p1}, Lk/e;->l()Lk/c;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lk/e;->m()Lk/i;

    move-result-object v15

    iput v3, v15, Lk/i;->e:I

    invoke-virtual {v13, v5, v14, v15, v7}, Lk/c;->c(Lk/i;Lk/i;Lk/i;I)V

    invoke-virtual {v1, v13}, Lk/e;->c(Lk/c;)V

    :goto_10
    iget-object v5, v2, Lm/d;->i:Lk/i;

    iget v7, v0, Lm/a;->y0:I

    add-int/2addr v7, v9

    invoke-virtual {v1, v5, v14, v7, v11}, Lk/e;->e(Lk/i;Lk/i;II)V

    :goto_11
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x3

    goto :goto_d

    :cond_1b
    iget v2, v0, Lm/a;->w0:I

    const/16 v5, 0x8

    if-nez v2, :cond_1c

    iget-object v2, v8, Lm/d;->i:Lk/i;

    iget-object v6, v4, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v6, v3, v5}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v4, Lm/d;->i:Lk/i;

    iget-object v5, v0, Lm/f;->V:Lm/f;

    iget-object v5, v5, Lm/f;->L:Lm/d;

    iget-object v5, v5, Lm/d;->i:Lk/i;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v3, v6}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v4, Lm/d;->i:Lk/i;

    iget-object v4, v0, Lm/f;->V:Lm/f;

    iget-object v4, v4, Lm/f;->J:Lm/d;

    iget-object v4, v4, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v4, v3, v3}, Lk/e;->e(Lk/i;Lk/i;II)V

    goto :goto_12

    :cond_1c
    const/4 v7, 0x1

    if-ne v2, v7, :cond_1d

    iget-object v2, v4, Lm/d;->i:Lk/i;

    iget-object v6, v8, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v6, v3, v5}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v4, Lm/d;->i:Lk/i;

    iget-object v5, v0, Lm/f;->V:Lm/f;

    iget-object v5, v5, Lm/f;->J:Lm/d;

    iget-object v5, v5, Lm/d;->i:Lk/i;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v3, v6}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v4, Lm/d;->i:Lk/i;

    iget-object v4, v0, Lm/f;->V:Lm/f;

    iget-object v4, v4, Lm/f;->L:Lm/d;

    iget-object v4, v4, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v4, v3, v3}, Lk/e;->e(Lk/i;Lk/i;II)V

    goto :goto_12

    :cond_1d
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1e

    iget-object v2, v10, Lm/d;->i:Lk/i;

    iget-object v4, v6, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v4, v3, v5}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v6, Lm/d;->i:Lk/i;

    iget-object v4, v0, Lm/f;->V:Lm/f;

    iget-object v4, v4, Lm/f;->M:Lm/d;

    iget-object v4, v4, Lm/d;->i:Lk/i;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v3, v5}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v6, Lm/d;->i:Lk/i;

    iget-object v4, v0, Lm/f;->V:Lm/f;

    iget-object v4, v4, Lm/f;->K:Lm/d;

    iget-object v4, v4, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v4, v3, v3}, Lk/e;->e(Lk/i;Lk/i;II)V

    goto :goto_12

    :cond_1e
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1f

    iget-object v2, v6, Lm/d;->i:Lk/i;

    iget-object v4, v10, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v4, v3, v5}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v6, Lm/d;->i:Lk/i;

    iget-object v4, v0, Lm/f;->V:Lm/f;

    iget-object v4, v4, Lm/f;->K:Lm/d;

    iget-object v4, v4, Lm/d;->i:Lk/i;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v3, v5}, Lk/e;->e(Lk/i;Lk/i;II)V

    iget-object v2, v6, Lm/d;->i:Lk/i;

    iget-object v4, v0, Lm/f;->V:Lm/f;

    iget-object v4, v4, Lm/f;->M:Lm/d;

    iget-object v4, v4, Lm/d;->i:Lk/i;

    invoke-virtual {v1, v2, v4, v3, v3}, Lk/e;->e(Lk/i;Lk/i;II)V

    :cond_1f
    :goto_12
    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Lm/f;Ljava/util/HashMap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lm/m;->h(Lm/f;Ljava/util/HashMap;)V

    check-cast p1, Lm/a;

    iget p2, p1, Lm/a;->w0:I

    iput p2, p0, Lm/a;->w0:I

    iget-boolean p2, p1, Lm/a;->x0:Z

    iput-boolean p2, p0, Lm/a;->x0:Z

    iget p1, p1, Lm/a;->y0:I

    iput p1, p0, Lm/a;->y0:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Barrier] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lm/f;->j0:Ljava/lang/String;

    const-string v2, " {"

    invoke-static {v0, v1, v2}, Landroidx/activity/b;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lm/m;->v0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-static {v0, v3}, Landroidx/activity/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroidx/activity/b;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lm/f;->j0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-static {v0, v1}, Landroidx/activity/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
