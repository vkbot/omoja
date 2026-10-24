.class public final Ly1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ly1/x;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Ly1/x;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ly1/x;

    iput-object v1, p0, Ly1/p;->a:[Ly1/x;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Ly1/p;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Ly1/p;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Ly1/p;->d:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ly1/p;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ly1/p;->f:Landroid/graphics/Path;

    new-instance v1, Ly1/x;

    invoke-direct {v1}, Ly1/x;-><init>()V

    iput-object v1, p0, Ly1/p;->g:Ly1/x;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Ly1/p;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Ly1/p;->i:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ly1/p;->j:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ly1/p;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ly1/p;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ly1/p;->a:[Ly1/x;

    new-instance v3, Ly1/x;

    invoke-direct {v3}, Ly1/x;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Ly1/p;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Ly1/p;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ly1/n;FLandroid/graphics/RectF;Landroidx/fragment/app/n;Landroid/graphics/Path;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    iget-object v6, v0, Ly1/p;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    iget-object v7, v0, Ly1/p;->f:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v13, 0x1

    iget-object v14, v0, Ly1/p;->c:[Landroid/graphics/Matrix;

    iget-object v15, v0, Ly1/p;->h:[F

    iget-object v8, v0, Ly1/p;->b:[Landroid/graphics/Matrix;

    iget-object v12, v0, Ly1/p;->a:[Ly1/x;

    if-ge v9, v11, :cond_9

    if-eq v9, v13, :cond_2

    if-eq v9, v10, :cond_1

    const/4 v11, 0x3

    if-eq v9, v11, :cond_0

    iget-object v11, v1, Ly1/n;->f:Ly1/c;

    goto :goto_1

    :cond_0
    iget-object v11, v1, Ly1/n;->e:Ly1/c;

    goto :goto_1

    :cond_1
    iget-object v11, v1, Ly1/n;->h:Ly1/c;

    goto :goto_1

    :cond_2
    iget-object v11, v1, Ly1/n;->g:Ly1/c;

    :goto_1
    if-eq v9, v13, :cond_5

    if-eq v9, v10, :cond_4

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    iget-object v10, v1, Ly1/n;->b:Ly1/l;

    goto :goto_2

    :cond_3
    iget-object v10, v1, Ly1/n;->a:Ly1/l;

    goto :goto_2

    :cond_4
    iget-object v10, v1, Ly1/n;->d:Ly1/l;

    goto :goto_2

    :cond_5
    iget-object v10, v1, Ly1/n;->c:Ly1/l;

    :goto_2
    aget-object v13, v12, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11, v3}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result v11

    invoke-virtual {v10, v2, v11, v13}, Ly1/l;->h0(FFLy1/x;)V

    add-int/lit8 v10, v9, 0x1

    mul-int/lit8 v11, v10, 0x5a

    int-to-float v11, v11

    aget-object v13, v8, v9

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    iget-object v13, v0, Ly1/p;->d:Landroid/graphics/PointF;

    move/from16 v18, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_6

    iget v10, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v19, v6

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v10, v6}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_6
    move-object/from16 v19, v6

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    move-object/from16 v19, v6

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    move-object/from16 v19, v6

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v6, v10}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    aget-object v6, v8, v9

    iget v10, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v10, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v6, v8, v9

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v6, v12, v9

    iget v10, v6, Ly1/x;->c:F

    const/16 v16, 0x0

    aput v10, v15, v16

    iget v6, v6, Ly1/x;->d:F

    const/4 v10, 0x1

    aput v6, v15, v10

    aget-object v6, v8, v9

    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v6, v14, v9

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    aget-object v6, v14, v9

    aget v8, v15, v16

    aget v10, v15, v10

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v6, v14, v9

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    move/from16 v9, v18

    move-object/from16 v6, v19

    goto/16 :goto_0

    :cond_9
    move-object/from16 v19, v6

    move v10, v13

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_4
    if-ge v6, v11, :cond_13

    aget-object v9, v12, v6

    iget v13, v9, Ly1/x;->a:F

    aput v13, v15, v16

    iget v9, v9, Ly1/x;->b:F

    aput v9, v15, v10

    aget-object v9, v8, v6

    invoke-virtual {v9, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v6, :cond_a

    aget v9, v15, v16

    aget v13, v15, v10

    invoke-virtual {v5, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_a
    aget v9, v15, v16

    aget v13, v15, v10

    invoke-virtual {v5, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v9, v12, v6

    aget-object v10, v8, v6

    invoke-virtual {v9, v10, v5}, Ly1/x;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v4, :cond_b

    aget-object v9, v12, v6

    aget-object v10, v8, v6

    iget-object v13, v4, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    check-cast v13, Ly1/h;

    iget-object v11, v13, Ly1/h;->d:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v11, v6, v3}, Ljava/util/BitSet;->set(IZ)V

    iget v3, v9, Ly1/x;->f:F

    invoke-virtual {v9, v3}, Ly1/x;->b(F)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v10, Ljava/util/ArrayList;

    iget-object v9, v9, Ly1/x;->h:Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ly1/q;

    invoke-direct {v9, v10, v3}, Ly1/q;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    iget-object v3, v13, Ly1/h;->b:[Ly1/w;

    aput-object v9, v3, v6

    :cond_b
    add-int/lit8 v3, v6, 0x1

    rem-int/lit8 v9, v3, 0x4

    aget-object v10, v12, v6

    iget v11, v10, Ly1/x;->c:F

    const/4 v13, 0x0

    aput v11, v15, v13

    iget v10, v10, Ly1/x;->d:F

    const/4 v11, 0x1

    aput v10, v15, v11

    aget-object v10, v8, v6

    invoke-virtual {v10, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v10, v12, v9

    iget v11, v10, Ly1/x;->a:F

    move/from16 v20, v3

    iget-object v3, v0, Ly1/p;->i:[F

    aput v11, v3, v13

    iget v10, v10, Ly1/x;->b:F

    const/4 v11, 0x1

    aput v10, v3, v11

    aget-object v10, v8, v9

    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v10, v15, v13

    aget v17, v3, v13

    sub-float v10, v10, v17

    float-to-double v4, v10

    aget v10, v15, v11

    aget v3, v3, v11

    sub-float/2addr v10, v3

    float-to-double v10, v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aget-object v5, v12, v6

    iget v10, v5, Ly1/x;->c:F

    const/4 v11, 0x0

    aput v10, v15, v11

    iget v5, v5, Ly1/x;->d:F

    const/4 v10, 0x1

    aput v5, v15, v10

    aget-object v5, v8, v6

    invoke-virtual {v5, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v6, v10, :cond_c

    const/4 v5, 0x3

    if-eq v6, v5, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    aget v11, v15, v10

    sub-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_6

    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/4 v10, 0x0

    aget v11, v15, v10

    sub-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_6
    const/high16 v10, 0x43870000    # 270.0f

    iget-object v11, v0, Ly1/p;->g:Ly1/x;

    invoke-virtual {v11, v4, v4, v10, v4}, Ly1/x;->e(FFFF)V

    const/4 v4, 0x1

    if-eq v6, v4, :cond_f

    const/4 v4, 0x2

    if-eq v6, v4, :cond_e

    const/4 v10, 0x3

    if-eq v6, v10, :cond_d

    iget-object v13, v1, Ly1/n;->j:Ly1/e;

    goto :goto_7

    :cond_d
    iget-object v13, v1, Ly1/n;->i:Ly1/e;

    goto :goto_7

    :cond_e
    const/4 v10, 0x3

    iget-object v13, v1, Ly1/n;->l:Ly1/e;

    goto :goto_7

    :cond_f
    const/4 v4, 0x2

    const/4 v10, 0x3

    iget-object v13, v1, Ly1/n;->k:Ly1/e;

    :goto_7
    invoke-virtual {v13, v3, v5, v2, v11}, Ly1/e;->c(FFFLy1/x;)V

    iget-object v3, v0, Ly1/p;->j:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    aget-object v5, v14, v6

    invoke-virtual {v11, v5, v3}, Ly1/x;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v5, v0, Ly1/p;->l:Z

    if-eqz v5, :cond_11

    invoke-virtual {v13}, Ly1/e;->b()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0, v3, v6}, Ly1/p;->b(Landroid/graphics/Path;I)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0, v3, v9}, Ly1/p;->b(Landroid/graphics/Path;I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v3, v7, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget v3, v11, Ly1/x;->a:F

    const/4 v5, 0x0

    aput v3, v15, v5

    iget v3, v11, Ly1/x;->b:F

    const/4 v9, 0x1

    aput v3, v15, v9

    aget-object v3, v14, v6

    invoke-virtual {v3, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v15, v5

    aget v5, v15, v9

    move-object/from16 v13, v19

    invoke-virtual {v13, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v3, v14, v6

    invoke-virtual {v11, v3, v13}, Ly1/x;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    goto :goto_8

    :cond_11
    move-object/from16 v13, v19

    const/4 v9, 0x1

    aget-object v3, v14, v6

    move-object/from16 v5, p5

    invoke-virtual {v11, v3, v5}, Ly1/x;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    move-object/from16 v3, p4

    :goto_8
    if-eqz v3, :cond_12

    aget-object v4, v14, v6

    iget-object v9, v3, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    check-cast v9, Ly1/h;

    iget-object v10, v9, Ly1/h;->d:Ljava/util/BitSet;

    add-int/lit8 v0, v6, 0x4

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    iget v0, v11, Ly1/x;->f:F

    invoke-virtual {v11, v0}, Ly1/x;->b(F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v10, v11, Ly1/x;->h:Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ly1/q;

    invoke-direct {v10, v4, v0}, Ly1/q;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    iget-object v0, v9, Ly1/h;->c:[Ly1/w;

    aput-object v10, v0, v6

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object v4, v3

    move-object/from16 v19, v13

    move/from16 v6, v20

    const/4 v10, 0x1

    const/4 v11, 0x4

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    goto/16 :goto_4

    :cond_13
    move-object/from16 v13, v19

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    invoke-virtual {v13}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v13, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    return-void
.end method

.method public final b(Landroid/graphics/Path;I)Z
    .locals 2

    iget-object v0, p0, Ly1/p;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Ly1/p;->a:[Ly1/x;

    aget-object v1, v1, p2

    iget-object p0, p0, Ly1/p;->b:[Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0, v0}, Ly1/x;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method
