.class public final synthetic Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/managedprovisioning/common/RemoveAccountListener;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$0:Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    iput-object p2, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$2:Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;

    iput-object p4, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onAccountRemoved()V
    .locals 3

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$0:Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$2:Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$PrimaryProfileFinalizationHelper$FVShlpbSZlPhT_4qIpwfabjF2QQ;->f$3:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->lambda$finishAccountMigration$0$PrimaryProfileFinalizationHelper(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Landroid/content/Intent;)V

    return-void
.end method
