.class public interface abstract Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;
.super Ljava/lang/Object;
.source "FinalizationControllerLogic.java"


# virtual methods
.method public abstract activityDestroyed(Z)V
.end method

.method public abstract isReadyForFinalization(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
.end method

.method public abstract notifyDpcManagedDeviceOrUser(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I
.end method

.method public abstract notifyDpcManagedProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I
.end method

.method public abstract restoreInstanceState(Landroid/os/Bundle;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method

.method public abstract saveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract shouldFinalizePrimaryProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
.end method
