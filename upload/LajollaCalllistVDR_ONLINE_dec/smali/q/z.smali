.class public final Lq/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lq/n;

.field public final d:I

.field public final e:Landroidx/appcompat/view/menu/i;

.field public final f:Landroidx/appcompat/widget/b0;

.field public final g:Landroid/view/animation/Interpolator;

.field public h:Z

.field public i:F

.field public j:F

.field public k:J

.field public final l:Landroid/graphics/Rect;

.field public final m:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b0;Lq/n;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/i;-><init>(I)V

    iput-object v0, p0, Lq/z;->e:Landroidx/appcompat/view/menu/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/z;->h:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lq/z;->l:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lq/z;->m:Z

    iput-object p1, p0, Lq/z;->f:Landroidx/appcompat/widget/b0;

    iput-object p2, p0, Lq/z;->c:Lq/n;

    iput p4, p0, Lq/z;->d:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lq/z;->k:J

    iget-object p2, p1, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/widget/b0;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p6, p0, Lq/z;->g:Landroid/view/animation/Interpolator;

    iput p7, p0, Lq/z;->a:I

    iput p8, p0, Lq/z;->b:I

    const/4 p1, 0x3

    if-ne p5, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/z;->m:Z

    :cond_1
    if-nez p3, :cond_2

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p2, p3

    div-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lq/z;->j:F

    invoke-virtual {p0}, Lq/z;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    iget-boolean v0, p0, Lq/z;->h:Z

    iget-object v6, p0, Lq/z;->e:Landroidx/appcompat/view/menu/i;

    const/4 v7, 0x0

    iget v8, p0, Lq/z;->b:I

    iget v9, p0, Lq/z;->a:I

    const/4 v10, -0x1

    iget-object v11, p0, Lq/z;->f:Landroidx/appcompat/widget/b0;

    iget-object v1, p0, Lq/z;->g:Landroid/view/animation/Interpolator;

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v12, p0, Lq/z;->c:Lq/n;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v13, p0, Lq/z;->k:J

    sub-long v13, v4, v13

    iput-wide v4, p0, Lq/z;->k:J

    iget v0, p0, Lq/z;->i:F

    long-to-double v13, v13

    mul-double/2addr v13, v2

    double-to-float v2, v13

    iget v3, p0, Lq/z;->j:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lq/z;->i:F

    const/4 v13, 0x0

    cmpg-float v0, v0, v13

    if-gez v0, :cond_0

    iput v13, p0, Lq/z;->i:F

    :cond_0
    iget v0, p0, Lq/z;->i:F

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    move v2, v0

    iget-object v0, v12, Lq/n;->b:Landroid/view/View;

    move-object v1, v12

    move-wide v3, v4

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lq/n;->e(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z

    move-result v0

    iget v1, p0, Lq/z;->i:F

    cmpg-float v1, v1, v13

    if-gtz v1, :cond_4

    if-eq v9, v10, :cond_2

    iget-object v1, v12, Lq/n;->b:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    if-eq v8, v10, :cond_3

    iget-object v1, v12, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v1, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    iget-object v1, v11, Landroidx/appcompat/widget/b0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v1, p0, Lq/z;->i:F

    cmpl-float v1, v1, v13

    if-gtz v1, :cond_5

    if-eqz v0, :cond_d

    :cond_5
    iget-object v0, v11, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v13, p0, Lq/z;->k:J

    sub-long v13, v4, v13

    iput-wide v4, p0, Lq/z;->k:J

    iget v0, p0, Lq/z;->i:F

    long-to-double v13, v13

    mul-double/2addr v13, v2

    double-to-float v2, v13

    iget v3, p0, Lq/z;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lq/z;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_7

    iput v0, p0, Lq/z;->i:F

    :cond_7
    if-nez v1, :cond_8

    iget v1, p0, Lq/z;->i:F

    goto :goto_1

    :cond_8
    iget v2, p0, Lq/z;->i:F

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    :goto_1
    move v2, v1

    iget-object v13, v12, Lq/n;->b:Landroid/view/View;

    move-object v1, v12

    move-wide v3, v4

    move-object v5, v13

    invoke-virtual/range {v1 .. v6}, Lq/n;->e(FJLandroid/view/View;Landroidx/appcompat/view/menu/i;)Z

    move-result v1

    iget v2, p0, Lq/z;->i:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_b

    if-eq v9, v10, :cond_9

    iget-object v2, v12, Lq/n;->b:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_9
    if-eq v8, v10, :cond_a

    iget-object v2, v12, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_a
    iget-boolean v2, p0, Lq/z;->m:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Landroidx/appcompat/widget/b0;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v2, p0, Lq/z;->i:F

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    iget-object v0, v11, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_d
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/z;->h:Z

    const/4 v0, -0x1

    iget v1, p0, Lq/z;->d:I

    if-eq v1, v0, :cond_1

    if-nez v1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lq/z;->j:F

    :cond_1
    iget-object v0, p0, Lq/z;->f:Landroidx/appcompat/widget/b0;

    iget-object v0, v0, Landroidx/appcompat/widget/b0;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lq/z;->k:J

    return-void
.end method
