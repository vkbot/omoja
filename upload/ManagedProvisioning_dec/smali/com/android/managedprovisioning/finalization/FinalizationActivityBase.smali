.class public abstract Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;
.super Landroid/app/Activity;
.source "FinalizationActivityBase.java"


# instance fields
.field private mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;
.end method

.method protected getFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 43
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->createFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    if-eqz p1, :cond_1

    const-string v0, "controller_state"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/finalization/FinalizationController;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->provisioningFinalized()V

    .line 63
    iget-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/finalization/FinalizationController;->getProvisioningFinalizedResult()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->onFinalizationCompletedWithChildActivityLaunched()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-eq v0, p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/finalization/FinalizationController;->commitFinalizedState()V

    :cond_3
    const/4 p1, -0x1

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/finalization/FinalizationController;->activityDestroyed(Z)V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected abstract onFinalizationCompletedWithChildActivityLaunched()V
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "controller_state"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->mFinalizationController:Lcom/android/managedprovisioning/finalization/FinalizationController;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
