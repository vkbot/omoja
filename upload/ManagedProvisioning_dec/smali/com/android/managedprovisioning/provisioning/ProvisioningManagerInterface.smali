.class public interface abstract Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;
.super Ljava/lang/Object;
.source "ProvisioningManagerInterface.java"


# virtual methods
.method public abstract cancelProvisioning()V
.end method

.method public abstract maybeStartProvisioning(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method

.method public abstract registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
.end method

.method public abstract unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
.end method
