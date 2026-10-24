.class public final synthetic Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;->f$0:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    iput p2, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;->f$0:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    iget p0, p0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->lambda$cleanup$0$AbstractProvisioningController(I)V

    return-void
.end method
