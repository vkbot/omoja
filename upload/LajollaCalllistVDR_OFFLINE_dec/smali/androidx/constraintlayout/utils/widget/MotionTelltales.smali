.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "SourceFile"


# instance fields
.field public final l:Landroid/graphics/Paint;

.field public m:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final n:[F

.field public final o:Landroid/graphics/Matrix;

.field public p:I

.field public q:I

.field public r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const v0, -0xff01

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const v0, -0xff01

    .line 14
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 15
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 19
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    const p3, -0xff01

    .line 22
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 23
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_4

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailColor:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    goto :goto_1

    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_velocityMode:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    goto :goto_1

    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailScale:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->q:I

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x5

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    move-object v8, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_29

    aget v15, v5, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_28

    aget v13, v5, v14

    iget-object v9, v8, Landroidx/constraintlayout/utils/widget/MotionTelltales;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v12, v8, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    iget v11, v8, Landroidx/constraintlayout/utils/widget/MotionTelltales;->p:I

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:F

    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iget-object v6, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Lr/o;

    if-eqz v6, :cond_2

    iget v6, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:F

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget-object v6, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Lr/o;

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    const v16, 0x3727c5ac    # 1.0E-5f

    add-float v10, v10, v16

    invoke-interface {v6, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    iget-object v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Lr/o;

    move-object/from16 v17, v5

    iget v5, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    invoke-interface {v10, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v6, v5

    div-float v6, v6, v16

    mul-float/2addr v6, v4

    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    div-float v10, v6, v4

    move v4, v5

    goto :goto_2

    :cond_2
    move-object/from16 v17, v5

    :goto_2
    iget-object v5, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Lr/o;

    instance-of v6, v5, Lr/o;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lr/o;->a()F

    move-result v10

    :cond_3
    move v5, v10

    iget-object v6, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/n;

    and-int/lit8 v8, v11, 0x1

    const/16 v16, 0x1

    if-nez v8, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v9, v6, Lr/n;->v:[F

    invoke-virtual {v6, v4, v9}, Lr/n;->b(F[F)F

    move-result v4

    iget-object v10, v6, Lr/n;->y:Ljava/util/HashMap;

    const/16 v19, 0x0

    move/from16 v20, v11

    const-string v11, "translationX"

    if-nez v10, :cond_4

    move/from16 v21, v14

    move-object/from16 v10, v19

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/l;

    move/from16 v21, v14

    :goto_3
    iget-object v14, v6, Lr/n;->y:Ljava/util/HashMap;

    move/from16 v22, v7

    const-string v7, "translationY"

    if-nez v14, :cond_5

    move/from16 v23, v3

    move-object/from16 v14, v19

    goto :goto_4

    :cond_5
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq/l;

    move/from16 v23, v3

    :goto_4
    iget-object v3, v6, Lr/n;->y:Ljava/util/HashMap;

    move/from16 v24, v1

    const-string v1, "rotation"

    if-nez v3, :cond_6

    move-object/from16 v25, v2

    move-object/from16 v3, v19

    goto :goto_5

    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/l;

    move-object/from16 v25, v2

    :goto_5
    iget-object v2, v6, Lr/n;->y:Ljava/util/HashMap;

    const-string v0, "scaleX"

    if-nez v2, :cond_7

    move/from16 v26, v5

    move-object/from16 v2, v19

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/l;

    move/from16 v26, v5

    :goto_6
    iget-object v5, v6, Lr/n;->y:Ljava/util/HashMap;

    move-object/from16 v27, v9

    const-string v9, "scaleY"

    if-nez v5, :cond_8

    move/from16 v28, v8

    move-object/from16 v5, v19

    goto :goto_7

    :cond_8
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/l;

    move/from16 v28, v8

    :goto_7
    iget-object v8, v6, Lr/n;->z:Ljava/util/HashMap;

    if-nez v8, :cond_9

    move-object/from16 v8, v19

    goto :goto_8

    :cond_9
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq/g;

    :goto_8
    iget-object v11, v6, Lr/n;->z:Ljava/util/HashMap;

    if-nez v11, :cond_a

    move-object/from16 v7, v19

    goto :goto_9

    :cond_a
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq/g;

    :goto_9
    iget-object v11, v6, Lr/n;->z:Ljava/util/HashMap;

    if-nez v11, :cond_b

    move-object/from16 v1, v19

    goto :goto_a

    :cond_b
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/g;

    :goto_a
    iget-object v11, v6, Lr/n;->z:Ljava/util/HashMap;

    if-nez v11, :cond_c

    move-object/from16 v0, v19

    goto :goto_b

    :cond_c
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/g;

    :goto_b
    iget-object v11, v6, Lr/n;->z:Ljava/util/HashMap;

    if-nez v11, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lq/g;

    :goto_c
    move-object/from16 v9, v19

    new-instance v11, Lm/o;

    invoke-direct {v11}, Lm/o;-><init>()V

    move-object/from16 v19, v12

    const/4 v12, 0x0

    iput v12, v11, Lm/o;->e:F

    iput v12, v11, Lm/o;->d:F

    iput v12, v11, Lm/o;->c:F

    iput v12, v11, Lm/o;->b:F

    iput v12, v11, Lm/o;->a:F

    if-eqz v3, :cond_e

    iget-object v12, v3, Lq/l;->a:Ly1/l;

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    float-to-double v6, v4

    invoke-virtual {v12, v6, v7}, Ly1/l;->y0(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v11, Lm/o;->e:F

    invoke-virtual {v3, v4}, Lq/l;->a(F)F

    move-result v6

    iput v6, v11, Lm/o;->f:F

    goto :goto_d

    :cond_e
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    :goto_d
    if-eqz v10, :cond_f

    iget-object v6, v10, Lq/l;->a:Ly1/l;

    move v7, v13

    float-to-double v12, v4

    invoke-virtual {v6, v12, v13}, Ly1/l;->y0(D)D

    move-result-wide v12

    double-to-float v6, v12

    iput v6, v11, Lm/o;->c:F

    goto :goto_e

    :cond_f
    move v7, v13

    :goto_e
    if-eqz v14, :cond_10

    iget-object v6, v14, Lq/l;->a:Ly1/l;

    float-to-double v12, v4

    invoke-virtual {v6, v12, v13}, Ly1/l;->y0(D)D

    move-result-wide v12

    double-to-float v6, v12

    iput v6, v11, Lm/o;->d:F

    :cond_10
    if-eqz v2, :cond_11

    iget-object v6, v2, Lq/l;->a:Ly1/l;

    float-to-double v12, v4

    invoke-virtual {v6, v12, v13}, Ly1/l;->y0(D)D

    move-result-wide v12

    double-to-float v6, v12

    iput v6, v11, Lm/o;->a:F

    :cond_11
    if-eqz v5, :cond_12

    iget-object v6, v5, Lq/l;->a:Ly1/l;

    float-to-double v12, v4

    invoke-virtual {v6, v12, v13}, Ly1/l;->y0(D)D

    move-result-wide v12

    double-to-float v6, v12

    iput v6, v11, Lm/o;->b:F

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1, v4}, Lq/g;->b(F)F

    move-result v6

    iput v6, v11, Lm/o;->e:F

    :cond_13
    if-eqz v8, :cond_14

    invoke-virtual {v8, v4}, Lq/g;->b(F)F

    move-result v6

    iput v6, v11, Lm/o;->c:F

    :cond_14
    move-object/from16 v6, v30

    if-eqz v30, :cond_15

    invoke-virtual {v6, v4}, Lq/g;->b(F)F

    move-result v12

    iput v12, v11, Lm/o;->d:F

    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {v0, v4}, Lq/g;->b(F)F

    move-result v12

    iput v12, v11, Lm/o;->a:F

    :cond_16
    if-eqz v9, :cond_17

    invoke-virtual {v9, v4}, Lq/g;->b(F)F

    move-result v12

    iput v12, v11, Lm/o;->b:F

    :cond_17
    move-object/from16 v12, v29

    iget-object v13, v12, Lr/n;->k:Lm/b;

    move-object/from16 v29, v11

    iget-object v11, v12, Lr/n;->f:Lr/u;

    if-eqz v13, :cond_19

    iget-object v0, v12, Lr/n;->p:[D

    array-length v1, v0

    if-lez v1, :cond_18

    float-to-double v1, v4

    invoke-virtual {v13, v1, v2, v0}, Lm/b;->w0(D[D)V

    iget-object v0, v12, Lr/n;->k:Lm/b;

    iget-object v3, v12, Lr/n;->q:[D

    invoke-virtual {v0, v1, v2, v3}, Lm/b;->z0(D[D)V

    iget-object v0, v12, Lr/n;->o:[I

    iget-object v13, v12, Lr/n;->q:[D

    iget-object v14, v12, Lr/n;->p:[D

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v9, v7

    move v10, v15

    move/from16 v1, v20

    move-object/from16 v2, v29

    move-object/from16 v11, v19

    move-object/from16 v3, v19

    move-object v12, v0

    move/from16 v19, v21

    invoke-static/range {v9 .. v14}, Lr/u;->e(FF[F[I[D[D)V

    goto :goto_f

    :cond_18
    move-object/from16 v3, v19

    move/from16 v1, v20

    move/from16 v19, v21

    move-object/from16 v2, v29

    :goto_f
    move-object v9, v2

    move v10, v7

    move v11, v15

    move/from16 v12, v28

    move/from16 v13, v18

    move-object v14, v3

    invoke-virtual/range {v9 .. v14}, Lm/o;->a(FFII[F)V

    move/from16 v31, v1

    move-object v0, v3

    goto/16 :goto_11

    :cond_19
    move-object/from16 v13, v19

    move/from16 v31, v20

    move/from16 v19, v21

    move-object/from16 v20, v9

    iget-object v9, v12, Lr/n;->j:[Ly1/l;

    if-eqz v9, :cond_1b

    move-object/from16 v9, v27

    invoke-virtual {v12, v4, v9}, Lr/n;->b(F[F)F

    move-result v0

    iget-object v1, v12, Lr/n;->j:[Ly1/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    float-to-double v3, v0

    iget-object v0, v12, Lr/n;->q:[D

    invoke-virtual {v1, v3, v4, v0}, Ly1/l;->z0(D[D)V

    iget-object v0, v12, Lr/n;->j:[Ly1/l;

    aget-object v0, v0, v2

    iget-object v1, v12, Lr/n;->p:[D

    invoke-virtual {v0, v3, v4, v1}, Ly1/l;->w0(D[D)V

    aget v0, v9, v2

    const/4 v1, 0x0

    :goto_10
    iget-object v2, v12, Lr/n;->q:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-wide v3, v2, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    iget-object v0, v12, Lr/n;->o:[I

    iget-object v14, v12, Lr/n;->p:[D

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v9, v7

    move v10, v15

    move-object v11, v13

    move-object v12, v0

    move-object v0, v13

    move-object v13, v2

    invoke-static/range {v9 .. v14}, Lr/u;->e(FF[F[I[D[D)V

    move-object/from16 v9, v29

    move v10, v7

    move v11, v15

    move/from16 v12, v28

    move/from16 v13, v18

    move-object v14, v0

    invoke-virtual/range {v9 .. v14}, Lm/o;->a(FFII[F)V

    goto/16 :goto_11

    :cond_1b
    iget-object v9, v12, Lr/n;->g:Lr/u;

    iget v12, v9, Lr/u;->e:F

    move-object/from16 v21, v0

    iget v0, v11, Lr/u;->e:F

    sub-float/2addr v12, v0

    iget v0, v9, Lr/u;->f:F

    move-object/from16 v30, v6

    iget v6, v11, Lr/u;->f:F

    sub-float/2addr v0, v6

    iget v6, v9, Lr/u;->g:F

    move-object/from16 v27, v8

    iget v8, v11, Lr/u;->g:F

    sub-float/2addr v6, v8

    iget v8, v9, Lr/u;->h:F

    iget v9, v11, Lr/u;->h:F

    sub-float/2addr v8, v9

    add-float/2addr v6, v12

    add-float/2addr v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v11, v9, v7

    mul-float/2addr v11, v12

    mul-float/2addr v6, v7

    add-float/2addr v6, v11

    const/4 v11, 0x0

    aput v6, v13, v11

    sub-float/2addr v9, v15

    mul-float/2addr v9, v0

    mul-float/2addr v8, v15

    add-float/2addr v8, v9

    aput v8, v13, v16

    move-object/from16 v0, v29

    const/4 v6, 0x0

    iput v6, v0, Lm/o;->e:F

    iput v6, v0, Lm/o;->d:F

    iput v6, v0, Lm/o;->c:F

    iput v6, v0, Lm/o;->b:F

    iput v6, v0, Lm/o;->a:F

    if-eqz v3, :cond_1c

    iget-object v6, v3, Lq/l;->a:Ly1/l;

    float-to-double v8, v4

    invoke-virtual {v6, v8, v9}, Ly1/l;->y0(D)D

    move-result-wide v8

    double-to-float v6, v8

    iput v6, v0, Lm/o;->e:F

    invoke-virtual {v3, v4}, Lq/l;->a(F)F

    move-result v3

    iput v3, v0, Lm/o;->f:F

    :cond_1c
    if-eqz v10, :cond_1d

    iget-object v3, v10, Lq/l;->a:Ly1/l;

    float-to-double v8, v4

    invoke-virtual {v3, v8, v9}, Ly1/l;->y0(D)D

    move-result-wide v8

    double-to-float v3, v8

    iput v3, v0, Lm/o;->c:F

    :cond_1d
    if-eqz v14, :cond_1e

    iget-object v3, v14, Lq/l;->a:Ly1/l;

    float-to-double v8, v4

    invoke-virtual {v3, v8, v9}, Ly1/l;->y0(D)D

    move-result-wide v8

    double-to-float v3, v8

    iput v3, v0, Lm/o;->d:F

    :cond_1e
    if-eqz v2, :cond_1f

    iget-object v2, v2, Lq/l;->a:Ly1/l;

    float-to-double v8, v4

    invoke-virtual {v2, v8, v9}, Ly1/l;->y0(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lm/o;->a:F

    :cond_1f
    if-eqz v5, :cond_20

    iget-object v2, v5, Lq/l;->a:Ly1/l;

    float-to-double v5, v4

    invoke-virtual {v2, v5, v6}, Ly1/l;->y0(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v0, Lm/o;->b:F

    :cond_20
    if-eqz v1, :cond_21

    invoke-virtual {v1, v4}, Lq/g;->b(F)F

    move-result v1

    iput v1, v0, Lm/o;->e:F

    :cond_21
    if-eqz v27, :cond_22

    move-object/from16 v8, v27

    invoke-virtual {v8, v4}, Lq/g;->b(F)F

    move-result v1

    iput v1, v0, Lm/o;->c:F

    :cond_22
    if-eqz v30, :cond_23

    move-object/from16 v1, v30

    invoke-virtual {v1, v4}, Lq/g;->b(F)F

    move-result v1

    iput v1, v0, Lm/o;->d:F

    :cond_23
    if-eqz v21, :cond_24

    move-object/from16 v1, v21

    invoke-virtual {v1, v4}, Lq/g;->b(F)F

    move-result v1

    iput v1, v0, Lm/o;->a:F

    :cond_24
    if-eqz v20, :cond_25

    move-object/from16 v1, v20

    invoke-virtual {v1, v4}, Lq/g;->b(F)F

    move-result v1

    iput v1, v0, Lm/o;->b:F

    :cond_25
    move-object v9, v0

    move v10, v7

    move v11, v15

    move/from16 v12, v28

    move-object v0, v13

    move/from16 v13, v18

    move-object v14, v0

    invoke-virtual/range {v9 .. v14}, Lm/o;->a(FFII[F)V

    goto :goto_11

    :cond_26
    move/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v23, v3

    move/from16 v26, v5

    move/from16 v22, v7

    move/from16 v31, v11

    move-object v0, v12

    move v7, v13

    move/from16 v19, v14

    move-object v12, v6

    invoke-virtual {v12, v4, v7, v15, v0}, Lr/n;->d(FFF[F)V

    :goto_11
    const/4 v1, 0x2

    move/from16 v2, v31

    if-ge v2, v1, :cond_27

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, v26

    aput v2, v0, v1

    aget v1, v0, v16

    mul-float v1, v1, v26

    aput v1, v0, v16

    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->n:[F

    move-object/from16 v2, v25

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    move/from16 v3, v24

    int-to-float v4, v3

    mul-float v9, v4, v7

    move/from16 v4, v23

    int-to-float v5, v4

    mul-float v10, v5, v15

    const/4 v5, 0x0

    aget v6, v1, v5

    iget v7, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->r:F

    mul-float/2addr v6, v7

    sub-float v11, v9, v6

    aget v6, v1, v16

    mul-float/2addr v6, v7

    sub-float v12, v10, v6

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v13, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->l:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v19, 0x1

    move-object v8, v0

    move v1, v3

    move v3, v4

    move-object/from16 v5, v17

    move/from16 v7, v22

    const/4 v4, 0x5

    goto/16 :goto_1

    :cond_28
    move v4, v3

    move-object/from16 v17, v5

    move/from16 v22, v7

    const/4 v5, 0x0

    move v3, v1

    add-int/lit8 v7, v22, 0x1

    move v3, v4

    move-object/from16 v5, v17

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_29
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
