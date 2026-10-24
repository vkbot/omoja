.class public final Lcom/google/android/material/slider/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/slider/c;->a:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/material/slider/c;->a:Lcom/google/android/material/slider/BaseSlider;

    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/a;

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v2, Lw0/w;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lw0/w;-><init>(Landroid/view/ViewGroup;I)V

    move-object v1, v2

    :goto_1
    invoke-virtual {v1, v0}, Lw0/w;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
