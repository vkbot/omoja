.class public Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DpcReceivedSuccessReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;

.field private final mHelper:Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;


# direct methods
.method constructor <init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Z)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    iput-object p6, p0, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;->mCallback:Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;

    .line 59
    new-instance p6, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;-><init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;Z)V

    iput-object p6, p0, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;->mHelper:Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Z)V
    .locals 8

    .line 50
    new-instance v5, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v5}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;-><init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "ACTION_PROFILE_PROVISIONING_COMPLETE broadcast received by mdm"

    .line 65
    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;->mHelper:Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;->mCallback:Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;

    invoke-virtual {p2, p1, p0}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->finalizeProvisioningInPrimaryProfile(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;)V

    return-void
.end method
