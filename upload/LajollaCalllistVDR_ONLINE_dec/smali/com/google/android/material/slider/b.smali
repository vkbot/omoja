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
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/BaseSlider;

    iget-object v1, v0, Lcom/google/android/material/slider/BaseSlider;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk2/a;

    const v3, 0x3f99999a    # 1.2f

    iput v3, v2, Lk2/a;->M:F

    iput p1, v2, Lk2/a;->K:F

    iput p1, v2, Lk2/a;->L:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e428f5c    # 0.19f

    invoke-static {v3, v4, v5, v4, p1}, Lm1/a;->a(FFFFF)F

    move-result v3

    iput v3, v2, Lk2/a;->N:F

    invoke-virtual {v2}, Lg2/h;->invalidateSelf()V

    goto :goto_0

    :cond_0
    sget-object p1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lg0/a0;->k(Landroid/view/View;)V

    return-void
.end method
