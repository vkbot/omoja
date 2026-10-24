.class Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;
.super Ljava/lang/Object;
.source "SendDpcBroadcastServiceUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method startSendDpcBroadcastService(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 1

    .line 38
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastService;->EXTRA_PROVISIONING_PARAMS:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
