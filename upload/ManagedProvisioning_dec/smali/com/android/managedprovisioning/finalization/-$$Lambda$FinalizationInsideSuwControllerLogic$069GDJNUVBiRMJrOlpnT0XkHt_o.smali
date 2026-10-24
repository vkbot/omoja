.class public final synthetic Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;

.field public final synthetic f$1:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$0:Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;

    iput-object p2, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$1:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iput-object p3, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$0:Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$1:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->lambda$getDpcIntentSender$0$FinalizationInsideSuwControllerLogic(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)V

    return-void
.end method
