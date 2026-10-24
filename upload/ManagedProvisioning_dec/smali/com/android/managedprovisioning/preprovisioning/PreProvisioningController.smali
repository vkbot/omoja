.class public Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;
.super Ljava/lang/Object;
.source "PreProvisioningController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;,
        Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;,
        Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mEncryptionController:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMessageParser:Lcom/android/managedprovisioning/parser/MessageParser;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field private final mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

.field private final mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

.field private final mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

.field private final mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;)V
    .locals 9

    .line 121
    new-instance v3, Lcom/android/managedprovisioning/analytics/TimeLogger;

    const/16 v0, 0x208

    invoke-direct {v3, p1, v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcom/android/managedprovisioning/parser/MessageParser;

    invoke-direct {v4, p1}, Lcom/android/managedprovisioning/parser/MessageParser;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v5}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v6, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v6}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 124
    invoke-static {p1}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    move-result-object v7

    new-instance v8, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v8, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 121
    invoke-direct/range {v0 .. v8}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;Lcom/android/managedprovisioning/analytics/TimeLogger;Lcom/android/managedprovisioning/parser/MessageParser;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/preprovisioning/EncryptionController;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;Lcom/android/managedprovisioning/analytics/TimeLogger;Lcom/android/managedprovisioning/parser/MessageParser;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/preprovisioning/EncryptionController;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context must not be null"

    .line 137
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-string p1, "Ui must not be null"

    .line 138
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const-string p1, "Time logger must not be null"

    .line 139
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/TimeLogger;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    const-string p1, "MessageParser must not be null"

    .line 140
    invoke-static {p4, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/parser/MessageParser;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mMessageParser:Lcom/android/managedprovisioning/parser/MessageParser;

    .line 141
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/SettingsFacade;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    const-string p1, "Utils must not be null"

    .line 142
    invoke-static {p5, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    const-string p1, "EncryptionController must not be null"

    .line 143
    invoke-static {p7, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mEncryptionController:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    .line 145
    invoke-static {p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 147
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 148
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    .line 149
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 150
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mActivityManager:Landroid/app/ActivityManager;

    .line 151
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 152
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-string p2, "persistent_data_block"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 154
    new-instance p1, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    .line 155
    invoke-static {p2, p3}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object p2

    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {p1, p2, p3}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    return-void
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Landroid/os/UserManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Landroid/app/ActivityManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-object p0
.end method

.method private canRequestWifiPick()Z
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/Utils;->getWifiPickIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private createViewTermsIntent()Landroid/content/Intent;
    .locals 3

    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/managedprovisioning/preprovisioning/terms/TermsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    const-string v1, "provisioningParams"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private factoryResetProtected()Z
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SettingsFacade;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Device is provisioned, FRP not required."

    .line 715
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    return v1

    .line 719
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_1

    const-string p0, "Reset protection not supported."

    .line 720
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    return v1

    .line 723
    :cond_1
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getDataBlockSize()I

    move-result p0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data block size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private getDisclaimerHeadings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 496
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;

    iget-object v3, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;Lcom/android/managedprovisioning/common/Utils;)V

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    const/4 v1, 0x1

    .line 497
    invoke-virtual {v0, p0, v1}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsProvider;->getTerms(Lcom/android/managedprovisioning/model/ProvisioningParams;I)Ljava/util/List;

    move-result-object p0

    .line 498
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$XKsGm_-Bxo0y8AfD9-v45o1tFJE;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$XKsGm_-Bxo0y8AfD9-v45o1tFJE;

    .line 499
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 500
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private isEncryptionRequired()Z
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipEncryption:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/Utils;->isEncryptionRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNfcProvisioning(Landroid/content/Intent;)Z
    .locals 0

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isProvisioningAllowed()Z
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SettingsFacade;->isDeveloperMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ro.config.allowuserprovisioning"

    const/4 v2, 0x1

    .line 929
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 932
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->abortProvisioning()V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2
.end method

.method private isQrCodeProvisioning(Landroid/content/Intent;)Z
    .locals 1

    .line 359
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "android.app.extra.PROVISIONING_TRIGGER"

    .line 362
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isRemovingManagedProfileDisallowed()Z
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->alreadyHasManagedProfile(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_remove_managed_profile"

    .line 898
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeUpdateAccountToMigrate(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    .line 467
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/accounts/Account;

    .line 470
    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAccountToMigrate(Landroid/accounts/Account;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    :cond_0
    return-void
.end method

.method private maybeUpdateAdminExtrasBundle(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    .line 476
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    .line 479
    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAdminExtrasBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    :cond_0
    return-void
.end method

.method private maybeUpdateSkipEducationScreens(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

    .line 459
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipEducationScreens(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    :cond_0
    return-void
.end method

.method private shouldShowWifiPicker(Landroid/content/Intent;)Z
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 371
    :cond_0
    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    if-nez v0, :cond_1

    return v2

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v3}, Lcom/android/managedprovisioning/common/Utils;->isNetworkTypeConnected(Landroid/content/Context;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isQrCodeProvisioning(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isNfcProvisioning(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v2

    .line 383
    :cond_4
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 384
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/common/Utils;->isMobileNetworkConnectedToInternet(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_5
    return v0

    nop

    :array_0
    .array-data 4
        0x1
        0x9
    .end array-data
.end method

.method private showDeviceOwnerErrorAndClose(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    const v1, 0x7f0d0049

    const v2, 0x7f0d002e

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 919
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Device Owner provisioning not allowed for an unknown reason."

    invoke-interface {p0, p1, v1, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    return-void

    .line 914
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "System User Device owner can only be set on a split-user system."

    invoke-interface {p0, p1, v1, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    return-void

    .line 909
    :cond_1
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Device owner can only be set up for USER_SYSTEM."

    invoke-interface {p0, p1, v1, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    return-void

    .line 905
    :cond_2
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p1, 0x7f0d005b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f0d007f

    const-string v1, "Device already provisioned."

    invoke-interface {p0, p1, v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    return-void
.end method

.method private showManagedProfileErrorAndClose(I)V
    .locals 4

    .line 859
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DevicePolicyManager.checkProvisioningPreCondition returns code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    const/16 v1, 0x9

    const v2, 0x7f0d00da

    const v3, 0x7f0d002c

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v0, 0xe

    const v1, 0x7f0d0049

    if-eq p1, v0, :cond_0

    .line 889
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed profile provisioning not allowed for an unknown reason, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Exiting managed profile provisioning, a device owner exists"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p1

    if-nez p1, :cond_2

    .line 870
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Exiting managed profile provisioning, calling user cannot have managed profiles"

    invoke-interface {p0, p1, v2, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isRemovingManagedProfileDisallowed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 874
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p1, 0x7f0d002d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f0d0074

    const-string v1, "Exiting managed profile provisioning, removing managed profile is disallowed"

    invoke-interface {p0, p1, v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_3
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Exiting managed profile provisioning, cannot add more managed profiles"

    invoke-interface {p0, p1, v2, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_4
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Exiting managed profile provisioning, managed profiles feature is not available"

    invoke-interface {p0, p1, v2, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showProvisioningErrorAndClose(Ljava/lang/String;I)V
    .locals 4

    .line 840
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    return-void

    .line 851
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->showDeviceOwnerErrorAndClose(I)V

    return-void

    .line 847
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->showManagedProfileErrorAndClose(I)V

    return-void

    .line 842
    :cond_3
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p1, 0x7f0d002e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0d0049

    const-string v0, "Exiting managed user provisioning, setup incomplete"

    invoke-interface {p0, p1, p2, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_3
        -0x1ea9303f -> :sswitch_2
        -0x1450e22d -> :sswitch_1
        0x25a9feb2 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipFactoryResetProtectionCheck(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)Z
    .locals 3

    .line 581
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10402a4

    .line 585
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    :try_start_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 590
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 592
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 594
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->startedByTrustedSource:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    const-string p1, "Calling package not found."

    .line 598
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private tryParseParameters(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 1

    if-nez p2, :cond_0

    .line 628
    :try_start_0
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mMessageParser:Lcom/android/managedprovisioning/parser/MessageParser;

    invoke-virtual {p2, p1}, Lcom/android/managedprovisioning/parser/MessageParser;->parse(Landroid/content/Intent;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;
    :try_end_0
    .catch Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 630
    :goto_1
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p2, 0x7f0d002e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const v0, 0x7f0d0049

    .line 631
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-interface {p0, p2, v0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private verifyActionAndCallerInner(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    .line 652
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.managedprovisioning.action.RESUME_PROVISIONING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "PreProvisioningActivityAfterEncryption"

    .line 653
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->verifyActivityAlias(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 654
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "PreProvisioningActivityViaNfc"

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->verifyActivityAlias(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 656
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 657
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.PROVISION_FINANCED_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 660
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->verifyCaller(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p2, "PreProvisioningActivityViaTrustedApp"

    .line 658
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->verifyActivityAlias(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private verifyActivityAlias(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    .line 665
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 666
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for activity alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", but got "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 673
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 667
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null class in component when verifying activity alias "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return p1
.end method

.method private verifyCaller(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "Calling package is null. Was startActivityForResult used to start this activity?"

    .line 687
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return v0

    .line 692
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Permission denied, calling package tried to set a different package as owner. "

    .line 693
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected checkDevicePolicyPreconditions()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioningForTestingDeviceOwner(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v3, v2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    .line 613
    invoke-virtual {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {v0, v3, v2}, Landroid/app/admin/DevicePolicyManager;->checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningNotAllowed(Landroid/content/Context;I)V

    .line 618
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->showProvisioningErrorAndClose(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method checkFactoryResetProtection(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->skipFactoryResetProtectionCheck(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->factoryResetProtected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 571
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p1, 0x7f0d002e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0d005d

    const-string v0, "Factory reset protection blocks provisioning."

    invoke-interface {p0, p1, p2, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return p2
.end method

.method public continueProvisioningAfterUserConsent()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isEncryptionRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const v0, 0x7f0d002e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0d005c

    const-string v2, "This device does not support encryption, and android.app.extra.PROVISIONING_SKIP_ENCRYPTION was not passed."

    invoke-interface {p0, v0, v1, v2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-interface {v0, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->requestEncryption(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isProfileOwnerProvisioning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logOrganizationOwnedManagedProfileProvisioning()V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->currentLauncherSupportsManagedProfiles(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showCurrentLauncherInvalid()V

    return-void

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mEncryptionController:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->cancelEncryptionReminder()V

    .line 546
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->stopTimeLogger()V

    .line 547
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-interface {v0, v1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->startProvisioning(ILcom/android/managedprovisioning/model/ProvisioningParams;)V

    goto :goto_1

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mEncryptionController:Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->cancelEncryptionReminder()V

    .line 552
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isMeatUserCreationRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 556
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$CreatePrimaryUserTask;-><init>(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->stopTimeLogger()V

    .line 559
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-interface {v0, v1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->startProvisioning(ILcom/android/managedprovisioning/model/ProvisioningParams;)V

    :goto_1
    return-void
.end method

.method public getParams()Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-object p0
.end method

.method getSettingsFacade()Lcom/android/managedprovisioning/common/SettingsFacade;
    .locals 0

    .line 805
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    return-object p0
.end method

.method public initiateProvisioning(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;->writeProvisioningStartedTimestamp(J)V

    .line 272
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningSessionStarted(Landroid/content/Context;)V

    .line 274
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isProvisioningAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->tryParseParameters(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 282
    :cond_1
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {p0, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->checkFactoryResetProtection(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 286
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->verifyActionAndCaller(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isProfileOwnerProvisioning()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 295
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/managedprovisioning/common/Utils;->alreadyHasManagedProfile(Landroid/content/Context;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_5

    .line 297
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isRemovingManagedProfileDisallowed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 298
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p1, 0x7f0d002d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0d00da

    const-string p3, "Cannot remove existing work profile"

    invoke-interface {p0, p1, p2, p3}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_4
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 303
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 304
    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 305
    invoke-virtual {p3, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object p3

    .line 306
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showDeleteManagedProfileDialog(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 313
    :cond_5
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->isDeviceOwnerProvisioning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 316
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->shouldShowWifiPicker(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 321
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Cannot pick wifi because the screen is locked."

    .line 323
    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_6
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->canRequestWifiPick()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 327
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-interface {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->requestWifiPick()V

    return-void

    .line 330
    :cond_7
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p3, 0x7f0d002e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const v0, 0x7f0d0049

    const-string v1, "Cannot pick WiFi because there is no handler to the intent"

    invoke-interface {p2, p3, v0, v1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    .line 337
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p2}, Lcom/android/managedprovisioning/analytics/TimeLogger;->start()V

    .line 338
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logPreProvisioningStarted(Landroid/content/Context;Landroid/content/Intent;)V

    .line 340
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean p2, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz p2, :cond_9

    .line 341
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-interface {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->prepareAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    goto :goto_3

    .line 342
    :cond_9
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/managedprovisioning/common/Utils;->isFinancedDeviceAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 343
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-interface {p1, p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->prepareFinancedDeviceFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    goto :goto_3

    .line 346
    :cond_a
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean p2, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserConsent:Z

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioning(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    .line 349
    :cond_b
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->showUserConsentScreen()V

    goto :goto_3

    .line 347
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->continueProvisioningAfterUserConsent()V

    :goto_3
    return-void
.end method

.method public isDeviceOwnerProvisioning()Z
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMeatUserCreationRequired(Ljava/lang/String;)Z
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/Utils;->isSplitSystemUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 734
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 736
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 737
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const v0, 0x7f0d002e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f0d0049

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start Device Owner Provisioning because there are already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " users"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 737
    invoke-interface {p0, v0, v2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public isProfileOwnerProvisioning()Z
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public logPreProvisioningCancelled()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningCancelled(Landroid/content/Context;I)V

    return-void
.end method

.method putExtrasIntoGetModeIntent(Landroid/content/Intent;)V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 489
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.extra.PROVISIONING_IMEI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.extra.PROVISIONING_SERIAL_NUMBER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->adminExtrasBundle:Landroid/os/PersistableBundle;

    const-string v0, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public removeUser(I)V
    .locals 0

    .line 801
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    return-void
.end method

.method setProvisioningMode(I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->toBuilder()Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningMode(I)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-void
.end method

.method showUserConsentScreen()V
    .locals 5

    .line 391
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->checkDevicePolicyPreconditions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning preconditions failed for organization-owned provisioning."

    .line 393
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const v1, 0x7f0d002e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d0049

    invoke-interface {v0, v1, v2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showFactoryResetDialog(Ljava/lang/Integer;I)V

    goto :goto_0

    :cond_0
    return-void

    .line 402
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending user consent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 405
    invoke-static {v0, v1, v2}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning action for user consent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    .line 412
    invoke-static {v2, v1}, Lcom/android/managedprovisioning/common/MdmPackageInfo;->createFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/managedprovisioning/common/MdmPackageInfo;

    move-result-object v2

    .line 413
    new-instance v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;

    invoke-direct {v3}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;-><init>()V

    .line 414
    iput-object v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->customization:Lcom/android/managedprovisioning/model/CustomizationParams;

    .line 415
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v4, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminIconFilePath:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->deviceAdminIconFilePath:Ljava/lang/String;

    .line 416
    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminLabel:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->deviceAdminLabel:Ljava/lang/String;

    .line 417
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->getDisclaimerHeadings()Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->disclaimerHeadings:Ljava/util/List;

    .line 418
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget v4, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningMode:I

    .line 419
    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->provisioningAction:Ljava/lang/String;

    .line 420
    iput-object v1, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->packageName:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->isDeviceManaged:Z

    .line 422
    iput-object v2, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->packageInfo:Lcom/android/managedprovisioning/common/MdmPackageInfo;

    .line 423
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->createViewTermsIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->viewTermsIntent:Landroid/content/Intent;

    .line 424
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-static {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioning(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;->isSilentProvisioning:Z

    .line 425
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    .line 427
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    invoke-interface {p0, v3}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->initiateUi(Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$UiParams;)V

    return-void
.end method

.method public stopTimeLogger()V
    .locals 0

    .line 780
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->stop()V

    return-void
.end method

.method updateProvisioningParamsFromIntent(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "android.app.extra.PROVISIONING_MODE"

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 433
    iget-object v2, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->toBuilder()Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 451
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown returned provisioning mode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return v1

    .line 443
    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningMode(I)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 444
    invoke-virtual {v2, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 445
    invoke-direct {p0, v2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->maybeUpdateAccountToMigrate(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V

    .line 446
    invoke-direct {p0, v2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->maybeUpdateAdminExtrasBundle(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V

    .line 447
    invoke-direct {p0, v2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->maybeUpdateSkipEducationScreens(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V

    .line 448
    invoke-virtual {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return v3

    .line 436
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningMode(I)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 437
    invoke-virtual {v2, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 438
    invoke-direct {p0, v2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->maybeUpdateAdminExtrasBundle(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V

    .line 439
    invoke-direct {p0, v2, p1}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->maybeUpdateSkipEducationScreens(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Landroid/content/Intent;)V

    .line 440
    invoke-virtual {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    return v3
.end method

.method protected verifyActionAndCaller(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 640
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->verifyActionAndCallerInner(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 643
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController;->mUi:Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;

    const p1, 0x7f0d002e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p2, 0x7f0d0049

    const-string v0, "invalid intent or calling package"

    invoke-interface {p0, p1, p2, v0}, Lcom/android/managedprovisioning/preprovisioning/PreProvisioningController$Ui;->showErrorAndClose(Ljava/lang/Integer;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
