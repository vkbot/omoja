.class public final Ln/g;
.super Ln/p;
.source "SourceFile"


# instance fields
.field public final A0:Ll/e;

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:[Ln/b;

.field public G0:[Ln/b;

.field public H0:I

.field public I0:Z

.field public J0:Z

.field public K0:Ljava/lang/ref/WeakReference;

.field public L0:Ljava/lang/ref/WeakReference;

.field public M0:Ljava/lang/ref/WeakReference;

.field public N0:Ljava/lang/ref/WeakReference;

.field public final O0:Ljava/util/HashSet;

.field public final P0:Lo/b;

.field public final v0:Landroidx/appcompat/app/d;

.field public final w0:Lo/e;

.field public x0:I

.field public y0:Lo/h;

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ln/p;-><init>()V

    new-instance v0, Landroidx/appcompat/app/d;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/d;-><init>(Ln/g;)V

    iput-object v0, p0, Ln/g;->v0:Landroidx/appcompat/app/d;

    new-instance v0, Lo/e;

    invoke-direct {v0, p0}, Lo/e;-><init>(Ln/g;)V

    iput-object v0, p0, Ln/g;->w0:Lo/e;

    const/4 v0, 0x0

    iput-object v0, p0, Ln/g;->y0:Lo/h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ln/g;->z0:Z

    new-instance v2, Ll/e;

    invoke-direct {v2}, Ll/e;-><init>()V

    iput-object v2, p0, Ln/g;->A0:Ll/e;

    iput v1, p0, Ln/g;->D0:I

    iput v1, p0, Ln/g;->E0:I

    const/4 v2, 0x4

    new-array v3, v2, [Ln/b;

    iput-object v3, p0, Ln/g;->F0:[Ln/b;

    new-array v2, v2, [Ln/b;

    iput-object v2, p0, Ln/g;->G0:[Ln/b;

    const/16 v2, 0x101

    iput v2, p0, Ln/g;->H0:I

    iput-boolean v1, p0, Ln/g;->I0:Z

    iput-boolean v1, p0, Ln/g;->J0:Z

    iput-object v0, p0, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln/g;->O0:Ljava/util/HashSet;

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    iput-object v0, p0, Ln/g;->P0:Lo/b;

    return-void
.end method

.method public static W(Ln/f;Lo/h;Lo/b;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ln/f;->i0:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    instance-of v0, p0, Ln/k;

    if-nez v0, :cond_14

    instance-of v0, p0, Ln/a;

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v0, v2

    iput-object v1, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Ln/f;->s()I

    move-result v0

    iput v0, p2, Lo/b;->c:I

    invoke-virtual {p0}, Ln/f;->m()I

    move-result v0

    iput v0, p2, Lo/b;->d:I

    iput-boolean v2, p2, Lo/b;->i:Z

    iput v2, p2, Lo/b;->j:I

    iget-object v0, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v4, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget v5, p0, Ln/f;->Y:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    if-eqz v3, :cond_5

    iget v6, p0, Ln/f;->Y:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Ln/f;->v(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Ln/f;->r:I

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v3, :cond_6

    iget v0, p0, Ln/f;->s:I

    if-nez v0, :cond_6

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    move v0, v2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Ln/f;->v(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Ln/f;->s:I

    if-nez v6, :cond_9

    if-nez v4, :cond_9

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_8

    iget v3, p0, Ln/f;->r:I

    if-nez v3, :cond_8

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_8
    move v3, v2

    :cond_9
    invoke-virtual {p0}, Ln/f;->C()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v2

    :cond_a
    invoke-virtual {p0}, Ln/f;->D()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v2

    :cond_b
    const/4 v6, 0x4

    iget-object v7, p0, Ln/f;->t:[I

    if-eqz v5, :cond_e

    aget v5, v7, v2

    if-ne v5, v6, :cond_c

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    iget-object v3, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_d

    iget v3, p2, Lo/b;->d:I

    goto :goto_4

    :cond_d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0, p2}, Lo/h;->b(Ln/f;Lo/b;)V

    iget v3, p2, Lo/b;->f:I

    :goto_4
    iput-object v5, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, p0, Ln/f;->Y:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Lo/b;->c:I

    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    aget v3, v7, v1

    if-ne v3, v6, :cond_f

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget-object v0, p2, Lo/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_10

    iget v0, p2, Lo/b;->c:I

    goto :goto_6

    :cond_10
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0, p2}, Lo/h;->b(Ln/f;Lo/b;)V

    iget v0, p2, Lo/b;->e:I

    :goto_6
    iput-object v3, p2, Lo/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget v3, p0, Ln/f;->Z:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    int-to-float v0, v0

    iget v3, p0, Ln/f;->Y:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p2, Lo/b;->d:I

    goto :goto_7

    :cond_11
    iget v3, p0, Ln/f;->Y:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p2, Lo/b;->d:I

    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Lo/h;->b(Ln/f;Lo/b;)V

    iget p1, p2, Lo/b;->e:I

    invoke-virtual {p0, p1}, Ln/f;->P(I)V

    iget p1, p2, Lo/b;->f:I

    invoke-virtual {p0, p1}, Ln/f;->M(I)V

    iget-boolean p1, p2, Lo/b;->h:Z

    iput-boolean p1, p0, Ln/f;->E:Z

    iget p1, p2, Lo/b;->g:I

    iput p1, p0, Ln/f;->c0:I

    if-lez p1, :cond_13

    goto :goto_8

    :cond_13
    move v1, v2

    :goto_8
    iput-boolean v1, p0, Ln/f;->E:Z

    iput v2, p2, Lo/b;->j:I

    return-void

    :cond_14
    :goto_9
    iput v2, p2, Lo/b;->e:I

    iput v2, p2, Lo/b;->f:I

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    iget-object v0, p0, Ln/g;->A0:Ll/e;

    invoke-virtual {v0}, Ll/e;->t()V

    const/4 v0, 0x0

    iput v0, p0, Ln/g;->B0:I

    iput v0, p0, Ln/g;->C0:I

    invoke-super {p0}, Ln/p;->E()V

    return-void
.end method

.method public final Q(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Ln/f;->Q(ZZ)V

    iget-object v0, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/f;

    invoke-virtual {v2, p1, p2}, Ln/f;->Q(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 28

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Ln/f;->a0:I

    iput v2, v1, Ln/f;->b0:I

    iput-boolean v2, v1, Ln/g;->I0:Z

    iput-boolean v2, v1, Ln/g;->J0:Z

    iget-object v0, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v5, v5, v2

    iget v8, v1, Ln/g;->x0:I

    iget-object v10, v1, Ln/f;->K:Ln/d;

    iget-object v11, v1, Ln/f;->J:Ln/d;

    if-nez v8, :cond_1d

    iget v8, v1, Ln/g;->H0:I

    invoke-static {v8, v6}, Ly1/l;->W(II)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, v1, Ln/g;->y0:Lo/h;

    iget-object v12, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v12, v2

    aget-object v12, v12, v6

    invoke-virtual/range {p0 .. p0}, Ln/f;->G()V

    iget-object v14, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v9, v2

    :goto_0
    if-ge v9, v15, :cond_0

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ln/f;

    invoke-virtual/range {v16 .. v16}, Ln/f;->G()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v9, v1, Ln/g;->z0:Z

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ln/f;->K(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v2}, Ln/d;->l(I)V

    iput v2, v1, Ln/f;->a0:I

    :goto_1
    move v6, v2

    move v13, v6

    move/from16 v17, v13

    :goto_2
    const/high16 v18, 0x3f000000    # 0.5f

    if-ge v13, v15, :cond_7

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Ln/f;

    move-object/from16 v19, v11

    instance-of v11, v2, Ln/k;

    if-eqz v11, :cond_5

    check-cast v2, Ln/k;

    iget v11, v2, Ln/k;->y0:I

    move/from16 v21, v4

    const/4 v4, 0x1

    if-ne v11, v4, :cond_6

    iget v4, v2, Ln/k;->v0:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    invoke-virtual {v2, v4}, Ln/k;->S(I)V

    goto :goto_3

    :cond_2
    iget v4, v2, Ln/k;->w0:I

    if-eq v4, v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Ln/f;->C()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v4

    iget v6, v2, Ln/k;->w0:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ln/k;->S(I)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln/f;->C()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v2, Ln/k;->u0:F

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float v4, v4, v18

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ln/k;->S(I)V

    :cond_4
    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    move/from16 v21, v4

    instance-of v4, v2, Ln/a;

    if-eqz v4, :cond_6

    check-cast v2, Ln/a;

    invoke-virtual {v2}, Ln/a;->V()I

    move-result v2

    if-nez v2, :cond_6

    const/16 v17, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v19

    move/from16 v4, v21

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    move/from16 v21, v4

    move-object/from16 v19, v11

    if-eqz v6, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v15, :cond_9

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    instance-of v6, v4, Ln/k;

    if-eqz v6, :cond_8

    check-cast v4, Ln/k;

    iget v6, v4, Ln/k;->y0:I

    const/4 v11, 0x1

    if-ne v6, v11, :cond_8

    const/4 v6, 0x0

    invoke-static {v6, v4, v8, v9}, Ly1/l;->F0(ILn/f;Lo/h;Z)V

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    invoke-static {v6, v1, v8, v9}, Ly1/l;->F0(ILn/f;Lo/h;Z)V

    if-eqz v17, :cond_b

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v15, :cond_b

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    instance-of v6, v4, Ln/a;

    if-eqz v6, :cond_a

    check-cast v4, Ln/a;

    invoke-virtual {v4}, Ln/a;->V()I

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Ln/a;->U()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    invoke-static {v6, v4, v8, v9}, Ly1/l;->F0(ILn/f;Lo/h;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ln/f;->L(II)V

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ln/d;->l(I)V

    iput v4, v1, Ln/f;->b0:I

    :goto_8
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_9
    if-ge v4, v15, :cond_12

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln/f;

    instance-of v12, v11, Ln/k;

    if-eqz v12, :cond_10

    check-cast v11, Ln/k;

    iget v12, v11, Ln/k;->y0:I

    if-nez v12, :cond_11

    iget v2, v11, Ln/k;->v0:I

    const/4 v12, -0x1

    if-eq v2, v12, :cond_d

    invoke-virtual {v11, v2}, Ln/k;->S(I)V

    goto :goto_a

    :cond_d
    iget v2, v11, Ln/k;->w0:I

    if-eq v2, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Ln/f;->D()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v2

    iget v12, v11, Ln/k;->w0:I

    sub-int/2addr v2, v12

    invoke-virtual {v11, v2}, Ln/k;->S(I)V

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ln/f;->D()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v11, Ln/k;->u0:F

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v2, v12

    add-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v11, v2}, Ln/k;->S(I)V

    :cond_f
    :goto_a
    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    instance-of v12, v11, Ln/a;

    if-eqz v12, :cond_11

    check-cast v11, Ln/a;

    invoke-virtual {v11}, Ln/a;->V()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    const/4 v6, 0x1

    :cond_11
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v15, :cond_14

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    instance-of v11, v4, Ln/k;

    if-eqz v11, :cond_13

    check-cast v4, Ln/k;

    iget v11, v4, Ln/k;->y0:I

    if-nez v11, :cond_13

    const/4 v11, 0x1

    invoke-static {v11, v4, v8}, Ly1/l;->I1(ILn/f;Lo/h;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    invoke-static {v2, v1, v8}, Ly1/l;->I1(ILn/f;Lo/h;)V

    if-eqz v6, :cond_16

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v15, :cond_16

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    instance-of v6, v4, Ln/a;

    if-eqz v6, :cond_15

    check-cast v4, Ln/a;

    invoke-virtual {v4}, Ln/a;->V()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_15

    invoke-virtual {v4}, Ln/a;->U()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v11, v4, v8}, Ly1/l;->I1(ILn/f;Lo/h;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v15, :cond_1a

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    invoke-virtual {v4}, Ln/f;->B()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v4}, Ly1/l;->t(Ln/f;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Ly1/l;->i:Lo/b;

    invoke-static {v4, v8, v6}, Ln/g;->W(Ln/f;Lo/h;Lo/b;)V

    instance-of v6, v4, Ln/k;

    if-eqz v6, :cond_18

    move-object v6, v4

    check-cast v6, Ln/k;

    iget v6, v6, Ln/k;->y0:I

    if-nez v6, :cond_17

    const/4 v6, 0x0

    invoke-static {v6, v4, v8}, Ly1/l;->I1(ILn/f;Lo/h;)V

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    invoke-static {v6, v4, v8, v9}, Ly1/l;->F0(ILn/f;Lo/h;Z)V

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    invoke-static {v6, v4, v8, v9}, Ly1/l;->F0(ILn/f;Lo/h;Z)V

    invoke-static {v6, v4, v8}, Ly1/l;->I1(ILn/f;Lo/h;)V

    :cond_19
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_1e

    iget-object v4, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    invoke-virtual {v4}, Ln/f;->B()Z

    move-result v6

    if-eqz v6, :cond_1c

    instance-of v6, v4, Ln/k;

    if-nez v6, :cond_1c

    instance-of v6, v4, Ln/a;

    if-nez v6, :cond_1c

    instance-of v6, v4, Ln/o;

    if-nez v6, :cond_1c

    iget-boolean v6, v4, Ln/f;->G:Z

    if-nez v6, :cond_1c

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v11, :cond_1b

    iget v8, v4, Ln/f;->r:I

    if-eq v8, v6, :cond_1b

    if-ne v9, v11, :cond_1b

    iget v8, v4, Ln/f;->s:I

    if-eq v8, v6, :cond_1b

    const/4 v6, 0x1

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    if-nez v6, :cond_1c

    new-instance v6, Lo/b;

    invoke-direct {v6}, Lo/b;-><init>()V

    iget-object v8, v1, Ln/g;->y0:Lo/h;

    invoke-static {v4, v8, v6}, Ln/g;->W(Ln/f;Lo/h;Lo/b;)V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    move/from16 v21, v4

    move-object/from16 v19, v11

    :cond_1e
    const/4 v2, 0x2

    iget-object v4, v1, Ln/g;->A0:Ll/e;

    if-le v3, v2, :cond_59

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v8, :cond_1f

    if-ne v7, v8, :cond_59

    :cond_1f
    iget v8, v1, Ln/g;->H0:I

    const/16 v9, 0x400

    invoke-static {v8, v9}, Ly1/l;->W(II)Z

    move-result v8

    if-eqz v8, :cond_59

    iget-object v8, v1, Ln/g;->y0:Lo/h;

    iget-object v9, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v11, :cond_22

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln/f;

    iget-object v14, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aget-object v2, v14, v15

    const/16 v16, 0x1

    aget-object v14, v14, v16

    iget-object v6, v13, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v22, v10

    aget-object v10, v6, v15

    aget-object v6, v6, v16

    invoke-static {v2, v14, v10, v6}, Ly1/l;->H1(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_13

    :cond_20
    instance-of v2, v13, Ln/i;

    if-eqz v2, :cond_21

    :goto_13
    move/from16 v25, v0

    move/from16 v24, v3

    move-object v6, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v7

    goto/16 :goto_2e

    :cond_21
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v22

    const/4 v2, 0x2

    goto :goto_12

    :cond_22
    move-object/from16 v22, v10

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v11, :cond_33

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v3

    move-object/from16 v3, v23

    check-cast v3, Ln/f;

    move-object/from16 v23, v7

    iget-object v7, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v25, v0

    const/16 v20, 0x0

    aget-object v0, v7, v20

    const/16 v16, 0x1

    aget-object v7, v7, v16

    move-object/from16 v26, v5

    iget-object v5, v3, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v4

    aget-object v4, v5, v20

    aget-object v5, v5, v16

    invoke-static {v0, v7, v4, v5}, Ly1/l;->H1(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Ln/g;->P0:Lo/b;

    invoke-static {v3, v8, v0}, Ln/g;->W(Ln/f;Lo/h;Lo/b;)V

    :cond_23
    instance-of v0, v3, Ln/k;

    if-eqz v0, :cond_27

    move-object v4, v3

    check-cast v4, Ln/k;

    iget v5, v4, Ln/k;->y0:I

    if-nez v5, :cond_25

    if-nez v10, :cond_24

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v5

    :cond_24
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget v5, v4, Ln/k;->y0:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_27

    if-nez v2, :cond_26

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    instance-of v4, v3, Ln/m;

    if-eqz v4, :cond_2e

    instance-of v4, v3, Ln/a;

    if-eqz v4, :cond_2b

    move-object v4, v3

    check-cast v4, Ln/a;

    invoke-virtual {v4}, Ln/a;->V()I

    move-result v5

    if-nez v5, :cond_29

    if-nez v6, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    :cond_28
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v4}, Ln/a;->V()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2e

    if-nez v12, :cond_2a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    move-object v4, v3

    check-cast v4, Ln/m;

    if-nez v6, :cond_2c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_2d

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_15
    iget-object v4, v3, Ln/f;->J:Ln/d;

    iget-object v4, v4, Ln/d;->f:Ln/d;

    if-nez v4, :cond_30

    iget-object v4, v3, Ln/f;->L:Ln/d;

    iget-object v4, v4, Ln/d;->f:Ln/d;

    if-nez v4, :cond_30

    if-nez v0, :cond_30

    instance-of v4, v3, Ln/a;

    if-nez v4, :cond_30

    if-nez v13, :cond_2f

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v4, v3, Ln/f;->K:Ln/d;

    iget-object v4, v4, Ln/d;->f:Ln/d;

    if-nez v4, :cond_32

    iget-object v4, v3, Ln/f;->M:Ln/d;

    iget-object v4, v4, Ln/d;->f:Ln/d;

    if-nez v4, :cond_32

    iget-object v4, v3, Ln/f;->N:Ln/d;

    iget-object v4, v4, Ln/d;->f:Ln/d;

    if-nez v4, :cond_32

    if-nez v0, :cond_32

    instance-of v0, v3, Ln/a;

    if-nez v0, :cond_32

    if-nez v14, :cond_31

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v23

    move/from16 v3, v24

    move/from16 v0, v25

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    goto/16 :goto_14

    :cond_33
    move/from16 v25, v0

    move/from16 v24, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/k;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_16

    :cond_34
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/m;

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Ln/m;->T(ILo/i;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lo/i;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_17

    :cond_35
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_18

    :cond_36
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_19

    :cond_37
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_1a

    :cond_38
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v13, :cond_39

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/f;

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_1b

    :cond_39
    if-eqz v10, :cond_3a

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/k;

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_1c

    :cond_3a
    const/4 v5, 0x1

    if-eqz v12, :cond_3b

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/m;

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Ln/m;->T(ILo/i;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lo/i;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1d

    :cond_3b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_1e

    :cond_3c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_1f

    :cond_3d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_20

    :cond_3e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    iget-object v2, v2, Ln/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/d;

    iget-object v3, v3, Ln/d;->d:Ln/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_21

    :cond_3f
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v14, :cond_40

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/f;

    invoke-static {v3, v5, v0, v4}, Ly1/l;->Z(Ln/f;ILjava/util/ArrayList;Lo/i;)Lo/i;

    goto :goto_22

    :cond_40
    const/4 v2, 0x0

    :goto_23
    if-ge v2, v11, :cond_47

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/f;

    iget-object v4, v3, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_41

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-ne v4, v5, :cond_41

    const/4 v4, 0x1

    goto :goto_24

    :cond_41
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_46

    iget v4, v3, Ln/f;->s0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v5, :cond_43

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/i;

    iget v8, v7, Lo/i;->b:I

    if-ne v4, v8, :cond_42

    goto :goto_26

    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_43
    const/4 v7, 0x0

    :goto_26
    iget v3, v3, Ln/f;->t0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/i;

    iget v8, v6, Lo/i;->b:I

    if-ne v3, v8, :cond_44

    goto :goto_28

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_45
    const/4 v6, 0x0

    :goto_28
    if-eqz v7, :cond_46

    if-eqz v6, :cond_46

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v6}, Lo/i;->c(ILo/i;)V

    const/4 v3, 0x2

    iput v3, v6, Lo/i;->c:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_48

    move-object/from16 v6, v27

    goto/16 :goto_2e

    :cond_48
    iget-object v2, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_4c

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/i;

    iget v6, v5, Lo/i;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    move-object/from16 v6, v27

    goto :goto_2a

    :cond_49
    move-object/from16 v6, v27

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lo/i;->b(Ll/e;I)I

    move-result v8

    if-le v8, v4, :cond_4a

    move-object v3, v5

    move-object/from16 v27, v6

    move v4, v8

    goto :goto_29

    :cond_4a
    :goto_2a
    move-object/from16 v27, v6

    goto :goto_29

    :cond_4b
    move-object/from16 v6, v27

    if-eqz v3, :cond_4d

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Ln/f;->P(I)V

    goto :goto_2b

    :cond_4c
    move-object/from16 v6, v27

    :cond_4d
    const/4 v3, 0x0

    :goto_2b
    iget-object v2, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_51

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_4e
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/i;

    iget v7, v5, Lo/i;->c:I

    if-nez v7, :cond_4f

    goto :goto_2c

    :cond_4f
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lo/i;->b(Ll/e;I)I

    move-result v8

    if-le v8, v4, :cond_4e

    move-object v2, v5

    move v4, v8

    goto :goto_2c

    :cond_50
    if-eqz v2, :cond_51

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v0}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Ln/f;->M(I)V

    goto :goto_2d

    :cond_51
    const/4 v2, 0x0

    :goto_2d
    if-nez v3, :cond_53

    if-eqz v2, :cond_52

    goto :goto_2f

    :cond_52
    :goto_2e
    const/4 v0, 0x0

    goto :goto_30

    :cond_53
    :goto_2f
    const/4 v0, 0x1

    :goto_30
    if-eqz v0, :cond_58

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v2, v26

    if-ne v2, v0, :cond_55

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v3

    move/from16 v4, v25

    if-ge v4, v3, :cond_54

    if-lez v4, :cond_54

    invoke-virtual {v1, v4}, Ln/f;->P(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Ln/g;->I0:Z

    goto :goto_31

    :cond_54
    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v3

    goto :goto_32

    :cond_55
    move/from16 v4, v25

    :goto_31
    move v3, v4

    :goto_32
    move-object/from16 v5, v23

    if-ne v5, v0, :cond_57

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v0

    move/from16 v7, v21

    if-ge v7, v0, :cond_56

    if-lez v7, :cond_56

    invoke-virtual {v1, v7}, Ln/f;->M(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Ln/g;->J0:Z

    goto :goto_33

    :cond_56
    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v4

    goto :goto_34

    :cond_57
    move/from16 v7, v21

    :goto_33
    move v4, v7

    :goto_34
    const/4 v0, 0x1

    goto :goto_36

    :cond_58
    move/from16 v7, v21

    move-object/from16 v5, v23

    move/from16 v4, v25

    move-object/from16 v2, v26

    goto :goto_35

    :cond_59
    move/from16 v24, v3

    move-object v6, v4

    move-object v2, v5

    move-object v5, v7

    move-object/from16 v22, v10

    move/from16 v7, v21

    move v4, v0

    :goto_35
    move v3, v4

    move v4, v7

    const/4 v0, 0x0

    :goto_36
    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Ln/g;->X(I)Z

    move-result v8

    if-nez v8, :cond_5b

    const/16 v8, 0x80

    invoke-virtual {v1, v8}, Ln/g;->X(I)Z

    move-result v8

    if-eqz v8, :cond_5a

    goto :goto_37

    :cond_5a
    const/4 v8, 0x0

    goto :goto_38

    :cond_5b
    :goto_37
    const/4 v8, 0x1

    :goto_38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v6, Ll/e;->g:Z

    iget v10, v1, Ln/g;->H0:I

    if-eqz v10, :cond_5c

    if-eqz v8, :cond_5c

    const/4 v8, 0x1

    iput-boolean v8, v6, Ll/e;->g:Z

    goto :goto_39

    :cond_5c
    const/4 v8, 0x1

    :goto_39
    iget-object v10, v1, Ln/p;->u0:Ljava/util/ArrayList;

    iget-object v11, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v12, v11, v9

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v13, :cond_5e

    aget-object v11, v11, v8

    if-ne v11, v13, :cond_5d

    goto :goto_3a

    :cond_5d
    move v8, v9

    goto :goto_3b

    :cond_5e
    :goto_3a
    const/4 v8, 0x1

    :goto_3b
    iput v9, v1, Ln/g;->D0:I

    iput v9, v1, Ln/g;->E0:I

    move/from16 v11, v24

    const/4 v9, 0x0

    :goto_3c
    if-ge v9, v11, :cond_60

    iget-object v12, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln/f;

    instance-of v13, v12, Ln/p;

    if-eqz v13, :cond_5f

    check-cast v12, Ln/p;

    invoke-virtual {v12}, Ln/p;->S()V

    :cond_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_60
    invoke-virtual {v1, v7}, Ln/g;->X(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3d
    if-eqz v13, :cond_74

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v6}, Ll/e;->t()V

    const/4 v14, 0x0

    iput v14, v1, Ln/g;->D0:I

    iput v14, v1, Ln/g;->E0:I

    invoke-virtual {v1, v6}, Ln/f;->i(Ll/e;)V

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v11, :cond_61

    iget-object v14, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln/f;

    invoke-virtual {v14, v6}, Ln/f;->i(Ll/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_61
    invoke-virtual {v1, v6}, Ln/g;->U(Ll/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v0, v1, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    const/4 v13, 0x5

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v14, v22

    :try_start_2
    invoke-virtual {v6, v14}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    invoke-virtual {v6, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v22, v14

    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v14, v13}, Ll/e;->f(Ll/i;Ll/i;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Ln/g;->K0:Ljava/lang/ref/WeakReference;

    goto :goto_3f

    :catch_0
    move-exception v0

    move-object/from16 v22, v14

    goto :goto_40

    :cond_62
    :goto_3f
    iget-object v0, v1, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    iget-object v7, v1, Ln/f;->M:Ln/d;

    invoke-virtual {v6, v7}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    invoke-virtual {v6, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v0, v14, v13}, Ll/e;->f(Ll/i;Ll/i;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Ln/g;->M0:Ljava/lang/ref/WeakReference;

    :cond_63
    iget-object v0, v1, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v7, v19

    :try_start_4
    invoke-virtual {v6, v7}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v14

    invoke-virtual {v6, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v7

    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v6, v0, v14, v7, v13}, Ll/e;->f(Ll/i;Ll/i;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Ln/g;->L0:Ljava/lang/ref/WeakReference;

    goto :goto_41

    :catch_1
    move-exception v0

    move-object/from16 v19, v7

    :goto_40
    const/4 v7, 0x0

    goto :goto_43

    :cond_64
    :goto_41
    iget-object v0, v1, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/d;

    iget-object v7, v1, Ln/f;->L:Ln/d;

    invoke-virtual {v6, v7}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v7

    invoke-virtual {v6, v0}, Ll/e;->k(Ljava/lang/Object;)Ll/i;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v0, v14, v13}, Ll/e;->f(Ll/i;Ll/i;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v7, 0x0

    :try_start_6
    iput-object v7, v1, Ln/g;->N0:Ljava/lang/ref/WeakReference;

    goto :goto_42

    :catch_2
    move-exception v0

    goto :goto_40

    :cond_65
    const/4 v7, 0x0

    :goto_42
    invoke-virtual {v6}, Ll/e;->p()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/16 v23, 0x1

    goto :goto_45

    :catch_3
    move-exception v0

    :goto_43
    const/4 v13, 0x1

    goto :goto_44

    :catch_4
    move-exception v0

    const/4 v7, 0x0

    :goto_44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v23, v13

    const-string v13, "EXCEPTION : "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_45
    sget-object v0, Ly1/l;->h:[Z

    if-eqz v23, :cond_6a

    const/4 v7, 0x2

    const/4 v13, 0x0

    aput-boolean v13, v0, v7

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Ln/g;->X(I)Z

    move-result v13

    invoke-virtual {v1, v6, v13}, Ln/f;->R(Ll/e;Z)V

    iget-object v14, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v7, 0x0

    const/16 v21, 0x0

    :goto_46
    if-ge v7, v14, :cond_69

    move/from16 v24, v14

    iget-object v14, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln/f;

    invoke-virtual {v14, v6, v13}, Ln/f;->R(Ll/e;Z)V

    move/from16 v25, v13

    iget v13, v14, Ln/f;->h:I

    move/from16 v26, v12

    const/4 v12, -0x1

    if-ne v13, v12, :cond_67

    iget v13, v14, Ln/f;->i:I

    if-eq v13, v12, :cond_66

    goto :goto_47

    :cond_66
    const/4 v13, 0x0

    goto :goto_48

    :cond_67
    :goto_47
    const/4 v13, 0x1

    :goto_48
    if-eqz v13, :cond_68

    const/16 v21, 0x1

    :cond_68
    add-int/lit8 v7, v7, 0x1

    move/from16 v14, v24

    move/from16 v13, v25

    move/from16 v12, v26

    goto :goto_46

    :cond_69
    move/from16 v26, v12

    const/4 v12, -0x1

    goto :goto_4a

    :cond_6a
    move/from16 v26, v12

    const/4 v12, -0x1

    invoke-virtual {v1, v6, v9}, Ln/f;->R(Ll/e;Z)V

    const/4 v7, 0x0

    :goto_49
    if-ge v7, v11, :cond_6b

    iget-object v13, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln/f;

    invoke-virtual {v13, v6, v9}, Ln/f;->R(Ll/e;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    :cond_6b
    const/16 v21, 0x0

    :goto_4a
    const/16 v7, 0x8

    if-eqz v8, :cond_6e

    if-ge v15, v7, :cond_6e

    const/4 v13, 0x2

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4b
    if-ge v0, v11, :cond_6c

    iget-object v13, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln/f;

    iget v7, v13, Ln/f;->a0:I

    invoke-virtual {v13}, Ln/f;->s()I

    move-result v25

    add-int v7, v25, v7

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v7, v13, Ln/f;->b0:I

    invoke-virtual {v13}, Ln/f;->m()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x8

    const/4 v13, 0x2

    goto :goto_4b

    :cond_6c
    iget v0, v1, Ln/f;->d0:I

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, v1, Ln/f;->e0:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v12, :cond_6d

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v13

    if-ge v13, v0, :cond_6d

    invoke-virtual {v1, v0}, Ln/f;->P(I)V

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aput-object v12, v0, v13

    const/16 v21, 0x1

    const/16 v26, 0x1

    :cond_6d
    if-ne v5, v12, :cond_6e

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v0

    if-ge v0, v7, :cond_6e

    invoke-virtual {v1, v7}, Ln/f;->M(I)V

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aput-object v12, v0, v7

    const/16 v21, 0x1

    const/16 v26, 0x1

    :cond_6e
    iget v0, v1, Ln/f;->d0:I

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v7

    if-le v0, v7, :cond_6f

    invoke-virtual {v1, v0}, Ln/f;->P(I)V

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aput-object v7, v0, v12

    const/16 v21, 0x1

    const/16 v26, 0x1

    :cond_6f
    iget v0, v1, Ln/f;->e0:I

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v7

    if-le v0, v7, :cond_70

    invoke-virtual {v1, v0}, Ln/f;->M(I)V

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    aput-object v7, v0, v12

    move/from16 v21, v12

    move/from16 v26, v21

    goto :goto_4c

    :cond_70
    const/4 v12, 0x1

    :goto_4c
    if-nez v26, :cond_72

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v13, :cond_71

    if-lez v3, :cond_71

    invoke-virtual/range {p0 .. p0}, Ln/f;->s()I

    move-result v0

    if-le v0, v3, :cond_71

    iput-boolean v12, v1, Ln/g;->I0:Z

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v14, v0, v7

    invoke-virtual {v1, v3}, Ln/f;->P(I)V

    move/from16 v21, v12

    move/from16 v26, v21

    :cond_71
    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v12

    if-ne v0, v13, :cond_72

    if-lez v4, :cond_72

    invoke-virtual/range {p0 .. p0}, Ln/f;->m()I

    move-result v0

    if-le v0, v4, :cond_72

    iput-boolean v12, v1, Ln/g;->J0:Z

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v0, v12

    invoke-virtual {v1, v4}, Ln/f;->M(I)V

    const/16 v0, 0x8

    const/4 v12, 0x1

    const/16 v21, 0x1

    goto :goto_4d

    :cond_72
    move/from16 v12, v26

    const/16 v0, 0x8

    :goto_4d
    if-le v15, v0, :cond_73

    const/4 v13, 0x0

    goto :goto_4e

    :cond_73
    move/from16 v13, v21

    :goto_4e
    move v0, v15

    const/16 v7, 0x40

    goto/16 :goto_3d

    :cond_74
    move/from16 v26, v12

    iput-object v10, v1, Ln/p;->u0:Ljava/util/ArrayList;

    if-eqz v26, :cond_75

    iget-object v0, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v5, v0, v2

    :cond_75
    iget-object v0, v6, Ll/e;->l:Ll/d;

    invoke-virtual {v1, v0}, Ln/p;->H(Ll/d;)V

    return-void
.end method

.method public final T(ILn/f;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Ln/g;->D0:I

    add-int/2addr p1, v0

    iget-object v1, p0, Ln/g;->G0:[Ln/b;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln/b;

    iput-object p1, p0, Ln/g;->G0:[Ln/b;

    :cond_0
    iget-object p1, p0, Ln/g;->G0:[Ln/b;

    iget v1, p0, Ln/g;->D0:I

    new-instance v2, Ln/b;

    iget-boolean v3, p0, Ln/g;->z0:Z

    const/4 v4, 0x0

    invoke-direct {v2, p2, v4, v3}, Ln/b;-><init>(Ln/f;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Ln/g;->D0:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    iget p1, p0, Ln/g;->E0:I

    add-int/2addr p1, v0

    iget-object v1, p0, Ln/g;->F0:[Ln/b;

    array-length v2, v1

    if-lt p1, v2, :cond_2

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln/b;

    iput-object p1, p0, Ln/g;->F0:[Ln/b;

    :cond_2
    iget-object p1, p0, Ln/g;->F0:[Ln/b;

    iget v1, p0, Ln/g;->E0:I

    new-instance v2, Ln/b;

    iget-boolean v3, p0, Ln/g;->z0:Z

    invoke-direct {v2, p2, v0, v3}, Ln/b;-><init>(Ln/f;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Ln/g;->E0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final U(Ll/e;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ln/g;->X(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Ln/f;->c(Ll/e;Z)V

    iget-object v1, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/f;

    iget-object v7, v6, Ln/f;->T:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Ln/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_8

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    instance-of v6, v4, Ln/a;

    if-eqz v6, :cond_7

    check-cast v4, Ln/a;

    move v6, v2

    :goto_2
    iget v7, v4, Ln/m;->v0:I

    if-ge v6, v7, :cond_7

    iget-object v7, v4, Ln/m;->u0:[Ln/f;

    aget-object v7, v7, v6

    iget-boolean v8, v4, Ln/a;->x0:Z

    if-nez v8, :cond_2

    invoke-virtual {v7}, Ln/f;->d()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    iget v8, v4, Ln/a;->w0:I

    if-eqz v8, :cond_5

    if-ne v8, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v7, v7, Ln/f;->T:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v7, v7, Ln/f;->T:[Z

    aput-boolean v5, v7, v2

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Ln/g;->O0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v4, v2

    :goto_5
    if-ge v4, v1, :cond_d

    iget-object v6, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Ln/o;

    if-nez v7, :cond_a

    instance-of v7, v6, Ln/k;

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    move v7, v2

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v5

    :goto_7
    if-eqz v7, :cond_c

    instance-of v7, v6, Ln/o;

    if-eqz v7, :cond_b

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {v6, p1, v0}, Ln/f;->c(Ll/e;Z)V

    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln/f;

    check-cast v7, Ln/o;

    move v8, v2

    :goto_a
    iget v9, v7, Ln/m;->v0:I

    if-ge v8, v9, :cond_10

    iget-object v9, v7, Ln/m;->u0:[Ln/f;

    aget-object v9, v9, v8

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v8, v5

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    move v8, v2

    :goto_b
    if-eqz v8, :cond_e

    invoke-virtual {v7, p1, v0}, Ln/f;->c(Ll/e;Z)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v4, v6, :cond_d

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/f;

    invoke-virtual {v6, p1, v0}, Ln/f;->c(Ll/e;Z)V

    goto :goto_c

    :cond_12
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto :goto_9

    :cond_13
    sget-boolean v3, Ll/e;->p:Z

    if-eqz v3, :cond_19

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_d
    if-ge v4, v1, :cond_17

    iget-object v6, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Ln/o;

    if-nez v7, :cond_15

    instance-of v7, v6, Ln/k;

    if-eqz v7, :cond_14

    goto :goto_e

    :cond_14
    move v7, v2

    goto :goto_f

    :cond_15
    :goto_e
    move v7, v5

    :goto_f
    if-nez v7, :cond_16

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_17
    iget-object v1, p0, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_18

    move v10, v2

    goto :goto_10

    :cond_18
    move v10, v5

    :goto_10
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Ln/f;->b(Ln/g;Ll/e;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/f;

    invoke-static {p0, p1, v3}, Ly1/l;->v(Ln/g;Ll/e;Ln/f;)V

    invoke-virtual {v3, p1, v0}, Ln/f;->c(Ll/e;Z)V

    goto :goto_11

    :cond_19
    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_21

    iget-object v4, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln/f;

    instance-of v6, v4, Ln/g;

    if-eqz v6, :cond_1d

    iget-object v6, v4, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v6, v2

    aget-object v6, v6, v5

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1a

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v9}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1a
    if-ne v6, v8, :cond_1b

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v9}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1b
    invoke-virtual {v4, p1, v0}, Ln/f;->c(Ll/e;Z)V

    if-ne v7, v8, :cond_1c

    invoke-virtual {v4, v7}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1c
    if-ne v6, v8, :cond_20

    invoke-virtual {v4, v6}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_15

    :cond_1d
    invoke-static {p0, p1, v4}, Ly1/l;->v(Ln/g;Ll/e;Ln/f;)V

    instance-of v6, v4, Ln/o;

    if-nez v6, :cond_1f

    instance-of v6, v4, Ln/k;

    if-eqz v6, :cond_1e

    goto :goto_13

    :cond_1e
    move v6, v2

    goto :goto_14

    :cond_1f
    :goto_13
    move v6, v5

    :goto_14
    if-nez v6, :cond_20

    invoke-virtual {v4, p1, v0}, Ln/f;->c(Ll/e;Z)V

    :cond_20
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_21
    iget v0, p0, Ln/g;->D0:I

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-static {p0, p1, v1, v2}, Ly1/l;->i(Ln/g;Ll/e;Ljava/util/ArrayList;I)V

    :cond_22
    iget v0, p0, Ln/g;->E0:I

    if-lez v0, :cond_23

    invoke-static {p0, p1, v1, v5}, Ly1/l;->i(Ln/g;Ll/e;Ljava/util/ArrayList;I)V

    :cond_23
    return-void
.end method

.method public final V(IZ)Z
    .locals 11

    const/4 v0, 0x1

    and-int/2addr p2, v0

    iget-object p0, p0, Ln/g;->w0:Lo/e;

    iget-object v1, p0, Lo/e;->a:Ln/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {v1, v0}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v1}, Ln/f;->t()I

    move-result v5

    invoke-virtual {v1}, Ln/f;->u()I

    move-result v6

    iget-object v7, p0, Lo/e;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->f:I

    if-ne v10, p1, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/h;->k()Z

    move-result v9

    if-nez v9, :cond_1

    move p2, v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, p2}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v1, v2}, Lo/e;->d(Ln/g;I)I

    move-result p2

    invoke-virtual {v1, p2}, Ln/f;->P(I)V

    iget-object p2, v1, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Ln/f;->s()I

    move-result v8

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, p2}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v1, v0}, Lo/e;->d(Ln/g;I)I

    move-result p2

    invoke-virtual {v1, p2}, Ln/f;->M(I)V

    iget-object p2, v1, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v1}, Ln/f;->m()I

    move-result v8

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    iget-object p2, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v2

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v6, :cond_7

    :cond_5
    invoke-virtual {v1}, Ln/f;->s()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v1, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v6, v1, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_2

    :cond_6
    iget-object p2, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v0

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v5, :cond_8

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v5, :cond_7

    goto :goto_1

    :cond_7
    move p2, v2

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {v1}, Ln/f;->m()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v1, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v5, v1, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :goto_2
    move p2, v0

    :goto_3
    invoke-virtual {p0}, Lo/e;->g()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->f:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Ln/f;

    if-ne v6, v1, :cond_a

    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/h;->e()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->f:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Ln/f;

    if-ne v6, v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Lo/c;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v5, :cond_c

    :goto_6
    move v0, v2

    :cond_11
    invoke-virtual {v1, v3}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public final X(I)Z
    .locals 0

    iget p0, p0, Ln/g;->H0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p(Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ln/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ln/f;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ln/f;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/f;

    invoke-virtual {v0, p1}, Ln/f;->p(Ljava/lang/StringBuilder;)V

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
