.class public Lcom/mega/nexus/content/pm/MegaPackageManager;
.super Ljava/lang/Object;
.source "MegaPackageManager.java"


# static fields
.field public static final DELETE_ALL_USERS:I = 0x2

.field public static final INSTALL_ALL_USERS:I = 0x40

.field public static final MATCH_ANY_USER:I = 0x400000

.field public static final MATCH_DEBUG_TRIAGED_MISSING:I = 0x10000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearApplicationUserData(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;

    .line 126
    if-nez p2, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lcom/mega/nexus/content/pm/MegaPackageManager$1;

    invoke-direct {v0, p2}, Lcom/mega/nexus/content/pm/MegaPackageManager$1;-><init>(Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 137
    :goto_0
    return-void
.end method

.method private static convertUserId(I)I
    .locals 1
    .param p0, "userId"    # I

    .line 183
    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    move v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 183
    :goto_1
    return v0
.end method

.method public static deleteApplicationCacheFiles(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;

    .line 143
    if-nez p2, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Lcom/mega/nexus/content/pm/MegaPackageManager$2;

    invoke-direct {v0, p2}, Lcom/mega/nexus/content/pm/MegaPackageManager$2;-><init>(Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 155
    :goto_0
    return-void
.end method

.method public static getApplicationInfoAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 46
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationInfoAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 36
    invoke-static {p2}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getComponentEnabledSettingAsUser(Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I

    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result v0

    move p1, v0

    .line 172
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x2

    return v0
.end method

.method public static getHomeActivities(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 90
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfoAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 56
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 65
    invoke-static {p2}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p2

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPermissionControllerPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .line 94
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServicesSystemSharedLibraryPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .line 98
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedSystemSharedLibraryPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .line 102
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static paramInstallAllUser(Landroid/content/pm/PackageInstaller$SessionParams;)Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 1
    .param p0, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 189
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 190
    return-object p0
.end method

.method public static queryBroadcastReceiversAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryIntentActivitiesAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryIntentContentProvidersAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryIntentServicesAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setComponentEnabledSettingAsUser(Landroid/content/ComponentName;III)V
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "newState"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 160
    :try_start_0
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result v0

    move p3, v0

    .line 161
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
