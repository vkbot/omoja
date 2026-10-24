.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

.field public final synthetic f$1:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;->f$1:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    iput-object p3, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;->f$1:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$UbRcOTSnxrm0r2UqpZUdRetuE5E;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->lambda$postCallbackToUiHandler$2$ProvisioningManagerHelper(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;Ljava/lang/Runnable;)V

    return-void
.end method
