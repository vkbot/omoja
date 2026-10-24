.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "SourceFile"


# instance fields
.field public m:F

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const p1, 0x3dcccccd    # 0.1f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    const/16 p1, 0x31

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    const/16 p1, 0x32

    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->s:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 11
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    const/16 v0, 0x31

    .line 12
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    const/16 v0, 0x32

    .line 13
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->s:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->t:I

    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3dcccccd    # 0.1f

    .line 21
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    const/16 p3, 0x31

    .line 22
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    const/16 p3, 0x32

    .line 23
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    .line 25
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->s:I

    .line 28
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->t:I

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final s(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->k(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ly1/l;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " views = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FadeMove"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Lr/e;

    invoke-direct {v3}, Lr/e;-><init>()V

    new-instance v4, Lr/e;

    invoke-direct {v4}, Lr/e;-><init>()V

    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "alpha"

    invoke-virtual {v3, v5, v6}, Lr/e;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lr/e;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    iput v5, v3, Lr/c;->a:I

    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    iput v6, v4, Lr/c;->a:I

    new-instance v6, Lr/i;

    invoke-direct {v6}, Lr/i;-><init>()V

    iput v5, v6, Lr/c;->a:I

    const/4 v5, 0x0

    iput v5, v6, Lr/i;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "percentX"

    invoke-virtual {v6, v7, v8}, Lr/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "percentY"

    invoke-virtual {v6, v7, v9}, Lr/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lr/i;

    invoke-direct {v7}, Lr/i;-><init>()V

    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    iput v10, v7, Lr/c;->a:I

    iput v5, v7, Lr/i;->o:I

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v8}, Lr/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lr/i;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    const/4 v9, 0x0

    if-lez v8, :cond_1

    new-instance v8, Lr/e;

    invoke-direct {v8}, Lr/e;-><init>()V

    new-instance v11, Lr/e;

    invoke-direct {v11}, Lr/e;-><init>()V

    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "translationX"

    invoke-virtual {v8, v12, v13}, Lr/e;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    iput v12, v8, Lr/c;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v13}, Lr/e;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    sub-int/2addr v12, v10

    iput v12, v11, Lr/c;->a:I

    goto :goto_0

    :cond_1
    move-object v8, v9

    move-object v11, v8

    :goto_0
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    if-lez v12, :cond_2

    new-instance v9, Lr/e;

    invoke-direct {v9}, Lr/e;-><init>()V

    new-instance v12, Lr/e;

    invoke-direct {v12}, Lr/e;-><init>()V

    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "translationY"

    invoke-virtual {v9, v13, v14}, Lr/e;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    iput v13, v9, Lr/c;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v14}, Lr/e;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    sub-int/2addr v13, v10

    iput v13, v12, Lr/c;->a:I

    move-object/from16 v19, v12

    move-object v12, v9

    move-object/from16 v9, v19

    goto :goto_1

    :cond_2
    move-object v12, v9

    :goto_1
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->t:I

    const/4 v15, -0x1

    const/16 v16, 0x0

    if-ne v13, v15, :cond_a

    const/4 v13, 0x4

    new-array v15, v13, [I

    move v13, v5

    :goto_2
    array-length v14, v2

    if-ge v13, v14, :cond_8

    aget-object v14, v2, v13

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr/n;

    if-nez v14, :cond_3

    move-object/from16 v18, v9

    goto :goto_4

    :cond_3
    iget-object v5, v14, Lr/n;->g:Lr/u;

    iget v10, v5, Lr/u;->e:F

    iget-object v14, v14, Lr/n;->f:Lr/u;

    move-object/from16 v18, v9

    iget v9, v14, Lr/u;->e:F

    sub-float/2addr v10, v9

    iget v5, v5, Lr/u;->f:F

    iget v9, v14, Lr/u;->f:F

    sub-float/2addr v5, v9

    cmpg-float v9, v5, v16

    if-gez v9, :cond_4

    const/4 v9, 0x1

    aget v14, v15, v9

    add-int/2addr v14, v9

    aput v14, v15, v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    :goto_3
    cmpl-float v5, v5, v16

    if-lez v5, :cond_5

    const/4 v5, 0x0

    aget v14, v15, v5

    add-int/2addr v14, v9

    aput v14, v15, v5

    :cond_5
    cmpl-float v5, v10, v16

    if-lez v5, :cond_6

    const/4 v5, 0x3

    aget v14, v15, v5

    add-int/2addr v14, v9

    aput v14, v15, v5

    :cond_6
    cmpg-float v5, v10, v16

    if-gez v5, :cond_7

    const/4 v5, 0x2

    aget v10, v15, v5

    add-int/2addr v10, v9

    aput v10, v15, v5

    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v18

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v18, v9

    move v9, v5

    aget v5, v15, v9

    move v13, v9

    const/4 v10, 0x1

    const/4 v14, 0x4

    :goto_5
    if-ge v10, v14, :cond_b

    aget v9, v15, v10

    if-ge v5, v9, :cond_9

    move v5, v9

    move v13, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v18, v9

    :cond_b
    const/4 v5, 0x0

    :goto_6
    array-length v9, v2

    if-ge v5, v9, :cond_1f

    aget-object v9, v2, v5

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr/n;

    if-nez v9, :cond_d

    :cond_c
    move-object/from16 v10, p1

    move-object/from16 v17, v2

    move-object/from16 v14, v18

    goto/16 :goto_e

    :cond_d
    iget-object v10, v9, Lr/n;->g:Lr/u;

    iget v14, v10, Lr/u;->e:F

    iget-object v15, v9, Lr/n;->f:Lr/u;

    iget v1, v15, Lr/u;->e:F

    sub-float/2addr v14, v1

    iget v1, v10, Lr/u;->f:F

    iget v10, v15, Lr/u;->f:F

    sub-float/2addr v1, v10

    if-nez v13, :cond_10

    cmpl-float v1, v1, v16

    if-lez v1, :cond_f

    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    if-eqz v1, :cond_e

    cmpl-float v1, v14, v16

    if-nez v1, :cond_f

    :cond_e
    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    const/4 v10, 0x1

    if-ne v13, v10, :cond_13

    cmpg-float v1, v1, v16

    if-gez v1, :cond_12

    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    if-eqz v1, :cond_11

    cmpl-float v1, v14, v16

    if-nez v1, :cond_12

    :cond_11
    :goto_7
    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v15, 0x2

    goto :goto_a

    :cond_12
    :goto_8
    const/4 v10, 0x3

    const/4 v15, 0x2

    goto :goto_9

    :cond_13
    const/4 v15, 0x2

    if-ne v13, v15, :cond_16

    cmpg-float v14, v14, v16

    if-gez v14, :cond_15

    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    if-eqz v14, :cond_14

    cmpl-float v1, v1, v16

    if-nez v1, :cond_15

    :cond_14
    const/4 v1, 0x0

    const/4 v10, 0x3

    goto :goto_a

    :cond_15
    const/4 v10, 0x3

    goto :goto_9

    :cond_16
    const/4 v10, 0x3

    if-ne v13, v10, :cond_18

    cmpl-float v14, v14, v16

    if-lez v14, :cond_18

    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    if-eqz v14, :cond_17

    cmpl-float v1, v1, v16

    if-nez v1, :cond_18

    :cond_17
    const/4 v1, 0x0

    goto :goto_a

    :cond_18
    :goto_9
    const/4 v1, 0x1

    :goto_a
    if-eqz v1, :cond_c

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->s:I

    const/4 v14, -0x1

    if-ne v1, v14, :cond_1b

    invoke-virtual {v9, v3}, Lr/n;->a(Lr/c;)V

    invoke-virtual {v9, v4}, Lr/n;->a(Lr/c;)V

    invoke-virtual {v9, v6}, Lr/n;->a(Lr/c;)V

    invoke-virtual {v9, v7}, Lr/n;->a(Lr/c;)V

    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    if-lez v1, :cond_19

    invoke-virtual {v9, v8}, Lr/n;->a(Lr/c;)V

    invoke-virtual {v9, v11}, Lr/n;->a(Lr/c;)V

    :cond_19
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    if-lez v1, :cond_1a

    invoke-virtual {v9, v12}, Lr/n;->a(Lr/c;)V

    move-object/from16 v14, v18

    invoke-virtual {v9, v14}, Lr/n;->a(Lr/c;)V

    :goto_b
    move-object/from16 v10, p1

    goto :goto_d

    :cond_1a
    move-object/from16 v14, v18

    goto :goto_b

    :cond_1b
    move-object/from16 v10, p1

    move-object/from16 v14, v18

    iget-object v15, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/c;

    if-eqz v15, :cond_1d

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/c;->q:Landroidx/appcompat/widget/b0;

    iget-object v15, v15, Landroidx/appcompat/widget/b0;->b:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lr/a0;

    move-object/from16 v17, v2

    iget v2, v0, Lr/a0;->a:I

    if-ne v2, v1, :cond_1c

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Lr/a0;->f:Lr/g;

    iget-object v0, v0, Lr/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    iget-object v1, v9, Lr/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v2, v17

    goto :goto_c

    :cond_1d
    :goto_d
    move-object/from16 v17, v2

    :goto_e
    const/4 v2, -0x1

    :cond_1e
    :goto_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v18, v14

    move-object/from16 v2, v17

    goto/16 :goto_6

    :cond_1f
    return-void
.end method

.method public final t(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p2, :cond_b

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_start:I

    const/16 v4, 0x63

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    goto :goto_1

    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_end:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    goto :goto_1

    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationX:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->p:I

    goto :goto_1

    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_translationY:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->q:I

    goto :goto_1

    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_alpha:I

    if-ne v2, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->m:F

    goto :goto_1

    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_move:I

    if-ne v2, v3, :cond_5

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->t:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->t:I

    goto :goto_1

    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_strict:I

    if-ne v2, v3, :cond_6

    iget-boolean v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->r:Z

    goto :goto_1

    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect_motionEffect_viewTransition:I

    if-ne v2, v3, :cond_7

    iget v3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->s:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->s:I

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    iget p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    iget v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    if-ne p2, v0, :cond_a

    if-lez p2, :cond_9

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->n:I

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->o:I

    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method
