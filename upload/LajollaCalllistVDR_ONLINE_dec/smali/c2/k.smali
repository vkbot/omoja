.class public abstract Lc2/k;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final l:Landroidx/appcompat/widget/r2;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lc2/d;

.field public d:Lc2/a;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Landroid/animation/ValueAnimator;

.field public g:Ljava/util/ArrayList;

.field public h:Z

.field public i:F

.field public final j:Landroid/graphics/Paint;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/r2;

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Float;

    const-string v3, "growFraction"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/r2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lc2/k;->l:Landroidx/appcompat/widget/r2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc2/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc2/k;->j:Landroid/graphics/Paint;

    iput-object p1, p0, Lc2/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lc2/k;->c:Lc2/d;

    new-instance p1, Lc2/a;

    invoke-direct {p1}, Lc2/a;-><init>()V

    iput-object p1, p0, Lc2/k;->d:Lc2/a;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lc2/k;->setAlpha(I)V

    return-void
.end method

.method public static synthetic a(Lc2/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    return-void
.end method


# virtual methods
.method public final b()F
    .locals 4

    iget-object v0, p0, Lc2/k;->c:Lc2/d;

    iget v1, v0, Lc2/d;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    iget v0, v0, Lc2/d;->f:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_2
    iget v0, p0, Lc2/k;->i:F

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final e(ZZZ)Z
    .locals 3

    iget-object v0, p0, Lc2/k;->d:Lc2/a;

    iget-object v1, p0, Lc2/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lc2/k;->f(ZZZ)Z

    move-result p1

    return p1
.end method

.method public f(ZZZ)Z
    .locals 7

    iget-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    sget-object v1, Lc2/k;->l:Landroidx/appcompat/widget/r2;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x2

    if-nez v0, :cond_2

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    sget-object v6, Lm1/a;->b:Lo0/b;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set showAnimator while the current showAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    new-instance v6, Lc2/j;

    invoke-direct {v6, p0, v2}, Lc2/j;-><init>(Lc2/k;I)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    const/4 v6, 0x1

    if-nez v0, :cond_5

    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    sget-object v1, Lm1/a;->b:Lo0/b;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set hideAnimator while the current hideAnimator is running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iput-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lc2/j;

    invoke-direct {v1, p0, v6}, Lc2/j;-><init>(Lc2/k;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    return v2

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lc2/k;->e:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lc2/k;->f:Landroid/animation/ValueAnimator;

    :goto_2
    if-nez p3, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    :cond_8
    iget-boolean p2, p0, Lc2/k;->h:Z

    iput-boolean v6, p0, Lc2/k;->h:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-boolean p2, p0, Lc2/k;->h:Z

    :goto_3
    invoke-super {p0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_a

    return v2

    :cond_a
    if-eqz p1, :cond_c

    invoke-super {p0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_4

    :cond_b
    move p3, v2

    goto :goto_5

    :cond_c
    :goto_4
    move p3, v6

    :goto_5
    iget-object v1, p0, Lc2/k;->c:Lc2/d;

    if-eqz p1, :cond_d

    iget p1, v1, Lc2/d;->e:I

    if-eqz p1, :cond_e

    :goto_6
    move v2, v6

    goto :goto_7

    :cond_d
    iget p1, v1, Lc2/d;->f:I

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v2, :cond_f

    iget-boolean p1, p0, Lc2/k;->h:Z

    iput-boolean v6, p0, Lc2/k;->h:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-boolean p1, p0, Lc2/k;->h:Z

    return p3

    :cond_f
    if-nez p2, :cond_11

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_9

    :cond_11
    :goto_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_9
    return p3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final g(Lc2/c;)V
    .locals 1

    iget-object v0, p0, Lc2/k;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc2/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc2/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lc2/k;->g:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lc2/k;->k:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lc2/k;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc2/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lc2/k;->k:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lc2/k;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc2/k;->e(ZZZ)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lc2/k;->f(ZZZ)Z

    return-void
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lc2/k;->f(ZZZ)Z

    return-void
.end method
