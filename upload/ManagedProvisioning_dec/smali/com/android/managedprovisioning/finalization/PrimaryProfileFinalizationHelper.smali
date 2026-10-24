.class Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;
.super Ljava/lang/Object;
.source "PrimaryProfileFinalizationHelper.java"


# instance fields
.field private final mKeepAccountMigrated:Z

.field private final mManagedUserHandle:Landroid/os/UserHandle;

.field private final mMdmPackageName:Ljava/lang/String;

.field private final mMigratedAccount:Landroid/accounts/Account;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mMigratedAccount:Landroid/accounts/Account;

    .line 49
    iput-boolean p2, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mKeepAccountMigrated:Z

    .line 50
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mMdmPackageName:Ljava/lang/String;

    .line 51
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mManagedUserHandle:Landroid/os/UserHandle;

    .line 52
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method private finishAccountMigration(Landroid/content/Context;Landroid/content/Intent;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;)V
    .locals 3

    .line 86
    iget-boolean v0, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mKeepAccountMigrated:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mMigratedAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;-><init>(Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/managedprovisioning/common/Utils;->removeAccountAsync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/managedprovisioning/common/RemoveAccountListener;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->handleFinalization(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private handleFinalization(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p2}, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;->cleanup()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$finishAccountMigration$0(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->handleFinalization(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method finalizeProvisioningInPrimaryProfile(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;)V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.MANAGED_PROFILE_PROVISIONED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mMdmPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10000020

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mManagedUserHandle:Landroid/os/UserHandle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->mMigratedAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    const-string v2, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    invoke-direct {p0, p1, v0, p2}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->finishAccountMigration(Landroid/content/Context;Landroid/content/Intent;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->handleFinalization(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$finishAccountMigration$0$PrimaryProfileFinalizationHelper(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->lambda$finishAccountMigration$0(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V

    return-void
.end method
