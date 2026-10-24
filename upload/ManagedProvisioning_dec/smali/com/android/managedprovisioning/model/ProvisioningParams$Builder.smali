.class public final Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
.super Ljava/lang/Object;
.source "ProvisioningParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/ProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountToMigrate:Landroid/accounts/Account;

.field private mAdminExtrasBundle:Landroid/os/PersistableBundle;

.field private mDeviceAdminComponentName:Landroid/content/ComponentName;

.field private mDeviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

.field private mDeviceAdminIconFilePath:Ljava/lang/String;

.field private mDeviceAdminLabel:Ljava/lang/String;

.field private mDeviceAdminPackageName:Ljava/lang/String;

.field private mDisclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

.field private mIsNfc:Z

.field private mIsOrganizationOwnedProvisioning:Z

.field private mIsQrProvisioning:Z

.field private mIsTransitioningFromRegularToChild:Z

.field private mKeepAccountMigrated:Z

.field private mLeaveAllSystemAppsEnabled:Z

.field private mLocalTime:J

.field private mLocale:Ljava/util/Locale;

.field private mMainColor:Ljava/lang/Integer;

.field private mOrganizationName:Ljava/lang/String;

.field private mProvisioningAction:Ljava/lang/String;

.field private mProvisioningId:J

.field private mProvisioningMode:I

.field private mSkipEducationScreens:Z

.field private mSkipEncryption:Z

.field private mSkipUserConsent:Z

.field private mSkipUserSetup:Z

.field private mStartedByTrustedSource:Z

.field private mSupportUrl:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;

.field private mUseMobileData:Z

.field private mWifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 529
    iput-wide v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLocalTime:J

    .line 540
    sget-object v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->DEFAULT_MAIN_COLOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mMainColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mStartedByTrustedSource:Z

    .line 545
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsNfc:Z

    .line 546
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsQrProvisioning:Z

    .line 547
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    .line 548
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipEncryption:Z

    .line 549
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipUserConsent:Z

    .line 550
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipEducationScreens:Z

    const/4 v1, 0x1

    .line 551
    iput-boolean v1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipUserSetup:Z

    .line 552
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mKeepAccountMigrated:Z

    .line 553
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mUseMobileData:Z

    .line 554
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsOrganizationOwnedProvisioning:Z

    .line 555
    iput-boolean v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsTransitioningFromRegularToChild:Z

    .line 556
    iput v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningMode:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)J
    .locals 2

    .line 526
    iget-wide v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mOrganizationName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSupportUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminIconFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Lcom/android/managedprovisioning/model/DisclaimersParam;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDisclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mAdminExtrasBundle:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mStartedByTrustedSource:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsNfc:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsQrProvisioning:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipEncryption:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Landroid/accounts/Account;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mAccountToMigrate:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mMainColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipUserConsent:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipUserSetup:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipEducationScreens:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mKeepAccountMigrated:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsOrganizationOwnedProvisioning:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsTransitioningFromRegularToChild:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)J
    .locals 2

    .line 526
    iget-wide v0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLocalTime:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)I
    .locals 0

    .line 526
    iget p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningMode:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/util/Locale;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Lcom/android/managedprovisioning/model/WifiInfo;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mWifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Z
    .locals 0

    .line 526
    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mUseMobileData:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Landroid/content/ComponentName;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static builder()Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 1

    .line 720
    new-instance v0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-direct {v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 2

    .line 716
    new-instance v0, Lcom/android/managedprovisioning/model/ProvisioningParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/model/ProvisioningParams;-><init>(Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;Lcom/android/managedprovisioning/model/ProvisioningParams$1;)V

    return-object v0
.end method

.method public setAccountToMigrate(Landroid/accounts/Account;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mAccountToMigrate:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAdminExtrasBundle(Landroid/os/PersistableBundle;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mAdminExtrasBundle:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setDeviceAdminDownloadInfo(Lcom/android/managedprovisioning/model/PackageDownloadInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    return-object p0
.end method

.method public setDeviceAdminIconFilePath(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminIconFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceAdminLabel(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceAdminPackageName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDeviceAdminPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setDisclaimersParam(Lcom/android/managedprovisioning/model/DisclaimersParam;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mDisclaimersParam:Lcom/android/managedprovisioning/model/DisclaimersParam;

    return-object p0
.end method

.method public setIsNfc(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 650
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsNfc:Z

    return-object p0
.end method

.method public setIsOrganizationOwnedProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsOrganizationOwnedProvisioning:Z

    return-object p0
.end method

.method public setIsQrProvisioning(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsQrProvisioning:Z

    return-object p0
.end method

.method public setIsTransitioningFromRegularToChild(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 701
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mIsTransitioningFromRegularToChild:Z

    return-object p0
.end method

.method public setKeepAccountMigrated(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mKeepAccountMigrated:Z

    return-object p0
.end method

.method public setLeaveAllSystemAppsEnabled(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 660
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    return-object p0
.end method

.method public setLocalTime(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 569
    iput-wide p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLocalTime:J

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setMainColor(Ljava/lang/Integer;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mMainColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOrganizationName(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mOrganizationName:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningAction:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioningId(J)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 559
    iput-wide p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningId:J

    return-object p0
.end method

.method public setProvisioningMode(I)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 706
    iput p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mProvisioningMode:I

    return-object p0
.end method

.method public setSkipEducationScreens(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 675
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipEducationScreens:Z

    return-object p0
.end method

.method public setSkipEncryption(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 665
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipEncryption:Z

    return-object p0
.end method

.method public setSkipUserConsent(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 670
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipUserConsent:Z

    return-object p0
.end method

.method public setSkipUserSetup(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 680
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSkipUserSetup:Z

    return-object p0
.end method

.method public setStartedByTrustedSource(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 645
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mStartedByTrustedSource:Z

    return-object p0
.end method

.method public setSupportUrl(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mSupportUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public setUseMobileData(Z)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mUseMobileData:Z

    return-object p0
.end method

.method public setWifiInfo(Lcom/android/managedprovisioning/model/WifiInfo;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->mWifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    return-object p0
.end method
