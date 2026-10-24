.class public final Lcom/android/managedprovisioning/model/ProvisioningParams;
.super Lcom/android/managedprovisioning/common/PersistableBundlable;
.source "ProvisioningParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/managedprovisioning/model/ProvisioningParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAIN_COLOR:Ljava/lang/Integer;


# instance fields
.field public final accountToMigrate:Landroid/accounts/Account;

.field public final adminExtrasBundle:Landroid/os/PersistableBundle;

.field public final deviceAdminComponentName:Landroid/content/ComponentName;

.field public final deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

.field public final deviceAdminIconFilePath:Ljava/lang/String;

.field public final deviceAdminLabel:Ljava/lang/String;

.field public final deviceAdminPackageName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final disclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

.field public final isNfc:Z

.field public final isOrganizationOwnedProvisioning:Z

.field public final isQrProvisioning:Z

.field public final isTransitioningFromRegularToChild:Z

.field public final keepAccountMigrated:Z

.field public final leaveAllSystemAppsEnabled:Z

.field public final localTime:J

.field public final locale:Ljava/util/Locale;

.field public final mainColor:Ljava/lang/Integer;

.field public final organizationName:Ljava/lang/String;

.field public final provisioningAction:Ljava/lang/String;

.field public final provisioningId:J

.field public final provisioningMode:I

.field public final skipEducationScreens:Z

.field public final skipEncryption:Z

.field public final skipUserConsent:Z

.field public final skipUserSetup:Z

.field public final startedByTrustedSource:Z

.field public final supportUrl:Ljava/lang/String;

.field public final timeZone:Ljava/lang/String;

.field public final useMobileData:Z

