.class public final synthetic Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/ota/OtaController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/android/managedprovisioning/model/ProvisioningParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/ota/OtaController;ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$0:Lcom/android/managedprovisioning/ota/OtaController;

    iput p2, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$1:I

    iput-object p3, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$3:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$0:Lcom/android/managedprovisioning/ota/OtaController;

    iget v1, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$1:I

    iget-object v2, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$2:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;->f$3:Lcom/android/managedprovisioning/model/ProvisioningParams;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/managedprovisioning/ota/OtaController;->lambda$addManagedProfileTasks$1$OtaController(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V

    return-void
.end method
