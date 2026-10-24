.class public Lcom/android/managedprovisioning/preprovisioning/PostEncryptionActivity;
.super Landroid/app/Activity;
.source "PostEncryptionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->resumeProvisioning()V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
