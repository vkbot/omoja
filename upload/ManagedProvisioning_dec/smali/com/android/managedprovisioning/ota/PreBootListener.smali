.class public Lcom/android/managedprovisioning/ota/PreBootListener;
.super Landroid/content/BroadcastReceiver;
.source "PreBootListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/managedprovisioning/ota/OtaController;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/ota/OtaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/managedprovisioning/ota/OtaController;->run()V

    .line 35
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    .line 33
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;

    invoke-direct {v0, p1, p0}, Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 38
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected intent action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
