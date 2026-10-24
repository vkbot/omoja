.class public final Lq/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/view/View;

.field public D:I

.field public E:F

.field public F:Landroid/view/animation/Interpolator;

.field public G:Z

.field public final a:Landroid/graphics/Rect;

.field public b:Landroid/view/View;

.field public c:I

.field public d:Z

.field public e:I

.field public final f:Lq/u;

.field public final g:Lq/u;

.field public final h:Lq/l;

.field public final i:Lq/l;

.field public j:[Lcom/google/android/material/slider/h;

.field public k:Ll/b;

.field public l:F

.field public m:F

.field public n:F

.field public o:[I

.field public p:[D

.field public q:[D

.field public r:[Ljava/lang/String;

.field public s:[I

.field public final t:[F

.field public final u:Ljava/util/ArrayList;

.field public final v:[F

.field public final w:Ljava/util/ArrayList;

.field public x:Ljava/util/HashMap;

.field public y:Ljava/util/HashMap;

.field public z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lq/n;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/n;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Lq/n;->e:I

    new-instance v2, Lq/u;

    invoke-direct {v2}, Lq/u;-><init>()V

    iput-object v2, p0, Lq/n;->f:Lq/u;

    new-instance v2, Lq/u;

    invoke-direct {v2}, Lq/u;-><init>()V

    iput-object v2, p0, Lq/n;->g:Lq/u;

    new-instance v2, Lq/l;

    invoke-direct {v2}, Lq/l;-><init>()V

    iput-object v2, p0, Lq/n;->h:Lq/l;

    new-instance v2, Lq/l;

    invoke-direct {v2}, Lq/l;-><init>()V

    iput-object v2, p0, Lq/n;->i:Lq/l;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lq/n;->l:F

    const/4 v3, 0x0

    iput v3, p0, Lq/n;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lq/n;->n:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Lq/n;->t:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lq/n;->u:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [F

    iput-object v3, p0, Lq/n;->v:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lq/n;->w:Ljava/util/ArrayList;

    iput v1, p0, Lq/n;->A:I

    iput v1, p0, Lq/n;->B:I

    const/4 v3, 0x0

    iput-object v3, p0, Lq/n;->C:Landroid/view/View;

    iput v1, p0, Lq/n;->D:I

    iput v2, p0, Lq/n;->E:F

    iput-object v3, p0, Lq/n;->F:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Lq/n;->G:Z

    iput-object p1, p0, Lq/n;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lq/n;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Ls/e;

    if-eqz v0, :cond_0

    check-cast p1, Ls/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static g(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p4, 0x4

    if-eq p2, p4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p4

    div-int/2addr v0, v1

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/2addr p3, v1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    div-int/2addr p3, v1

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    iget p4, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, p4

    div-int/2addr v0, v1

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p3

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/2addr p3, v1

    iput p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    div-int/2addr p3, v1

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lq/c;)V
    .locals 1

    iget-object v0, p0, Lq/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Lq/n;->n:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    iget v4, p0, Lq/n;->m:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_2
    :goto_0
    iget-object v3, p0, Lq/n;->f:Lq/u;

    iget-object v3, v3, Lq/u;->b:Ll/e;

    iget-object v4, p0, Lq/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v5, 0x7fc00000    # Float.NaN

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/u;

    iget-object v7, v6, Lq/u;->b:Ll/e;

    if-eqz v7, :cond_3

    iget v8, v6, Lq/u;->d:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v0, v8

    goto :goto_1

    :cond_4
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v5, v6, Lq/u;->d:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v2, v5

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Ll/e;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    invoke-virtual {v3, v4, v5}, Ll/e;->b(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p2, v1

    :cond_7
    return p1
.end method

.method public final c(D[F[F)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    const/4 v4, 0x4

    new-array v5, v4, [D

    new-array v6, v4, [D

    iget-object v7, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v5}, Lcom/google/android/material/slider/h;->t0(D[D)V

    iget-object v7, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v6}, Lcom/google/android/material/slider/h;->w0(D[D)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v9, v0, Lq/n;->o:[I

    iget-object v10, v0, Lq/n;->f:Lq/u;

    iget v11, v10, Lq/u;->f:F

    iget v12, v10, Lq/u;->g:F

    iget v13, v10, Lq/u;->h:F

    iget v14, v10, Lq/u;->i:F

    move/from16 v16, v7

    move/from16 v17, v16

    move v15, v8

    move/from16 v8, v17

    :goto_0
    array-length v4, v9

    if-ge v15, v4, :cond_4

    aget-wide v0, v5, v15

    double-to-float v0, v0

    aget-wide v2, v6, v15

    double-to-float v2, v2

    aget v3, v9, v15

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v14, v0

    move/from16 v17, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    move v13, v0

    move/from16 v16, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    move v12, v0

    move v8, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    move v11, v0

    move v7, v2

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    div-float v16, v16, v0

    add-float v16, v16, v7

    div-float v17, v17, v0

    add-float v17, v17, v8

    iget-object v1, v10, Lq/u;->n:Lq/n;

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    new-array v4, v3, [F

    new-array v3, v3, [F

    move-wide/from16 v5, p1

    invoke-virtual {v1, v5, v6, v4, v3}, Lq/n;->c(D[F[F)V

    const/4 v1, 0x0

    aget v5, v4, v1

    const/4 v2, 0x1

    aget v4, v4, v2

    aget v6, v3, v1

    aget v1, v3, v2

    float-to-double v9, v5

    float-to-double v2, v11

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v2

    add-double/2addr v15, v9

    div-float v5, v13, v0

    float-to-double v9, v5

    sub-double v9, v15, v9

    double-to-float v5, v9

    float-to-double v9, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v2

    sub-double/2addr v9, v15

    div-float v2, v14, v0

    float-to-double v2, v2

    sub-double/2addr v9, v2

    double-to-float v2, v9

    float-to-double v3, v6

    float-to-double v6, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v6

    add-double/2addr v9, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 p2, v1

    float-to-double v0, v8

    mul-double/2addr v3, v0

    add-double/2addr v3, v9

    double-to-float v3, v3

    move/from16 v4, p2

    float-to-double v8, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    sub-double v8, v8, v18

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v17, v0

    move v12, v2

    move/from16 v16, v3

    move v11, v5

    const/high16 v0, 0x40000000    # 2.0f

    :cond_5
    div-float/2addr v13, v0

    add-float/2addr v13, v11

    const/4 v1, 0x0

    add-float/2addr v13, v1

    const/4 v2, 0x0

    aput v13, p3, v2

    div-float/2addr v14, v0

    add-float/2addr v14, v12

    add-float/2addr v14, v1

    const/4 v0, 0x1

    aput v14, p3, v0

    aput v16, p4, v2

    aput v17, p4, v0

    return-void
.end method

.method public final d(FFF[F)V
    .locals 10

    iget-object v0, p0, Lq/n;->v:[F

    invoke-virtual {p0, p1, v0}, Lq/n;->b(F[F)F

    move-result v1

    iget-object v2, p0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    iget-object v3, p0, Lq/n;->f:Lq/u;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    aget-object v2, v2, v4

    float-to-double v5, v1

    iget-object v1, p0, Lq/n;->q:[D

    invoke-virtual {v2, v5, v6, v1}, Lcom/google/android/material/slider/h;->w0(D[D)V

    iget-object v1, p0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    aget-object v1, v1, v4

    iget-object v2, p0, Lq/n;->p:[D

    invoke-virtual {v1, v5, v6, v2}, Lcom/google/android/material/slider/h;->t0(D[D)V

    aget v0, v0, v4

    :goto_0
    iget-object v7, p0, Lq/n;->q:[D

    array-length v1, v7

    if-ge v4, v1, :cond_0

    aget-wide v1, v7, v4

    float-to-double v8, v0

    mul-double/2addr v1, v8

    aput-wide v1, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq/n;->k:Ll/b;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lq/n;->p:[D

    array-length v2, v1

    if-lez v2, :cond_1

    invoke-virtual {v0, v5, v6, v1}, Ll/b;->t0(D[D)V

    iget-object v0, p0, Lq/n;->k:Ll/b;

    iget-object v1, p0, Lq/n;->q:[D

    invoke-virtual {v0, v5, v6, v1}, Ll/b;->w0(D[D)V

    iget-object v4, p0, Lq/n;->o:[I

    iget-object v5, p0, Lq/n;->q:[D

    iget-object v6, p0, Lq/n;->p:[D

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, p2

    move v1, p3

    move-object v2, p4

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lq/u;->e(FF[F[I[D[D)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lq/n;->o:[I

    iget-object v5, p0, Lq/n;->p:[D

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, p2

    move v1, p3

    move-object v2, p4

    move-object v3, v4

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lq/u;->e(FF[F[I[D[D)V

    return-void

    :cond_3
    iget-object v0, p0, Lq/n;->g:Lq/u;

    iget v1, v0, Lq/u;->f:F

    iget v2, v3, Lq/u;->f:F

    sub-float/2addr v1, v2

    iget v2, v0, Lq/u;->g:F

    iget v5, v3, Lq/u;->g:F

    sub-float/2addr v2, v5

    iget v5, v0, Lq/u;->h:F

    iget v6, v3, Lq/u;->h:F

    sub-float/2addr v5, v6

    iget v0, v0, Lq/u;->i:F

    iget v3, v3, Lq/u;->i:F

    sub-float/2addr v0, v3

    add-float/2addr v5, v1

    add-float/2addr v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v6, v3, p2

    mul-float/2addr v6, v1

    mul-float/2addr v5, p2

    add-float/2addr v5, v6

    aput v5, p4, v4

    sub-float/2addr v3, p3

    mul-float/2addr v3, v2

    mul-float/2addr v0, p3

    add-float/2addr v0, v3

    const/4 v1, 0x1

    aput v0, p4, v1

    return-void
.end method

.method public final e(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lq/n;->b(F[F)F

    move-result v2

    iget v3, v0, Lq/n;->D:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    int-to-float v3, v3

    div-float v3, v4, v3

    div-float v5, v2, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    iget v6, v0, Lq/n;->E:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v0, Lq/n;->E:F

    add-float/2addr v2, v6

    rem-float/2addr v2, v4

    :cond_0
    iget-object v6, v0, Lq/n;->F:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_1

    invoke-interface {v6, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    goto :goto_0

    :cond_1
    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v8, v10

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    mul-float/2addr v4, v3

    add-float v2, v4, v5

    :cond_3
    move v8, v2

    iget-object v2, v0, Lq/n;->y:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp/l;

    invoke-virtual {v3, v7, v8}, Lp/l;->c(Landroid/view/View;F)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lq/n;->x:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v1

    move v12, v9

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/q;

    instance-of v2, v1, Lp/o;

    if-eqz v2, :cond_5

    move-object v11, v1

    check-cast v11, Lp/o;

    goto :goto_2

    :cond_5
    move v2, v8

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lp/q;->b(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z

    move-result v1

    or-int/2addr v12, v1

    goto :goto_2

    :cond_6
    move-object v11, v1

    move v12, v9

    :cond_7
    iget-object v1, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    iget-object v10, v0, Lq/n;->f:Lq/u;

    if-eqz v1, :cond_26

    aget-object v1, v1, v9

    float-to-double v13, v8

    iget-object v2, v0, Lq/n;->p:[D

    invoke-virtual {v1, v13, v14, v2}, Lcom/google/android/material/slider/h;->t0(D[D)V

    iget-object v1, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    aget-object v1, v1, v9

    iget-object v2, v0, Lq/n;->q:[D

    invoke-virtual {v1, v13, v14, v2}, Lcom/google/android/material/slider/h;->w0(D[D)V

    iget-object v1, v0, Lq/n;->k:Ll/b;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lq/n;->p:[D

    array-length v3, v2

    if-lez v3, :cond_8

    invoke-virtual {v1, v13, v14, v2}, Ll/b;->t0(D[D)V

    iget-object v1, v0, Lq/n;->k:Ll/b;

    iget-object v2, v0, Lq/n;->q:[D

    invoke-virtual {v1, v13, v14, v2}, Ll/b;->w0(D[D)V

    :cond_8
    iget-boolean v1, v0, Lq/n;->G:Z

    if-nez v1, :cond_1d

    iget-object v1, v0, Lq/n;->o:[I

    iget-object v2, v0, Lq/n;->p:[D

    iget-object v3, v0, Lq/n;->q:[D

    iget-boolean v4, v0, Lq/n;->d:Z

    iget v5, v10, Lq/u;->f:F

    iget v6, v10, Lq/u;->g:F

    iget v9, v10, Lq/u;->h:F

    iget v15, v10, Lq/u;->i:F

    move/from16 p1, v5

    array-length v5, v1

    if-eqz v5, :cond_9

    iget-object v5, v10, Lq/u;->q:[D

    array-length v5, v5

    move/from16 v16, v6

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    if-gt v5, v6, :cond_a

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    new-array v6, v5, [D

    iput-object v6, v10, Lq/u;->q:[D

    new-array v5, v5, [D

    iput-object v5, v10, Lq/u;->r:[D

    goto :goto_3

    :cond_9
    move/from16 v16, v6

    :cond_a
    :goto_3
    iget-object v5, v10, Lq/u;->q:[D

    move-object/from16 v17, v11

    move/from16 v18, v12

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v5, v11, v12}, Ljava/util/Arrays;->fill([DD)V

    const/4 v5, 0x0

    :goto_4
    array-length v6, v1

    if-ge v5, v6, :cond_b

    iget-object v6, v10, Lq/u;->q:[D

    aget v11, v1, v5

    aget-wide v19, v2, v5

    aput-wide v19, v6, v11

    iget-object v6, v10, Lq/u;->r:[D

    aget-wide v19, v3, v5

    aput-wide v19, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v19, v15

    move v15, v11

    move v11, v6

    move/from16 v6, p1

    move/from16 v27, v16

    move/from16 v16, v8

    move v8, v12

    move v12, v9

    move/from16 v9, v27

    :goto_5
    iget-object v0, v10, Lq/u;->q:[D

    move/from16 v20, v4

    array-length v4, v0

    if-ge v5, v4, :cond_13

    aget-wide v21, v0, v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_c

    move/from16 p1, v1

    goto :goto_7

    :cond_c
    iget-object v0, v10, Lq/u;->q:[D

    aget-wide v21, v0, v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v21, 0x0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    iget-object v0, v10, Lq/u;->q:[D

    aget-wide v23, v0, v5

    add-double v21, v23, v21

    :goto_6
    move/from16 p1, v1

    move-wide/from16 v0, v21

    double-to-float v0, v0

    iget-object v1, v10, Lq/u;->r:[D

    move v4, v0

    aget-wide v0, v1, v5

    double-to-float v0, v0

    const/4 v1, 0x1

    if-eq v5, v1, :cond_12

    const/4 v1, 0x2

    if-eq v5, v1, :cond_11

    const/4 v1, 0x3

    if-eq v5, v1, :cond_10

    const/4 v1, 0x4

    if-eq v5, v1, :cond_f

    const/4 v0, 0x5

    if-eq v5, v0, :cond_e

    :goto_7
    goto :goto_8

    :cond_e
    move v1, v4

    goto :goto_9

    :cond_f
    move v15, v0

    move/from16 v19, v4

    goto :goto_8

    :cond_10
    move v11, v0

    move v12, v4

    goto :goto_8

    :cond_11
    move v8, v0

    move v9, v4

    :goto_8
    move/from16 v1, p1

    goto :goto_9

    :cond_12
    move/from16 v1, p1

    move v2, v0

    move v6, v4

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v20

    goto :goto_5

    :cond_13
    move/from16 p1, v1

    iget-object v0, v10, Lq/u;->n:Lq/n;

    if-eqz v0, :cond_16

    const/4 v1, 0x2

    new-array v4, v1, [F

    new-array v1, v1, [F

    invoke-virtual {v0, v13, v14, v4, v1}, Lq/n;->c(D[F[F)V

    const/4 v0, 0x0

    aget v5, v4, v0

    const/4 v11, 0x1

    aget v4, v4, v11

    aget v0, v1, v0

    aget v1, v1, v11

    move-object/from16 v21, v10

    float-to-double v10, v5

    float-to-double v5, v6

    move-wide/from16 v22, v13

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v5

    add-double v24, v24, v10

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v12, v9

    float-to-double v9, v9

    sub-double v9, v24, v9

    double-to-float v9, v9

    float-to-double v10, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v24, v24, v5

    sub-double v10, v10, v24

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v19, v4

    move-object/from16 v24, v3

    float-to-double v3, v4

    sub-double/2addr v10, v3

    double-to-float v3, v10

    float-to-double v10, v0

    move v0, v3

    float-to-double v2, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v25, v25, v2

    add-double v25, v25, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v5

    move v4, v9

    float-to-double v8, v8

    mul-double/2addr v10, v8

    add-double v10, v10, v25

    double-to-float v10, v10

    move v11, v0

    float-to-double v0, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v25, v25, v2

    sub-double v0, v0, v25

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v5

    mul-double/2addr v2, v8

    add-double/2addr v2, v0

    double-to-float v0, v2

    move-object/from16 v1, v24

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14

    float-to-double v2, v10

    const/4 v5, 0x0

    aput-wide v2, v1, v5

    float-to-double v2, v0

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    :cond_14
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_15

    move/from16 v1, p1

    float-to-double v1, v1

    float-to-double v5, v0

    float-to-double v8, v10

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    add-double/2addr v5, v1

    double-to-float v0, v5

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    :cond_15
    move v6, v4

    move v9, v11

    goto :goto_a

    :cond_16
    move/from16 v1, p1

    move-object/from16 v21, v10

    move-wide/from16 v22, v13

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v11, v0

    add-float/2addr v11, v2

    div-float/2addr v15, v0

    add-float/2addr v15, v8

    const/4 v0, 0x0

    float-to-double v2, v0

    float-to-double v0, v1

    float-to-double v4, v15

    float-to-double v10, v11

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    add-double/2addr v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    :cond_17
    :goto_a
    instance-of v0, v7, Lq/b;

    if-eqz v0, :cond_18

    add-float/2addr v12, v6

    add-float v0, v9, v19

    move-object v1, v7

    check-cast v1, Lq/b;

    check-cast v1, Landroidx/constraintlayout/utils/widget/MotionLabel;

    invoke-virtual {v1, v6, v9, v12, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->c(FFFF)V

    goto :goto_d

    :cond_18
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v6, v0

    float-to-int v1, v6

    add-float/2addr v9, v0

    float-to-int v0, v9

    add-float/2addr v6, v12

    float-to-int v2, v6

    add-float v9, v9, v19

    float-to-int v3, v9

    sub-int v4, v2, v1

    sub-int v5, v3, v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v4, v6, :cond_1a

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_19

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_1b

    if-eqz v20, :cond_1c

    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_1c
    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_d
    const/4 v0, 0x0

    move-object/from16 v8, p0

    iput-boolean v0, v8, Lq/n;->d:Z

    goto :goto_e

    :cond_1d
    move/from16 v16, v8

    move-object/from16 v21, v10

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-wide/from16 v22, v13

    move-object v8, v0

    :goto_e
    iget v0, v8, Lq/n;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget-object v0, v8, Lq/n;->C:Landroid/view/View;

    if-nez v0, :cond_1e

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, v8, Lq/n;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lq/n;->C:Landroid/view/View;

    :cond_1e
    iget-object v0, v8, Lq/n;->C:Landroid/view/View;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, v8, Lq/n;->C:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, v8, Lq/n;->C:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, v8, Lq/n;->C:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v2, v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    if-lez v1, :cond_1f

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    if-lez v1, :cond_1f

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v7, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_1f
    iget-object v0, v8, Lq/n;->y:Ljava/util/HashMap;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/l;

    instance-of v2, v1, Lp/j;

    if-eqz v2, :cond_20

    iget-object v2, v8, Lq/n;->q:[D

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_20

    check-cast v1, Lp/j;

    const/4 v3, 0x0

    aget-wide v5, v2, v3

    aget-wide v3, v2, v4

    move/from16 v9, v16

    invoke-virtual {v1, v9}, Lp/l;->a(F)F

    move-result v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_10

    :cond_20
    move/from16 v9, v16

    :goto_10
    move/from16 v16, v9

    goto :goto_f

    :cond_21
    move/from16 v9, v16

    if-eqz v17, :cond_22

    iget-object v0, v8, Lq/n;->q:[D

    const/4 v1, 0x0

    aget-wide v10, v0, v1

    const/4 v1, 0x1

    aget-wide v12, v0, v1

    move-object/from16 v1, v17

    move v2, v9

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lp/q;->a(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)F

    move-result v0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v11, v17

    iget-boolean v0, v11, Lp/q;->d:Z

    or-int v0, v18, v0

    move v12, v0

    goto :goto_11

    :cond_22
    move/from16 v12, v18

    :goto_11
    const/4 v0, 0x1

    :goto_12
    iget-object v1, v8, Lq/n;->j:[Lcom/google/android/material/slider/h;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    aget-object v1, v1, v0

    iget-object v2, v8, Lq/n;->t:[F

    move-wide/from16 v3, v22

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/material/slider/h;->u0(D[F)V

    move-object/from16 v1, v21

    iget-object v5, v1, Lq/u;->o:Ljava/util/LinkedHashMap;

    iget-object v6, v8, Lq/n;->r:[Ljava/lang/String;

    add-int/lit8 v10, v0, -0x1

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/b;

    invoke-static {v5, v7, v2}, Lcom/google/android/material/slider/h;->k1(Ls/b;Landroid/view/View;[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    iget-object v0, v8, Lq/n;->h:Lq/l;

    iget v1, v0, Lq/l;->c:I

    if-nez v1, :cond_29

    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_24

    iget v0, v0, Lq/l;->d:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    :cond_24
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v9, v1

    iget-object v2, v8, Lq/n;->i:Lq/l;

    if-ltz v1, :cond_25

    iget v0, v2, Lq/l;->d:I

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_25
    iget v1, v2, Lq/l;->d:I

    iget v0, v0, Lq/l;->d:I

    if-eq v1, v0, :cond_29

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_26
    move v9, v8

    move-object v1, v10

    move/from16 v18, v12

    move-object v8, v0

    iget v0, v1, Lq/u;->f:F

    iget-object v2, v8, Lq/n;->g:Lq/u;

    iget v3, v2, Lq/u;->f:F

    invoke-static {v3, v0, v9, v0}, Landroidx/activity/b;->a(FFFF)F

    move-result v0

    iget v3, v1, Lq/u;->g:F

    iget v4, v2, Lq/u;->g:F

    invoke-static {v4, v3, v9, v3}, Landroidx/activity/b;->a(FFFF)F

    move-result v3

    iget v4, v1, Lq/u;->h:F

    iget v5, v2, Lq/u;->h:F

    invoke-static {v5, v4, v9, v4}, Landroidx/activity/b;->a(FFFF)F

    move-result v6

    iget v1, v1, Lq/u;->i:F

    iget v2, v2, Lq/u;->i:F

    invoke-static {v2, v1, v9, v1}, Landroidx/activity/b;->a(FFFF)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v0, v11

    float-to-int v12, v0

    add-float/2addr v3, v11

    float-to-int v11, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-float/2addr v3, v10

    float-to-int v3, v3

    sub-int v6, v0, v12

    sub-int v10, v3, v11

    cmpl-float v4, v5, v4

    if-nez v4, :cond_27

    cmpl-float v1, v2, v1

    if-nez v1, :cond_27

    iget-boolean v1, v8, Lq/n;->d:Z

    if-eqz v1, :cond_28

    :cond_27
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v7, v2, v1}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x0

    iput-boolean v1, v8, Lq/n;->d:Z

    :cond_28
    invoke-virtual {v7, v12, v11, v0, v3}, Landroid/view/View;->layout(IIII)V

    move/from16 v12, v18

    :cond_29
    :goto_13
    iget-object v0, v8, Lq/n;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/g;

    instance-of v2, v1, Lp/e;

    if-eqz v2, :cond_2a

    check-cast v1, Lp/e;

    iget-object v2, v8, Lq/n;->q:[D

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-virtual {v1, v9}, Lp/g;->a(F)F

    move-result v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_14

    :cond_2a
    invoke-virtual {v1, v7, v9}, Lp/g;->c(Landroid/view/View;F)V

    goto :goto_14

    :cond_2b
    return v12
.end method

.method public final f(Lq/u;)V
    .locals 4

    iget-object v0, p0, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lq/u;->d(FFFF)V

    return-void
.end method

.method public final h(IIJ)V
    .locals 33

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget v5, v0, Lq/n;->A:I

    iget-object v6, v0, Lq/n;->f:Lq/u;

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    iput v5, v6, Lq/u;->k:I

    :cond_0
    iget-object v5, v0, Lq/n;->h:Lq/l;

    iget v7, v5, Lq/l;->b:F

    iget-object v8, v0, Lq/n;->i:Lq/l;

    iget v9, v8, Lq/l;->b:F

    invoke-static {v7, v9}, Lq/l;->b(FF)Z

    move-result v7

    const-string v9, "alpha"

    if-eqz v7, :cond_1

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v7, v5, Lq/l;->e:F

    iget v10, v8, Lq/l;->e:F

    invoke-static {v7, v10}, Lq/l;->b(FF)Z

    move-result v7

    const-string v10, "elevation"

    if-eqz v7, :cond_2

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v7, v5, Lq/l;->d:I

    iget v11, v8, Lq/l;->d:I

    if-eq v7, v11, :cond_4

    iget v12, v5, Lq/l;->c:I

    if-nez v12, :cond_4

    if-eqz v7, :cond_3

    if-nez v11, :cond_4

    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v7, v5, Lq/l;->f:F

    iget v11, v8, Lq/l;->f:F

    invoke-static {v7, v11}, Lq/l;->b(FF)Z

    move-result v7

    const-string v11, "rotation"

    if-eqz v7, :cond_5

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v7, v5, Lq/l;->p:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v12, "transitionPathRotate"

    if-eqz v7, :cond_6

    iget v7, v8, Lq/l;->p:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v7, v5, Lq/l;->q:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    const-string v13, "progress"

    if-eqz v7, :cond_8

    iget v7, v8, Lq/l;->q:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v7, v5, Lq/l;->g:F

    iget v14, v8, Lq/l;->g:F

    invoke-static {v7, v14}, Lq/l;->b(FF)Z

    move-result v7

    const-string v14, "rotationX"

    if-eqz v7, :cond_a

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v7, v5, Lq/l;->h:F

    iget v15, v8, Lq/l;->h:F

    invoke-static {v7, v15}, Lq/l;->b(FF)Z

    move-result v7

    const-string v15, "rotationY"

    if-eqz v7, :cond_b

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v7, v5, Lq/l;->k:F

    move-object/from16 v16, v3

    iget v3, v8, Lq/l;->k:F

    invoke-static {v7, v3}, Lq/l;->b(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "transformPivotX"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v3, v5, Lq/l;->l:F

    iget v7, v8, Lq/l;->l:F

    invoke-static {v3, v7}, Lq/l;->b(FF)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "transformPivotY"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v3, v5, Lq/l;->i:F

    iget v7, v8, Lq/l;->i:F

    invoke-static {v3, v7}, Lq/l;->b(FF)Z

    move-result v3

    const-string v7, "scaleX"

    if-eqz v3, :cond_e

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v3, v5, Lq/l;->j:F

    move-object/from16 v17, v6

    iget v6, v8, Lq/l;->j:F

    invoke-static {v3, v6}, Lq/l;->b(FF)Z

    move-result v3

    const-string v6, "scaleY"

    if-eqz v3, :cond_f

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v3, v5, Lq/l;->m:F

    move-object/from16 v18, v1

    iget v1, v8, Lq/l;->m:F

    invoke-static {v3, v1}, Lq/l;->b(FF)Z

    move-result v1

    const-string v3, "translationX"

    if-eqz v1, :cond_10

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget v1, v5, Lq/l;->n:F

    move-object/from16 v19, v14

    iget v14, v8, Lq/l;->n:F

    invoke-static {v1, v14}, Lq/l;->b(FF)Z

    move-result v1

    const-string v14, "translationY"

    if-eqz v1, :cond_11

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget v1, v5, Lq/l;->o:F

    iget v8, v8, Lq/l;->o:F

    invoke-static {v1, v8}, Lq/l;->b(FF)Z

    move-result v1

    const-string v8, "translationZ"

    if-eqz v1, :cond_12

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v1, v0, Lq/n;->w:Ljava/util/ArrayList;

    move-object/from16 v20, v5

    iget-object v5, v0, Lq/n;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v15

    move-object/from16 v15, v22

    check-cast v15, Lq/c;

    move-object/from16 v22, v3

    instance-of v3, v15, Lq/i;

    if-eqz v3, :cond_14

    check-cast v15, Lq/i;

    new-instance v3, Lq/u;

    move-object/from16 v30, v14

    iget-object v14, v0, Lq/n;->f:Lq/u;

    move-object/from16 v31, v8

    iget-object v8, v0, Lq/n;->g:Lq/u;

    move-object/from16 v24, v3

    move/from16 v25, p1

    move/from16 v26, p2

    move-object/from16 v27, v15

    move-object/from16 v28, v14

    move-object/from16 v29, v8

    invoke-direct/range {v24 .. v29}, Lq/u;-><init>(IILq/i;Lq/u;Lq/u;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v24, v13

    const-string v13, " KeyPath position \""

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v3, Lq/u;->e:F

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "\" outside of range"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "MotionController"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_13
    move-object/from16 v24, v13

    :goto_1
    neg-int v8, v8

    const/4 v13, -0x1

    add-int/2addr v8, v13

    invoke-virtual {v5, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v3, v15, Lq/i;->e:I

    if-eq v3, v13, :cond_15

    iput v3, v0, Lq/n;->e:I

    goto :goto_2

    :cond_14
    move-object/from16 v31, v8

    move-object/from16 v24, v13

    move-object/from16 v30, v14

    invoke-virtual {v15, v4}, Lq/c;->e(Ljava/util/HashMap;)V

    invoke-virtual {v15, v2}, Lq/c;->c(Ljava/util/HashSet;)V

    :cond_15
    :goto_2
    move-object/from16 v3, v22

    move-object/from16 v15, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v30

    move-object/from16 v8, v31

    goto :goto_0

    :cond_16
    move-object/from16 v22, v3

    move-object/from16 v31, v8

    move-object/from16 v24, v13

    move-object/from16 v30, v14

    move-object/from16 v23, v15

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    const-string v8, "CUSTOM,"

    const/4 v13, 0x1

    if-nez v3, :cond_31

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lq/n;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 p1, v3

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 p2, v13

    move-object/from16 v13, v21

    check-cast v13, Lq/c;

    move-object/from16 v21, v2

    iget-object v2, v13, Lq/c;->d:Ljava/util/HashMap;

    if-nez v2, :cond_17

    goto :goto_5

    :cond_17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/b;

    if-eqz v2, :cond_18

    iget v13, v13, Lq/c;->a:I

    invoke-virtual {v15, v13, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_18
    :goto_5
    move-object/from16 v13, p2

    move-object/from16 v2, v21

    goto :goto_4

    :cond_19
    move-object/from16 v21, v2

    new-instance v2, Lp/i;

    invoke-direct {v2, v14, v15}, Lp/i;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v32, v5

    move-object v5, v2

    move-object/from16 v2, v24

    move-object/from16 v24, v32

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v21, v2

    move-object/from16 p1, v3

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_6
    move-object/from16 v15, v22

    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    :goto_7
    move-object/from16 v24, v5

    :goto_8
    move-object/from16 v5, v19

    goto/16 :goto_c

    :sswitch_0
    const-string v2, "waveOffset"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_6

    :cond_1b
    const/16 v2, 0xf

    goto/16 :goto_9

    :sswitch_1
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v2, 0xe

    goto :goto_9

    :sswitch_2
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_6

    :cond_1d
    const/16 v2, 0xd

    goto :goto_9

    :sswitch_3
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_6

    :cond_1e
    const/16 v2, 0xc

    goto :goto_9

    :sswitch_4
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_6

    :cond_1f
    const/16 v2, 0xb

    goto :goto_9

    :sswitch_5
    const-string v2, "transformPivotY"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_6

    :cond_20
    const/16 v2, 0xa

    goto :goto_9

    :sswitch_6
    const-string v2, "transformPivotX"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_6

    :cond_21
    const/16 v2, 0x9

    goto :goto_9

    :sswitch_7
    const-string v2, "waveVariesBy"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_6

    :cond_22
    const/16 v2, 0x8

    goto :goto_9

    :sswitch_8
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_6

    :cond_23
    const/4 v2, 0x7

    goto :goto_9

    :sswitch_9
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_6

    :cond_24
    const/4 v2, 0x6

    :goto_9
    move-object/from16 v15, v22

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v32, v19

    move/from16 v19, v2

    move-object/from16 v2, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v32

    goto/16 :goto_d

    :sswitch_a
    move-object/from16 v2, v24

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    move-object/from16 v15, v22

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    goto :goto_a

    :cond_25
    const/4 v3, 0x5

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    move-object/from16 v15, v22

    move-object/from16 v13, v30

    move/from16 v19, v3

    move-object/from16 v3, v31

    goto/16 :goto_d

    :sswitch_b
    move-object/from16 v2, v24

    move-object/from16 v3, v31

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_26

    move-object/from16 v15, v22

    move-object/from16 v13, v30

    goto :goto_a

    :cond_26
    const/4 v13, 0x4

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    move-object/from16 v15, v22

    move/from16 v19, v13

    move-object/from16 v13, v30

    goto/16 :goto_d

    :sswitch_c
    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_27

    move-object/from16 v15, v22

    goto :goto_a

    :cond_27
    const/4 v15, 0x3

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    move/from16 v19, v15

    move-object/from16 v15, v22

    goto :goto_d

    :sswitch_d
    move-object/from16 v15, v22

    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_28

    :goto_a
    goto/16 :goto_7

    :cond_28
    const/16 v22, 0x2

    move-object/from16 v24, v5

    goto :goto_b

    :sswitch_e
    move-object/from16 v15, v22

    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v24, v5

    move-object/from16 v5, v23

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_29

    move-object/from16 v23, v5

    goto/16 :goto_8

    :cond_29
    const/16 v22, 0x1

    move-object/from16 v23, v5

    :goto_b
    move-object/from16 v5, v19

    move/from16 v19, v22

    goto :goto_d

    :sswitch_f
    move-object/from16 v15, v22

    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2a

    goto :goto_c

    :cond_2a
    const/16 v19, 0x0

    goto :goto_d

    :goto_c
    const/16 v19, -0x1

    :goto_d
    packed-switch v19, :pswitch_data_0

    move-object/from16 v19, v5

    move-object/from16 v22, v15

    const/4 v5, 0x0

    goto/16 :goto_e

    :pswitch_0
    move-object/from16 v19, v5

    new-instance v5, Lp/h;

    move-object/from16 v22, v15

    const/4 v15, 0x0

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto/16 :goto_e

    :pswitch_1
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    const/4 v5, 0x0

    new-instance v15, Lp/h;

    invoke-direct {v15, v5}, Lp/h;-><init>(I)V

    move-object v5, v15

    goto/16 :goto_e

    :pswitch_2
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/j;

    invoke-direct {v5}, Lp/j;-><init>()V

    goto/16 :goto_e

    :pswitch_3
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x1

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto/16 :goto_e

    :pswitch_4
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x4

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x3

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto/16 :goto_e

    :pswitch_6
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x2

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x0

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_8
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/16 v15, 0x8

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_9
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x7

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_a
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/k;

    invoke-direct {v5}, Lp/k;-><init>()V

    goto :goto_e

    :pswitch_b
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/16 v15, 0xb

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_c
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/16 v15, 0xa

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_d
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/16 v15, 0x9

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_e
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x6

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    goto :goto_e

    :pswitch_f
    move-object/from16 v19, v5

    move-object/from16 v22, v15

    new-instance v5, Lp/h;

    const/4 v15, 0x5

    invoke-direct {v5, v15}, Lp/h;-><init>(I)V

    :goto_e
    if-nez v5, :cond_2b

    goto :goto_f

    :cond_2b
    iput-object v14, v5, Lp/l;->e:Ljava/lang/String;

    iget-object v15, v0, Lq/n;->y:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    const/4 v5, 0x1

    move-object/from16 v31, v3

    move-object/from16 v30, v13

    move-object/from16 v3, p1

    move v13, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v21

    goto/16 :goto_3

    :cond_2c
    move-object/from16 v21, v2

    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v24, v5

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq/c;

    instance-of v15, v14, Lq/e;

    if-eqz v15, :cond_2d

    iget-object v15, v0, Lq/n;->y:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Lq/c;->a(Ljava/util/HashMap;)V

    goto :goto_10

    :cond_2e
    iget-object v5, v0, Lq/n;->y:Ljava/util/HashMap;

    const/4 v14, 0x0

    move-object/from16 v15, v20

    invoke-virtual {v15, v5, v14}, Lq/l;->a(Ljava/util/HashMap;I)V

    iget-object v5, v0, Lq/n;->y:Ljava/util/HashMap;

    const/16 v14, 0x64

    iget-object v15, v0, Lq/n;->i:Lq/l;

    invoke-virtual {v15, v5, v14}, Lq/l;->a(Ljava/util/HashMap;I)V

    iget-object v5, v0, Lq/n;->y:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_2f

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_12

    :cond_2f
    const/4 v15, 0x0

    :goto_12
    move-object/from16 p1, v5

    iget-object v5, v0, Lq/n;->y:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/l;

    if-eqz v5, :cond_30

    invoke-virtual {v5, v15}, Lp/l;->d(I)V

    :cond_30
    move-object/from16 v5, p1

    goto :goto_11

    :cond_31
    move-object/from16 v21, v2

    move-object/from16 v2, v24

    move-object/from16 v13, v30

    move-object/from16 v3, v31

    move-object/from16 v24, v5

    :cond_32
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, v0, Lq/n;->x:Ljava/util/HashMap;

    if-nez v5, :cond_33

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lq/n;->x:Ljava/util/HashMap;

    :cond_33
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v0, Lq/n;->x:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_34

    goto :goto_13

    :cond_34
    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_38

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 p1, v5

    const-string v5, ","

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x1

    aget-object v5, v5, v18

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_14
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_37

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p2, v8

    move-object/from16 v8, v20

    check-cast v8, Lq/c;

    move-object/from16 v20, v4

    iget-object v4, v8, Lq/c;->d:Ljava/util/HashMap;

    if-nez v4, :cond_35

    goto :goto_15

    :cond_35
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/b;

    if-eqz v4, :cond_36

    iget v8, v8, Lq/c;->a:I

    invoke-virtual {v15, v8, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_36
    :goto_15
    move-object/from16 v8, p2

    move-object/from16 v4, v20

    goto :goto_14

    :cond_37
    move-object/from16 v20, v4

    move-object/from16 p2, v8

    new-instance v4, Lp/n;

    invoke-direct {v4, v14, v15}, Lp/n;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object v15, v4

    move-wide/from16 v4, p3

    goto/16 :goto_1f

    :cond_38
    move-object/from16 v20, v4

    move-object/from16 p1, v5

    move-object/from16 p2, v8

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_16
    move-object/from16 v8, v19

    move-object/from16 v4, v22

    goto/16 :goto_18

    :sswitch_10
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_16

    :cond_39
    const/16 v4, 0xb

    goto :goto_17

    :sswitch_11
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_16

    :cond_3a
    const/16 v4, 0xa

    goto :goto_17

    :sswitch_12
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_16

    :cond_3b
    const/16 v4, 0x9

    goto :goto_17

    :sswitch_13
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_16

    :cond_3c
    const/16 v4, 0x8

    goto :goto_17

    :sswitch_14
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_16

    :cond_3d
    const/4 v4, 0x7

    goto :goto_17

    :sswitch_15
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_16

    :cond_3e
    const/4 v4, 0x6

    goto :goto_17

    :sswitch_16
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_16

    :cond_3f
    const/4 v4, 0x5

    goto :goto_17

    :sswitch_17
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_16

    :cond_40
    const/4 v4, 0x4

    goto :goto_17

    :sswitch_18
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_16

    :cond_41
    const/4 v4, 0x3

    :goto_17
    move v15, v4

    move-object/from16 v8, v19

    move-object/from16 v4, v22

    goto :goto_19

    :sswitch_19
    move-object/from16 v4, v22

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    move-object/from16 v8, v19

    :goto_18
    move-object/from16 v5, v23

    goto :goto_1a

    :cond_42
    const/4 v5, 0x2

    move v15, v5

    move-object/from16 v8, v19

    :goto_19
    move-object/from16 v5, v23

    goto :goto_1b

    :sswitch_1a
    move-object/from16 v4, v22

    move-object/from16 v5, v23

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    move-object/from16 v8, v19

    goto :goto_1a

    :cond_43
    const/4 v8, 0x1

    move v15, v8

    move-object/from16 v8, v19

    goto :goto_1b

    :sswitch_1b
    move-object/from16 v8, v19

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_44

    goto :goto_1a

    :cond_44
    const/4 v15, 0x0

    goto :goto_1b

    :goto_1a
    const/4 v15, -0x1

    :goto_1b
    packed-switch v15, :pswitch_data_1

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v8

    move-wide/from16 v4, p3

    const/4 v8, 0x0

    move-object v15, v8

    goto/16 :goto_1f

    :pswitch_10
    new-instance v15, Lp/m;

    move-object/from16 v19, v8

    const/4 v8, 0x0

    invoke-direct {v15, v8}, Lp/m;-><init>(I)V

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_1c
    move-wide/from16 v4, p3

    goto/16 :goto_1e

    :pswitch_11
    move-object/from16 v19, v8

    new-instance v8, Lp/o;

    invoke-direct {v8}, Lp/o;-><init>()V

    goto :goto_1d

    :pswitch_12
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_13
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x2

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_14
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x6

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_15
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x5

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_16
    move-object/from16 v19, v8

    new-instance v8, Lp/p;

    invoke-direct {v8}, Lp/p;-><init>()V

    goto :goto_1d

    :pswitch_17
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/16 v15, 0x9

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_18
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/16 v15, 0x8

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_19
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x7

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_1a
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x4

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    goto :goto_1d

    :pswitch_1b
    move-object/from16 v19, v8

    new-instance v8, Lp/m;

    const/4 v15, 0x3

    invoke-direct {v8, v15}, Lp/m;-><init>(I)V

    :goto_1d
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v15, v8

    goto :goto_1c

    :goto_1e
    iput-wide v4, v15, Lp/q;->e:J

    :goto_1f
    if-nez v15, :cond_45

    goto :goto_20

    :cond_45
    iput-object v14, v15, Lp/q;->b:Ljava/lang/String;

    iget-object v8, v0, Lq/n;->x:Ljava/util/HashMap;

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v4, v20

    goto/16 :goto_13

    :cond_46
    move-object/from16 v20, v4

    move-object/from16 p2, v8

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/c;

    goto :goto_21

    :cond_47
    iget-object v4, v0, Lq/n;->x:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v8, v20

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_48

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_23

    :cond_48
    const/4 v14, 0x0

    :goto_23
    iget-object v15, v0, Lq/n;->x:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/q;

    invoke-virtual {v5, v14}, Lp/q;->c(I)V

    move-object/from16 v20, v8

    goto :goto_22

    :cond_49
    move-object/from16 p2, v8

    :cond_4a
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-array v5, v4, [Lq/u;

    const/4 v8, 0x0

    aput-object v17, v5, v8

    add-int/lit8 v8, v4, -0x1

    iget-object v14, v0, Lq/n;->g:Lq/u;

    aput-object v14, v5, v8

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4b

    iget v8, v0, Lq/n;->e:I

    const/4 v14, -0x1

    if-ne v8, v14, :cond_4b

    const/4 v8, 0x0

    iput v8, v0, Lq/n;->e:I

    :cond_4b
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v14, 0x1

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lq/u;

    add-int/lit8 v18, v14, 0x1

    aput-object v15, v5, v14

    move/from16 v14, v18

    goto :goto_24

    :cond_4c
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iget-object v14, v0, Lq/n;->g:Lq/u;

    iget-object v14, v14, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_25
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v30, v13

    move-object/from16 p1, v14

    move-object/from16 v14, v17

    iget-object v13, v14, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v15}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4d

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, p2

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v21

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4e

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4d
    move-object/from16 v17, v14

    move-object/from16 v14, v21

    :cond_4e
    :goto_26
    move-object/from16 v21, v14

    move-object/from16 v13, v30

    move-object/from16 v14, p1

    goto :goto_25

    :cond_4f
    move-object/from16 v30, v13

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, v0, Lq/n;->r:[Ljava/lang/String;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v0, Lq/n;->s:[I

    const/4 v8, 0x0

    :goto_27
    iget-object v13, v0, Lq/n;->r:[Ljava/lang/String;

    array-length v14, v13

    if-ge v8, v14, :cond_52

    aget-object v13, v13, v8

    iget-object v14, v0, Lq/n;->s:[I

    const/4 v15, 0x0

    aput v15, v14, v8

    const/4 v14, 0x0

    :goto_28
    if-ge v14, v4, :cond_51

    aget-object v15, v5, v14

    iget-object v15, v15, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v13}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_50

    aget-object v15, v5, v14

    iget-object v15, v15, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls/b;

    if-eqz v15, :cond_50

    iget-object v13, v0, Lq/n;->s:[I

    aget v14, v13, v8

    invoke-virtual {v15}, Ls/b;->c()I

    move-result v15

    add-int/2addr v15, v14

    aput v15, v13, v8

    goto :goto_29

    :cond_50
    add-int/lit8 v14, v14, 0x1

    goto :goto_28

    :cond_51
    :goto_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_52
    const/4 v8, 0x0

    aget-object v8, v5, v8

    iget v8, v8, Lq/u;->k:I

    const/4 v14, -0x1

    if-eq v8, v14, :cond_53

    const/4 v8, 0x1

    goto :goto_2a

    :cond_53
    const/4 v8, 0x0

    :goto_2a
    array-length v13, v13

    add-int/lit8 v13, v13, 0x12

    new-array v14, v13, [Z

    const/4 v15, 0x1

    :goto_2b
    if-ge v15, v4, :cond_54

    move-object/from16 v31, v3

    aget-object v3, v5, v15

    add-int/lit8 v17, v15, -0x1

    move-object/from16 v24, v2

    aget-object v2, v5, v17

    move-object/from16 v17, v7

    iget v7, v3, Lq/u;->f:F

    move-object/from16 v18, v6

    iget v6, v2, Lq/u;->f:F

    invoke-static {v7, v6}, Lq/u;->b(FF)Z

    move-result v6

    iget v7, v3, Lq/u;->g:F

    move-object/from16 v20, v11

    iget v11, v2, Lq/u;->g:F

    invoke-static {v7, v11}, Lq/u;->b(FF)Z

    move-result v7

    const/4 v11, 0x0

    aget-boolean v11, v14, v11

    move-object/from16 v21, v10

    iget v10, v3, Lq/u;->e:F

    move-object/from16 v25, v12

    iget v12, v2, Lq/u;->e:F

    invoke-static {v10, v12}, Lq/u;->b(FF)Z

    move-result v10

    or-int/2addr v10, v11

    const/4 v11, 0x0

    aput-boolean v10, v14, v11

    const/4 v10, 0x1

    aget-boolean v11, v14, v10

    or-int/2addr v6, v7

    or-int/2addr v6, v8

    or-int v7, v11, v6

    aput-boolean v7, v14, v10

    const/4 v7, 0x2

    aget-boolean v10, v14, v7

    or-int/2addr v6, v10

    aput-boolean v6, v14, v7

    const/4 v6, 0x3

    aget-boolean v7, v14, v6

    iget v10, v3, Lq/u;->h:F

    iget v11, v2, Lq/u;->h:F

    invoke-static {v10, v11}, Lq/u;->b(FF)Z

    move-result v10

    or-int/2addr v7, v10

    aput-boolean v7, v14, v6

    const/4 v6, 0x4

    aget-boolean v7, v14, v6

    iget v3, v3, Lq/u;->i:F

    iget v2, v2, Lq/u;->i:F

    invoke-static {v3, v2}, Lq/u;->b(FF)Z

    move-result v2

    or-int/2addr v2, v7

    aput-boolean v2, v14, v6

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v11, v20

    move-object/from16 v10, v21

    move-object/from16 v2, v24

    move-object/from16 v12, v25

    move-object/from16 v3, v31

    goto :goto_2b

    :cond_54
    move-object/from16 v24, v2

    move-object/from16 v31, v3

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    move-object/from16 v25, v12

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_2c
    if-ge v3, v13, :cond_56

    aget-boolean v6, v14, v3

    if-eqz v6, :cond_55

    add-int/lit8 v2, v2, 0x1

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_56
    new-array v3, v2, [I

    iput-object v3, v0, Lq/n;->o:[I

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [D

    iput-object v3, v0, Lq/n;->p:[D

    new-array v2, v2, [D

    iput-object v2, v0, Lq/n;->q:[D

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_2d
    if-ge v3, v13, :cond_58

    aget-boolean v6, v14, v3

    if-eqz v6, :cond_57

    iget-object v6, v0, Lq/n;->o:[I

    add-int/lit8 v7, v2, 0x1

    aput v3, v6, v2

    move v2, v7

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_58
    iget-object v2, v0, Lq/n;->o:[I

    array-length v2, v2

    filled-new-array {v4, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    new-array v3, v4, [D

    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v4, :cond_5b

    aget-object v7, v5, v6

    aget-object v8, v2, v6

    iget-object v10, v0, Lq/n;->o:[I

    const/4 v11, 0x6

    new-array v11, v11, [F

    iget v12, v7, Lq/u;->e:F

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v12, v7, Lq/u;->f:F

    const/4 v13, 0x1

    aput v12, v11, v13

    iget v12, v7, Lq/u;->g:F

    const/4 v13, 0x2

    aput v12, v11, v13

    iget v12, v7, Lq/u;->h:F

    const/4 v13, 0x3

    aput v12, v11, v13

    iget v12, v7, Lq/u;->i:F

    const/4 v13, 0x4

    aput v12, v11, v13

    iget v7, v7, Lq/u;->j:F

    const/4 v12, 0x5

    aput v7, v11, v12

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_2f
    array-length v13, v10

    if-ge v7, v13, :cond_5a

    aget v13, v10, v7

    const/4 v14, 0x6

    if-ge v13, v14, :cond_59

    add-int/lit8 v14, v12, 0x1

    aget v13, v11, v13

    move-object v15, v10

    move-object/from16 v26, v11

    float-to-double v10, v13

    aput-wide v10, v8, v12

    move v12, v14

    goto :goto_30

    :cond_59
    move-object v15, v10

    move-object/from16 v26, v11

    :goto_30
    add-int/lit8 v7, v7, 0x1

    move-object v10, v15

    move-object/from16 v11, v26

    goto :goto_2f

    :cond_5a
    aget-object v7, v5, v6

    iget v7, v7, Lq/u;->d:F

    float-to-double v7, v7

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_5b
    const/4 v6, 0x0

    :goto_31
    iget-object v7, v0, Lq/n;->o:[I

    array-length v8, v7

    if-ge v6, v8, :cond_5d

    aget v7, v7, v6

    const/4 v8, 0x6

    if-ge v7, v8, :cond_5c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lq/u;->s:[Ljava/lang/String;

    iget-object v10, v0, Lq/n;->o:[I

    aget v10, v10, v6

    aget-object v8, v8, v10

    const-string v10, " ["

    invoke-static {v7, v8, v10}, Landroidx/activity/b;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_32
    if-ge v8, v4, :cond_5c

    invoke-static {v7}, Landroidx/activity/b;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v10, v2, v8

    aget-wide v11, v10, v6

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_5d
    iget-object v6, v0, Lq/n;->r:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Lcom/google/android/material/slider/h;

    iput-object v6, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    const/4 v6, 0x0

    :goto_33
    iget-object v7, v0, Lq/n;->r:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_65

    aget-object v7, v7, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_34
    if-ge v8, v4, :cond_64

    aget-object v13, v5, v8

    iget-object v13, v13, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_63

    if-nez v12, :cond_5f

    new-array v11, v4, [D

    aget-object v12, v5, v8

    iget-object v12, v12, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls/b;

    if-nez v12, :cond_5e

    const/4 v12, 0x0

    goto :goto_35

    :cond_5e
    invoke-virtual {v12}, Ls/b;->c()I

    move-result v12

    :goto_35
    filled-new-array {v4, v12}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    :cond_5f
    aget-object v13, v5, v8

    iget v14, v13, Lq/u;->d:F

    float-to-double v14, v14

    aput-wide v14, v11, v10

    aget-object v14, v12, v10

    iget-object v13, v13, Lq/u;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls/b;

    if-nez v13, :cond_60

    move/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 p1, v7

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    goto :goto_37

    :cond_60
    invoke-virtual {v13}, Ls/b;->c()I

    move-result v15

    move-object/from16 p1, v7

    const/4 v7, 0x1

    if-ne v15, v7, :cond_62

    invoke-virtual {v13}, Ls/b;->a()F

    move-result v7

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    float-to-double v11, v7

    const/4 v7, 0x0

    aput-wide v11, v14, v7

    :cond_61
    move/from16 v26, v4

    move-object/from16 v27, v5

    goto :goto_37

    :cond_62
    move-object/from16 p2, v11

    move-object/from16 p3, v12

    invoke-virtual {v13}, Ls/b;->c()I

    move-result v7

    new-array v11, v7, [F

    invoke-virtual {v13, v11}, Ls/b;->b([F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_36
    if-ge v12, v7, :cond_61

    add-int/lit8 v15, v13, 0x1

    move/from16 p4, v7

    aget v7, v11, v12

    move/from16 v26, v4

    move-object/from16 v27, v5

    float-to-double v4, v7

    aput-wide v4, v14, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p4

    move v13, v15

    move/from16 v4, v26

    move-object/from16 v5, v27

    goto :goto_36

    :goto_37
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_38

    :cond_63
    move/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 p1, v7

    :goto_38
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, p1

    move/from16 v4, v26

    move-object/from16 v5, v27

    goto/16 :goto_34

    :cond_64
    move/from16 v26, v4

    move-object/from16 v27, v5

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iget-object v7, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    add-int/lit8 v6, v6, 0x1

    iget v8, v0, Lq/n;->e:I

    invoke-static {v8, v4, v5}, Lcom/google/android/material/slider/h;->a0(I[D[[D)Lcom/google/android/material/slider/h;

    move-result-object v4

    aput-object v4, v7, v6

    move/from16 v4, v26

    move-object/from16 v5, v27

    goto/16 :goto_33

    :cond_65
    move/from16 v26, v4

    move-object/from16 v27, v5

    iget-object v4, v0, Lq/n;->j:[Lcom/google/android/material/slider/h;

    iget v5, v0, Lq/n;->e:I

    invoke-static {v5, v3, v2}, Lcom/google/android/material/slider/h;->a0(I[D[[D)Lcom/google/android/material/slider/h;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    aget-object v2, v27, v3

    iget v2, v2, Lq/u;->k:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_67

    move/from16 v4, v26

    new-array v2, v4, [I

    new-array v5, v4, [D

    const/4 v6, 0x2

    filled-new-array {v4, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    const/4 v7, 0x0

    :goto_39
    if-ge v7, v4, :cond_66

    aget-object v8, v27, v7

    iget v10, v8, Lq/u;->k:I

    aput v10, v2, v7

    iget v10, v8, Lq/u;->d:F

    float-to-double v10, v10

    aput-wide v10, v5, v7

    aget-object v10, v6, v7

    iget v11, v8, Lq/u;->f:F

    float-to-double v11, v11

    const/4 v13, 0x0

    aput-wide v11, v10, v13

    iget v8, v8, Lq/u;->g:F

    float-to-double v11, v8

    const/4 v8, 0x1

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_66
    new-instance v4, Ll/b;

    invoke-direct {v4, v2, v5, v6}, Ll/b;-><init>([I[D[[D)V

    iput-object v4, v0, Lq/n;->k:Ll/b;

    :cond_67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lq/n;->z:Ljava/util/HashMap;

    if-eqz v1, :cond_84

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "CUSTOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    new-instance v3, Lp/d;

    invoke-direct {v3}, Lp/d;-><init>()V

    move-object/from16 p1, v2

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v6, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move-object/from16 v12, v30

    move-object/from16 v11, v31

    goto/16 :goto_4b

    :cond_68
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :goto_3b
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    goto/16 :goto_43

    :sswitch_1c
    const-string v3, "waveOffset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_3b

    :cond_69
    const/16 v3, 0xd

    goto :goto_3c

    :sswitch_1d
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_3b

    :cond_6a
    const/16 v3, 0xc

    :goto_3c
    move-object/from16 v5, v25

    goto :goto_3d

    :sswitch_1e
    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_42

    :cond_6b
    const/16 v3, 0xb

    :goto_3d
    move/from16 v16, v3

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_45

    :sswitch_1f
    move-object/from16 v6, v21

    move-object/from16 v5, v25

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6c

    goto :goto_3e

    :cond_6c
    const/16 v3, 0xa

    :goto_3e
    move/from16 v16, v3

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    goto/16 :goto_45

    :sswitch_20
    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    goto :goto_3f

    :cond_6d
    const/16 v7, 0x9

    goto :goto_40

    :sswitch_21
    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    const-string v7, "waveVariesBy"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    :goto_3f
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_41

    :cond_6e
    const/16 v7, 0x8

    :goto_40
    move/from16 v16, v7

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_44

    :sswitch_22
    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f

    move-object/from16 v8, v17

    goto :goto_41

    :cond_6f
    const/4 v8, 0x7

    move/from16 v16, v8

    move-object/from16 v8, v17

    goto :goto_44

    :sswitch_23
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v5, v25

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_70

    :goto_41
    move-object/from16 v15, v19

    :goto_42
    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    :goto_43
    move-object/from16 v12, v30

    move-object/from16 v11, v31

    goto/16 :goto_49

    :cond_70
    const/4 v10, 0x6

    move/from16 v16, v10

    :goto_44
    move-object/from16 v15, v19

    :goto_45
    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    goto :goto_46

    :sswitch_24
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_71

    move-object/from16 v13, v22

    move-object/from16 v12, v30

    move-object/from16 v11, v31

    goto/16 :goto_47

    :cond_71
    const/4 v11, 0x5

    move/from16 v16, v11

    move-object/from16 v15, v19

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    :goto_46
    move-object/from16 v12, v30

    move-object/from16 v11, v31

    goto/16 :goto_4a

    :sswitch_25
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move-object/from16 v11, v31

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_72

    move-object/from16 v13, v22

    move-object/from16 v12, v30

    goto :goto_47

    :cond_72
    const/4 v12, 0x4

    move/from16 v16, v12

    move-object/from16 v15, v19

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v12, v30

    goto/16 :goto_4a

    :sswitch_26
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move-object/from16 v12, v30

    move-object/from16 v11, v31

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_73

    move-object/from16 v13, v22

    goto :goto_47

    :cond_73
    const/4 v13, 0x3

    move/from16 v16, v13

    move-object/from16 v15, v19

    move-object/from16 v13, v22

    goto :goto_48

    :sswitch_27
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v13, v22

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move-object/from16 v12, v30

    move-object/from16 v11, v31

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_74

    :goto_47
    move-object/from16 v15, v19

    move-object/from16 v14, v23

    goto :goto_49

    :cond_74
    const/4 v14, 0x2

    move/from16 v16, v14

    move-object/from16 v15, v19

    :goto_48
    move-object/from16 v14, v23

    goto :goto_4a

    :sswitch_28
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move-object/from16 v12, v30

    move-object/from16 v11, v31

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_75

    move-object/from16 v15, v19

    goto :goto_49

    :cond_75
    const/4 v15, 0x1

    move/from16 v16, v15

    move-object/from16 v15, v19

    goto :goto_4a

    :sswitch_29
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    move-object/from16 v5, v25

    move-object/from16 v12, v30

    move-object/from16 v11, v31

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_76

    goto :goto_49

    :cond_76
    const/16 v16, 0x0

    goto :goto_4a

    :goto_49
    const/16 v16, -0x1

    :goto_4a
    move-object/from16 p1, v2

    packed-switch v16, :pswitch_data_2

    move-object/from16 v20, v3

    const/4 v3, 0x0

    goto/16 :goto_4b

    :pswitch_1c
    new-instance v2, Lp/c;

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lp/c;-><init>(I)V

    move-object v3, v2

    goto/16 :goto_4b

    :pswitch_1d
    move-object/from16 v20, v3

    const/4 v2, 0x0

    new-instance v3, Lp/c;

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto/16 :goto_4b

    :pswitch_1e
    move-object/from16 v20, v3

    new-instance v3, Lp/e;

    invoke-direct {v3}, Lp/e;-><init>()V

    goto/16 :goto_4b

    :pswitch_1f
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_20
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x2

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_21
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_22
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x6

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_23
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x5

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_24
    move-object/from16 v20, v3

    new-instance v3, Lp/f;

    invoke-direct {v3}, Lp/f;-><init>()V

    goto :goto_4b

    :pswitch_25
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/16 v2, 0x9

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_26
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/16 v2, 0x8

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_27
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x7

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_28
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x4

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    goto :goto_4b

    :pswitch_29
    move-object/from16 v20, v3

    new-instance v3, Lp/c;

    const/4 v2, 0x3

    invoke-direct {v3, v2}, Lp/c;-><init>(I)V

    :goto_4b
    if-nez v3, :cond_77

    goto :goto_4c

    :cond_77
    iput-object v4, v3, Lp/g;->b:Ljava/lang/String;

    iget-object v2, v0, Lq/n;->z:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4c
    const/4 v3, -0x1

    move-object/from16 v2, p1

    move-object/from16 v25, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v24, v10

    move-object/from16 v31, v11

    move-object/from16 v30, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v19, v15

    goto/16 :goto_3a

    :cond_78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/c;

    goto :goto_4d

    :cond_79
    iget-object v1, v0, Lq/n;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/g;

    iget-object v3, v2, Lp/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7a

    move-object/from16 p1, v1

    goto/16 :goto_55

    :cond_7a
    new-instance v5, Lk/g;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lk/g;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v5, v4, [D

    const/4 v6, 0x3

    filled-new-array {v4, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    new-instance v7, Ll/f;

    invoke-direct {v7, v4}, Ll/f;-><init>(I)V

    iput-object v7, v2, Lp/g;->a:Ll/f;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_83

    iget-object v2, v2, Lp/g;->a:Ll/f;

    iget-object v3, v2, Ll/f;->c:[D

    array-length v4, v3

    const/4 v7, 0x3

    filled-new-array {v4, v7}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    iget-object v7, v2, Ll/f;->b:[F

    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [D

    iput-object v8, v2, Ll/f;->h:[D

    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [D

    iput-object v8, v2, Ll/f;->i:[D

    const/4 v8, 0x0

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    iget-object v10, v2, Ll/f;->d:[F

    iget-object v13, v2, Ll/f;->a:Ll/i;

    if-lez v9, :cond_7b

    aget v8, v10, v8

    invoke-virtual {v13, v11, v12, v8}, Ll/i;->a(DF)V

    :cond_7b
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-wide v11, v3, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v11, v14

    if-gez v9, :cond_7c

    aget v8, v10, v8

    invoke-virtual {v13, v14, v15, v8}, Ll/i;->a(DF)V

    :cond_7c
    const/4 v8, 0x0

    :goto_4f
    array-length v9, v4

    if-ge v8, v9, :cond_7d

    aget-object v9, v4, v8

    iget-object v11, v2, Ll/f;->e:[F

    aget v11, v11, v8

    float-to-double v11, v11

    const/4 v14, 0x0

    aput-wide v11, v9, v14

    iget-object v11, v2, Ll/f;->f:[F

    aget v11, v11, v8

    float-to-double v11, v11

    const/4 v14, 0x1

    aput-wide v11, v9, v14

    aget v11, v7, v8

    float-to-double v11, v11

    const/4 v14, 0x2

    aput-wide v11, v9, v14

    aget-wide v11, v3, v8

    aget v9, v10, v8

    invoke-virtual {v13, v11, v12, v9}, Ll/i;->a(DF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :cond_7d
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :goto_50
    iget-object v10, v13, Ll/i;->a:[F

    array-length v11, v10

    if-ge v7, v11, :cond_7e

    aget v10, v10, v7

    float-to-double v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_7e
    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    :goto_51
    iget-object v12, v13, Ll/i;->a:[F

    array-length v14, v12

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v7, v14, :cond_7f

    add-int/lit8 v14, v7, -0x1

    aget v16, v12, v14

    aget v12, v12, v7

    add-float v16, v16, v12

    div-float v12, v16, v15

    iget-object v15, v13, Ll/i;->b:[D

    aget-wide v16, v15, v7

    aget-wide v14, v15, v14

    sub-double v16, v16, v14

    float-to-double v14, v12

    mul-double v16, v16, v14

    add-double v10, v16, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_7f
    const/4 v7, 0x0

    :goto_52
    iget-object v12, v13, Ll/i;->a:[F

    array-length v14, v12

    if-ge v7, v14, :cond_80

    aget v14, v12, v7

    move-object/from16 p1, v1

    float-to-double v0, v14

    div-double v16, v8, v10

    mul-double v0, v0, v16

    double-to-float v0, v0

    aput v0, v12, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_52

    :cond_80
    move-object/from16 p1, v1

    iget-object v0, v13, Ll/i;->c:[D

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v1

    const/4 v0, 0x1

    :goto_53
    iget-object v1, v13, Ll/i;->a:[F

    array-length v7, v1

    if-ge v0, v7, :cond_81

    add-int/lit8 v7, v0, -0x1

    aget v8, v1, v7

    aget v1, v1, v0

    add-float/2addr v8, v1

    div-float/2addr v8, v15

    iget-object v1, v13, Ll/i;->b:[D

    aget-wide v9, v1, v0

    aget-wide v11, v1, v7

    sub-double/2addr v9, v11

    iget-object v1, v13, Ll/i;->c:[D

    aget-wide v11, v1, v7

    float-to-double v7, v8

    mul-double/2addr v9, v7

    add-double/2addr v9, v11

    aput-wide v9, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_81
    array-length v0, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_82

    const/4 v0, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/android/material/slider/h;->a0(I[D[[D)Lcom/google/android/material/slider/h;

    move-result-object v1

    iput-object v1, v2, Ll/f;->g:Lcom/google/android/material/slider/h;

    goto :goto_54

    :cond_82
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v1, v2, Ll/f;->g:Lcom/google/android/material/slider/h;

    :goto_54
    invoke-static {v0, v5, v6}, Lcom/google/android/material/slider/h;->a0(I[D[[D)Lcom/google/android/material/slider/h;

    :goto_55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_4e

    :cond_83
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    throw v0

    :cond_84
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_1b
        -0x4a771f65 -> :sswitch_1a
        -0x490b9c39 -> :sswitch_19
        -0x490b9c38 -> :sswitch_18
        -0x490b9c37 -> :sswitch_17
        -0x3bab3dd3 -> :sswitch_16
        -0x3621dfb2 -> :sswitch_15
        -0x3621dfb1 -> :sswitch_14
        -0x266f082 -> :sswitch_13
        -0x42d1a3 -> :sswitch_12
        0x2382115 -> :sswitch_11
        0x589b15e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_29
        -0x4a771f65 -> :sswitch_28
        -0x490b9c39 -> :sswitch_27
        -0x490b9c38 -> :sswitch_26
        -0x490b9c37 -> :sswitch_25
        -0x3bab3dd3 -> :sswitch_24
        -0x3621dfb2 -> :sswitch_23
        -0x3621dfb1 -> :sswitch_22
        -0x2f893320 -> :sswitch_21
        -0x266f082 -> :sswitch_20
        -0x42d1a3 -> :sswitch_1f
        0x2382115 -> :sswitch_1e
        0x589b15e -> :sswitch_1d
        0x94e04ec -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lq/n;->f:Lq/u;

    iget v2, v1, Lq/u;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lq/u;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq/n;->g:Lq/u;

    iget v3, v1, Lq/u;->f:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lq/u;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
