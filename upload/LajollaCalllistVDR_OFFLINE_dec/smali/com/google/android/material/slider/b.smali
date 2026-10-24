.class public final Lcom/google/android/material/slider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/BaseSlider;

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/a;

    const v2, 0x3f99999a    # 1.2f

    iput v2, v1, Lc2/a;->L:F

    iput p1, v1, Lc2/a;->J:F

    iput p1, v1, Lc2/a;->K:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e428f5c    # 0.19f

    invoke-static {v2, v3, v4, v3, p1}, Le1/a;->a(FFFFF)F

    move-result v2

    iput v2, v1, Lc2/a;->M:F

    invoke-virtual {v1}, Ly1/h;->invalidateSelf()V

    goto :goto_0

    :cond_0
    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/z;->k(Landroid/view/View;)V

    return-void
.end method
