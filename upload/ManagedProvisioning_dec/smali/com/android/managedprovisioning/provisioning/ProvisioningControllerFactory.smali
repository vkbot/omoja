.class public Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;
.super Ljava/lang/Object;
.source "ProvisioningControllerFactory.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method


# virtual methods
.method public createProvisioningController(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance p0, Lcom/android/managedprovisioning/provisioning/DeviceOwnerProvisioningController;

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/managedprovisioning/provisioning/DeviceOwnerProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-object p0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v0, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/Utils;->isFinancedDeviceAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 50
    new-instance p0, Lcom/android/managedprovisioning/provisioning/FinancedDeviceProvisioningController;

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/managedprovisioning/provisioning/FinancedDeviceProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-object p0

    .line 56
    :cond_1
    new-instance p0, Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-object p0
.end method