.field public final wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/managedprovisioning/model/ProvisioningParams$1;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$1;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 338
    invoke-static {p1}, Lcom/android/managedprovisioning/common/PersistableBundlable;->getPersistableBundleFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 337
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;-><init>(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/ProvisioningParams$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)V
    .locals 2

    .line 295
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/PersistableBundlable;-><init>()V

    .line 296
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$100(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningId:J

    .line 297
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$200(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->timeZone:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$300(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->localTime:J

    .line 299
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$400(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->locale:Ljava/util/Locale;

    .line 301
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$500(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Lcom/android/managedprovisioning/model/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    .line 302
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$600(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    .line 304
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$700(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    .line 305
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$800(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminPackageName:Ljava/lang/String;

    .line 306
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$900(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminLabel:Ljava/lang/String;

    .line 307
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1000(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->organizationName:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1100(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->supportUrl:Ljava/lang/String;

    .line 309
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1200(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminIconFilePath:Ljava/lang/String;

    .line 311
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1300(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    .line 312
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1400(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->disclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

    .line 314
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1500(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->adminExtrasBundle:Landroid/os/PersistableBundle;

    .line 316
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1600(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->startedByTrustedSource:Z

    .line 317
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1700(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    .line 318
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1800(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isQrProvisioning:Z

    .line 319
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$1900(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->leaveAllSystemAppsEnabled:Z

    .line 320
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2000(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipEncryption:Z

    .line 321
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2100(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->accountToMigrate:Landroid/accounts/Account;

    .line 322
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2200(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    .line 323
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2300(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->mainColor:Ljava/lang/Integer;

    .line 324
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2400(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserConsent:Z

    .line 325
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2500(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserSetup:Z

    .line 326
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2600(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipEducationScreens:Z

    .line 327
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2700(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->keepAccountMigrated:Z

    .line 329
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2800(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    .line 330
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$2900(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isTransitioningFromRegularToChild:Z

    .line 331
    invoke-static {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->access$3000(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningMode:I

    .line 333
    invoke-direct {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->validateFields()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Lcom/android/managedprovisioning/model/ProvisioningParams$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;-><init>(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)V

    return-void
.end method

.method private static createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 4

    .line 393
    new-instance v0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;-><init>()V

    const-string v1, "provisioning-id"

    const-wide/16 v2, 0x0

    .line 394
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningId(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_TIME_ZONE"

    .line 395
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setTimeZone(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_LOCAL_TIME"

    .line 396
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLocalTime(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 397
    sget-object v1, Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$YP7rVKSVmx4u1eouWU0lg6TjVuw;

    const-string v2, "android.app.extra.PROVISIONING_LOCALE"

    invoke-static {p0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getStringAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLocale(Ljava/util/Locale;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

    .line 399
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setUseMobileData(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 400
    sget-object v1, Lcom/android/managedprovisioning/model/-$$Lambda$nwUW3YNsX7alVxon6RYfsCIO7as;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$nwUW3YNsX7alVxon6RYfsCIO7as;

    const-string v2, "wifi-info"

    invoke-static {p0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getObjectAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/managedprovisioning/model/WifiInfo;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setWifiInfo(Lcom/android/managedprovisioning/model/WifiInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 402
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminPackageName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 404
    sget-object v1, Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$1AA9DQIAYiJzyRDi_3mB21obp3Y;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    invoke-static {p0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getStringAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"

    .line 406
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminLabel(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_ORGANIZATION_NAME"

    .line 408
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setOrganizationName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_SUPPORT_URL"

    .line 409
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSupportUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"

    .line 410
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminIconFilePath(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 412
    sget-object v1, Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$Hiio4K9IPdwEiX6SrjNj0KirVus;

    const-string v2, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    invoke-static {p0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getObjectAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAccountToMigrate(Landroid/accounts/Account;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "provisioning-action"

    .line 414
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_MAIN_COLOR"

    .line 415
    invoke-static {p0, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getIntegerAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setMainColor(Ljava/lang/Integer;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 417
    sget-object v1, Lcom/android/managedprovisioning/model/-$$Lambda$onPumVVpHc9E684FCGOkaCgqSYg;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$onPumVVpHc9E684FCGOkaCgqSYg;

    const-string v2, "download-info"

    invoke-static {p0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getObjectAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminDownloadInfo(Lcom/android/managedprovisioning/model/PackageDownloadInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 419
    sget-object v1, Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;->INSTANCE:Lcom/android/managedprovisioning/model/-$$Lambda$kbBkIDPTRAX0Uf4GWXAJ4GwPHVY;

    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMERS"

    invoke-static {p0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->getObjectAttrFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/managedprovisioning/model/DisclaimersParam;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDisclaimersParam(Lcom/android/managedprovisioning/model/DisclaimersParam;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    .line 421
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setAdminExtrasBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "started-by-trusted-source"

    .line 423
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setStartedByTrustedSource(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "started-is-nfc"

    .line 424
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsNfc(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "is-qr-provisioning"

    .line 425
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsQrProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    .line 426
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipEncryption(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    .line 427
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setLeaveAllSystemAppsEnabled(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_USER_SETUP"

    .line 429
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipUserSetup(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

    .line 430
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipUserConsent(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

    .line 431
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setSkipEducationScreens(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    .line 432
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setKeepAccountMigrated(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "is-organization-owned-provisioning"

    .line 434
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsOrganizationOwnedProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "is-transitioning-from-regular-to-child"

    .line 436
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setIsTransitioningFromRegularToChild(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v1, "provisioning-mode"

    .line 438
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningMode(I)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    return-object v0
.end method

.method public static inferStaticDeviceAdminPackageName(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static load(Ljava/io/File;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 4

    .line 492
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading ProvisioningParams from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 496
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 498
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 499
    invoke-static {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->load(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 496
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while trying to load the provisioning params from file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static load(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 511
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 512
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 516
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 517
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4fae239a

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "provisioning-params"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_0

    .line 520
    :cond_5
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 519
    invoke-static {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object p0

    .line 520
    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0

    .line 523
    :cond_6
    new-instance p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-direct {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0
.end method

.method private validateFields()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->disclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/android/managedprovisioning/model/DisclaimersParam;->cleanUp()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminIconFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminIconFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public inferDeviceAdminComponentName(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    return-object v0

    .line 291
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2, p3}, Lcom/android/managedprovisioning/common/Utils;->findDeviceAdmin(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public inferDeviceAdminPackageName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferStaticDeviceAdminPackageName(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public save(Ljava/io/File;)V
    .locals 6

    const-string v0, "provisioning-params"

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving ProvisioningParams to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 459
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 460
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    :try_start_2
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 462
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 463
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 464
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 466
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 468
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v3, v1

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v3, v1

    .line 470
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception while trying to save Provisioning Params to  file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public toBuilder()Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 443
    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->createBuilderFromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 347
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 349
    iget-wide v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningId:J

    const-string v3, "provisioning-id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 350
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->timeZone:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_TIME_ZONE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-wide v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->localTime:J

    const-string v3, "android.app.extra.PROVISIONING_LOCAL_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 352
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/managedprovisioning/common/StoreUtils;->localeToString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_LOCALE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    const-string v2, "wifi-info"

    invoke-static {v0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->putPersistableBundlableIfNotNull(Landroid/os/PersistableBundle;Ljava/lang/String;Lcom/android/managedprovisioning/common/PersistableBundlable;)V

    .line 354
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    const-string v2, "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminPackageName:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    .line 357
    invoke-static {v1}, Lcom/android/managedprovisioning/common/StoreUtils;->componentNameToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    .line 356
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminLabel:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->organizationName:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_ORGANIZATION_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->supportUrl:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_SUPPORT_URL"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminIconFilePath:Ljava/lang/String;

    const-string v2, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->accountToMigrate:Landroid/accounts/Account;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 363
    :cond_0
    invoke-static {v1}, Lcom/android/managedprovisioning/common/StoreUtils;->accountToPersistableBundle(Landroid/accounts/Account;)Landroid/os/PersistableBundle;

    move-result-object v1

    :goto_0
    const-string v2, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    .line 362
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 364
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v2, "provisioning-action"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->mainColor:Ljava/lang/Integer;

    const-string v2, "android.app.extra.PROVISIONING_MAIN_COLOR"

    invoke-static {v0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->putIntegerIfNotNull(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    const-string v2, "download-info"

    invoke-static {v0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->putPersistableBundlableIfNotNull(Landroid/os/PersistableBundle;Ljava/lang/String;Lcom/android/managedprovisioning/common/PersistableBundlable;)V

    .line 368
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->disclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMERS"

    invoke-static {v0, v2, v1}, Lcom/android/managedprovisioning/common/StoreUtils;->putPersistableBundlableIfNotNull(Landroid/os/PersistableBundle;Ljava/lang/String;Lcom/android/managedprovisioning/common/PersistableBundlable;)V

    .line 370
    iget-object v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->adminExtrasBundle:Landroid/os/PersistableBundle;

    const-string v2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 371
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->startedByTrustedSource:Z

    const-string v2, "started-by-trusted-source"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    const-string v2, "started-is-nfc"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isQrProvisioning:Z

    const-string v2, "is-qr-provisioning"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->leaveAllSystemAppsEnabled:Z

    const-string v2, "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipEncryption:Z

    const-string v2, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserSetup:Z

    const-string v2, "android.app.extra.PROVISIONING_SKIP_USER_SETUP"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserConsent:Z

    const-string v2, "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipEducationScreens:Z

    const-string v2, "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->keepAccountMigrated:Z

    const-string v2, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    const-string v2, "is-organization-owned-provisioning"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    iget-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isTransitioningFromRegularToChild:Z

    const-string v2, "is-transitioning-from-regular-to-child"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    iget p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningMode:I

    const-string v1, "provisioning-mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisioningParams values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
