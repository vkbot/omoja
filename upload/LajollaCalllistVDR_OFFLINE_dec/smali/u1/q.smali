.class public final Lu1/q;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:Landroidx/appcompat/widget/o2;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:[Landroid/view/animation/Interpolator;

.field public final g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

.field public h:I

.field public i:Z

.field public j:F

.field public k:Lx0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x215

    const/16 v1, 0x237

    const/16 v2, 0x352

    const/16 v3, 0x2ee

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lu1/q;->l:[I

    const/16 v0, 0x4f3

    const/16 v1, 0x3e8

    const/16 v2, 0x14d

    const/4 v3, 0x0

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lu1/q;->m:[I

    new-instance v0, Landroidx/appcompat/widget/o2;

    const/16 v1, 0x10

    const-class v2, Ljava/lang/Float;

    const-string v3, "animationFraction"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lu1/q;->n:Landroidx/appcompat/widget/o2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/e;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lu1/q;->h:I

    const/4 v2, 0x0

    iput-object v2, p0, Lu1/q;->k:Lx0/a;

    iput-object p2, p0, Lu1/q;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    sget v2, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_head_interpolator:I

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    sget v1, Lcom/google/android/material/R$animator;->linear_indeterminate_line1_tail_interpolator:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    sget v1, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_head_interpolator:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    sget v0, Lcom/google/android/material/R$animator;->linear_indeterminate_line2_tail_interpolator:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lu1/q;->f:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    iget-object p0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lu1/q;->v()V

    return-void
.end method

.method public final p(Lu1/c;)V
    .locals 0

    iput-object p1, p0, Lu1/q;->k:Lx0/a;

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu1/q;->c()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v0, Lu1/m;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lu1/q;->j:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lu1/q;->j:F

    sub-float/2addr v3, v1

    const/high16 v1, 0x44e10000    # 1800.0f

    mul-float/2addr v3, v1

    float-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 8

    iget-object v0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    sget-object v1, Lu1/q;->n:Landroidx/appcompat/widget/o2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x708

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    new-instance v6, Lu1/p;

    invoke-direct {v6, p0, v2}, Lu1/p;-><init>(Lu1/q;I)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v6, v0, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lu1/q;->e:Landroid/animation/ObjectAnimator;

    new-instance v2, Lu1/p;

    invoke-direct {v2, p0, v0}, Lu1/p;-><init>(Lu1/q;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {p0}, Lu1/q;->v()V

    iget-object p0, p0, Lu1/q;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/q;->k:Lx0/a;

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lu1/q;->h:I

    iget-object v1, p0, Lu1/q;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v1, v1, Lu1/d;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v2, Lu1/m;

    iget v2, v2, Lu1/k;->j:I

    invoke-static {v1, v2}, Ly1/l;->I(II)I

    move-result v1

    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast p0, [I

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    return-void
.end method
