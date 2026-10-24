.class public abstract Lu1/k;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final k:Landroidx/appcompat/widget/o2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu1/d;

.field public c:Lu1/a;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Ljava/util/ArrayList;

.field public g:Z

.field public h:F

.field public final i:Landroid/graphics/Paint;

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/o2;

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Float;

    const-string v3, "growFraction"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lu1/k;->k:Landroidx/appcompat/widget/o2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu1/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lu1/k;->i:Landroid/graphics/Paint;

    iput-object p1, p0, Lu1/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lu1/k;->b:Lu1/d;

    new-instance p1, Lu1/a;

    invoke-direct {p1}, Lu1/a;-><init>()V

    iput-object p1, p0, Lu1/k;->c:Lu1/a;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lu1/k;->setAlpha(I)V

    return-void
.end method

.method public static synthetic a(Lu1/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    return-void
.end method


# virtual methods
.method public final b()F
    .locals 4

    iget-object v0, p0, Lu1/k;->b:Lu1/d;

    iget v1, v0, Lu1/d;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    iget v0, v0, Lu1/d;->f:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    iget p0, p0, Lu1/k;->h:F

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final e(ZZZ)Z
    .locals 3

    iget-object v0, p0, Lu1/k;->c:Lu1/a;

    iget-object v1, p0, Lu1/k;->a:Landroid/content/Context;

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
    invoke-virtual {p0, p1, p2, p3}, Lu1/k;->f(ZZZ)Z

    move-result p0

    return p0
.end method

.method public f(ZZZ)Z
    .locals 7

    iget-object v0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    sget-object v1, Lu1/k;->k:Landroidx/appcompat/widget/o2;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x2

    if-nez v0, :cond_2

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    sget-object v6, Le1/a;->b:Lp0/b;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot set showAnimator while the current showAnimator is running."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object v0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    new-instance v6, Lu1/j;

    invoke-direct {v6, p0, v2}, Lu1/j;-><init>(Lu1/k;I)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object v0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    const/4 v6, 0x1

    if-nez v0, :cond_5

    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    sget-object v1, Le1/a;->b:Lp0/b;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot set hideAnimator while the current hideAnimator is running."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iput-object v0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lu1/j;

    invoke-direct {v1, p0, v6}, Lu1/j;-><init>(Lu1/k;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    return v2

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lu1/k;->d:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lu1/k;->e:Landroid/animation/ValueAnimator;

    :goto_2
    if-nez p3, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    :cond_8
    iget-boolean p2, p0, Lu1/k;->g:Z

    iput-boolean v6, p0, Lu1/k;->g:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-boolean p2, p0, Lu1/k;->g:Z

    :goto_3
    invoke-super {p0, p1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

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
    iget-object v1, p0, Lu1/k;->b:Lu1/d;

    if-eqz p1, :cond_d

    iget p1, v1, Lu1/d;->e:I

    if-eqz p1, :cond_e

    :goto_6
    move v2, v6

    goto :goto_7

    :cond_d
    iget p1, v1, Lu1/d;->f:I

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v2, :cond_f

    iget-boolean p1, p0, Lu1/k;->g:Z

    iput-boolean v6, p0, Lu1/k;->g:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-boolean p1, p0, Lu1/k;->g:Z

    return p3

    :cond_f
    if-nez p2, :cond_11

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result p0

    if-nez p0, :cond_10

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

.method public final g(Lu1/c;)V
    .locals 1

    iget-object v0, p0, Lu1/k;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lu1/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lu1/k;->f:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lu1/k;->j:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lu1/k;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lu1/k;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lu1/k;->j:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lu1/k;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lu1/k;->e(ZZZ)Z

    move-result p0

    return p0
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lu1/k;->f(ZZZ)Z

    return-void
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lu1/k;->f(ZZZ)Z

    return-void
.end method
