.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public static u(FFZLandroidx/appcompat/widget/d0;)Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_3

    :cond_2
    iget-object p0, p3, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Le1/f;

    const-string p1, "translationXCurveUpwards"

    invoke-virtual {p0, p1}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p0

    iget-object p1, p3, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p1, Le1/f;

    const-string p2, "translationYCurveUpwards"

    invoke-virtual {p1, p2}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p0, p3, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Le1/f;

    const-string p1, "translationXCurveDownwards"

    invoke-virtual {p0, p1}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p0

    iget-object p1, p3, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p1, Le1/f;

    const-string p2, "translationYCurveDownwards"

    invoke-virtual {p1, p2}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p3, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Le1/f;

    const-string p1, "translationXLinear"

    invoke-virtual {p0, p1}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p0

    iget-object p1, p3, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p1, Le1/f;

    const-string p2, "translationYLinear"

    invoke-virtual {p1, p2}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p1

    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static x(Landroidx/appcompat/widget/d0;Le1/g;F)F
    .locals 6

    iget-wide v0, p1, Le1/g;->a:J

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Le1/f;

    const-string v2, "expansion"

    invoke-virtual {p0, v2}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p0

    iget-wide v2, p0, Le1/g;->a:J

    iget-wide v4, p0, Le1/g;->b:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x11

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-float p0, v2

    iget-wide v0, p1, Le1/g;->b:J

    long-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1}, Le1/g;->b()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    sget-object p1, Le1/a;->a:Landroid/view/animation/LinearInterpolator;

    const/4 p1, 0x0

    invoke-static {p1, p2, p0, p2}, La/a;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lu/d;)V
    .locals 0

    iget p0, p1, Lu/d;->h:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, Lu/d;->h:I

    :cond_0
    return-void
.end method

