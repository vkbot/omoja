.class final Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;
.super Ljava/lang/Object;
.source "TransitionAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProvisioningModeWrapper"
.end annotation


# instance fields
.field final summary:I

.field final transitions:[Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;


# direct methods
.method constructor <init>([Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;I)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;->transitions:[Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionScreenWrapper;

    .line 281
    iput p2, p0, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$ProvisioningModeWrapper;->summary:I

    return-void
.end method
