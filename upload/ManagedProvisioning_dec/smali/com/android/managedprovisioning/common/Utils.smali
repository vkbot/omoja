.class public Lcom/android/managedprovisioning/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAcceptAndContinueButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    const/4 v0, 0x5

    const v1, 0x7f0d001b

    .line 921
    invoke-static {p0, p1, v0, v1}, Lcom/android/managedprovisioning/common/Utils;->setPrimaryButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;II)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0
.end method

.method public static addDoneButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    const/4 v0, 0x4

    const v1, 0x7f0d0066

    .line 916
    invoke-static {p0, p1, v0, v1}, Lcom/android/managedprovisioning/common/Utils;->setPrimaryButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;II)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0
.end method

.method public static addNextButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    const/4 v0, 0x5

    const v1, 0x7f0d0091

    .line 912
    invoke-static {p0, p1, v0, v1}, Lcom/android/managedprovisioning/common/Utils;->setPrimaryButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;II)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0
.end method

.method private findDeviceAdminInPackage(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Landroid/content/ComponentName;
    .locals 6

    const/4 p0, 0x0

    if-eqz p2, :cond_4

    .line 277
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v0, p2

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p2, v1

    .line 283
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    const-string p1, "more than 1 device admin component are found"

    .line 285
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-object p0

    .line 288
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_1
    return-object p0
.end method

.method private getAttrColor(Landroid/content/Context;I)I
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p2, p0, v0

    .line 827
    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 828
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 829
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private getBaseDialogBuilder(III)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 1

    .line 954
    new-instance p0, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;-><init>()V

    const/4 v0, 0x0

    .line 955
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setCancelable(Z)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 956
    invoke-virtual {p0, p3}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 957
    invoke-virtual {p0, p2}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setNegativeButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    .line 958
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setPositiveButtonMessage(I)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    return-object p0
.end method

.method private isCellularNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    const/4 p0, 0x0

    .line 637
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private isComponentInPackageInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 297
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    .line 298
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isConnectedToInternet(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    const/16 p0, 0xc

    .line 632
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    .line 633
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPackageTestOnly(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 1

    .line 906
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 907
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 908
    invoke-virtual {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    .line 907
    invoke-static {p0, p1, v0}, Lcom/android/managedprovisioning/common/Utils;->isPackageTestOnly(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isPackageTestOnly(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 2

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0xc0000

    .line 321
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 324
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public static isSilentProvisioning(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 1

    .line 901
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioningForTestingManagedProfile(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioningForTestingDeviceOwner(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

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

.method public static isSilentProvisioningForTestingDeviceOwner(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 6

    .line 878
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 880
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 881
    iget-object v1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminComponentName:Landroid/content/ComponentName;

    .line 883
    iget-object v2, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const v5, -0x36de2734    # -662924.75f

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_2

    return v4

    .line 885
    :cond_2
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isPackageTestOnly(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 888
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method private static isSilentProvisioningForTestingManagedProfile(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 2

    .line 896
    iget-object v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isPackageTestOnly(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isMobileNetworkConnectedToInternet$1(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$jVbGVuuAIHt1xu5KmJ5rHc2NVcg(Lcom/android/managedprovisioning/common/Utils;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isCellularNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeAccount$0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 442
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/TrampolineActivity;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$wewveBwaGCJMQR5kaZUimClLvPk(Lcom/android/managedprovisioning/common/Utils;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isConnectedToInternet(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method private static setPrimaryButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;II)Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 926
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 927
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 928
    invoke-virtual {v1, p3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 929
    invoke-virtual {v1, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 930
    invoke-virtual {v1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const p0, 0x7f0e0127

    .line 931
    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 932
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 933
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-object p0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 0

    const/16 p0, 0x15

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public alreadyHasManagedProfile(Landroid/content/Context;)I
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public canResolveIntentAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 814
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public computeHashOfByteArray([B)[B
    .locals 0

    :try_start_0
    const-string p0, "SHA-256"

    .line 751
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 752
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 753
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Hashing algorithm SHA-256 not supported."

    .line 755
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public computeHashOfFile(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const/4 p0, 0x0

    .line 770
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 776
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x100

    :try_start_2
    new-array p1, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 781
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 783
    invoke-virtual {p2, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 793
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v0, p0

    :goto_2
    :try_start_4
    const-string p2, "IO error."

    .line 788
    invoke-static {p2, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    return-object p0

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_3

    .line 793
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 798
    :catch_3
    :cond_3
    throw p0

    :catch_4
    move-exception p1

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public createCancelProvisioningDialogBuilder()Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 3

    const v0, 0x7f0d009e

    const v1, 0x7f0d009c

    const v2, 0x7f0d009d

    .line 949
    invoke-direct {p0, v0, v1, v2}, Lcom/android/managedprovisioning/common/Utils;->getBaseDialogBuilder(III)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public createCancelProvisioningResetDialogBuilder()Lcom/android/managedprovisioning/common/SimpleDialog$Builder;
    .locals 3

    const v0, 0x7f0d00b1

    const v1, 0x7f0d005e

    const v2, 0x7f0d00d3

    .line 941
    invoke-direct {p0, v0, v1, v2}, Lcom/android/managedprovisioning/common/Utils;->getBaseDialogBuilder(III)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    move-result-object p0

    const v0, 0x7f0d00c6

    .line 942
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/SimpleDialog$Builder;->setTitle(Ljava/lang/Integer;)Lcom/android/managedprovisioning/common/SimpleDialog$Builder;

    return-object p0
.end method

.method public currentLauncherSupportsManagedProfiles(Landroid/content/Context;)Z
    .locals 2

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 715
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 718
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 728
    :cond_0
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 730
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->versionNumberAtLeastL(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public disableComponent(Landroid/content/ComponentName;I)V
    .locals 2

    const-string v0, "package"

    .line 157
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 156
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/managedprovisioning/common/Utils;->setComponentEnabledSetting(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public enableComponent(Landroid/content/ComponentName;I)V
    .locals 2

    const-string v0, "package"

    .line 171
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/managedprovisioning/common/Utils;->setComponentEnabledSetting(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public findDeviceAdmin(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 225
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/16 v0, 0x202

    invoke-virtual {p3, p1, v0, p4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/managedprovisioning/common/Utils;->findDeviceAdminInPackageInfo(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 236
    :cond_1
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot find any admin receiver in package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with component "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 229
    new-instance p2, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dpc "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed. "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 220
    :cond_2
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p1, "Neither the package name nor the component name of the admin are supplied"

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findDeviceAdminInPackageInfo(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p2, :cond_1

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/android/managedprovisioning/common/Utils;->isComponentInPackageInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The component "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t registered in the apk"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p2

    .line 262
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/managedprovisioning/common/Utils;->findDeviceAdminInPackage(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getAccentColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    .line 823
    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/common/Utils;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 0

    const-string p0, "connectivity"

    .line 664
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 665
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSystemApps(Landroid/content/pm/IPackageManager;I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const v0, 0x20002000

    .line 135
    :try_start_0
    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "This should not happen."

    .line 139
    invoke-static {p2, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 142
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 143
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;
    .locals 1

    const-string p0, "user"

    .line 381
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 382
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result p1

    .line 383
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 384
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 385
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance p0, Landroid/os/UserHandle;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Landroid/os/UserHandle;-><init>(I)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiPickIntent()Landroid/content/Intent;
    .locals 2

    .line 691
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extra_prefs_show_button_bar"

    const/4 v1, 0x1

    .line 692
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "wifi_enable_next_on_connect"

    .line 693
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public handlePartialClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/android/managedprovisioning/common/ClickableSpanFactory;)V
    .locals 0

    .line 863
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    .line 865
    invoke-virtual {p5, p4}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;->create(Landroid/content/Intent;)Landroid/text/style/ClickableSpan;

    move-result-object p4

    .line 866
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 867
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p2

    const/16 p5, 0x21

    .line 869
    invoke-virtual {p0, p4, p2, p3, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 870
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 873
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleSupportUrl(Landroid/content/Context;Lcom/android/managedprovisioning/model/CustomizationParams;Lcom/android/managedprovisioning/common/ClickableSpanFactory;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 837
    iget-object v0, p2, Lcom/android/managedprovisioning/model/CustomizationParams;->supportUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 838
    invoke-virtual {p5, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 841
    :cond_0
    iget p2, p2, Lcom/android/managedprovisioning/model/CustomizationParams;->statusBarColor:I

    invoke-static {p1, v0, p2}, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object v1, p0

    move-object v2, p5

    move-object v3, p7

    move-object v4, p6

    move-object v6, p3

    .line 844
    invoke-virtual/range {v1 .. v6}, Lcom/android/managedprovisioning/common/Utils;->handlePartialClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/android/managedprovisioning/common/ClickableSpanFactory;)V

    .line 847
    invoke-virtual {p4, p5}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->registerWithActivity(Landroid/widget/TextView;)V

    return-void
.end method

.method public isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 2

    .line 564
    iget-boolean p0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 567
    :cond_0
    iget p0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningMode:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    :cond_1
    move v0, p1

    :cond_2
    return v0
.end method

.method public isBrightColor(I)Z
    .locals 1

    .line 805
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x12b

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x24b

    add-int/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x72

    add-int/2addr p0, p1

    const p1, 0x2e630

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnectedToNetwork(Landroid/content/Context;)Z
    .locals 0

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 616
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDeviceOwnerAction(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 600
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isEncryptionRequired()Z
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/Utils;->isPhysicalDeviceEncrypted()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "persist.sys.no_req_encrypt"

    .line 676
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isFinancedDeviceAction(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "android.app.action.PROVISION_FINANCED_DEVICE"

    .line 608
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMobileNetworkConnectedToInternet(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 621
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 622
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$hVR0rpLrD9-M8-kDnSTYj8TclNI;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$hVR0rpLrD9-M8-kDnSTYj8TclNI;-><init>(Landroid/net/ConnectivityManager;)V

    .line 623
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 626
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/managedprovisioning/common/-$$Lambda$RSPiy9oesin9Ty6MQfE2tSHRIcc;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/-$$Lambda$RSPiy9oesin9Ty6MQfE2tSHRIcc;-><init>(Landroid/net/ConnectivityManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$jVbGVuuAIHt1xu5KmJ5rHc2NVcg;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$jVbGVuuAIHt1xu5KmJ5rHc2NVcg;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    .line 627
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$wewveBwaGCJMQR5kaZUimClLvPk;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$wewveBwaGCJMQR5kaZUimClLvPk;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    .line 628
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public varargs isNetworkTypeConnected(Landroid/content/Context;[I)Z
    .locals 3

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 648
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    .line 650
    array-length v0, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public isOrganizationOwnedProvisioning(Landroid/content/Intent;)Z
    .locals 2

    .line 535
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string p0, "android.app.extra.PROVISIONING_TRIGGER"

    .line 543
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public isPackageDeviceOwner(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 0

    .line 818
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 819
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPhysicalDeviceEncrypted()Z
    .locals 0

    .line 683
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result p0

    return p0
.end method

.method public final isProfileOwnerAction(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 591
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android.app.action.PROVISION_MANAGED_USER"

    .line 592
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isQrProvisioning(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "android.app.extra.PROVISIONING_TRIGGER"

    const/4 v0, 0x0

    .line 555
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSplitSystemUser()Z
    .locals 0

    .line 704
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p0

    return p0
.end method

.method public mapIntentToDpmAction(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 477
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 484
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "android.app.action.PROVISION_MANAGED_DEVICE"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "android.app.action.PROVISION_FINANCED_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "android.app.action.PROVISION_MANAGED_SHAREABLE_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE_SILENTLY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_7
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v2

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 524
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown intent action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 501
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown NFC bump mime-type: "

    if-eqz p0, :cond_4

    .line 506
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, 0x7b299261

    if-eq v0, v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "application/com.android.managedprovisioning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move v1, v2

    :goto_3
    if-nez v1, :cond_3

    goto :goto_4

    .line 512
    :cond_3
    new-instance v0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_4
    new-instance v0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    :goto_4
    :pswitch_2
    return-object v3

    .line 478
    :cond_5
    new-instance p0, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;

    const-string p1, "Null intent action."

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7970ba3b -> :sswitch_7
        -0x36de2734 -> :sswitch_6
        -0x2359b14b -> :sswitch_5
        -0x1ea9303f -> :sswitch_4
        -0x1450e22d -> :sswitch_3
        0x25a9feb2 -> :sswitch_2
        0x4fe43175 -> :sswitch_1
        0x6f35f57a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public packageRequiresUpdate(Ljava/lang/String;ILandroid/content/Context;)Z
    .locals 0

    .line 361
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const p1, 0x7fffffff

    if-eq p2, p1, :cond_0

    .line 363
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p2, :cond_0

    return p3

    :catch_0
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method removeAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 1

    const-string p0, "account"

    .line 429
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p2, v0, v0, v0}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    .line 434
    :try_start_0
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p2, "booleanResult"

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "Account removed from the primary user."

    .line 436
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "intent"

    .line 438
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_1

    const-string p2, "Starting activity to remove account"

    .line 440
    invoke-static {p2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 441
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$7vooTqHgOhJLlIDbXxm31h2Rfqg;

    invoke-direct {v0, p1, p0}, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$7vooTqHgOhJLlIDbXxm31h2Rfqg;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "Could not remove account from the primary user."

    .line 445
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception removing account from the primary user."

    .line 449
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public removeAccountAsync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/managedprovisioning/common/RemoveAccountListener;)V
    .locals 1

    .line 412
    new-instance v0, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/managedprovisioning/common/RemoveAccountAsyncTask;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/RemoveAccountListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public sendFactoryResetBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 578
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.FACTORY_RESET"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 580
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 581
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.REASON"

    .line 582
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method setComponentEnabledSetting(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;II)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x1

    .line 188
    :try_start_0
    invoke-interface {p1, p2, p3, p0, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Component not found, not changing enabled setting: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "This should not happen."

    .line 192
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
