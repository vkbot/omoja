.class public final Lc2/o;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"


# static fields
.field public static final j:Landroidx/appcompat/widget/r2;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public final e:Lo0/b;

.field public final f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

.field public g:I

.field public h:Z

.field public i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/r2;

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Float;

    const-string v3, "animationFraction"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/r2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lc2/o;->j:Landroidx/appcompat/widget/r2;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/e;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lc2/o;->g:I

    iput-object p1, p0, Lc2/o;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    new-instance p1, Lo0/b;

    invoke-direct {p1}, Lo0/b;-><init>()V

    iput-object p1, p0, Lc2/o;->e:Lo0/b;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lc2/o;->v()V

    return-void
.end method

.method public final p(Lc2/c;)V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sget-object v1, Lc2/o;->j:Landroidx/appcompat/widget/r2;

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroidx/appcompat/widget/e;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {p0}, Lc2/o;->v()V

    iget-object v0, p0, Lc2/o;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final u()V
    .locals 0

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/o;->h:Z

    iput v0, p0, Lc2/o;->g:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p0, Lc2/o;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v1, v1, Lc2/d;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v2, Lc2/m;

    iget v2, v2, Lc2/k;->k:I

    invoke-static {v1, v2}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
