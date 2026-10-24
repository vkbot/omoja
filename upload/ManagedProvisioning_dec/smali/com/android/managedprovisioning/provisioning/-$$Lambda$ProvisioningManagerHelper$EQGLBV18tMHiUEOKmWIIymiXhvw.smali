.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    iput p2, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$1:I

    iput p3, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$2:I

    iput-boolean p4, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$0:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;

    iget v1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$1:I

    iget v2, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$2:I

    iget-boolean p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningManagerHelper$EQGLBV18tMHiUEOKmWIIymiXhvw;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->lambda$error$0(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;IIZ)V

    return-void
.end method
