.class public final Ln/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 9
    iput-object p1, p0, Ln/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Ln/h;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln/i;Lm/f;Lk/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln/h;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ln/h;->g:Ljava/lang/Object;

    .line 3
    iget-object p1, p2, Lm/f;->J:Lm/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lk/e;->n(Lm/d;)I

    move-result p1

    iput p1, p0, Ln/h;->a:I

    .line 4
    iget-object p1, p2, Lm/f;->K:Lm/d;

    invoke-static {p1}, Lk/e;->n(Lm/d;)I

    move-result p1

    iput p1, p0, Ln/h;->b:I

    .line 5
    iget-object p1, p2, Lm/f;->L:Lm/d;

    invoke-static {p1}, Lk/e;->n(Lm/d;)I

    move-result p1

    iput p1, p0, Ln/h;->c:I

    .line 6
    iget-object p1, p2, Lm/f;->M:Lm/d;

    invoke-static {p1}, Lk/e;->n(Lm/d;)I

    move-result p1

    iput p1, p0, Ln/h;->d:I

    .line 7
    iget-object p1, p2, Lm/f;->N:Lm/d;

    invoke-static {p1}, Lk/e;->n(Lm/d;)I

    move-result p1

    iput p1, p0, Ln/h;->e:I

    .line 8
    iput p4, p0, Ln/h;->f:I

    return-void
.end method

