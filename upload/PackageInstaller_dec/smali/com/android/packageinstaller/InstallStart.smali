.class public Lcom/android/packageinstaller/InstallStart;
.super Landroid/app/Activity;
.source "InstallStart.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAbortInstall:Z

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mIPermissionManager:Landroid/permission/IPermissionManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/packageinstaller/InstallStart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    return-void
.end method

.method private declaresAppOpPermission(ILjava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallStart;->mIPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v1, p2}, Landroid/permission/IPermissionManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallStart;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 155
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_0
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v4, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v6, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    :cond_3
    return v0
.end method

.method private getOriginatingUid(Landroid/content/pm/ApplicationInfo;)I
    .locals 3

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 201
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 204
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/packageinstaller/InstallStart;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.MANAGE_DOCUMENTS"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_1

    return v0

    .line 221
    :catch_0
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallStart;->isSystemDownloadsProvider(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p1

    .line 208
    :catch_1
    sget-object p1, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Could not determine the launching uid."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    return v2
.end method

.method private getSourceInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSystemDownloadsProvider(I)Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "downloads"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 235
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 236
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 59
    sget-object v0, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallStart;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallStart;->mIPermissionManager:Landroid/permission/IPermissionManager;

    .line 62
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/packageinstaller/InstallStart;->mUserManager:Landroid/os/UserManager;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v4, "android.content.pm.extra.SESSION_ID"

    .line 72
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-nez v1, :cond_2

    if-eq v4, v3, :cond_2

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    .line 80
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/InstallStart;->getSourceInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 81
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/InstallStart;->getOriginatingUid(Landroid/content/pm/ApplicationInfo;)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 83
    iget v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    const-string v8, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    .line 85
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    const/4 v9, 0x1

    if-nez v8, :cond_5

    if-eq v6, v3, :cond_5

    .line 89
    invoke-static {p0, v6}, Lcom/android/packageinstaller/PackageUtil;->getMaxTargetSdkVersionForUid(Landroid/content/Context;I)I

    move-result v3

    if-gez v3, :cond_4

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get target sdk version for uid "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean v9, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    goto :goto_3

    :cond_4
    const/16 v8, 0x1a

    if-lt v3, v8, :cond_5

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 94
    invoke-direct {p0, v6, v3}, Lcom/android/packageinstaller/InstallStart;->declaresAppOpPermission(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requesting uid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " needs to declare permission "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v9, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    .line 101
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 107
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x2000001

    .line 108
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "EXTRA_CALLING_PACKAGE"

    .line 113
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_ORIGINAL_SOURCE_INFO"

    .line 114
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    .line 115
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_7

    .line 118
    const-class p1, Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4

    .line 120
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 122
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    const-class p1, Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    .line 129
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 131
    const-class p1, Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_4
    move-object v5, v0

    goto :goto_5

    .line 133
    :cond_9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x3

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 134
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v9, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_5
    if-eqz v5, :cond_a

    .line 143
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
