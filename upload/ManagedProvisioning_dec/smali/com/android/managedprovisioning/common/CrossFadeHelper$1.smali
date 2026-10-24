.class Lcom/android/managedprovisioning/common/CrossFadeHelper$1;
.super Ljava/lang/Object;
.source "CrossFadeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/common/CrossFadeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/common/CrossFadeHelper;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/common/CrossFadeHelper;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper$1;->this$0:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 48
    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper$1;->this$0:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-static {p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->access$000(Lcom/android/managedprovisioning/common/CrossFadeHelper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
