.class public Lcom/android/managedprovisioning/manageduser/ManagedUserCreationListener;
.super Landroid/content/BroadcastReceiver;
.source "ManagedUserCreationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(IZLandroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;-><init>(IZLandroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/managedprovisioning/manageduser/ManagedUserCreationController;->run()V

    .line 41
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.MANAGED_USER_CREATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    .line 34
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    .line 35
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MANAGED_USER_CREATED received for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    .line 39
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;

    invoke-direct {v2, v0, p2, p1, p0}, Lcom/android/managedprovisioning/manageduser/-$$Lambda$ManagedUserCreationListener$NqkTFp-2DYCg_uNaecO0dwVcqM0;-><init>(IZLandroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 44
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 46
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
