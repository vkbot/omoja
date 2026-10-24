.class public final Lm/i;
.super Lm/o;
.source "SourceFile"


# instance fields
.field public H0:I

.field public I0:I

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:I

.field public N0:F

.field public O0:F

.field public P0:F

.field public Q0:F

.field public R0:F

.field public S0:F

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:I

.field public X0:I

.field public Y0:I

.field public Z0:I

.field public final a1:Ljava/util/ArrayList;

.field public b1:[Lm/f;

.field public c1:[Lm/f;

.field public d1:[I

.field public e1:[Lm/f;

.field public f1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lm/o;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lm/i;->H0:I

    iput v0, p0, Lm/i;->I0:I

    iput v0, p0, Lm/i;->J0:I

    iput v0, p0, Lm/i;->K0:I

    iput v0, p0, Lm/i;->L0:I

    iput v0, p0, Lm/i;->M0:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lm/i;->N0:F

    iput v1, p0, Lm/i;->O0:F

    iput v1, p0, Lm/i;->P0:F

    iput v1, p0, Lm/i;->Q0:F

    iput v1, p0, Lm/i;->R0:F

    iput v1, p0, Lm/i;->S0:F

    const/4 v1, 0x0

    iput v1, p0, Lm/i;->T0:I

    iput v1, p0, Lm/i;->U0:I

    const/4 v2, 0x2

    iput v2, p0, Lm/i;->V0:I

    iput v2, p0, Lm/i;->W0:I

    iput v1, p0, Lm/i;->X0:I

    iput v0, p0, Lm/i;->Y0:I

    iput v1, p0, Lm/i;->Z0:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/i;->a1:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lm/i;->b1:[Lm/f;

    iput-object v0, p0, Lm/i;->c1:[Lm/f;

    iput-object v0, p0, Lm/i;->d1:[I

    iput v1, p0, Lm/i;->f1:I

    return-void
.end method


# virtual methods
.method public final U(IIII)V
    .locals 37

    move-object/from16 v8, p0

    iget v0, v8, Lm/m;->v0:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v0, :cond_a

    iget-object v0, v8, Lm/f;->V:Lm/f;

    if-eqz v0, :cond_0

    check-cast v0, Lm/g;

    iget-object v0, v0, Lm/g;->y0:Ln/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move v0, v9

    goto/16 :goto_5

    :cond_1
    move v2, v9

    :goto_1
    iget v3, v8, Lm/m;->v0:I

    if-ge v2, v3, :cond_9

    iget-object v3, v8, Lm/m;->u0:[Lm/f;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    instance-of v4, v3, Lm/k;

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v9}, Lm/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v3, v10}, Lm/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_4

    iget v7, v3, Lm/f;->r:I

    if-eq v7, v10, :cond_4

    if-ne v5, v6, :cond_4

    iget v7, v3, Lm/f;->s:I

    if-eq v7, v10, :cond_4

    move v7, v10

    goto :goto_2

    :cond_4
    move v7, v9

    :goto_2
    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    if-ne v4, v6, :cond_6

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    if-ne v5, v6, :cond_7

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_7
    iget-object v6, v8, Lm/o;->F0:Ln/b;

    iput-object v4, v6, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v5, v6, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v3}, Lm/f;->s()I

    move-result v4

    iput v4, v6, Ln/b;->c:I

    invoke-virtual {v3}, Lm/f;->m()I

    move-result v4

    iput v4, v6, Ln/b;->d:I

    invoke-virtual {v0, v3, v6}, Ln/h;->b(Lm/f;Ln/b;)V

    iget v4, v6, Ln/b;->e:I

    invoke-virtual {v3, v4}, Lm/f;->P(I)V

    iget v4, v6, Ln/b;->f:I

    invoke-virtual {v3, v4}, Lm/f;->M(I)V

    iget v4, v6, Ln/b;->g:I

    iput v4, v3, Lm/f;->c0:I

    if-lez v4, :cond_8

    move v4, v10

    goto :goto_3

    :cond_8
    move v4, v9

    :goto_3
    iput-boolean v4, v3, Lm/f;->E:Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    move v0, v10

    :goto_5
    if-nez v0, :cond_a

    iput v9, v8, Lm/o;->D0:I

    iput v9, v8, Lm/o;->E0:I

    iput-boolean v9, v8, Lm/o;->C0:Z

    return-void

    :cond_a
    iget v11, v8, Lm/o;->A0:I

    iget v12, v8, Lm/o;->B0:I

    iget v13, v8, Lm/o;->w0:I

    iget v14, v8, Lm/o;->x0:I

    const/4 v0, 0x2

    new-array v15, v0, [I

    sub-int v2, p2, v11

    sub-int/2addr v2, v12

    iget v3, v8, Lm/i;->Z0:I

    if-ne v3, v10, :cond_b

    sub-int v2, p4, v13

    sub-int/2addr v2, v14

    :cond_b
    move v6, v2

    const/4 v2, -0x1

    if-nez v3, :cond_d

    iget v3, v8, Lm/i;->H0:I

    if-ne v3, v2, :cond_c

    iput v9, v8, Lm/i;->H0:I

    :cond_c
    iget v3, v8, Lm/i;->I0:I

    if-ne v3, v2, :cond_f

    iput v9, v8, Lm/i;->I0:I

    goto :goto_6

    :cond_d
    iget v3, v8, Lm/i;->H0:I

    if-ne v3, v2, :cond_e

    iput v9, v8, Lm/i;->H0:I

    :cond_e
    iget v3, v8, Lm/i;->I0:I

    if-ne v3, v2, :cond_f

    iput v9, v8, Lm/i;->I0:I

    :cond_f
    :goto_6
    iget-object v2, v8, Lm/m;->u0:[Lm/f;

    move v3, v9

    move v4, v3

    :goto_7
    iget v5, v8, Lm/m;->v0:I

    const/16 v7, 0x8

    if-ge v3, v5, :cond_11

    iget-object v5, v8, Lm/m;->u0:[Lm/f;

    aget-object v5, v5, v3

    iget v5, v5, Lm/f;->i0:I

    if-ne v5, v7, :cond_10

    add-int/lit8 v4, v4, 0x1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    if-lez v4, :cond_13

    sub-int/2addr v5, v4

    new-array v2, v5, [Lm/f;

    move v3, v9

    move v5, v3

    :goto_8
    iget v4, v8, Lm/m;->v0:I

    if-ge v3, v4, :cond_13

    iget-object v4, v8, Lm/m;->u0:[Lm/f;

    aget-object v4, v4, v3

    iget v1, v4, Lm/f;->i0:I

    if-eq v1, v7, :cond_12

    aput-object v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    move-object v7, v2

    iput-object v7, v8, Lm/i;->e1:[Lm/f;

    iput v5, v8, Lm/i;->f1:I

    iget v1, v8, Lm/i;->X0:I

    iget-object v4, v8, Lm/i;->a1:Ljava/util/ArrayList;

    if-eqz v1, :cond_70

    iget-object v3, v8, Lm/f;->K:Lm/d;

    iget-object v2, v8, Lm/f;->J:Lm/d;

    iget-object v9, v8, Lm/f;->L:Lm/d;

    move-object/from16 v27, v9

    iget-object v9, v8, Lm/f;->M:Lm/d;

    if-eq v1, v10, :cond_56

    if-eq v1, v0, :cond_2f

    const/4 v0, 0x3

    if-eq v1, v0, :cond_14

    goto :goto_9

    :cond_14
    iget v1, v8, Lm/i;->Z0:I

    if-nez v5, :cond_15

    :goto_9
    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v30, v14

    move-object/from16 v35, v15

    goto/16 :goto_3f

    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lm/h;

    iget-object v10, v8, Lm/f;->J:Lm/d;

    move-object/from16 v17, v4

    iget-object v4, v8, Lm/f;->K:Lm/d;

    move/from16 v18, v5

    iget-object v5, v8, Lm/f;->L:Lm/d;

    move/from16 v19, v6

    iget-object v6, v8, Lm/f;->M:Lm/d;

    move-object/from16 v16, v0

    move/from16 v28, v1

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move/from16 v2, v28

    move-object/from16 v21, v3

    move-object v3, v10

    move-object/from16 v10, v17

    move-object/from16 v29, v9

    move/from16 v9, v18

    move/from16 v30, v19

    move-object/from16 v31, v7

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v28, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v9, :cond_1c

    const/4 v4, 0x1

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v31, v7

    move/from16 v4, v30

    invoke-virtual {v8, v4, v5}, Lm/i;->X(ILm/f;)I

    move-result v16

    iget-object v1, v5, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v17, 0x0

    aget-object v1, v1, v17

    move-object/from16 v17, v5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    move/from16 v18, v2

    if-eq v3, v4, :cond_17

    iget v1, v8, Lm/i;->T0:I

    add-int/2addr v1, v3

    add-int v1, v1, v16

    if-le v1, v4, :cond_18

    :cond_17
    iget-object v1, v0, Lm/h;->b:Lm/f;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_19

    if-lez v7, :cond_19

    iget v2, v8, Lm/i;->Y0:I

    if-lez v2, :cond_19

    if-le v6, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    if-eqz v1, :cond_1a

    new-instance v5, Lm/h;

    iget-object v3, v8, Lm/f;->J:Lm/d;

    iget-object v2, v8, Lm/f;->K:Lm/d;

    iget-object v1, v8, Lm/f;->L:Lm/d;

    iget-object v0, v8, Lm/f;->M:Lm/d;

    move-object/from16 v19, v0

    move-object v0, v5

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move/from16 v2, v28

    move/from16 v30, v4

    move-object/from16 v4, v23

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v11, v17

    move-object v12, v5

    move-object/from16 v5, v22

    move/from16 v17, v6

    move-object/from16 v6, v19

    move/from16 v34, v13

    move v13, v7

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    iput v13, v12, Lm/h;->n:I

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v12

    move/from16 v3, v16

    move/from16 v1, v17

    goto :goto_c

    :cond_1a
    move/from16 v30, v4

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move-object/from16 v11, v17

    move v13, v7

    if-lez v13, :cond_1b

    iget v1, v8, Lm/i;->T0:I

    add-int v1, v1, v16

    add-int v16, v1, v3

    :cond_1b
    move/from16 v3, v16

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v11}, Lm/h;->a(Lm/f;)V

    add-int/lit8 v7, v13, 0x1

    move/from16 v2, v18

    move/from16 v11, v32

    move/from16 v12, v33

    move/from16 v13, v34

    goto/16 :goto_a

    :cond_1c
    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v13, v30

    move/from16 v30, v14

    goto/16 :goto_11

    :cond_1d
    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v9, :cond_24

    aget-object v12, v31, v11

    move/from16 v13, v30

    invoke-virtual {v8, v13, v12}, Lm/i;->W(ILm/f;)I

    move-result v16

    iget-object v3, v12, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    move/from16 v17, v1

    if-eq v2, v13, :cond_1f

    iget v1, v8, Lm/i;->U0:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    if-le v1, v13, :cond_20

    :cond_1f
    iget-object v1, v0, Lm/h;->b:Lm/f;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_21

    if-lez v11, :cond_21

    iget v3, v8, Lm/i;->Y0:I

    if-lez v3, :cond_21

    if-gez v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    if-eqz v1, :cond_22

    new-instance v7, Lm/h;

    iget-object v3, v8, Lm/f;->J:Lm/d;

    iget-object v4, v8, Lm/f;->K:Lm/d;

    iget-object v5, v8, Lm/f;->L:Lm/d;

    iget-object v6, v8, Lm/f;->M:Lm/d;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v30, v14

    move-object v14, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    iput v11, v14, Lm/h;->n:I

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v14

    goto :goto_f

    :cond_22
    move/from16 v30, v14

    if-lez v11, :cond_23

    iget v1, v8, Lm/i;->U0:I

    add-int v1, v1, v16

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_10

    :cond_23
    :goto_f
    move/from16 v2, v16

    :goto_10
    invoke-virtual {v0, v12}, Lm/h;->a(Lm/f;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v17

    move/from16 v14, v30

    move/from16 v30, v13

    goto :goto_d

    :cond_24
    move/from16 v13, v30

    move/from16 v30, v14

    move v2, v1

    :goto_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v8, Lm/o;->A0:I

    iget v3, v8, Lm/o;->w0:I

    iget v4, v8, Lm/o;->B0:I

    iget v5, v8, Lm/o;->x0:I

    iget-object v6, v8, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v7, :cond_26

    const/4 v9, 0x1

    aget-object v6, v6, v9

    if-ne v6, v7, :cond_25

    goto :goto_12

    :cond_25
    const/4 v6, 0x0

    goto :goto_13

    :cond_26
    :goto_12
    const/4 v6, 0x1

    :goto_13
    if-lez v2, :cond_28

    if-eqz v6, :cond_28

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_28

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm/h;

    if-nez v28, :cond_27

    invoke-virtual {v6}, Lm/h;->d()I

    move-result v7

    sub-int v7, v13, v7

    invoke-virtual {v6, v7}, Lm/h;->e(I)V

    goto :goto_15

    :cond_27
    invoke-virtual {v6}, Lm/h;->c()I

    move-result v7

    sub-int v7, v13, v7

    invoke-virtual {v6, v7}, Lm/h;->e(I)V

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    move v6, v3

    move-object/from16 v2, v21

    move-object/from16 v14, v27

    move-object/from16 v12, v29

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v3, v1

    move-object/from16 v1, v20

    :goto_16
    if-ge v7, v0, :cond_2e

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v35, v15

    move-object/from16 v15, v16

    check-cast v15, Lm/h;

    if-nez v28, :cond_2b

    add-int/lit8 v5, v0, -0x1

    if-ge v7, v5, :cond_29

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/h;

    iget-object v5, v5, Lm/h;->b:Lm/f;

    iget-object v5, v5, Lm/f;->K:Lm/d;

    move-object v12, v5

    move-object/from16 v36, v10

    const/4 v5, 0x0

    goto :goto_17

    :cond_29
    iget v5, v8, Lm/o;->x0:I

    move-object/from16 v36, v10

    move-object/from16 v12, v29

    :goto_17
    iget-object v10, v15, Lm/h;->b:Lm/f;

    iget-object v10, v10, Lm/f;->M:Lm/d;

    move-object/from16 v16, v15

    move/from16 v17, v28

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v12

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v13

    invoke-virtual/range {v16 .. v26}, Lm/h;->f(ILm/d;Lm/d;Lm/d;Lm/d;IIIII)V

    invoke-virtual {v15}, Lm/h;->d()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v15}, Lm/h;->c()I

    move-result v6

    add-int/2addr v6, v11

    if-lez v7, :cond_2a

    iget v9, v8, Lm/i;->U0:I

    add-int/2addr v6, v9

    :cond_2a
    move/from16 v31, v0

    move v9, v2

    move v11, v6

    move-object v2, v10

    move-object/from16 v10, v36

    const/4 v6, 0x0

    goto :goto_19

    :cond_2b
    move-object/from16 v36, v10

    add-int/lit8 v4, v0, -0x1

    if-ge v7, v4, :cond_2c

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v10, v36

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/h;

    iget-object v4, v4, Lm/h;->b:Lm/f;

    iget-object v4, v4, Lm/f;->J:Lm/d;

    move/from16 v31, v0

    move-object v14, v4

    const/4 v4, 0x0

    goto :goto_18

    :cond_2c
    move-object/from16 v10, v36

    iget v4, v8, Lm/o;->B0:I

    move/from16 v31, v0

    move-object/from16 v14, v27

    :goto_18
    iget-object v0, v15, Lm/h;->b:Lm/f;

    iget-object v0, v0, Lm/f;->L:Lm/d;

    move-object/from16 v16, v15

    move/from16 v17, v28

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v12

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v13

    invoke-virtual/range {v16 .. v26}, Lm/h;->f(ILm/d;Lm/d;Lm/d;Lm/d;IIIII)V

    invoke-virtual {v15}, Lm/h;->d()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v15}, Lm/h;->c()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v7, :cond_2d

    iget v9, v8, Lm/i;->T0:I

    add-int/2addr v1, v9

    :cond_2d
    move v9, v1

    move v11, v3

    const/4 v3, 0x0

    move-object v1, v0

    :goto_19
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v31

    move-object/from16 v15, v35

    goto/16 :goto_16

    :cond_2e
    move-object/from16 v35, v15

    const/4 v0, 0x0

    aput v9, v35, v0

    const/4 v0, 0x1

    aput v11, v35, v0

    goto/16 :goto_3f

    :cond_2f
    move v9, v5

    move-object/from16 v31, v7

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v30, v14

    move-object/from16 v35, v15

    move v13, v6

    iget v1, v8, Lm/i;->Z0:I

    if-nez v1, :cond_35

    iget v2, v8, Lm/i;->Y0:I

    if-gtz v2, :cond_34

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v2, v9, :cond_33

    if-lez v2, :cond_30

    iget v5, v8, Lm/i;->T0:I

    add-int/2addr v3, v5

    :cond_30
    aget-object v5, v31, v2

    if-nez v5, :cond_31

    goto :goto_1b

    :cond_31
    invoke-virtual {v8, v13, v5}, Lm/i;->X(ILm/f;)I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v13, :cond_32

    goto :goto_1c

    :cond_32
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_33
    :goto_1c
    move v2, v4

    :cond_34
    move v3, v2

    const/4 v2, 0x0

    goto :goto_20

    :cond_35
    iget v2, v8, Lm/i;->Y0:I

    if-gtz v2, :cond_3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v2, v9, :cond_39

    if-lez v2, :cond_36

    iget v5, v8, Lm/i;->U0:I

    add-int/2addr v3, v5

    :cond_36
    aget-object v5, v31, v2

    if-nez v5, :cond_37

    goto :goto_1e

    :cond_37
    invoke-virtual {v8, v13, v5}, Lm/i;->W(ILm/f;)I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v13, :cond_38

    goto :goto_1f

    :cond_38
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_39
    :goto_1f
    move v2, v4

    :cond_3a
    const/4 v3, 0x0

    :goto_20
    iget-object v4, v8, Lm/i;->d1:[I

    if-nez v4, :cond_3b

    new-array v0, v0, [I

    iput-object v0, v8, Lm/i;->d1:[I

    :cond_3b
    if-nez v2, :cond_3c

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3d

    :cond_3c
    if-nez v3, :cond_3e

    if-nez v1, :cond_3e

    :cond_3d
    move/from16 v0, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v1

    move v7, v2

    move-object v2, v8

    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v14, v30

    move/from16 v11, v32

    move/from16 v12, v33

    move-object/from16 v15, v35

    const/4 v1, 0x1

    move v9, v3

    move/from16 v3, p2

    goto/16 :goto_2e

    :cond_3e
    move v4, v1

    move v5, v2

    move v6, v3

    move-object v0, v8

    move-object/from16 v17, v0

    move/from16 v14, v30

    move-object/from16 v7, v31

    move/from16 v11, v32

    move/from16 v12, v33

    move-object/from16 v15, v35

    const/4 v10, 0x0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    :goto_21
    if-nez v10, :cond_55

    if-nez v4, :cond_3f

    int-to-float v5, v9

    move/from16 p2, v1

    int-to-float v1, v6

    div-float/2addr v5, v1

    move/from16 p3, v2

    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v5, v1

    goto :goto_22

    :cond_3f
    move/from16 p2, v1

    move/from16 p3, v2

    int-to-float v1, v9

    int-to-float v2, v5

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v6, v1

    :goto_22
    iget-object v1, v0, Lm/i;->c1:[Lm/f;

    if-eqz v1, :cond_41

    array-length v2, v1

    if-ge v2, v6, :cond_40

    goto :goto_23

    :cond_40
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    :cond_41
    :goto_23
    const/4 v2, 0x0

    new-array v1, v6, [Lm/f;

    iput-object v1, v0, Lm/i;->c1:[Lm/f;

    :goto_24
    iget-object v1, v0, Lm/i;->b1:[Lm/f;

    if-eqz v1, :cond_43

    array-length v2, v1

    if-ge v2, v5, :cond_42

    goto :goto_25

    :cond_42
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    :cond_43
    :goto_25
    new-array v1, v5, [Lm/f;

    iput-object v1, v0, Lm/i;->b1:[Lm/f;

    :goto_26
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v6, :cond_4c

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v5, :cond_4b

    mul-int v18, v2, v6

    add-int v18, v18, v1

    move/from16 p4, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_44

    mul-int v3, v1, v5

    add-int v18, v3, v2

    :cond_44
    move/from16 v3, v18

    move/from16 v18, v9

    array-length v9, v7

    if-lt v3, v9, :cond_45

    :goto_29
    move-object/from16 v19, v7

    goto :goto_2a

    :cond_45
    aget-object v3, v7, v3

    if-nez v3, :cond_46

    goto :goto_29

    :cond_46
    invoke-virtual {v0, v13, v3}, Lm/i;->X(ILm/f;)I

    move-result v9

    move-object/from16 v19, v7

    iget-object v7, v0, Lm/i;->c1:[Lm/f;

    aget-object v7, v7, v1

    if-eqz v7, :cond_47

    invoke-virtual {v7}, Lm/f;->s()I

    move-result v7

    if-ge v7, v9, :cond_48

    :cond_47
    iget-object v7, v0, Lm/i;->c1:[Lm/f;

    aput-object v3, v7, v1

    :cond_48
    invoke-virtual {v0, v13, v3}, Lm/i;->W(ILm/f;)I

    move-result v7

    iget-object v9, v0, Lm/i;->b1:[Lm/f;

    aget-object v9, v9, v2

    if-eqz v9, :cond_49

    invoke-virtual {v9}, Lm/f;->m()I

    move-result v9

    if-ge v9, v7, :cond_4a

    :cond_49
    iget-object v7, v0, Lm/i;->b1:[Lm/f;

    aput-object v3, v7, v2

    :cond_4a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p4

    move/from16 v9, v18

    move-object/from16 v7, v19

    goto :goto_28

    :cond_4b
    move/from16 p4, v3

    move-object/from16 v19, v7

    move/from16 v18, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_4c
    move/from16 p4, v3

    move-object/from16 v19, v7

    move/from16 v18, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2b
    if-ge v1, v6, :cond_4f

    iget-object v3, v0, Lm/i;->c1:[Lm/f;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4e

    if-lez v1, :cond_4d

    iget v7, v0, Lm/i;->T0:I

    add-int/2addr v2, v7

    :cond_4d
    invoke-virtual {v0, v13, v3}, Lm/i;->X(ILm/f;)I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_4f
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2c
    if-ge v1, v5, :cond_52

    iget-object v7, v0, Lm/i;->b1:[Lm/f;

    aget-object v7, v7, v1

    if-eqz v7, :cond_51

    if-lez v1, :cond_50

    iget v9, v0, Lm/i;->U0:I

    add-int/2addr v3, v9

    :cond_50
    invoke-virtual {v0, v13, v7}, Lm/i;->W(ILm/f;)I

    move-result v7

    add-int/2addr v7, v3

    move v3, v7

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_52
    const/4 v1, 0x0

    aput v2, v35, v1

    const/4 v1, 0x1

    aput v3, v35, v1

    if-nez v4, :cond_53

    if-le v2, v13, :cond_54

    if-le v6, v1, :cond_54

    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    :cond_53
    if-le v3, v13, :cond_54

    if-le v5, v1, :cond_54

    add-int/lit8 v5, v5, -0x1

    :goto_2d
    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v9, v18

    move-object/from16 v7, v19

    goto/16 :goto_21

    :cond_54
    move/from16 v3, p2

    move-object v2, v0

    move v7, v5

    move v9, v6

    move-object/from16 v31, v19

    move/from16 v0, p1

    move/from16 v5, p4

    move v6, v4

    move/from16 v4, p3

    :goto_2e
    move/from16 p1, v0

    move v10, v1

    move-object v0, v2

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move/from16 v9, v18

    move-object/from16 v7, v31

    goto/16 :goto_21

    :cond_55
    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    const/4 v1, 0x1

    iget-object v0, v0, Lm/i;->d1:[I

    const/4 v2, 0x0

    aput v6, v0, v2

    aput v5, v0, v1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v13, v34

    goto/16 :goto_40

    :cond_56
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object v10, v4

    move-object/from16 v31, v7

    move-object/from16 v29, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v30, v14

    move-object/from16 v35, v15

    move v9, v5

    move v13, v6

    iget v11, v8, Lm/i;->Z0:I

    if-nez v9, :cond_57

    goto/16 :goto_3f

    :cond_57
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v12, Lm/h;

    iget-object v3, v8, Lm/f;->J:Lm/d;

    iget-object v4, v8, Lm/f;->K:Lm/d;

    iget-object v5, v8, Lm/f;->L:Lm/d;

    iget-object v6, v8, Lm/f;->M:Lm/d;

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v11

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_5e

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_2f
    if-ge v14, v9, :cond_65

    aget-object v15, v31, v14

    invoke-virtual {v8, v13, v15}, Lm/i;->X(ILm/f;)I

    move-result v16

    iget-object v2, v15, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_58

    add-int/lit8 v0, v0, 0x1

    :cond_58
    move/from16 v17, v0

    if-eq v1, v13, :cond_59

    iget v0, v8, Lm/i;->T0:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v13, :cond_5a

    :cond_59
    iget-object v0, v12, Lm/h;->b:Lm/f;

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_30

    :cond_5a
    const/4 v0, 0x0

    :goto_30
    if-nez v0, :cond_5b

    if-lez v14, :cond_5b

    iget v2, v8, Lm/i;->Y0:I

    if-lez v2, :cond_5b

    rem-int v2, v14, v2

    if-nez v2, :cond_5b

    const/4 v0, 0x1

    :cond_5b
    if-eqz v0, :cond_5c

    new-instance v12, Lm/h;

    iget-object v3, v8, Lm/f;->J:Lm/d;

    iget-object v4, v8, Lm/f;->K:Lm/d;

    iget-object v5, v8, Lm/f;->L:Lm/d;

    iget-object v6, v8, Lm/f;->M:Lm/d;

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v11

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    iput v14, v12, Lm/h;->n:I

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_5c
    if-lez v14, :cond_5d

    iget v0, v8, Lm/i;->T0:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_32

    :cond_5d
    :goto_31
    move/from16 v1, v16

    :goto_32
    invoke-virtual {v12, v15}, Lm/h;->a(Lm/f;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v17

    goto :goto_2f

    :cond_5e
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_33
    if-ge v14, v9, :cond_65

    aget-object v15, v31, v14

    invoke-virtual {v8, v13, v15}, Lm/i;->W(ILm/f;)I

    move-result v16

    iget-object v2, v15, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_5f

    add-int/lit8 v0, v0, 0x1

    :cond_5f
    move/from16 v17, v0

    if-eq v1, v13, :cond_60

    iget v0, v8, Lm/i;->U0:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v13, :cond_61

    :cond_60
    iget-object v0, v12, Lm/h;->b:Lm/f;

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    goto :goto_34

    :cond_61
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_62

    if-lez v14, :cond_62

    iget v2, v8, Lm/i;->Y0:I

    if-lez v2, :cond_62

    rem-int v2, v14, v2

    if-nez v2, :cond_62

    const/4 v0, 0x1

    :cond_62
    if-eqz v0, :cond_63

    new-instance v12, Lm/h;

    iget-object v3, v8, Lm/f;->J:Lm/d;

    iget-object v4, v8, Lm/f;->K:Lm/d;

    iget-object v5, v8, Lm/f;->L:Lm/d;

    iget-object v6, v8, Lm/f;->M:Lm/d;

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v11

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    iput v14, v12, Lm/h;->n:I

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_63
    if-lez v14, :cond_64

    iget v0, v8, Lm/i;->U0:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_36

    :cond_64
    :goto_35
    move/from16 v1, v16

    :goto_36
    invoke-virtual {v12, v15}, Lm/h;->a(Lm/f;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v17

    goto :goto_33

    :cond_65
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v8, Lm/o;->A0:I

    iget v3, v8, Lm/o;->w0:I

    iget v4, v8, Lm/o;->B0:I

    iget v5, v8, Lm/o;->x0:I

    iget-object v6, v8, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v7, :cond_67

    const/4 v9, 0x1

    aget-object v6, v6, v9

    if-ne v6, v7, :cond_66

    goto :goto_37

    :cond_66
    const/4 v6, 0x0

    goto :goto_38

    :cond_67
    :goto_37
    const/4 v6, 0x1

    :goto_38
    if-lez v0, :cond_69

    if-eqz v6, :cond_69

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v1, :cond_69

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm/h;

    if-nez v11, :cond_68

    invoke-virtual {v6}, Lm/h;->d()I

    move-result v7

    sub-int v7, v13, v7

    invoke-virtual {v6, v7}, Lm/h;->e(I)V

    goto :goto_3a

    :cond_68
    invoke-virtual {v6}, Lm/h;->c()I

    move-result v7

    sub-int v7, v13, v7

    invoke-virtual {v6, v7}, Lm/h;->e(I)V

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_69
    move v6, v3

    move-object/from16 v0, v20

    move-object/from16 v15, v27

    move-object/from16 v14, v29

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move v3, v2

    move-object/from16 v2, v21

    :goto_3b
    if-ge v7, v1, :cond_6f

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v28, v5

    move-object/from16 v5, v16

    check-cast v5, Lm/h;

    if-nez v11, :cond_6c

    add-int/lit8 v14, v1, -0x1

    if-ge v7, v14, :cond_6a

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lm/h;

    iget-object v14, v14, Lm/h;->b:Lm/f;

    iget-object v14, v14, Lm/f;->K:Lm/d;

    move-object/from16 v36, v10

    const/16 v28, 0x0

    goto :goto_3c

    :cond_6a
    iget v14, v8, Lm/o;->x0:I

    move-object/from16 v36, v10

    move/from16 v28, v14

    move-object/from16 v14, v29

    :goto_3c
    iget-object v10, v5, Lm/h;->b:Lm/f;

    iget-object v10, v10, Lm/f;->M:Lm/d;

    move-object/from16 v16, v5

    move/from16 v17, v11

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v21, v14

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v28

    move/from16 v26, v13

    invoke-virtual/range {v16 .. v26}, Lm/h;->f(ILm/d;Lm/d;Lm/d;Lm/d;IIIII)V

    invoke-virtual {v5}, Lm/h;->d()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v5}, Lm/h;->c()I

    move-result v5

    add-int/2addr v5, v12

    if-lez v7, :cond_6b

    iget v6, v8, Lm/i;->U0:I

    add-int/2addr v5, v6

    :cond_6b
    move/from16 v31, v1

    move v9, v2

    move v12, v5

    move-object v2, v10

    move/from16 v5, v28

    move-object/from16 v10, v36

    const/4 v6, 0x0

    goto :goto_3e

    :cond_6c
    move-object/from16 v36, v10

    add-int/lit8 v4, v1, -0x1

    if-ge v7, v4, :cond_6d

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v10, v36

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/h;

    iget-object v4, v4, Lm/h;->b:Lm/f;

    iget-object v4, v4, Lm/f;->J:Lm/d;

    move/from16 v31, v1

    move-object v15, v4

    const/4 v4, 0x0

    goto :goto_3d

    :cond_6d
    move-object/from16 v10, v36

    iget v4, v8, Lm/o;->B0:I

    move/from16 v31, v1

    move-object/from16 v15, v27

    :goto_3d
    iget-object v1, v5, Lm/h;->b:Lm/f;

    iget-object v1, v1, Lm/f;->L:Lm/d;

    move-object/from16 v16, v5

    move/from16 v17, v11

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v21, v14

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v28

    move/from16 v26, v13

    invoke-virtual/range {v16 .. v26}, Lm/h;->f(ILm/d;Lm/d;Lm/d;Lm/d;IIIII)V

    invoke-virtual {v5}, Lm/h;->d()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v5}, Lm/h;->c()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v7, :cond_6e

    iget v5, v8, Lm/i;->T0:I

    add-int/2addr v0, v5

    :cond_6e
    move v9, v0

    move-object v0, v1

    move v12, v3

    move/from16 v5, v28

    const/4 v3, 0x0

    :goto_3e
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v31

    goto/16 :goto_3b

    :cond_6f
    const/4 v0, 0x0

    aput v9, v35, v0

    const/4 v0, 0x1

    aput v12, v35, v0

    goto :goto_3f

    :cond_70
    move-object v10, v4

    move v9, v5

    move-object/from16 v31, v7

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v30, v14

    move-object/from16 v35, v15

    move v13, v6

    iget v2, v8, Lm/i;->Z0:I

    if-nez v9, :cond_71

    :goto_3f
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v17, v8

    move/from16 v14, v30

    move/from16 v11, v32

    move/from16 v12, v33

    move/from16 v13, v34

    move-object/from16 v15, v35

    :goto_40
    move v4, v3

    move-object/from16 v5, v17

    const/16 v17, 0x0

    move v3, v2

    move v2, v1

    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_72

    new-instance v11, Lm/h;

    iget-object v3, v8, Lm/f;->J:Lm/d;

    iget-object v4, v8, Lm/f;->K:Lm/d;

    iget-object v5, v8, Lm/f;->L:Lm/d;

    iget-object v6, v8, Lm/f;->M:Lm/d;

    move-object v0, v11

    move-object/from16 v1, p0

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lm/h;-><init>(Lm/i;ILm/d;Lm/d;Lm/d;Lm/d;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_72
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lm/h;

    iput v0, v11, Lm/h;->c:I

    const/4 v1, 0x0

    iput-object v1, v11, Lm/h;->b:Lm/f;

    iput v0, v11, Lm/h;->l:I

    iput v0, v11, Lm/h;->m:I

    iput v0, v11, Lm/h;->n:I

    iput v0, v11, Lm/h;->o:I

    iput v0, v11, Lm/h;->p:I

    iget-object v0, v8, Lm/f;->J:Lm/d;

    iget-object v1, v8, Lm/f;->K:Lm/d;

    iget-object v3, v8, Lm/f;->L:Lm/d;

    iget-object v4, v8, Lm/f;->M:Lm/d;

    iget v5, v8, Lm/o;->A0:I

    iget v6, v8, Lm/o;->w0:I

    iget v7, v8, Lm/o;->B0:I

    iget v10, v8, Lm/o;->x0:I

    move-object/from16 v16, v11

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v13

    invoke-virtual/range {v16 .. v26}, Lm/h;->f(ILm/d;Lm/d;Lm/d;Lm/d;IIIII)V

    :goto_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v9, :cond_73

    aget-object v1, v31, v0

    invoke-virtual {v11, v1}, Lm/h;->a(Lm/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_73
    invoke-virtual {v11}, Lm/h;->d()I

    move-result v0

    const/16 v17, 0x0

    aput v0, v35, v17

    invoke-virtual {v11}, Lm/h;->c()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v35, v1

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v8

    move/from16 v14, v30

    move/from16 v11, v32

    move/from16 v12, v33

    move/from16 v13, v34

    move-object/from16 v15, v35

    :goto_43
    aget v6, v15, v17

    add-int/2addr v6, v11

    add-int/2addr v6, v12

    aget v7, v15, v1

    add-int/2addr v7, v13

    add-int/2addr v7, v14

    const/high16 v9, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v0, v10, :cond_74

    move v0, v2

    goto :goto_44

    :cond_74
    if-ne v0, v9, :cond_75

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_44

    :cond_75
    if-nez v0, :cond_76

    move v0, v6

    goto :goto_44

    :cond_76
    move/from16 v0, v17

    :goto_44
    if-ne v3, v10, :cond_77

    move v2, v4

    goto :goto_45

    :cond_77
    if-ne v3, v9, :cond_78

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_45

    :cond_78
    if-nez v3, :cond_79

    move v2, v7

    goto :goto_45

    :cond_79
    move/from16 v2, v17

    :goto_45
    iput v0, v5, Lm/o;->D0:I

    iput v2, v5, Lm/o;->E0:I

    invoke-virtual {v5, v0}, Lm/f;->P(I)V

    invoke-virtual {v5, v2}, Lm/f;->M(I)V

    iget v0, v5, Lm/m;->v0:I

    if-lez v0, :cond_7a

    move v9, v1

    goto :goto_46

    :cond_7a
    move/from16 v9, v17

    :goto_46
    iput-boolean v9, v5, Lm/o;->C0:Z

    return-void
.end method

.method public final W(ILm/f;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_5

    iget v1, p2, Lm/f;->s:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget v1, p2, Lm/f;->z:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p2}, Lm/f;->m()I

    move-result v1

    if-eq p1, v1, :cond_2

    iput-boolean v2, p2, Lm/f;->g:Z

    iget-object v1, p2, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v1, v0

    invoke-virtual {p2}, Lm/f;->s()I

    move-result v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, p2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lm/o;->V(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p1

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p2}, Lm/f;->m()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x3

    if-ne v1, p1, :cond_5

    invoke-virtual {p2}, Lm/f;->s()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Lm/f;->Y:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    invoke-virtual {p2}, Lm/f;->m()I

    move-result p1

    return p1
.end method

.method public final X(ILm/f;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    iget v1, p2, Lm/f;->r:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    iget v0, p2, Lm/f;->w:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p2}, Lm/f;->s()I

    move-result v0

    if-eq p1, v0, :cond_2

    iput-boolean v2, p2, Lm/f;->g:Z

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p2, Lm/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v0, v2

    invoke-virtual {p2}, Lm/f;->m()I

    move-result v8

    move-object v3, p0

    move-object v4, p2

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lm/o;->V(Lm/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p1

    :cond_3
    if-ne v1, v2, :cond_4

    invoke-virtual {p2}, Lm/f;->s()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x3

    if-ne v1, p1, :cond_5

    invoke-virtual {p2}, Lm/f;->m()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Lm/f;->Y:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    invoke-virtual {p2}, Lm/f;->s()I

    move-result p1

    return p1
.end method

.method public final c(Lk/e;Z)V
    .locals 11

    invoke-super {p0, p1, p2}, Lm/f;->c(Lk/e;Z)V

    iget-object p1, p0, Lm/f;->V:Lm/f;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Lm/g;

    iget-boolean p1, p1, Lm/g;->z0:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget v1, p0, Lm/i;->X0:I

    iget-object v2, p0, Lm/i;->a1:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    if-eq v1, v0, :cond_19

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_1
    if-ge v3, v1, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/h;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    invoke-virtual {v4, v3, p1, v5}, Lm/h;->b(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lm/i;->d1:[I

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lm/i;->c1:[Lm/f;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lm/i;->b1:[Lm/f;

    if-nez v1, :cond_4

    goto/16 :goto_e

    :cond_4
    move v1, p2

    :goto_3
    iget v2, p0, Lm/i;->f1:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lm/i;->e1:[Lm/f;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lm/f;->F()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lm/i;->d1:[I

    aget v2, v1, p2

    aget v1, v1, v0

    iget v3, p0, Lm/i;->N0:F

    const/4 v4, 0x0

    move v5, p2

    :goto_4
    const/16 v6, 0x8

    if-ge v5, v2, :cond_c

    if-eqz p1, :cond_6

    sub-int v3, v2, v5

    sub-int/2addr v3, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lm/i;->N0:F

    sub-float/2addr v7, v8

    goto :goto_5

    :cond_6
    move v7, v3

    move v3, v5

    :goto_5
    iget-object v8, p0, Lm/i;->c1:[Lm/f;

    aget-object v3, v8, v3

    if-eqz v3, :cond_b

    iget v8, v3, Lm/f;->i0:I

    if-ne v8, v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v6, v3, Lm/f;->J:Lm/d;

    if-nez v5, :cond_8

    iget v8, p0, Lm/o;->A0:I

    iget-object v9, p0, Lm/f;->J:Lm/d;

    invoke-virtual {v3, v6, v9, v8}, Lm/f;->g(Lm/d;Lm/d;I)V

    iget v8, p0, Lm/i;->H0:I

    iput v8, v3, Lm/f;->l0:I

    iput v7, v3, Lm/f;->f0:F

    :cond_8
    add-int/lit8 v8, v2, -0x1

    if-ne v5, v8, :cond_9

    iget v8, p0, Lm/o;->B0:I

    iget-object v9, v3, Lm/f;->L:Lm/d;

    iget-object v10, p0, Lm/f;->L:Lm/d;

    invoke-virtual {v3, v9, v10, v8}, Lm/f;->g(Lm/d;Lm/d;I)V

    :cond_9
    if-lez v5, :cond_a

    if-eqz v4, :cond_a

    iget v8, p0, Lm/i;->T0:I

    iget-object v9, v4, Lm/f;->L:Lm/d;

    invoke-virtual {v3, v6, v9, v8}, Lm/f;->g(Lm/d;Lm/d;I)V

    invoke-virtual {v4, v9, v6, p2}, Lm/f;->g(Lm/d;Lm/d;I)V

    :cond_a
    move-object v4, v3

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_4

    :cond_c
    move p1, p2

    :goto_7
    if-ge p1, v1, :cond_12

    iget-object v3, p0, Lm/i;->b1:[Lm/f;

    aget-object v3, v3, p1

    if-eqz v3, :cond_11

    iget v5, v3, Lm/f;->i0:I

    if-ne v5, v6, :cond_d

    goto :goto_8

    :cond_d
    iget-object v5, v3, Lm/f;->K:Lm/d;

    if-nez p1, :cond_e

    iget v7, p0, Lm/o;->w0:I

    iget-object v8, p0, Lm/f;->K:Lm/d;

    invoke-virtual {v3, v5, v8, v7}, Lm/f;->g(Lm/d;Lm/d;I)V

    iget v7, p0, Lm/i;->I0:I

    iput v7, v3, Lm/f;->m0:I

    iget v7, p0, Lm/i;->O0:F

    iput v7, v3, Lm/f;->g0:F

    :cond_e
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_f

    iget v7, p0, Lm/o;->x0:I

    iget-object v8, v3, Lm/f;->M:Lm/d;

    iget-object v9, p0, Lm/f;->M:Lm/d;

    invoke-virtual {v3, v8, v9, v7}, Lm/f;->g(Lm/d;Lm/d;I)V

    :cond_f
    if-lez p1, :cond_10

    if-eqz v4, :cond_10

    iget v7, p0, Lm/i;->U0:I

    iget-object v8, v4, Lm/f;->M:Lm/d;

    invoke-virtual {v3, v5, v8, v7}, Lm/f;->g(Lm/d;Lm/d;I)V

    invoke-virtual {v4, v8, v5, p2}, Lm/f;->g(Lm/d;Lm/d;I)V

    :cond_10
    move-object v4, v3

    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    move p1, p2

    :goto_9
    if-ge p1, v2, :cond_1c

    move v3, p2

    :goto_a
    if-ge v3, v1, :cond_18

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    iget v5, p0, Lm/i;->Z0:I

    if-ne v5, v0, :cond_13

    mul-int v4, p1, v1

    add-int/2addr v4, v3

    :cond_13
    iget-object v5, p0, Lm/i;->e1:[Lm/f;

    array-length v7, v5

    if-lt v4, v7, :cond_14

    goto :goto_b

    :cond_14
    aget-object v4, v5, v4

    if-eqz v4, :cond_17

    iget v5, v4, Lm/f;->i0:I

    if-ne v5, v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v5, p0, Lm/i;->c1:[Lm/f;

    aget-object v5, v5, p1

    iget-object v7, p0, Lm/i;->b1:[Lm/f;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_16

    iget-object v8, v5, Lm/f;->J:Lm/d;

    iget-object v9, v4, Lm/f;->J:Lm/d;

    invoke-virtual {v4, v9, v8, p2}, Lm/f;->g(Lm/d;Lm/d;I)V

    iget-object v8, v4, Lm/f;->L:Lm/d;

    iget-object v5, v5, Lm/f;->L:Lm/d;

    invoke-virtual {v4, v8, v5, p2}, Lm/f;->g(Lm/d;Lm/d;I)V

    :cond_16
    if-eq v4, v7, :cond_17

    iget-object v5, v7, Lm/f;->K:Lm/d;

    iget-object v8, v4, Lm/f;->K:Lm/d;

    invoke-virtual {v4, v8, v5, p2}, Lm/f;->g(Lm/d;Lm/d;I)V

    iget-object v5, v4, Lm/f;->M:Lm/d;

    iget-object v7, v7, Lm/f;->M:Lm/d;

    invoke-virtual {v4, v5, v7, p2}, Lm/f;->g(Lm/d;Lm/d;I)V

    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_c
    if-ge v3, v1, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/h;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_1a

    move v5, v0

    goto :goto_d

    :cond_1a
    move v5, p2

    :goto_d
    invoke-virtual {v4, v3, p1, v5}, Lm/h;->b(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/h;

    invoke-virtual {v1, p2, p1, v0}, Lm/h;->b(IZZ)V

    :cond_1c
    :goto_e
    iput-boolean p2, p0, Lm/o;->C0:Z

    return-void
.end method

.method public final h(Lm/f;Ljava/util/HashMap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lm/m;->h(Lm/f;Ljava/util/HashMap;)V

    check-cast p1, Lm/i;

    iget p2, p1, Lm/i;->H0:I

    iput p2, p0, Lm/i;->H0:I

    iget p2, p1, Lm/i;->I0:I

    iput p2, p0, Lm/i;->I0:I

    iget p2, p1, Lm/i;->J0:I

    iput p2, p0, Lm/i;->J0:I

    iget p2, p1, Lm/i;->K0:I

    iput p2, p0, Lm/i;->K0:I

    iget p2, p1, Lm/i;->L0:I

    iput p2, p0, Lm/i;->L0:I

    iget p2, p1, Lm/i;->M0:I

    iput p2, p0, Lm/i;->M0:I

    iget p2, p1, Lm/i;->N0:F

    iput p2, p0, Lm/i;->N0:F

    iget p2, p1, Lm/i;->O0:F

    iput p2, p0, Lm/i;->O0:F

    iget p2, p1, Lm/i;->P0:F

    iput p2, p0, Lm/i;->P0:F

    iget p2, p1, Lm/i;->Q0:F

    iput p2, p0, Lm/i;->Q0:F

    iget p2, p1, Lm/i;->R0:F

    iput p2, p0, Lm/i;->R0:F

    iget p2, p1, Lm/i;->S0:F

    iput p2, p0, Lm/i;->S0:F

    iget p2, p1, Lm/i;->T0:I

    iput p2, p0, Lm/i;->T0:I

    iget p2, p1, Lm/i;->U0:I

    iput p2, p0, Lm/i;->U0:I

    iget p2, p1, Lm/i;->V0:I

    iput p2, p0, Lm/i;->V0:I

    iget p2, p1, Lm/i;->W0:I

    iput p2, p0, Lm/i;->W0:I

    iget p2, p1, Lm/i;->X0:I

    iput p2, p0, Lm/i;->X0:I

    iget p2, p1, Lm/i;->Y0:I

    iput p2, p0, Lm/i;->Y0:I

    iget p1, p1, Lm/i;->Z0:I

    iput p1, p0, Lm/i;->Z0:I

    return-void
.end method
