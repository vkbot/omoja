.class Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;
.super Ljava/lang/Object;
.source "TransitionAnimationHelper.java"

# interfaces
.implements Lcom/android/managedprovisioning/common/CrossFadeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->getCrossFadeHelper()Lcom/android/managedprovisioning/common/CrossFadeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fadeInCompleted()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->access$200(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    .line 149
    invoke-static {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->access$100(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1388

    .line 148
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public fadeOutCompleted()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->stopCurrentAnimatedDrawable()V

    .line 141
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->access$008(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)I

    .line 142
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->access$000(Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->updateUiValues(I)V

    .line 143
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$1;->this$0:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->startCurrentAnimatedDrawable()V

    return-void
.end method