.method public static a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p0, v2, :cond_2

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Lm/f;Ln/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v3, v1, Lm/f;->i0:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iget-boolean v3, v1, Lm/f;->F:Z

    if-nez v3, :cond_1

    iput v5, v2, Ln/b;->e:I

    iput v5, v2, Ln/b;->f:I

    iput v5, v2, Ln/b;->g:I

    return-void

    :cond_1
    iget-object v3, v1, Lm/f;->V:Lm/f;

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v2, Ln/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, v2, Ln/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v6, v2, Ln/b;->c:I

    iget v7, v2, Ln/b;->d:I

    iget v8, v0, Ln/h;->a:I

    iget v9, v0, Ln/h;->b:I

    add-int/2addr v8, v9

    iget v9, v0, Ln/h;->c:I

    iget-object v10, v1, Lm/f;->h0:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    sget-object v11, Ls/c;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v11, v12

    const/4 v5, 0x1

    const/4 v15, 0x2

    iget-object v13, v1, Lm/f;->L:Lm/d;

    iget-object v14, v1, Lm/f;->J:Lm/d;

    if-eq v12, v5, :cond_e

    if-eq v12, v15, :cond_d

    const/4 v6, 0x3

    if-eq v12, v6, :cond_a

    const/4 v6, 0x4

    if-eq v12, v6, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_3
    iget v6, v0, Ln/h;->e:I

    const/4 v12, -0x2

    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v9, v1, Lm/f;->r:I

    if-ne v9, v5, :cond_4

    move v9, v5

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    iget v12, v2, Ln/b;->j:I

    if-eq v12, v5, :cond_5

    if-ne v12, v15, :cond_f

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v5

    if-ne v12, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    iget v12, v2, Ln/b;->j:I

    if-eq v12, v15, :cond_9

    if-eqz v9, :cond_9

    if-eqz v9, :cond_7

    if-nez v5, :cond_9

    :cond_7
    instance-of v5, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lm/f;->C()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_5

    :cond_a
    iget v5, v0, Ln/h;->e:I

    if-eqz v14, :cond_b

    iget v6, v14, Lm/d;->g:I

    const/4 v12, 0x0

    add-int/2addr v6, v12

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-eqz v13, :cond_c

    iget v12, v13, Lm/d;->g:I

    add-int/2addr v6, v12

    :cond_c
    add-int/2addr v9, v6

    const/4 v6, -0x1

    invoke-static {v5, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_5

    :cond_d
    iget v5, v0, Ln/h;->e:I

    const/4 v6, -0x2

    invoke-static {v5, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    :goto_5
    move v6, v5

    goto :goto_6

    :cond_e
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_f
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v11, v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_1b

    if-eq v5, v15, :cond_1a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_17

    const/4 v7, 0x4

    if-eq v5, v7, :cond_10

    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_10
    iget v5, v0, Ln/h;->f:I

    const/4 v7, -0x2

    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v7, v1, Lm/f;->s:I

    if-ne v7, v9, :cond_11

    move v7, v9

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    :goto_7
    iget v8, v2, Ln/b;->j:I

    if-eq v8, v9, :cond_12

    if-ne v8, v15, :cond_1c

    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v9

    if-ne v8, v9, :cond_13

    const/4 v8, 0x1

    goto :goto_8

    :cond_13
    const/4 v8, 0x0

    :goto_8
    iget v9, v2, Ln/b;->j:I

    if-eq v9, v15, :cond_16

    if-eqz v7, :cond_16

    if-eqz v7, :cond_14

    if-nez v8, :cond_16

    :cond_14
    instance-of v7, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v7, :cond_16

    invoke-virtual/range {p1 .. p1}, Lm/f;->D()Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v7, 0x1

    :goto_a
    if-eqz v7, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_c

    :cond_17
    iget v5, v0, Ln/h;->f:I

    if-eqz v14, :cond_18

    iget-object v7, v1, Lm/f;->K:Lm/d;

    iget v7, v7, Lm/d;->g:I

    const/4 v9, 0x0

    add-int/2addr v7, v9

    goto :goto_b

    :cond_18
    const/4 v7, 0x0

    :goto_b
    if-eqz v13, :cond_19

    iget-object v9, v1, Lm/f;->M:Lm/d;

    iget v9, v9, Lm/d;->g:I

    add-int/2addr v7, v9

    :cond_19
    add-int/2addr v8, v7

    const/4 v7, -0x1

    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_c

    :cond_1a
    iget v5, v0, Ln/h;->f:I

    const/4 v7, -0x2

    invoke-static {v5, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_c

    :cond_1b
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v5, v7

    :cond_1c
    :goto_c
    iget-object v7, v1, Lm/f;->V:Lm/f;

    check-cast v7, Lm/g;

    iget-object v8, v0, Ln/h;->h:Ljava/lang/Object;

    if-eqz v7, :cond_1e

    move-object v9, v8

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/16 v11, 0x100

    invoke-static {v9, v11}, Lcom/google/android/material/slider/h;->W(II)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v11

    if-ne v9, v11, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v7}, Lm/f;->s()I

    move-result v11

    if-ge v9, v11, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v11

    if-ne v9, v11, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7}, Lm/f;->m()I

    move-result v7

    if-ge v9, v7, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v7

    iget v9, v1, Lm/f;->c0:I

    if-ne v7, v9, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lm/f;->B()Z

    move-result v7

    if-nez v7, :cond_1e

    iget v7, v1, Lm/f;->H:I

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v9

    invoke-static {v7, v6, v9}, Ln/h;->a(III)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget v7, v1, Lm/f;->I:I

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v9

    invoke-static {v7, v5, v9}, Ln/h;->a(III)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v7, 0x1

    goto :goto_d

    :cond_1d
    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lm/f;->s()I

    move-result v3

    iput v3, v2, Ln/b;->e:I

    invoke-virtual/range {p1 .. p1}, Lm/f;->m()I

    move-result v3

    iput v3, v2, Ln/b;->f:I

    iget v1, v1, Lm/f;->c0:I

    iput v1, v2, Ln/b;->g:I

    return-void

    :cond_1e
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_1f

    const/4 v9, 0x1

    goto :goto_e

    :cond_1f
    const/4 v9, 0x0

    :goto_e
    if-ne v4, v7, :cond_20

    const/4 v7, 0x1

    goto :goto_f

    :cond_20
    const/4 v7, 0x0

    :goto_f
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v11, :cond_22

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_21

    goto :goto_10

    :cond_21
    const/4 v12, 0x0

    goto :goto_11

    :cond_22
    :goto_10
    const/4 v12, 0x1

    :goto_11
    if-eq v3, v11, :cond_24

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_23

    goto :goto_12

    :cond_23
    const/4 v3, 0x0

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v3, 0x1

    :goto_13
    const/4 v4, 0x0

    if-eqz v9, :cond_25

    iget v11, v1, Lm/f;->Y:F

    cmpl-float v11, v11, v4

    if-lez v11, :cond_25

    const/4 v11, 0x1

    goto :goto_14

    :cond_25
    const/4 v11, 0x0

    :goto_14
    if-eqz v7, :cond_26

    iget v13, v1, Lm/f;->Y:F

    cmpl-float v4, v13, v4

    if-lez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_15

    :cond_26
    const/4 v4, 0x0

    :goto_15
    if-nez v10, :cond_27

    return-void

    :cond_27
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Ls/e;

    iget v14, v2, Ln/b;->j:I

    const/4 v0, 0x1

    if-eq v14, v0, :cond_29

    if-eq v14, v15, :cond_29

    if-eqz v9, :cond_29

    iget v0, v1, Lm/f;->r:I

    if-nez v0, :cond_29

    if-eqz v7, :cond_29

    iget v0, v1, Lm/f;->s:I

    if-eqz v0, :cond_28

    goto :goto_16

    :cond_28
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1f

    :cond_29
    :goto_16
    instance-of v0, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v0, :cond_2a

    instance-of v0, v1, Lm/o;

    if-eqz v0, :cond_2a

    move-object v0, v1

    check-cast v0, Lm/o;

    move-object v7, v10

    check-cast v7, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v7, v0, v6, v5}, Landroidx/constraintlayout/widget/VirtualLayout;->s(Lm/o;II)V

    goto :goto_17

    :cond_2a
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    :goto_17
    iput v6, v1, Lm/f;->H:I

    iput v5, v1, Lm/f;->I:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lm/f;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v9

    iget v14, v1, Lm/f;->u:I

    if-lez v14, :cond_2b

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_18

    :cond_2b
    move v14, v0

    :goto_18
    iget v15, v1, Lm/f;->v:I

    if-lez v15, :cond_2c

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_2c
    iget v15, v1, Lm/f;->x:I

    if-lez v15, :cond_2d

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v5

    goto :goto_19

    :cond_2d
    move/from16 v16, v5

    move v15, v7

    :goto_19
    iget v5, v1, Lm/f;->y:I

    if-lez v5, :cond_2e

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_2e
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v8, 0x1

    invoke-static {v5, v8}, Lcom/google/android/material/slider/h;->W(II)Z

    move-result v5

    if-nez v5, :cond_30

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v11, :cond_2f

    if-eqz v12, :cond_2f

    iget v3, v1, Lm/f;->Y:F

    int-to-float v4, v15

    mul-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v14, v4

    goto :goto_1a

    :cond_2f
    if-eqz v4, :cond_30

    if-eqz v3, :cond_30

    iget v3, v1, Lm/f;->Y:F

    int-to-float v4, v14

    div-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v15, v4

    :cond_30
    :goto_1a
    if-ne v0, v14, :cond_32

    if-eq v7, v15, :cond_31

    goto :goto_1b

    :cond_31
    move v4, v9

    const/4 v12, 0x0

    goto :goto_1e

    :cond_32
    :goto_1b
    if-eq v0, v14, :cond_33

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1c

    :cond_33
    const/high16 v0, 0x40000000    # 2.0f

    :goto_1c
    if-eq v7, v15, :cond_34

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1d

    :cond_34
    move/from16 v5, v16

    :goto_1d
    invoke-virtual {v10, v6, v5}, Landroid/view/View;->measure(II)V

    iput v6, v1, Lm/f;->H:I

    iput v5, v1, Lm/f;->I:I

    const/4 v12, 0x0

    iput-boolean v12, v1, Lm/f;->g:Z

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v14, v0

    move v15, v3

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    if-eq v4, v0, :cond_35

    const/4 v0, 0x1

    goto :goto_20

    :cond_35
    move v0, v12

    :goto_20
    iget v3, v2, Ln/b;->c:I

    if-ne v14, v3, :cond_37

    iget v3, v2, Ln/b;->d:I

    if-eq v15, v3, :cond_36

    goto :goto_21

    :cond_36
    move v5, v12

    goto :goto_22

    :cond_37
    :goto_21
    const/4 v5, 0x1

    :goto_22
    iput-boolean v5, v2, Ln/b;->i:Z

    iget-boolean v3, v13, Ls/e;->c0:Z

    if-eqz v3, :cond_38

    const/4 v9, 0x1

    goto :goto_23

    :cond_38
    move v9, v0

    :goto_23
    if-eqz v9, :cond_39

    const/4 v0, -0x1

    if-eq v4, v0, :cond_39

    iget v0, v1, Lm/f;->c0:I

    if-eq v0, v4, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, v2, Ln/b;->i:Z

    :cond_39
    iput v14, v2, Ln/b;->e:I

    iput v15, v2, Ln/b;->f:I

    iput-boolean v9, v2, Ln/b;->h:Z

    iput v4, v2, Ln/b;->g:I

    return-void
.end method
