.class interface abstract Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;
.super Ljava/lang/Object;
.source "PreProvisioningController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Ui"
.end annotation


# virtual methods
.method public abstract abortProvisioning()V
.end method

.method public abstract initiateUi(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;)V
.end method

.method public abstract prepareAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method

.method public abstract prepareFinancedDeviceFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method

.method public abstract requestEncryption(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method

.method public abstract requestWifiPick()V
.end method

.method public abstract showCurrentLauncherInvalid()V
.end method

.method public abstract showDeleteManagedProfileDialog(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end method

.method public abstract showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V
.end method

.method public abstract showFactoryResetDialog(Ljava/lang/Integer;I)V
.end method

.method public abstract startProvisioning(ILcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method
