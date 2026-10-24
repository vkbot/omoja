.class public Lcom/android/managedprovisioning/BootReminder;
.super Landroid/content/BroadcastReceiver;
.source "BootReminder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 31
    new-instance p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->checkCrossProfileAppsPermissions()V

    .line 36
    invoke-static {p1}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->resumeProvisioning()V

    return-void
.end method
