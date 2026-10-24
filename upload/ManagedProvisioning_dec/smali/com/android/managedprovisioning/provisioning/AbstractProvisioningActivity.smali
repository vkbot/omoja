.class public abstract Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "AbstractProvisioningActivity.java"

# interfaces
.implements Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;
.implements Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;


# static fields
.field static final CANCEL_PROVISIONING_DIALOG_OK:Ljava/lang/String; = "CancelProvisioningDialogOk"

.field static final CANCEL_PROVISIONING_DIALOG_RESET:Ljava/lang/String; = "CancelProvisioningDialogReset"

.field static final ERROR_DIALOG_OK:Ljava/lang/String; = "ErrorDialogOk"

.field static final ERROR_DIALOG_RESET:Ljava/lang/String; = "ErrorDialogReset"


# instance fields
.field protected mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field protected mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

.field protected mState:I


# direct methods
.method protected constructor <init>(Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method private isAnyDialogAdded()Z
    .locals 1

    const-string v0, "ErrorDialogOk"

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->isDialogAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ErrorDialogReset"

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->isDialogAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CancelProvisioningDialogOk"

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->isDialogAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CancelProvisioningDialogReset"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->isDialogAdded(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onProvisioningAborted()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected abstract decideCancelProvisioningDialog()V
.end method

.method public error(IIZ)V
    .locals 1

    .line 148
    new-instance v0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;-><init>()V

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 150
    invoke-virtual {v0, p2}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const/4 p1, 0x0

    .line 151
    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    if-eqz p3, :cond_0

    const p1, 0x7f0d00b1

    goto :goto_0

    :cond_0
    const p1, 0x104000a

    .line 152
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    if-eqz p3, :cond_1

    const-string p1, "ErrorDialogReset"

    goto :goto_1

    :cond_1
    const-string p1, "ErrorDialogOk"

    .line 155
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;
.end method

.method protected abstract initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
.end method

.method public onBackPressed()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserConsent:Z

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->decideCancelProvisioningDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "provisioningParams"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/managedprovisioning/model/ProvisioningParams;

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "activity-state"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    goto :goto_0

    .line 90
    :cond_0
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    .line 93
    :goto_0
    iget p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    if-ne p1, v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;->maybeStartProvisioning(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    const/4 p1, 0x2

    .line 95
    iput p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    :cond_1
    return-void
.end method

.method public onNegativeButtonClick(Landroid/app/DialogFragment;)V
    .locals 4

    .line 172
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x9e2a440

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x37a1cd0b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CancelProvisioningDialogOk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "CancelProvisioningDialogReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 178
    :cond_3
    invoke-static {p1}, Lcom/android/managedprovisioning/common/SimpleDialog;->throwButtonClickHandlerNotImplemented(Landroid/app/DialogFragment;)V

    const/4 p0, 0x0

    throw p0

    .line 175
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 180
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;->registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;->unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPositiveButtonClick(Landroid/app/DialogFragment;)V
    .locals 5

    .line 185
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CancelProvisioningDialogOk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "CancelProvisioningDialogReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "ErrorDialogOk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "ErrorDialogReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object p1

    const-string v0, "Error during provisioning"

    invoke-virtual {p1, p0, v0}, Lcom/android/managedprovisioning/common/Utils;->sendFactoryResetBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->onProvisioningAborted()V

    goto :goto_2

    .line 202
    :cond_1
    invoke-static {p1}, Lcom/android/managedprovisioning/common/SimpleDialog;->throwButtonClickHandlerNotImplemented(Landroid/app/DialogFragment;)V

    const/4 p0, 0x0

    throw p0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->onProvisioningAborted()V

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object p1

    const-string v0, "Provisioning cancelled by user"

    invoke-virtual {p1, p0, v0}, Lcom/android/managedprovisioning/common/Utils;->sendFactoryResetBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->onProvisioningAborted()V

    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;->cancelProvisioning()V

    .line 188
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->onProvisioningAborted()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f34be21 -> :sswitch_3
        -0x13804cb4 -> :sswitch_2
        -0x9e2a440 -> :sswitch_1
        0x37a1cd0b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->isAnyDialogAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;->registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    iget p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    const-string v0, "activity-state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected showCancelProvisioningDialog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/common/Utils;->createCancelProvisioningResetDialogBuilder()Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    move-result-object p1

    const-string v0, "CancelProvisioningDialogReset"

    invoke-virtual {p0, p1, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/common/Utils;->createCancelProvisioningDialogBuilder()Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    move-result-object p1

    const-string v0, "CancelProvisioningDialogOk"

    invoke-virtual {p0, p1, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;->unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    .line 162
    invoke-super {p0, p1, p2}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method
