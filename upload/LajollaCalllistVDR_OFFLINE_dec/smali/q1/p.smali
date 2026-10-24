.class public abstract Lq1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:Lp0/a;

.field public static final D:[I

.field public static final E:[I

.field public static final F:[I

.field public static final G:[I

.field public static final H:[I

.field public static final I:[I


# instance fields
.field public final A:Landroid/graphics/Matrix;

.field public B:Lu/e;

.field public a:Ly1/n;

.field public b:Ly1/h;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Lq1/b;

.field public e:Landroid/graphics/drawable/LayerDrawable;

.field public f:Z

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:Landroid/animation/Animator;

.field public m:Le1/f;

.field public n:Le1/f;

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public final v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final w:Landroidx/appcompat/view/menu/i;

.field public final x:Landroid/graphics/Rect;

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Le1/a;->c:Lp0/a;

    sput-object v0, Lq1/p;->C:Lp0/a;

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lq1/p;->D:[I

    const v0, 0x1010367

    const v2, 0x101009c

    filled-new-array {v0, v2, v1}, [I

    move-result-object v3

    sput-object v3, Lq1/p;->E:[I

    filled-new-array {v2, v1}, [I

    move-result-object v2

    sput-object v2, Lq1/p;->F:[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lq1/p;->G:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lq1/p;->H:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lq1/p;->I:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroidx/appcompat/view/menu/i;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/p;->g:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lq1/p;->p:F

    const/4 v1, 0x0

    iput v1, p0, Lq1/p;->r:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lq1/p;->x:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lq1/p;->y:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lq1/p;->z:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lq1/p;->A:Landroid/graphics/Matrix;

    iput-object p1, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lq1/p;->w:Landroidx/appcompat/view/menu/i;

    new-instance p2, Lcom/google/android/material/internal/r;

    invoke-direct {p2}, Lcom/google/android/material/internal/r;-><init>()V

    new-instance v2, Lq1/n;

    move-object v3, p0

    check-cast v3, Lq1/r;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lq1/n;-><init>(Lq1/r;I)V

    invoke-static {v2}, Lq1/p;->d(Lq1/n;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lq1/p;->D:[I

    invoke-virtual {p2, v4, v2}, Lcom/google/android/material/internal/r;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v2, Lq1/n;

    invoke-direct {v2, v3, v0}, Lq1/n;-><init>(Lq1/r;I)V

    invoke-static {v2}, Lq1/p;->d(Lq1/n;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lq1/p;->E:[I

    invoke-virtual {p2, v4, v2}, Lcom/google/android/material/internal/r;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v2, Lq1/n;

    invoke-direct {v2, v3, v0}, Lq1/n;-><init>(Lq1/r;I)V

    invoke-static {v2}, Lq1/p;->d(Lq1/n;)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lq1/p;->F:[I

    invoke-virtual {p2, v4, v2}, Lcom/google/android/material/internal/r;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v2, Lq1/n;

    invoke-direct {v2, v3, v0}, Lq1/n;-><init>(Lq1/r;I)V

    invoke-static {v2}, Lq1/p;->d(Lq1/n;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lq1/p;->G:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/r;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Lq1/n;

    const/4 v2, 0x3

    invoke-direct {v0, v3, v2}, Lq1/n;-><init>(Lq1/r;I)V

    invoke-static {v0}, Lq1/p;->d(Lq1/n;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lq1/p;->H:[I

    invoke-virtual {p2, v2, v0}, Lcom/google/android/material/internal/r;->a([ILandroid/animation/ValueAnimator;)V

    new-instance v0, Lq1/n;

    invoke-direct {v0, v3, v1}, Lq1/n;-><init>(Lq1/r;I)V

    invoke-static {v0}, Lq1/p;->d(Lq1/n;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lq1/p;->I:[I

    invoke-virtual {p2, v1, v0}, Lcom/google/android/material/internal/r;->a([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Lq1/p;->o:F

    return-void
.end method

.method public static d(Lq1/n;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lq1/p;->C:Lp0/a;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(FLandroid/graphics/Matrix;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lq1/p;->q:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq1/p;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Lq1/p;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lq1/p;->q:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget p0, p0, Lq1/p;->q:I

    int-to-float v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p2, p1, p1, v0, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public final b(Le1/f;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    iget-object p2, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    aput p3, v3, v4

    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "scale"

    invoke-virtual {p1, v3}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v5

    invoke-virtual {v5, v1}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    aput p3, v5, v4

    invoke-static {p2, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p1, v3}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object v1

    invoke-virtual {v1, p3}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lq1/p;->A:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p3}, Lq1/p;->a(FLandroid/graphics/Matrix;)V

    new-instance p4, Lw0/b;

    invoke-direct {p4}, Lw0/b;-><init>()V

    new-instance v1, Lq1/l;

    invoke-direct {v1, p0}, Lq1/l;-><init>(Lq1/p;)V

    new-array p0, v2, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, p0, v4

    invoke-static {p2, p4, v1, p0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "iconScale"

    invoke-virtual {p1, p2}, Le1/f;->f(Ljava/lang/String;)Le1/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Le1/g;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p0, v0}, Le1/b;->a(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public final c(FFF)Landroid/animation/AnimatorSet;
    .locals 15

    move-object v1, p0

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    iget-object v13, v1, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getScaleY()F

    move-result v6

    iget v7, v1, Lq1/p;->p:F

    new-instance v9, Landroid/graphics/Matrix;

    iget-object v0, v1, Lq1/p;->A:Landroid/graphics/Matrix;

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v14, Lq1/m;

    move-object v0, v14

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lq1/m;-><init>(Lq1/p;FFFFFFFLandroid/graphics/Matrix;)V

    invoke-virtual {v12, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Le1/b;->a(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1}, Lv1/c;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->data:I

    :cond_0
    int-to-long v0, v2

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v2, Le1/a;->b:Lp0/b;

    invoke-static {v0, v1, v2}, Ls1/a;->c(Landroid/content/Context;ILp0/b;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v10

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract e()F
.end method

.method public f(Landroid/graphics/Rect;)V
    .locals 4

    iget-boolean v0, p0, Lq1/p;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lq1/p;->k:I

    iget-object v1, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lq1/p;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lq1/p;->e()F

    move-result v1

    iget p0, p0, Lq1/p;->j:F

    add-float/2addr v1, p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public abstract g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j([I)V
.end method

.method public abstract k(FFF)V
.end method

.method public final l()V
    .locals 3

    iget-object p0, p0, Lq1/p;->u:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/i;

    iget-object v1, v0, Lq1/i;->a:Lcom/google/android/material/bottomappbar/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:Ly1/h;

    iget-object v0, v0, Lq1/i;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ly1/h;->o(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m()V
    .locals 6

    iget-object p0, p0, Lq1/p;->u:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/i;

    iget-object v1, v0, Lq1/i;->a:Lcom/google/android/material/bottomappbar/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lq1/i;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget-object v1, v1, Lcom/google/android/material/bottomappbar/b;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/i;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/bottomappbar/i;->h:F

    cmpl-float v3, v3, v2

    iget-object v4, v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:Ly1/h;

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/i;

    move-result-object v3

    iput v2, v3, Lcom/google/android/material/bottomappbar/i;->h:F

    invoke-virtual {v4}, Ly1/h;->invalidateSelf()V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/i;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/bottomappbar/i;->g:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/i;

    move-result-object v1

    cmpg-float v5, v2, v3

    if-ltz v5, :cond_1

    iput v2, v1, Lcom/google/android/material/bottomappbar/i;->g:F

    invoke-virtual {v4}, Ly1/h;->invalidateSelf()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cradleVerticalOffset must be positive."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    :cond_3
    invoke-virtual {v4, v3}, Ly1/h;->o(F)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public n(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lq1/p;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lw1/a;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final o(Ly1/n;)V
    .locals 2

    iput-object p1, p0, Lq1/p;->a:Ly1/n;

    iget-object v0, p0, Lq1/p;->b:Ly1/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    :cond_0
    iget-object v0, p0, Lq1/p;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Ly1/y;

    if-eqz v1, :cond_1

    check-cast v0, Ly1/y;

    invoke-interface {v0, p1}, Ly1/y;->setShapeAppearanceModel(Ly1/n;)V

    :cond_1
    iget-object p0, p0, Lq1/p;->d:Lq1/b;

    if-eqz p0, :cond_2

    iput-object p1, p0, Lq1/b;->o:Ly1/n;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public abstract p()Z
.end method

.method public abstract q()V
.end method

.method public final r()V
    .locals 9

    iget-object v0, p0, Lq1/p;->x:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lq1/p;->f(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lq1/p;->e:Landroid/graphics/drawable/LayerDrawable;

    const-string v2, "Didn\'t initialize content background"

    invoke-static {v1, v2}, Lg0/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq1/p;->p()Z

    move-result v1

    iget-object v2, p0, Lq1/p;->w:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lq1/p;->e:Landroid/graphics/drawable/LayerDrawable;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object p0, v2, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq1/p;->e:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_1

    iget-object v1, v2, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v2, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual {v4, p0, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v2, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v4, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    add-int/2addr p0, v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    add-int/2addr v0, v4

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
