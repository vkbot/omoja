.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static p:Lt/r;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ln/g;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Lt/n;

.field public k:Lr/r;

.field public l:I

.field public m:Ljava/util/HashMap;

.field public final n:Landroid/util/SparseArray;

.field public final o:Lo/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ln/g;

    invoke-direct {p1}, Ln/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lr/r;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 15
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 16
    new-instance v1, Lo/h;

    invoke-direct {v1, p0, p0}, Lo/h;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/h;

    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ln/g;

    invoke-direct {p1}, Ln/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 24
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lr/r;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Lo/h;

    invoke-direct {v0, p0, p0}, Lo/h;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/h;

    .line 34
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 38
    new-instance p1, Ln/g;

    invoke-direct {p1}, Ln/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const p1, 0x7fffffff

    .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 42
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 p1, 0x101

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lr/r;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 49
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    .line 50
    new-instance p1, Lo/h;

    invoke-direct {p1, p0, p0}, Lo/h;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/h;

    .line 51
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    move v2, p0

    :cond_0
    return v2
.end method

.method public static getSharedValues()Lt/r;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lt/r;

    if-nez v0, :cond_0

    new-instance v0, Lt/r;

    invoke-direct {v0}, Lt/r;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lt/r;

    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Lt/r;

    return-object v0
.end method


