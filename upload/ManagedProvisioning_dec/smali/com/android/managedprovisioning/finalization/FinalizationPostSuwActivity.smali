.class public Lcom/android/managedprovisioning/finalization/FinalizationPostSuwActivity;
.super Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;
.source "FinalizationPostSuwActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;
    .locals 2

    .line 35
    new-instance v0, Lcom/android/managedprovisioning/finalization/FinalizationController;

    new-instance v1, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/finalization/FinalizationController;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;)V

    return-object v0
.end method

.method protected onFinalizationCompletedWithChildActivityLaunched()V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->getFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->commitFinalizedState()V

    return-void
.end method
