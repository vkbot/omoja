.class public Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "PreProvisioningActivity.java"

# interfaces
.implements Lcom/android/managedprovisioning/common/SimpleDialog$SimpleDialogListener;
.implements Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;
.implements Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;
    }
.end annotation


# static fields
.field protected static final PROVISIONING_REQUEST_CODE:I = 0x2


# instance fields
.field private mConsentUiHelper:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;

.field private final mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

.field private mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

.field private mControllerProvider:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 108
    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$xbYrsg8JynJUGc-up6kCR_9LX1o;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$xbYrsg8JynJUGc-up6kCR_9LX1o;

    new-instance v1, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;-><init>(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 114
    invoke-direct {p0, p3}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    .line 115
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mControllerProvider:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p2, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-direct {p2, p0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;-><init>(Landroid/app/Activity;)V

    :goto_0
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;)Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;
    .locals 1

    .line 108
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-direct {v0, p0, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;)V

    return-object v0
.end method

.method static synthetic lambda$showDeleteManagedProfileDialog$1(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 0

    .line 412
    invoke-static {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;->newInstance(ILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;

    move-result-object p0

    return-object p0
.end method

.method private maybeShowAdminGetProvisioningModeScreen()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.GET_PROVISIONING_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.ADMIN_POLICY_COMPLIANCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 348
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    .line 349
    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->putExtrasIntoGetModeIntent(Landroid/content/Intent;)V

    const/4 v0, 0x6

    .line 353
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->startManagedDeviceLegacyFlow()V

    :goto_0
    return-void
.end method

.method private onProvisioningAborted()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 291
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->logPreProvisioningCancelled()V

    .line 292
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    return-void
.end method

.method private requestLauncherPick()V
    .locals 3

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HOME_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "support_managed_profiles"

    const/4 v2, 0x1

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 329
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startFinancedDeviceFlow()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->setProvisioningMode(I)V

    .line 366
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->continueProvisioningAfterUserConsent()V

    return-void
.end method

.method private startManagedDeviceLegacyFlow()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->setProvisioningMode(I)V

    .line 361
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->showUserConsentScreen()V

    return-void
.end method


# virtual methods
.method public abortProvisioning()V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->onProvisioningAborted()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/android/managedprovisioning/common/LogoUtils;->cleanUp(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->cleanUp()V

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->cancelEncryptionReminder()V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2, p3}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    return-void
.end method

.method public initiateUi(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mConsentUiHelper:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;

    invoke-interface {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;->initiateUi(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;)V

    return-void
.end method

.method public nextAfterUserConsent()V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->continueProvisioningAfterUserConsent()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown result code :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->startFinancedDeviceFlow()V

    goto/16 :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f0d0049

    const v1, 0x7f0d002e

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 198
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p2, p3}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->updateProvisioningParamsFromIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 199
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->showUserConsentScreen()V

    goto/16 :goto_0

    :cond_1
    const-string p2, "Invalid data object returned from GET_PROVISIONING_MODE."

    .line 201
    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->showFactoryResetDialog(Ljava/lang/Integer;I)V

    goto :goto_0

    .line 207
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid result code from GET_PROVISIONING_MODE. Expected -1 but got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->showFactoryResetDialog(Ljava/lang/Integer;I)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->maybeShowAdminGetProvisioningModeScreen()V

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->continueProvisioningAfterUserConsent()V

    goto :goto_0

    :pswitch_4
    if-nez p2, :cond_4

    const-string p1, "User canceled wifi picking."

    .line 177
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    goto :goto_0

    :cond_4
    if-ne p2, v0, :cond_5

    const-string p1, "Wifi request result is OK"

    .line 182
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 184
    :cond_5
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->initiateProvisioning(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 168
    iput p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mState:I

    .line 169
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    goto :goto_0

    :pswitch_6
    if-nez p2, :cond_6

    const-string p0, "User canceled device encryption."

    .line 164
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/Utils;->createCancelProvisioningResetDialogBuilder()Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    move-result-object v0

    const-string v1, "PreProvBackPressedDialogReset"

    invoke-virtual {p0, v0, v1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/Utils;->createCancelProvisioningDialogBuilder()Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    move-result-object v0

    const-string v1, "PreProvBackPressedDialogCloseActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 123
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "activity-state"

    .line 127
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mState:I

    .line 129
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mControllerProvider:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;

    invoke-interface {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity$ControllerProvider;->getInstance(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;)Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    .line 130
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    iget-object v3, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 132
    invoke-virtual {v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getSettingsFacade()Lcom/android/managedprovisioning/common/SettingsFacade;

    move-result-object v1

    .line 130
    invoke-static {p0, v2, p0, v3, v1}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperFactory;->getInstance(Landroid/app/Activity;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelperCallback;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mConsentUiHelper:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;

    .line 133
    iget v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mState:I

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "saved_provisioning_params"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->initiateProvisioning(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 404
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 405
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->populateMenuContent(Landroid/view/ContextMenu;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public onNegativeButtonClick(Landroid/app/DialogFragment;)V
    .locals 6

    .line 241
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PreProvBackPressedDialogReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "PreProvBackPressedDialogCloseActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "PreProvCurrentLauncherInvalidDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "PreProvDeleteManagedProfileDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    goto :goto_2

    .line 254
    :cond_1
    invoke-static {p1}, Lcom/android/managedprovisioning/common/SimpleDialog;->throwButtonClickHandlerNotImplemented(Landroid/app/DialogFragment;)V

    const/4 p0, 0x0

    throw p0

    .line 247
    :cond_2
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47392117 -> :sswitch_3
        0x5a71512 -> :sswitch_2
        0x36b1ff30 -> :sswitch_1
        0x55607858 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPositiveButtonClick(Landroid/app/DialogFragment;)V
    .locals 8

    .line 260
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PreProvBackPressedDialogReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "PreProvBackPressedDialogCloseActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v1, "PreProvErrorAndCloseDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "PreProvCurrentLauncherInvalidDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v1, "PreProvDeleteManagedProfileDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v1, "ErrorDialogReset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    const/4 v1, 0x0

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object p1

    const-string v0, "Error during preprovisioning"

    invoke-virtual {p1, p0, v0}, Lcom/android/managedprovisioning/common/Utils;->sendFactoryResetBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->finish()V

    goto :goto_2

    .line 285
    :cond_1
    invoke-static {p1}, Lcom/android/managedprovisioning/common/SimpleDialog;->throwButtonClickHandlerNotImplemented(Landroid/app/DialogFragment;)V

    throw v1

    .line 274
    :cond_2
    check-cast p1, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;

    .line 275
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/preprovisioning/DeleteManagedProfileDialog;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->removeUser(I)V

    .line 276
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->initiateProvisioning(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_3
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->requestLauncherPick()V

    goto :goto_2

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    const-string v0, "Provisioning cancelled by user on consent screen"

    invoke-virtual {p1, p0, v0}, Lcom/android/managedprovisioning/common/Utils;->sendFactoryResetBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->onProvisioningAborted()V

    goto :goto_2

    .line 263
    :cond_5
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->onProvisioningAborted()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f34be21 -> :sswitch_5
        -0x47392117 -> :sswitch_4
        0x5a71512 -> :sswitch_3
        0xffdfb05 -> :sswitch_2
        0x36b1ff30 -> :sswitch_1
        0x55607858 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mController:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    const-string v1, "saved_provisioning_params"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    iget p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mState:I

    const-string v0, "activity-state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 430
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mConsentUiHelper:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 436
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mConsentUiHelper:Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/consent/ConsentUiHelper;->onStop()V

    return-void
.end method

.method public prepareAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/managedprovisioning/provisioning/LandingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v1, "provisioningParams"

    .line 389
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 390
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public prepareFinancedDeviceFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/managedprovisioning/provisioning/FinancedDeviceLandingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v1, "provisioningParams"

    .line 397
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 398
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public requestEncryption(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v1, "provisioningParams"

    .line 299
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 300
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public requestWifiPick()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/Utils;->getWifiPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x3

    .line 307
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showCurrentLauncherInvalid()V
    .locals 2

    .line 312
    new-instance v0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;-><init>()V

    const/4 v1, 0x0

    .line 313
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const v1, 0x7f0d0042

    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const v1, 0x7f0d0089

    .line 315
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const v1, 0x7f0d0026

    .line 316
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setNegativeButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const v1, 0x7f0d0099

    .line 317
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const-string v1, "PreProvCurrentLauncherInvalidDialog"

    .line 318
    invoke-virtual {p0, v0, v1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public showDeleteManagedProfileDialog(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    .line 412
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$PreProvisioningActivity$qDKvpK6Xsd8ibaEFJNIK4LOdcEk;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    const-string p1, "PreProvDeleteManagedProfileDialog"

    invoke-virtual {p0, v0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V
    .locals 0

    .line 229
    invoke-static {p3}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 231
    new-instance p3, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    invoke-direct {p3}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;-><init>()V

    .line 232
    invoke-virtual {p3, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 233
    invoke-virtual {p3, p2}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const/4 p1, 0x0

    .line 234
    invoke-virtual {p3, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const p1, 0x7f0d0061

    .line 235
    invoke-virtual {p3, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const-string p1, "PreProvErrorAndCloseDialog"

    .line 236
    invoke-virtual {p0, p3, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public showFactoryResetDialog(Ljava/lang/Integer;I)V
    .locals 1

    .line 371
    new-instance v0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;-><init>()V

    .line 372
    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 373
    invoke-virtual {v0, p2}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const/4 p1, 0x0

    .line 374
    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const p1, 0x7f0d00b1

    .line 375
    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    const-string p1, "ErrorDialogReset"

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public startProvisioning(ILcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 3

    const/4 v0, 0x2

    .line 333
    iput v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningActivity;->mState:I

    .line 334
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v2, "provisioningParams"

    .line 336
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 337
    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v0, p2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    const/high16 p1, 0x10a0000

    const p2, 0x10a0001

    .line 338
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