# virtual methods
.method public final a(ZLandroid/view/View;Ln/f;Lt/e;Landroid/util/SparseArray;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {p4 .. p4}, Lt/e;->a()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    iput v1, v6, Ln/f;->i0:I

    iget-boolean v1, v7, Lt/e;->f0:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iput-boolean v9, v6, Ln/f;->F:Z

    const/16 v1, 0x8

    iput v1, v6, Ln/f;->i0:I

    :cond_0
    iput-object v0, v6, Ln/f;->h0:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object/from16 v10, p0

    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iget-boolean v1, v1, Ln/g;->z0:Z

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->n(Ln/f;Z)V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p0

    :goto_0
    iget-boolean v0, v7, Lt/e;->d0:Z

    const/4 v11, -0x1

    if-eqz v0, :cond_4

    move-object v0, v6

    check-cast v0, Ln/k;

    iget v1, v7, Lt/e;->n0:I

    iget v2, v7, Lt/e;->o0:I

    iget v3, v7, Lt/e;->p0:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2

    if-lez v5, :cond_2c

    iput v3, v0, Ln/k;->u0:F

    iput v11, v0, Ln/k;->v0:I

    iput v11, v0, Ln/k;->w0:I

    goto/16 :goto_13

    :cond_2
    if-eq v1, v11, :cond_3

    if-le v1, v11, :cond_2c

    iput v4, v0, Ln/k;->u0:F

    iput v1, v0, Ln/k;->v0:I

    iput v11, v0, Ln/k;->w0:I

    goto/16 :goto_13

    :cond_3
    if-eq v2, v11, :cond_2c

    if-le v2, v11, :cond_2c

    iput v4, v0, Ln/k;->u0:F

    iput v11, v0, Ln/k;->v0:I

    iput v2, v0, Ln/k;->w0:I

    goto/16 :goto_13

    :cond_4
    iget v0, v7, Lt/e;->g0:I

    iget v1, v7, Lt/e;->h0:I

    iget v12, v7, Lt/e;->i0:I

    iget v13, v7, Lt/e;->j0:I

    iget v5, v7, Lt/e;->k0:I

    iget v14, v7, Lt/e;->l0:I

    iget v15, v7, Lt/e;->m0:F

    iget v2, v7, Lt/e;->p:I

    const/4 v4, 0x0

    if-eq v2, v11, :cond_6

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_5

    iget v8, v7, Lt/e;->r:F

    iget v5, v7, Lt/e;->q:I

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v12, v4

    move v4, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    iput v8, v6, Ln/f;->D:F

    goto :goto_1

    :cond_5
    move v12, v4

    :goto_1
    move v9, v12

    goto/16 :goto_7

    :cond_6
    if-eq v0, v11, :cond_8

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_7

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    move/from16 v16, v1

    move-object v1, v3

    move v9, v4

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2

    :cond_7
    move v9, v4

    goto :goto_2

    :cond_8
    move v9, v4

    if-eq v1, v11, :cond_9

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_9

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_9
    :goto_2
    if-eq v12, v11, :cond_a

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_b

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_3

    :cond_a
    if-eq v13, v11, :cond_b

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_b

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p3

    move-object v1, v3

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_b
    :goto_3
    iget v0, v7, Lt/e;->i:I

    if-eq v0, v11, :cond_c

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_d

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Lt/e;->x:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_4

    :cond_c
    iget v0, v7, Lt/e;->j:I

    if-eq v0, v11, :cond_d

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_d

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Lt/e;->x:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_d
    :goto_4
    iget v0, v7, Lt/e;->k:I

    if-eq v0, v11, :cond_e

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_f

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Lt/e;->z:I

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    goto :goto_5

    :cond_e
    iget v0, v7, Lt/e;->l:I

    if-eq v0, v11, :cond_f

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln/f;

    if-eqz v2, :cond_f

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, v7, Lt/e;->z:I

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual/range {v0 .. v5}, Ln/f;->x(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Ln/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    :cond_f
    :goto_5
    iget v4, v7, Lt/e;->m:I

    if-eq v4, v11, :cond_10

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Ln/f;Lt/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto :goto_6

    :cond_10
    iget v4, v7, Lt/e;->n:I

    if-eq v4, v11, :cond_11

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Ln/f;Lt/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto :goto_6

    :cond_11
    iget v4, v7, Lt/e;->o:I

    if-eq v4, v11, :cond_12

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Ln/f;Lt/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    :cond_12
    :goto_6
    cmpl-float v0, v15, v9

    if-ltz v0, :cond_13

    iput v15, v6, Ln/f;->f0:F

    :cond_13
    iget v0, v7, Lt/e;->F:F

    cmpl-float v1, v0, v9

    if-ltz v1, :cond_14

    iput v0, v6, Ln/f;->g0:F

    :cond_14
    :goto_7
    if-eqz p1, :cond_16

    iget v0, v7, Lt/e;->T:I

    if-ne v0, v11, :cond_15

    iget v1, v7, Lt/e;->U:I

    if-eq v1, v11, :cond_16

    :cond_15
    iget v1, v7, Lt/e;->U:I

    iput v0, v6, Ln/f;->a0:I

    iput v1, v6, Ln/f;->b0:I

    :cond_16
    iget-boolean v0, v7, Lt/e;->a0:Z

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v11, :cond_18

    iget-boolean v0, v7, Lt/e;->W:Z

    if-eqz v0, :cond_17

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_8

    :cond_17
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :goto_8
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v0

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v0, Ln/d;->g:I

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v0

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v0, Ln/d;->g:I

    goto :goto_9

    :cond_18
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v6, v2}, Ln/f;->P(I)V

    goto :goto_9

    :cond_19
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v0}, Ln/f;->P(I)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v1, :cond_1a

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1a
    :goto_9
    iget-boolean v0, v7, Lt/e;->b0:Z

    if-nez v0, :cond_1d

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v11, :cond_1c

    iget-boolean v0, v7, Lt/e;->X:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_a

    :cond_1b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :goto_a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Ln/d;->g:I

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Ln/d;->g:I

    goto :goto_b

    :cond_1c
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v6, v2}, Ln/f;->M(I)V

    goto :goto_b

    :cond_1d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v0}, Ln/f;->M(I)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v1, :cond_1e

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v0}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_1e
    :goto_b
    iget-object v0, v7, Lt/e;->G:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_10

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_22

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    move v11, v2

    goto :goto_c

    :cond_20
    const-string v5, "H"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_d

    :cond_21
    :goto_c
    const/4 v4, 0x1

    :goto_d
    add-int/2addr v3, v4

    goto :goto_e

    :cond_22
    const/4 v4, 0x1

    move v3, v2

    :goto_e
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_24

    sub-int/2addr v1, v4

    if-ge v5, v1, :cond_24

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v3, v1, v9

    if-lez v3, :cond_25

    cmpl-float v3, v0, v9

    if-lez v3, :cond_25

    const/4 v3, 0x1

    if-ne v11, v3, :cond_23

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_f

    :cond_23
    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :cond_24
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :catch_0
    :cond_25
    move v4, v9

    :goto_f
    cmpl-float v0, v4, v9

    if-lez v0, :cond_27

    iput v4, v6, Ln/f;->Y:F

    iput v11, v6, Ln/f;->Z:I

    goto :goto_11

    :cond_26
    :goto_10
    iput v9, v6, Ln/f;->Y:F

    :cond_27
    :goto_11
    iget v0, v7, Lt/e;->H:F

    iget-object v1, v6, Ln/f;->n0:[F

    aput v0, v1, v2

    iget v0, v7, Lt/e;->I:F

    const/4 v3, 0x1

    aput v0, v1, v3

    iget v0, v7, Lt/e;->J:I

    iput v0, v6, Ln/f;->l0:I

    iget v0, v7, Lt/e;->K:I

    iput v0, v6, Ln/f;->m0:I

    iget v0, v7, Lt/e;->Z:I

    if-ltz v0, :cond_28

    const/4 v1, 0x3

    if-gt v0, v1, :cond_28

    iput v0, v6, Ln/f;->q:I

    :cond_28
    iget v0, v7, Lt/e;->L:I

    iget v1, v7, Lt/e;->N:I

    iget v3, v7, Lt/e;->P:I

    iget v4, v7, Lt/e;->R:F

    iput v0, v6, Ln/f;->r:I

    iput v1, v6, Ln/f;->u:I

    const v1, 0x7fffffff

    if-ne v3, v1, :cond_29

    move v3, v2

    :cond_29
    iput v3, v6, Ln/f;->v:I

    iput v4, v6, Ln/f;->w:F

    cmpl-float v3, v4, v9

    const/4 v5, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v3, :cond_2a

    cmpg-float v3, v4, v8

    if-gez v3, :cond_2a

    if-nez v0, :cond_2a

    iput v5, v6, Ln/f;->r:I

    :cond_2a
    iget v0, v7, Lt/e;->M:I

    iget v3, v7, Lt/e;->O:I

    iget v4, v7, Lt/e;->Q:I

    iget v7, v7, Lt/e;->S:F

    iput v0, v6, Ln/f;->s:I

    iput v3, v6, Ln/f;->x:I

    if-ne v4, v1, :cond_2b

    goto :goto_12

    :cond_2b
    move v2, v4

    :goto_12
    iput v2, v6, Ln/f;->y:I

    iput v7, v6, Ln/f;->z:F

    cmpl-float v1, v7, v9

    if-lez v1, :cond_2c

    cmpg-float v1, v7, v8

    if-gez v1, :cond_2c

    if-nez v0, :cond_2c

    iput v5, v6, Ln/f;->s:I

    :cond_2c
    :goto_13
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lt/e;

    return p0
.end method

.method public final d(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public final g(Landroid/view/View;)Ln/f;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lt/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lt/e;

    iget-object p0, p0, Lt/e;->q0:Ln/f;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Lt/e;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lt/e;

    iget-object p0, p0, Lt/e;->q0:Ln/f;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lt/e;

    invoke-direct {p0}, Lt/e;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lt/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lt/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lt/e;

    invoke-direct {p0, p1}, Lt/e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    return p0
.end method

.method public getOptimizationLevel()I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iget p0, p0, Ln/g;->H0:I

    return p0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iget-object v2, v1, Ln/f;->j:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ln/f;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "parent"

    iput-object v2, v1, Ln/f;->j:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, v1, Ln/f;->j0:Ljava/lang/String;

    const-string v4, " setDebugName "

    const-string v5, "ConstraintLayout"

    if-nez v2, :cond_2

    iget-object v2, v1, Ln/f;->j:Ljava/lang/String;

    iput-object v2, v1, Ln/f;->j0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Ln/f;->j0:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln/f;

    iget-object v7, v6, Ln/f;->h0:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v8, v6, Ln/f;->j:Ljava/lang/String;

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ln/f;->j:Ljava/lang/String;

    :cond_4
    iget-object v7, v6, Ln/f;->j0:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, v6, Ln/f;->j:Ljava/lang/String;

    iput-object v7, v6, Ln/f;->j0:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Ln/f;->j0:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Ln/g;->p(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iput-object p0, v0, Ln/f;->h0:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/h;

    iput-object v1, v0, Ln/g;->y0:Lo/h;

    iget-object v2, v0, Ln/g;->w0:Lo/e;

    iput-object v1, v2, Lo/e;->f:Lo/h;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v4

    :goto_0
    if-ge v2, p2, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    goto :goto_2

    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v3, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v3, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v3, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v3, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->l(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lr/r;

    goto :goto_2

    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v3, v5, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :try_start_1
    new-instance v5, Lt/n;

    invoke-direct {v5}, Lt/n;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lt/n;->j(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iput p0, v0, Ln/g;->H0:I

    const/16 p0, 0x200

    invoke-virtual {v0, p0}, Ln/g;->X(I)Z

    move-result p0

    sput-boolean p0, Ll/e;->p:Z

    return-void
.end method

.method public final k()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-ne v2, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public l(I)V
    .locals 2

    new-instance v0, Lr/r;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lr/r;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lr/r;

    return-void
.end method

.method public final m(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/h;

    iget v1, v0, Lo/h;->d:I

    iget v0, v0, Lo/h;->c:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final n(Ln/g;III)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v7, v9

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v11

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lo/h;

    iput v7, v12, Lo/h;->a:I

    iput v9, v12, Lo/h;->b:I

    iput v11, v12, Lo/h;->c:I

    iput v10, v12, Lo/h;->d:I

    move/from16 v9, p3

    iput v9, v12, Lo/h;->e:I

    move/from16 v9, p4

    iput v9, v12, Lo/h;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-gtz v9, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v14

    if-eqz v14, :cond_2

    move v9, v13

    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    sub-int/2addr v6, v10

    iget v10, v12, Lo/h;->d:I

    iget v11, v12, Lo/h;->c:I

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/high16 v14, -0x80000000

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v3, v14, :cond_6

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_3

    move-object v15, v12

    goto :goto_2

    :cond_3
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v15, v11

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v8, v14

    move-object v14, v12

    goto :goto_5

    :cond_4
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v13, :cond_5

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_3

    :cond_5
    :goto_2
    move-object v14, v15

    move v15, v8

    goto :goto_4

    :cond_6
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v13, :cond_7

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_3
    move-object/from16 v22, v15

    move v15, v14

    move-object/from16 v14, v22

    :goto_4
    const/high16 v8, -0x80000000

    goto :goto_5

    :cond_7
    move-object v14, v15

    const/high16 v8, -0x80000000

    move v15, v4

    :goto_5
    if-eq v5, v8, :cond_b

    if-eqz v5, :cond_9

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_8

    goto :goto_6

    :cond_8
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v8, v10

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v13, v8

    goto :goto_7

    :cond_9
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v13, :cond_a

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v13, 0x0

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v13, v16

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v13, :cond_c

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_7

    :cond_c
    move v13, v6

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ln/f;->s()I

    move-result v8

    move/from16 p4, v6

    iget-object v6, v1, Ln/g;->w0:Lo/e;

    if-ne v15, v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Ln/f;->m()I

    move-result v8

    if-eq v13, v8, :cond_e

    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, v6, Lo/e;->c:Z

    :cond_e
    const/4 v8, 0x0

    iput v8, v1, Ln/f;->a0:I

    iput v8, v1, Ln/f;->b0:I

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v8, v11

    move-object/from16 v18, v6

    iget-object v6, v1, Ln/f;->C:[I

    move/from16 v19, v4

    const/4 v4, 0x0

    aput v8, v6, v4

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v8, v10

    const/16 v16, 0x1

    aput v8, v6, v16

    iput v4, v1, Ln/f;->d0:I

    iput v4, v1, Ln/f;->e0:I

    invoke-virtual {v1, v14}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v15}, Ln/f;->P(I)V

    invoke-virtual {v1, v12}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v13}, Ln/f;->M(I)V

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v4, v11

    if-gez v4, :cond_f

    const/4 v6, 0x0

    iput v6, v1, Ln/f;->d0:I

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    iput v4, v1, Ln/f;->d0:I

    :goto_8
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v0, v10

    if-gez v0, :cond_10

    iput v6, v1, Ln/f;->e0:I

    goto :goto_9

    :cond_10
    iput v0, v1, Ln/f;->e0:I

    :goto_9
    iput v9, v1, Ln/g;->B0:I

    iput v7, v1, Ln/g;->C0:I

    iget-object v0, v1, Ln/g;->v0:Landroidx/appcompat/app/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Ln/g;->y0:Lo/h;

    iget-object v6, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ln/f;->s()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ln/f;->m()I

    move-result v8

    const/16 v9, 0x80

    invoke-static {v2, v9}, Ly1/l;->W(II)Z

    move-result v9

    const/16 v10, 0x40

    if-nez v9, :cond_12

    invoke-static {v2, v10}, Ly1/l;->W(II)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v2, 0x1

    :goto_b
    const/4 v11, 0x0

    if-eqz v2, :cond_1b

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v6, :cond_1b

    iget-object v13, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln/f;

    iget-object v14, v13, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aget-object v10, v14, v15

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v15, :cond_13

    const/4 v10, 0x1

    goto :goto_d

    :cond_13
    const/4 v10, 0x0

    :goto_d
    const/16 v17, 0x1

    aget-object v14, v14, v17

    if-ne v14, v15, :cond_14

    const/4 v14, 0x1

    goto :goto_e

    :cond_14
    const/4 v14, 0x0

    :goto_e
    if-eqz v10, :cond_15

    if-eqz v14, :cond_15

    iget v10, v13, Ln/f;->Y:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_15

    const/4 v10, 0x1

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    :goto_f
    invoke-virtual {v13}, Ln/f;->z()Z

    move-result v14

    if-eqz v14, :cond_16

    if-eqz v10, :cond_16

    goto :goto_10

    :cond_16
    invoke-virtual {v13}, Ln/f;->A()Z

    move-result v14

    if-eqz v14, :cond_17

    if-eqz v10, :cond_17

    goto :goto_10

    :cond_17
    instance-of v10, v13, Ln/o;

    if-eqz v10, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v13}, Ln/f;->z()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {v13}, Ln/f;->A()Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_10

    :cond_19
    add-int/lit8 v12, v12, 0x1

    const/16 v10, 0x40

    goto :goto_c

    :cond_1a
    :goto_10
    const/4 v2, 0x0

    :cond_1b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_1c

    if-eq v5, v10, :cond_1d

    :cond_1c
    if-eqz v9, :cond_1e

    :cond_1d
    const/4 v10, 0x1

    goto :goto_11

    :cond_1e
    const/4 v10, 0x0

    :goto_11
    and-int/2addr v2, v10

    if-eqz v2, :cond_3d

    iget-object v12, v1, Ln/f;->C:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move/from16 v13, v19

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v13, v1, Ln/f;->C:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move/from16 v15, p4

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v3, v15, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ln/f;->s()I

    move-result v11

    if-eq v11, v12, :cond_1f

    invoke-virtual {v1, v12}, Ln/f;->P(I)V

    move-object/from16 v11, v18

    iput-boolean v14, v11, Lo/e;->b:Z

    goto :goto_12

    :cond_1f
    move-object/from16 v11, v18

    :goto_12
    if-ne v5, v15, :cond_20

    invoke-virtual/range {p1 .. p1}, Ln/f;->m()I

    move-result v12

    if-eq v12, v13, :cond_20

    invoke-virtual {v1, v13}, Ln/f;->M(I)V

    iput-boolean v14, v11, Lo/e;->b:Z

    :cond_20
    if-ne v3, v15, :cond_36

    if-ne v5, v15, :cond_36

    and-int/2addr v9, v14

    iget-boolean v12, v11, Lo/e;->b:Z

    iget-object v13, v11, Lo/e;->a:Ln/g;

    if-nez v12, :cond_22

    iget-boolean v12, v11, Lo/e;->c:Z

    if-eqz v12, :cond_21

    goto :goto_13

    :cond_21
    const/4 v15, 0x0

    goto :goto_15

    :cond_22
    :goto_13
    iget-object v12, v13, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln/f;

    invoke-virtual {v14}, Ln/f;->j()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Ln/f;->a:Z

    iget-object v10, v14, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/e;->n()V

    iget-object v10, v14, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/g;->m()V

    goto :goto_14

    :cond_23
    const/4 v15, 0x0

    invoke-virtual {v13}, Ln/f;->j()V

    iput-boolean v15, v13, Ln/f;->a:Z

    iget-object v10, v13, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/e;->n()V

    iget-object v10, v13, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/g;->m()V

    iput-boolean v15, v11, Lo/e;->c:Z

    :goto_15
    iget-object v10, v11, Lo/e;->d:Ln/g;

    invoke-virtual {v11, v10}, Lo/e;->b(Ln/g;)V

    iput v15, v13, Ln/f;->a0:I

    iput v15, v13, Ln/f;->b0:I

    invoke-virtual {v13, v15}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    iget-boolean v12, v11, Lo/e;->b:Z

    if-eqz v12, :cond_24

    invoke-virtual {v11}, Lo/e;->c()V

    :cond_24
    invoke-virtual {v13}, Ln/f;->t()I

    move-result v12

    invoke-virtual {v13}, Ln/f;->u()I

    move-result v15

    move/from16 v18, v2

    iget-object v2, v13, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v2, v13, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v2, v15}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    invoke-virtual {v11}, Lo/e;->g()V

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v4

    iget-object v4, v11, Lo/e;->e:Ljava/util/ArrayList;

    if-eq v10, v2, :cond_26

    if-ne v14, v2, :cond_25

    goto :goto_16

    :cond_25
    move/from16 v20, v7

    goto :goto_18

    :cond_26
    :goto_16
    if-eqz v9, :cond_28

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroidx/constraintlayout/core/widgets/analyzer/h;

    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/core/widgets/analyzer/h;->k()Z

    move-result v20

    if-nez v20, :cond_27

    const/4 v9, 0x0

    :cond_28
    if-eqz v9, :cond_29

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_29

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v2}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    move/from16 v20, v7

    const/4 v2, 0x0

    invoke-virtual {v11, v13, v2}, Lo/e;->d(Ln/g;I)I

    move-result v7

    invoke-virtual {v13, v7}, Ln/f;->P(I)V

    iget-object v2, v13, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v13}, Ln/f;->s()I

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_17

    :cond_29
    move/from16 v20, v7

    :goto_17
    if-eqz v9, :cond_2a

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v2, :cond_2a

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v2}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v13, v2}, Lo/e;->d(Ln/g;I)I

    move-result v7

    invoke-virtual {v13, v7}, Ln/f;->M(I)V

    iget-object v2, v13, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v13}, Ln/f;->m()I

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_2a
    :goto_18
    iget-object v2, v13, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v7, :cond_2c

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v9, :cond_2b

    goto :goto_19

    :cond_2b
    const/4 v2, 0x0

    goto :goto_1a

    :cond_2c
    :goto_19
    invoke-virtual {v13}, Ln/f;->s()I

    move-result v2

    add-int/2addr v2, v12

    iget-object v9, v13, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v9, v13, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr v2, v12

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    invoke-virtual {v11}, Lo/e;->g()V

    iget-object v2, v13, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x1

    aget-object v2, v2, v9

    if-eq v2, v7, :cond_2d

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v7, :cond_2e

    :cond_2d
    invoke-virtual {v13}, Ln/f;->m()I

    move-result v2

    add-int/2addr v2, v15

    iget-object v7, v13, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v7, v13, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    sub-int/2addr v2, v15

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_2e
    invoke-virtual {v11}, Lo/e;->g()V

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/analyzer/h;

    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Ln/f;

    if-ne v11, v13, :cond_2f

    iget-boolean v11, v9, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    if-nez v11, :cond_2f

    goto :goto_1b

    :cond_2f
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/h;->e()V

    goto :goto_1b

    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_31
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/h;

    if-nez v2, :cond_32

    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->b:Ln/f;

    if-ne v9, v13, :cond_32

    goto :goto_1c

    :cond_32
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v9, :cond_33

    goto :goto_1d

    :cond_33
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v9, :cond_34

    instance-of v9, v7, Lo/f;

    if-nez v9, :cond_34

    goto :goto_1d

    :cond_34
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v9, :cond_31

    instance-of v9, v7, Lo/c;

    if-nez v9, :cond_31

    instance-of v7, v7, Lo/f;

    if-nez v7, :cond_31

    :goto_1d
    const/4 v2, 0x0

    goto :goto_1e

    :cond_35
    const/4 v2, 0x1

    :goto_1e
    invoke-virtual {v13, v10}, Ln/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v13, v14}, Ln/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    move v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x2

    goto/16 :goto_22

    :cond_36
    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v7

    iget-boolean v2, v11, Lo/e;->b:Z

    iget-object v4, v11, Lo/e;->a:Ln/g;

    if-eqz v2, :cond_38

    iget-object v2, v4, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln/f;

    invoke-virtual {v7}, Ln/f;->j()V

    const/4 v10, 0x0

    iput-boolean v10, v7, Ln/f;->a:Z

    iget-object v12, v7, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v10, v13, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v10, v12, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/analyzer/e;->n()V

    iget-object v7, v7, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v10, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/g;->m()V

    goto :goto_1f

    :cond_37
    const/4 v10, 0x0

    invoke-virtual {v4}, Ln/f;->j()V

    iput-boolean v10, v4, Ln/f;->a:Z

    iget-object v2, v4, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/e;->n()V

    iget-object v2, v4, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v10, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->g:Z

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/g;->m()V

    invoke-virtual {v11}, Lo/e;->c()V

    goto :goto_20

    :cond_38
    const/4 v10, 0x0

    :goto_20
    iget-object v2, v11, Lo/e;->d:Ln/g;

    invoke-virtual {v11, v2}, Lo/e;->b(Ln/g;)V

    iput v10, v4, Ln/f;->a0:I

    iput v10, v4, Ln/f;->b0:I

    iget-object v2, v4, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget-object v2, v4, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/h;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v3, v2, :cond_39

    invoke-virtual {v1, v10, v9}, Ln/g;->V(IZ)Z

    move-result v4

    const/4 v7, 0x1

    and-int/lit8 v17, v4, 0x1

    move v4, v7

    move/from16 v10, v17

    goto :goto_21

    :cond_39
    const/4 v7, 0x1

    move v10, v7

    const/4 v4, 0x0

    :goto_21
    if-ne v5, v2, :cond_3a

    invoke-virtual {v1, v7, v9}, Ln/g;->V(IZ)Z

    move-result v9

    and-int v7, v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_3a
    move v7, v10

    :goto_22
    if-eqz v7, :cond_3e

    if-ne v3, v2, :cond_3b

    const/4 v3, 0x1

    goto :goto_23

    :cond_3b
    const/4 v3, 0x0

    :goto_23
    if-ne v5, v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_24

    :cond_3c
    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v1, v3, v2}, Ln/g;->Q(ZZ)V

    goto :goto_25

    :cond_3d
    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v7

    const/4 v4, 0x0

    const/4 v7, 0x0

    :cond_3e
    :goto_25
    if-eqz v7, :cond_3f

    const/4 v2, 0x2

    if-eq v4, v2, :cond_6b

    :cond_3f
    iget v2, v1, Ln/g;->H0:I

    const/16 v3, 0x8

    if-lez v6, :cond_51

    iget-object v4, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ln/g;->X(I)Z

    move-result v5

    iget-object v7, v1, Ln/g;->y0:Lo/h;

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v4, :cond_4b

    iget-object v10, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln/f;

    instance-of v11, v10, Ln/k;

    if-eqz v11, :cond_40

    goto :goto_27

    :cond_40
    instance-of v11, v10, Ln/a;

    if-eqz v11, :cond_41

    goto :goto_27

    :cond_41
    iget-boolean v11, v10, Ln/f;->G:Z

    if-eqz v11, :cond_42

    goto :goto_27

    :cond_42
    if-eqz v5, :cond_43

    iget-object v11, v10, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v11, :cond_43

    iget-object v12, v10, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    if-eqz v12, :cond_43

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v11, :cond_43

    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v11, :cond_43

    :goto_27
    const/4 v12, 0x0

    goto :goto_2a

    :cond_43
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ln/f;->l(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_44

    iget v15, v10, Ln/f;->r:I

    if-eq v15, v11, :cond_44

    if-ne v13, v14, :cond_44

    iget v15, v10, Ln/f;->s:I

    if-eq v15, v11, :cond_44

    move v15, v11

    goto :goto_28

    :cond_44
    const/4 v15, 0x0

    :goto_28
    if-nez v15, :cond_48

    invoke-virtual {v1, v11}, Ln/g;->X(I)Z

    move-result v21

    if-eqz v21, :cond_48

    instance-of v11, v10, Ln/o;

    if-nez v11, :cond_48

    if-ne v12, v14, :cond_45

    iget v11, v10, Ln/f;->r:I

    if-nez v11, :cond_45

    if-eq v13, v14, :cond_45

    invoke-virtual {v10}, Ln/f;->z()Z

    move-result v11

    if-nez v11, :cond_45

    const/4 v15, 0x1

    :cond_45
    if-ne v13, v14, :cond_46

    iget v11, v10, Ln/f;->s:I

    if-nez v11, :cond_46

    if-eq v12, v14, :cond_46

    invoke-virtual {v10}, Ln/f;->z()Z

    move-result v11

    if-nez v11, :cond_46

    const/4 v15, 0x1

    :cond_46
    if-eq v12, v14, :cond_47

    if-ne v13, v14, :cond_48

    :cond_47
    iget v11, v10, Ln/f;->Y:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_49

    const/4 v15, 0x1

    goto :goto_29

    :cond_48
    const/4 v12, 0x0

    :cond_49
    :goto_29
    if-eqz v15, :cond_4a

    goto :goto_2a

    :cond_4a
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10, v7}, Landroidx/appcompat/app/d;->a(ILn/f;Lo/h;)Z

    :goto_2a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_26

    :cond_4b
    iget-object v4, v7, Lo/h;->g:Ljava/lang/Object;

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v13, 0x0

    :goto_2b
    if-ge v13, v5, :cond_50

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v9, v7, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v9, :cond_4f

    check-cast v7, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v9, v7, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-nez v9, :cond_4c

    goto :goto_2c

    :cond_4c
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lt/e;

    iget-object v7, v7, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lt/e;

    iget-object v10, v7, Lt/e;->q0:Ln/f;

    const/4 v11, 0x0

    iput v11, v10, Ln/f;->i0:I

    iget-object v12, v9, Lt/e;->q0:Ln/f;

    iget-object v14, v12, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v11

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v14, v11, :cond_4d

    invoke-virtual {v10}, Ln/f;->s()I

    move-result v10

    invoke-virtual {v12, v10}, Ln/f;->P(I)V

    :cond_4d
    iget-object v9, v9, Lt/e;->q0:Ln/f;

    iget-object v10, v9, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    aget-object v10, v10, v12

    if-eq v10, v11, :cond_4e

    iget-object v10, v7, Lt/e;->q0:Ln/f;

    invoke-virtual {v10}, Ln/f;->m()I

    move-result v10

    invoke-virtual {v9, v10}, Ln/f;->M(I)V

    :cond_4e
    iget-object v7, v7, Lt/e;->q0:Ln/f;

    iput v3, v7, Ln/f;->i0:I

    :cond_4f
    :goto_2c
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    :cond_50
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_51

    const/4 v13, 0x0

    :goto_2d
    if-ge v13, v5, :cond_51

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2d

    :cond_51
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d;->d(Ln/g;)V

    iget-object v4, v0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v20

    const/4 v13, 0x0

    if-lez v6, :cond_52

    invoke-virtual {v0, v1, v13, v5, v8}, Landroidx/appcompat/app/d;->b(Ln/g;III)V

    :cond_52
    if-lez v4, :cond_69

    iget-object v6, v1, Ln/f;->U:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v6, v13

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v9, :cond_53

    const/4 v7, 0x1

    goto :goto_2e

    :cond_53
    move v7, v13

    :goto_2e
    const/4 v10, 0x1

    aget-object v6, v6, v10

    if-ne v6, v9, :cond_54

    const/4 v6, 0x1

    goto :goto_2f

    :cond_54
    move v6, v13

    :goto_2f
    invoke-virtual/range {p1 .. p1}, Ln/f;->s()I

    move-result v9

    iget-object v10, v0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast v10, Ln/g;

    iget v11, v10, Ln/f;->d0:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ln/f;->m()I

    move-result v11

    iget v10, v10, Ln/f;->e0:I

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v13

    move v12, v11

    :goto_30
    if-ge v11, v4, :cond_5a

    iget-object v14, v0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln/f;

    instance-of v15, v14, Ln/o;

    if-nez v15, :cond_55

    move-object/from16 v3, v19

    move/from16 v19, v2

    goto/16 :goto_32

    :cond_55
    invoke-virtual {v14}, Ln/f;->s()I

    move-result v15

    invoke-virtual {v14}, Ln/f;->m()I

    move-result v13

    move-object/from16 v3, v19

    move/from16 v19, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v14, v3}, Landroidx/appcompat/app/d;->a(ILn/f;Lo/h;)Z

    move-result v20

    or-int v2, v12, v20

    invoke-virtual {v14}, Ln/f;->s()I

    move-result v12

    move/from16 p2, v2

    invoke-virtual {v14}, Ln/f;->m()I

    move-result v2

    if-eq v12, v15, :cond_57

    invoke-virtual {v14, v12}, Ln/f;->P(I)V

    if-eqz v7, :cond_56

    invoke-virtual {v14}, Ln/f;->t()I

    move-result v12

    iget v15, v14, Ln/f;->W:I

    add-int/2addr v12, v15

    if-le v12, v9, :cond_56

    invoke-virtual {v14}, Ln/f;->t()I

    move-result v12

    iget v15, v14, Ln/f;->W:I

    add-int/2addr v12, v15

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v15

    invoke-virtual {v15}, Ln/d;->e()I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_56
    move v12, v9

    const/4 v9, 0x1

    goto :goto_31

    :cond_57
    move v12, v9

    move/from16 v9, p2

    :goto_31
    if-eq v2, v13, :cond_59

    invoke-virtual {v14, v2}, Ln/f;->M(I)V

    if-eqz v6, :cond_58

    invoke-virtual {v14}, Ln/f;->u()I

    move-result v2

    iget v9, v14, Ln/f;->X:I

    add-int/2addr v2, v9

    if-le v2, v10, :cond_58

    invoke-virtual {v14}, Ln/f;->u()I

    move-result v2

    iget v9, v14, Ln/f;->X:I

    add-int/2addr v2, v9

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v9}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v9

    invoke-virtual {v9}, Ln/d;->e()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v10, v2

    :cond_58
    const/4 v9, 0x1

    :cond_59
    check-cast v14, Ln/o;

    iget-boolean v2, v14, Ln/o;->C0:Z

    or-int/2addr v2, v9

    move v9, v12

    move v12, v2

    :goto_32
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    const/4 v13, 0x0

    move-object/from16 v19, v3

    const/16 v3, 0x8

    goto/16 :goto_30

    :cond_5a
    move-object/from16 v3, v19

    move/from16 v19, v2

    const/4 v2, 0x2

    const/4 v13, 0x0

    :goto_33
    if-ge v13, v2, :cond_6a

    const/4 v11, 0x0

    :goto_34
    if-ge v11, v4, :cond_67

    iget-object v14, v0, Landroidx/appcompat/app/d;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln/f;

    instance-of v15, v14, Ln/l;

    if-eqz v15, :cond_5b

    instance-of v15, v14, Ln/o;

    if-eqz v15, :cond_5c

    :cond_5b
    instance-of v15, v14, Ln/k;

    if-eqz v15, :cond_5d

    :cond_5c
    const/16 v2, 0x8

    goto :goto_35

    :cond_5d
    iget v15, v14, Ln/f;->i0:I

    const/16 v2, 0x8

    if-ne v15, v2, :cond_5e

    goto :goto_35

    :cond_5e
    if-eqz v18, :cond_5f

    iget-object v15, v14, Ln/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v15, :cond_5f

    iget-object v15, v14, Ln/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/g;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/h;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v15, :cond_5f

    goto :goto_35

    :cond_5f
    instance-of v15, v14, Ln/o;

    if-eqz v15, :cond_60

    :goto_35
    move/from16 p2, v4

    goto/16 :goto_37

    :cond_60
    invoke-virtual {v14}, Ln/f;->s()I

    move-result v15

    invoke-virtual {v14}, Ln/f;->m()I

    move-result v2

    move/from16 p2, v4

    iget v4, v14, Ln/f;->c0:I

    const/4 v1, 0x1

    if-ne v13, v1, :cond_61

    const/4 v1, 0x2

    :cond_61
    invoke-virtual {v0, v1, v14, v3}, Landroidx/appcompat/app/d;->a(ILn/f;Lo/h;)Z

    move-result v1

    or-int/2addr v1, v12

    invoke-virtual {v14}, Ln/f;->s()I

    move-result v12

    move/from16 p3, v1

    invoke-virtual {v14}, Ln/f;->m()I

    move-result v1

    if-eq v12, v15, :cond_63

    invoke-virtual {v14, v12}, Ln/f;->P(I)V

    if-eqz v7, :cond_62

    invoke-virtual {v14}, Ln/f;->t()I

    move-result v12

    iget v15, v14, Ln/f;->W:I

    add-int/2addr v12, v15

    if-le v12, v9, :cond_62

    invoke-virtual {v14}, Ln/f;->t()I

    move-result v12

    iget v15, v14, Ln/f;->W:I

    add-int/2addr v12, v15

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v15

    invoke-virtual {v15}, Ln/d;->e()I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_62
    move v12, v9

    const/4 v9, 0x1

    goto :goto_36

    :cond_63
    move v12, v9

    move/from16 v9, p3

    :goto_36
    if-eq v1, v2, :cond_65

    invoke-virtual {v14, v1}, Ln/f;->M(I)V

    if-eqz v6, :cond_64

    invoke-virtual {v14}, Ln/f;->u()I

    move-result v1

    iget v2, v14, Ln/f;->X:I

    add-int/2addr v1, v2

    if-le v1, v10, :cond_64

    invoke-virtual {v14}, Ln/f;->u()I

    move-result v1

    iget v2, v14, Ln/f;->X:I

    add-int/2addr v1, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v2}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object v2

    invoke-virtual {v2}, Ln/d;->e()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v10, v1

    :cond_64
    const/4 v9, 0x1

    :cond_65
    iget-boolean v1, v14, Ln/f;->E:Z

    if-eqz v1, :cond_66

    iget v1, v14, Ln/f;->c0:I

    if-eq v4, v1, :cond_66

    move v9, v12

    const/4 v12, 0x1

    goto :goto_37

    :cond_66
    move/from16 v22, v12

    move v12, v9

    move/from16 v9, v22

    :goto_37
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v4, p2

    const/4 v2, 0x2

    goto/16 :goto_34

    :cond_67
    move/from16 p2, v4

    if-eqz v12, :cond_68

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v13, v5, v8}, Landroidx/appcompat/app/d;->b(Ln/g;III)V

    move/from16 v4, p2

    const/4 v2, 0x2

    const/4 v12, 0x0

    goto/16 :goto_33

    :cond_68
    move-object/from16 v1, p1

    goto :goto_38

    :cond_69
    move/from16 v19, v2

    :cond_6a
    :goto_38
    move/from16 v0, v19

    iput v0, v1, Ln/g;->H0:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Ln/g;->X(I)Z

    move-result v0

    sput-boolean v0, Ll/e;->p:Z

    :cond_6b
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lt/e;

    iget-object v1, v0, Lt/e;->q0:Ln/f;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lt/e;->d0:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lt/e;->e0:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Lt/e;->f0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ln/f;->t()I

    move-result v0

    invoke-virtual {v1}, Ln/f;->u()I

    move-result v2

    invoke-virtual {v1}, Ln/f;->s()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Ln/f;->m()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->o()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v0

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iput-boolean v0, v3, Ln/g;->z0:Z

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v4, v1

    :goto_4
    if-ge v4, v10, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Ln/f;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v5}, Ln/f;->E()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_b

    move v6, v1

    :goto_6
    if-ge v6, v10, :cond_b

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->o(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v5, :cond_6

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_7

    :cond_7
    iget-object v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-nez v9, :cond_8

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_8

    if-eq v9, p0, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-ne v7, p0, :cond_8

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_8
    if-ne v9, p0, :cond_9

    :goto_7
    move-object v7, v3

    goto :goto_8

    :cond_9
    if-nez v9, :cond_a

    move-object v7, v4

    goto :goto_8

    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lt/e;

    iget-object v7, v7, Lt/e;->q0:Ln/f;

    :goto_8
    iput-object v8, v7, Ln/f;->j0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-eq v6, v5, :cond_d

    move v5, v1

    :goto_9
    if-ge v5, v10, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-ne v7, v8, :cond_c

    instance-of v7, v6, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v7, :cond_c

    check-cast v6, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Lt/n;

    move-result-object v6

    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    if-eqz v5, :cond_e

    invoke-virtual {v5, p0}, Lt/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_e
    iget-object v5, v3, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14

    move-object v7, v4

    move v4, v1

    :goto_a
    if-ge v1, v6, :cond_14

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v8}, Landroid/view/View;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_f
    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Ln/m;

    if-nez v9, :cond_10

    goto :goto_c

    :cond_10
    iput v4, v9, Ln/m;->v0:I

    iget-object v9, v9, Ln/m;->u0:[Ln/f;

    invoke-static {v9, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget v7, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->b:I

    if-ge v4, v7, :cond_13

    iget-object v7, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    aget v7, v7, v4

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v11, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, p0, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->i(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_11

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    aput v12, v9, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v9

    :cond_11
    if-eqz v9, :cond_12

    iget-object v7, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Ln/m;

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Ln/f;

    move-result-object v9

    invoke-virtual {v7, v9}, Ln/m;->S(Ln/f;)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_13
    iget-object v4, v8, Landroidx/constraintlayout/widget/ConstraintHelper;->d:Ln/m;

    invoke-interface {v4}, Ln/l;->a()V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v10, :cond_17

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_16

    check-cast v4, Landroidx/constraintlayout/widget/Placeholder;

    iget v5, v4, Landroidx/constraintlayout/widget/Placeholder;->a:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_15

    iget v5, v4, Landroidx/constraintlayout/widget/Placeholder;->c:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget v5, v4, Landroidx/constraintlayout/widget/Placeholder;->a:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lt/e;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lt/e;->f0:Z

    iget-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    iget-object v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v11, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v11, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v1

    :goto_e
    if-ge v4, v10, :cond_18

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Ln/f;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v11, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    :goto_f
    if-ge v1, v10, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Ln/f;

    move-result-object v7

    if-nez v7, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lt/e;

    iget-object v4, v3, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Ln/f;->V:Ln/f;

    if-eqz v4, :cond_1a

    check-cast v4, Ln/p;

    iget-object v4, v4, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ln/f;->E()V

    :cond_1a
    iput-object v3, v7, Ln/f;->V:Ln/f;

    move-object v4, p0

    move v5, v0

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ZLandroid/view/View;Ln/f;Lt/e;Landroid/util/SparseArray;)V

    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    if-eqz v2, :cond_1c

    iget-object v0, v3, Ln/g;->v0:Landroidx/appcompat/app/d;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/d;->d(Ln/g;)V

    :cond_1c
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p0, v3, v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Ln/g;III)V

    invoke-virtual {v3}, Ln/f;->s()I

    move-result v7

    invoke-virtual {v3}, Ln/f;->m()I

    move-result v8

    iget-boolean v9, v3, Ln/g;->I0:Z

    iget-boolean v10, v3, Ln/g;->J0:Z

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Ln/f;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Ln/k;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lt/e;

    new-instance v1, Ln/k;

    invoke-direct {v1}, Ln/k;-><init>()V

    iput-object v1, v0, Lt/e;->q0:Ln/f;

    iput-boolean v2, v0, Lt/e;->d0:Z

    iget v0, v0, Lt/e;->V:I

    invoke-virtual {v1, v0}, Ln/k;->T(I)V

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->r()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lt/e;

    iput-boolean v2, v1, Lt/e;->e0:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/view/View;)Ln/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iget-object v1, v1, Ln/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ln/f;->E()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public final p(Ln/f;Lt/e;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln/f;

    if-eqz p3, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lt/e;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    iput-boolean p4, p2, Lt/e;->c0:Z

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p5, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lt/e;

    iput-boolean p4, p0, Lt/e;->c0:Z

    iget-object p0, p0, Lt/e;->q0:Ln/f;

    iput-boolean p4, p0, Ln/f;->E:Z

    :cond_0
    invoke-virtual {p1, v0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p3, p5}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p3

    iget p5, p2, Lt/e;->D:I

    iget p2, p2, Lt/e;->C:I

    invoke-virtual {p0, p3, p5, p2, p4}, Ln/d;->b(Ln/d;IIZ)Z

    iput-boolean p4, p1, Ln/f;->E:Z

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p0}, Ln/d;->j()V

    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1, p0}, Ln/f;->k(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Ln/d;

    move-result-object p0

    invoke-virtual {p0}, Ln/d;->j()V

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Lt/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lt/n;

    return-void
.end method

.method public setId(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lt/p;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lr/r;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lr/r;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln/g;

    iput p1, p0, Ln/g;->H0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Ln/g;->X(I)Z

    move-result p0

    sput-boolean p0, Ll/e;->p:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
