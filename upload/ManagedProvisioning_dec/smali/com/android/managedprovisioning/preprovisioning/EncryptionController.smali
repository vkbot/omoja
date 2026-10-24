.class public Lcom/android/managedprovisioning/preprovisioning/EncryptionController;
.super Ljava/lang/Object;
.source "EncryptionController.java"


# static fields
.field private static sInstance:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHomeReceiver:Landroid/content/ComponentName;

.field private final mNotificationHelper:Lcom/android/managedprovisioning/common/NotificationHelper;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mProvisioningResumed:Z

.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

.field private final mUserId:I

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 71
    new-instance v2, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v2}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v3, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v3}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/managedprovisioning/preprovisioning/PostEncryptionActivity;

    invoke-direct {v4, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Lcom/android/managedprovisioning/common/NotificationHelper;

    invoke-direct {v5, p1}, Lcom/android/managedprovisioning/common/NotificationHelper;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Landroid/content/ComponentName;Lcom/android/managedprovisioning/common/NotificationHelper;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Landroid/content/ComponentName;Lcom/android/managedprovisioning/common/NotificationHelper;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mProvisioningResumed:Z

    const-string v0, "Context must not be null"

    .line 86
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/managedprovisioning/common/SettingsFacade;

    iput-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    const-string p3, "Utils must not be null"

    .line 88
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/common/Utils;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    const-string p2, "HomeReceiver must not be null"

    .line 89
    invoke-static {p4, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mHomeReceiver:Landroid/content/ComponentName;

    const-string p2, "ResumeNotificationHelper must not be null"

    .line 90
    invoke-static {p5, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/common/NotificationHelper;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mNotificationHelper:Lcom/android/managedprovisioning/common/NotificationHelper;

    .line 92
    iput p6, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUserId:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/preprovisioning/EncryptionController;
    .locals 2

    const-class v0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->sInstance:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->sInstance:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    .line 67
    :cond_0
    sget-object p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->sInstance:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public cancelEncryptionReminder()V
    .locals 2

    const-string v0, "Cancelling provisioning reminder."

    .line 122
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 124
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mHomeReceiver:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/managedprovisioning/common/Utils;->disableComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 181
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "encryption_controller_provisioning_params.xml"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public resumeProvisioning()V
    .locals 4

    .line 137
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 141
    iget-boolean v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mProvisioningResumed:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->load(Ljava/io/File;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "provisioningParams"

    .line 152
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 153
    iput-boolean v2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mProvisioningResumed:Z

    .line 154
    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provisioning resumed after encryption with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v2}, Lcom/android/managedprovisioning/common/Utils;->isPhysicalDeviceEncrypted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device is not encrypted after provisioning with action "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but it should"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    const/high16 v2, 0x10000000

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v2, v0}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/managedprovisioning/common/SettingsFacade;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mNotificationHelper:Lcom/android/managedprovisioning/common/NotificationHelper;

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/common/NotificationHelper;->showResumeNotification(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v2, v0}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent action loaded from the intent store: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    .line 138
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "resumeProvisioning must be called on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEncryptionReminder(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting provisioning reminder for action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->save(Ljava/io/File;)V

    .line 109
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/common/SettingsFacade;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Enabling PostEncryptionActivity"

    .line 110
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mHomeReceiver:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUserId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/managedprovisioning/common/Utils;->enableComponent(Landroid/content/ComponentName;I)V

    .line 114
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->flushPackageRestrictionsAsUser(I)V

    :cond_0
    return-void
.end method
