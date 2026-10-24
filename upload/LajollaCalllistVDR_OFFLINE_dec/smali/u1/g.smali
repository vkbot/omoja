.class public final Lu1/g;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:Landroidx/appcompat/widget/o2;

.field public static final p:Landroidx/appcompat/widget/o2;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Lp0/b;

.field public final g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

.field public h:I

.field public i:F

.field public j:F

.field public k:Lx0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x546

    const/16 v2, 0xa8c

    const/16 v3, 0xfd2

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lu1/g;->l:[I

    const/16 v0, 0x29b

    const/16 v1, 0x7e1

    const/16 v2, 0xd27

    const/16 v3, 0x126d

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lu1/g;->m:[I

    const/16 v0, 0x3e8

    const/16 v1, 0x92e

    const/16 v2, 0xe74

    const/16 v3, 0x13ba

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lu1/g;->n:[I

    new-instance v0, Landroidx/appcompat/widget/o2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lu1/g;->o:Landroidx/appcompat/widget/o2;

    new-instance v0, Landroidx/appcompat/widget/o2;

    const-string v2, "completeEndFraction"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lu1/g;->p:Landroidx/appcompat/widget/o2;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/e;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lu1/g;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/g;->k:Lx0/a;

    iput-object p1, p0, Lu1/g;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    new-instance p1, Lp0/b;

    invoke-direct {p1}, Lp0/b;-><init>()V

    iput-object p1, p0, Lu1/g;->f:Lp0/b;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    iget-object p0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lu1/g;->v()V

    return-void
.end method

.method public final p(Lu1/c;)V
    .locals 0

    iput-object p1, p0, Lu1/g;->k:Lx0/a;

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lu1/g;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v0, Lu1/m;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lu1/g;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lu1/g;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sget-object v2, Lu1/g;->o:Landroidx/appcompat/widget/o2;

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    new-instance v2, Lu1/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lu1/f;-><init>(Lu1/g;I)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lu1/g;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sget-object v1, Lu1/g;->p:Landroidx/appcompat/widget/o2;

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lu1/g;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lu1/g;->e:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lu1/g;->f:Lp0/b;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lu1/g;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lu1/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lu1/f;-><init>(Lu1/g;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {p0}, Lu1/g;->v()V

    iget-object p0, p0, Lu1/g;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/g;->k:Lx0/a;

    return-void
.end method

.method public final v()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lu1/g;->h:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Lu1/g;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v2, v2, Lu1/d;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v3, Lu1/m;

    iget v3, v3, Lu1/k;->j:I

    invoke-static {v2, v3}, Ly1/l;->I(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lu1/g;->j:F

    return-void
.end method
