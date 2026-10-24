.class Lcom/android/managedprovisioning/common/CrossFadeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CrossFadeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/common/CrossFadeHelper;->getFadeInAnimator()Landroid/animation/ValueAnimator;
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

    .line 72
    iput-object p1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper$2;->this$0:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper$2;->this$0:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-static {p1}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->access$100(Lcom/android/managedprovisioning/common/CrossFadeHelper;)Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/managedprovisioning/common/CrossFadeHelper$2;->this$0:Lcom/android/managedprovisioning/common/CrossFadeHelper;

    invoke-static {p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper;->access$100(Lcom/android/managedprovisioning/common/CrossFadeHelper;)Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;->fadeInCompleted()V

    :cond_0
    return-void
.end method