.method public final t(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/content/Context;Z)Landroidx/appcompat/widget/d0;

    move-result-object v4

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iput v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iput v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p2 .. p2}, Lh0/f0;->i(Landroid/view/View;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Lh0/f0;->i(Landroid/view/View;)F

    move-result v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    if-nez p4, :cond_1

    neg-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    sget-object v7, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v9, [F

    aput v8, v11, v10

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto :goto_0

    :cond_2
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v9, [F

    neg-float v7, v7

    aput v7, v12, v10

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_0
    iget-object v11, v4, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v11, Le1/f;

    const-string v12, "elevation"

    invoke-virtual {v11, v12}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v11

    invoke-virtual {v11, v7}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v11, v4, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v11, Ly1/e;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Ly1/e;)F

    move-result v11

    iget-object v12, v4, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v12, Ly1/e;

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;Ly1/e;)F

    move-result v12

    invoke-static {v11, v12, v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(FFZLandroidx/appcompat/widget/d0;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Le1/g;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Le1/g;

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    if-eqz v3, :cond_4

    if-nez p4, :cond_3

    neg-float v10, v11

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationX(F)V

    neg-float v10, v12

    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v18, v6

    new-array v6, v9, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v6, v17

    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v19, v6

    new-array v6, v9, [F

    aput v16, v6, v17

    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    neg-float v10, v11

    neg-float v11, v12

    invoke-static {v4, v14, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroidx/appcompat/widget/d0;Le1/g;F)F

    move-result v10

    invoke-static {v4, v13, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroidx/appcompat/widget/d0;Le1/g;F)F

    move-result v11

    invoke-virtual {v2, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v15, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v15, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v10, v6

    move-object/from16 v6, v19

    goto :goto_1

    :cond_4
    move-object/from16 v18, v6

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v9, [F

    neg-float v11, v11

    const/16 v17, 0x0

    aput v11, v10, v17

    invoke-static {v2, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v9, [F

    neg-float v12, v12

    aput v12, v11, v17

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    :goto_1
    invoke-virtual {v14, v6}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v13, v10}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v11, v4, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v11, Ly1/e;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Ly1/e;)F

    move-result v11

    iget-object v12, v4, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v12, Ly1/e;

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;Ly1/e;)F

    move-result v12

    invoke-static {v11, v12, v3, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(FFZLandroidx/appcompat/widget/d0;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Le1/g;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Le1/g;

    move/from16 v19, v11

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v20, v12

    new-array v12, v9, [F

    if-eqz v3, :cond_5

    move/from16 v9, v19

    goto :goto_2

    :cond_5
    iget v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    :goto_2
    const/16 v17, 0x0

    aput v9, v12, v17

    invoke-static {v1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move/from16 v21, v6

    const/4 v12, 0x1

    new-array v6, v12, [F

    if-eqz v3, :cond_6

    move/from16 v12, v20

    goto :goto_3

    :cond_6
    iget v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :goto_3
    aput v12, v6, v17

    invoke-static {v1, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v14, v9}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v13, v6}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v6, v2, Lm1/g;

    if-eqz v6, :cond_b

    instance-of v9, v1, Landroid/widget/ImageView;

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    move-object v9, v2

    check-cast v9, Lm1/g;

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v12, 0xff

    if-eqz v3, :cond_a

    if-nez p4, :cond_9

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    sget-object v12, Le1/e;->a:Le1/e;

    const/4 v13, 0x0

    filled-new-array {v13}, [I

    move-result-object v14

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    goto :goto_4

    :cond_a
    sget-object v13, Le1/e;->a:Le1/e;

    filled-new-array {v12}, [I

    move-result-object v12

    invoke-static {v11, v13, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    :goto_4
    new-instance v13, Lf1/a;

    const/4 v14, 0x2

    invoke-direct {v13, v14, v0, v2}, Lf1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v13, v4, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v13, Le1/f;

    const-string v14, "iconFade"

    invoke-virtual {v13, v14}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v13

    invoke-virtual {v13, v12}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lh0/r0;

    const/4 v13, 0x1

    invoke-direct {v12, v0, v9, v11, v13}, Lh0/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v9, v18

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v9, v18

    :goto_6
    if-nez v6, :cond_c

    move/from16 v18, v6

    move-object v1, v9

    goto/16 :goto_9

    :cond_c
    move-object v11, v2

    check-cast v11, Lm1/g;

    iget-object v12, v4, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v12, Ly1/e;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v13, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v7, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;Ly1/e;)F

    move-result v12

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v15, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget v13, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    iget-object v13, v4, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v13, Ly1/e;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    move/from16 v18, v6

    iget v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v7, v14, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;Ly1/e;)F

    move-result v6

    neg-float v6, v6

    const/4 v13, 0x0

    invoke-virtual {v15, v13, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget v7, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v7}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v15, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j(Landroid/graphics/Rect;)V

    :cond_d
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, v4, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v8, Le1/f;

    const-string v13, "expansion"

    invoke-virtual {v8, v13}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v8

    if-eqz v3, :cond_11

    if-nez p4, :cond_e

    new-instance v15, Lm1/f;

    invoke-direct {v15, v12, v6, v7}, Lm1/f;-><init>(FFF)V

    invoke-interface {v11, v15}, Lm1/g;->setRevealInfo(Lm1/f;)V

    :cond_e
    if-eqz p4, :cond_f

    invoke-interface {v11}, Lm1/g;->getRevealInfo()Lm1/f;

    move-result-object v7

    iget v7, v7, Lm1/f;->c:F

    :cond_f
    move/from16 v15, v21

    invoke-static {v12, v6, v15, v10}, Ly1/l;->V(FFFF)F

    move-result v10

    invoke-static {v11, v12, v6, v10}, Ly1/l;->P(Lm1/g;FFF)Landroid/animation/AnimatorSet;

    move-result-object v10

    new-instance v15, Lw0/m;

    const/4 v13, 0x1

    invoke-direct {v15, v13, v0, v11}, Lw0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v13, v8, Le1/g;->a:J

    float-to-int v0, v12

    float-to-int v6, v6

    move-object v15, v9

    move-object/from16 v22, v10

    const-wide/16 v9, 0x0

    cmp-long v12, v13, v9

    if-lez v12, :cond_10

    invoke-static {v2, v0, v6, v7, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v20, v11

    move-object/from16 v10, v22

    goto/16 :goto_8

    :cond_11
    move-object v15, v9

    invoke-interface {v11}, Lm1/g;->getRevealInfo()Lm1/f;

    move-result-object v0

    iget v0, v0, Lm1/f;->c:F

    invoke-static {v11, v12, v6, v7}, Ly1/l;->P(Lm1/g;FFF)Landroid/animation/AnimatorSet;

    move-result-object v10

    iget-wide v13, v8, Le1/g;->a:J

    float-to-int v9, v12

    float-to-int v6, v6

    move-object/from16 p0, v10

    move-object v12, v11

    const-wide/16 v10, 0x0

    cmp-long v20, v13, v10

    if-lez v20, :cond_12

    invoke-static {v2, v9, v6, v0, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, v4, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Le1/f;

    iget-object v0, v0, Le1/f;->a:Lk/j;

    iget v13, v0, Lk/j;->c:I

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_13

    invoke-virtual {v0, v14}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    check-cast v0, Le1/g;

    move-object/from16 v20, v12

    move/from16 v22, v13

    iget-wide v12, v0, Le1/g;->a:J

    iget-wide v0, v0, Le1/g;->b:J

    add-long/2addr v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, v20

    move-object/from16 v0, v21

    move/from16 v13, v22

    goto :goto_7

    :cond_13
    move-object/from16 v20, v12

    iget-wide v0, v8, Le1/g;->a:J

    iget-wide v12, v8, Le1/g;->b:J

    add-long/2addr v0, v12

    cmp-long v12, v0, v10

    if-gez v12, :cond_14

    invoke-static {v2, v9, v6, v7, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v10, v0

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v10, p0

    :goto_8
    invoke-virtual {v8, v10}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/appcompat/widget/e;

    const/4 v1, 0x3

    move-object/from16 v6, v20

    invoke-direct {v0, v1, v6}, Landroidx/appcompat/widget/e;-><init>(ILjava/lang/Object;)V

    move-object v1, v15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    if-nez v18, :cond_15

    goto :goto_c

    :cond_15
    move-object v0, v2

    check-cast v0, Lm1/g;

    sget-object v6, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, Lh0/f0;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    :goto_a
    const v7, 0xffffff

    and-int/2addr v7, v6

    if-eqz v3, :cond_18

    if-nez p4, :cond_17

    invoke-interface {v0, v6}, Lm1/g;->setCircularRevealScrimColor(I)V

    :cond_17
    sget-object v6, Lm1/e;->a:Lm1/e;

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_b

    :cond_18
    sget-object v7, Lm1/e;->a:Lm1/e;

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-static {v0, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_b
    sget-object v6, Le1/c;->a:Le1/c;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v6, v4, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v6, Le1/f;

    const-string v7, "color"

    invoke-virtual {v6, v7}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v6

    invoke-virtual {v6, v0}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    goto :goto_f

    :cond_19
    sget v6, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1a

    instance-of v0, v6, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_e

    :cond_1a
    instance-of v6, v2, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v6, :cond_1c

    instance-of v6, v2, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v6, :cond_1b

    goto :goto_d

    :cond_1b
    if-eqz v0, :cond_1d

    move-object v7, v2

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_e

    :cond_1c
    :goto_d
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1d

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    :cond_1d
    :goto_e
    if-nez v7, :cond_1e

    :goto_f
    const/4 v9, 0x0

    goto :goto_11

    :cond_1e
    if-eqz v3, :cond_20

    if-nez p4, :cond_1f

    sget-object v0, Le1/d;->a:Le1/d;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Le1/d;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    sget-object v0, Le1/d;->a:Le1/d;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v6, v9

    invoke-static {v7, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_10

    :cond_20
    const/4 v6, 0x1

    const/4 v9, 0x0

    sget-object v0, Le1/d;->a:Le1/d;

    new-array v6, v6, [F

    const/4 v8, 0x0

    aput v8, v6, v9

    invoke-static {v7, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_10
    iget-object v4, v4, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v4, Le1/f;

    const-string v6, "contentFade"

    invoke-virtual {v4, v6}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v5}, Le1/b;->a(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    new-instance v4, Ld2/b;

    move-object/from16 v5, p1

    invoke-direct {v4, v3, v2, v5}, Ld2/b;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v10, v9

    :goto_12
    if-ge v10, v2, :cond_21

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_21
    return-object v0
.end method

.method public final v(Landroid/view/View;Landroid/view/View;Ly1/e;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    return p0
.end method

.method public final w(Landroid/view/View;Landroid/view/View;Ly1/e;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    return p0
.end method

.method public final y(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public abstract z(Landroid/content/Context;Z)Landroidx/appcompat/widget/d0;
.end method
