.class public Lcom/mega/nexus/app/MegaDevicePolicyManager;
.super Ljava/lang/Object;
.source "MegaDevicePolicyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOwnerComponentOnAnyUser(Landroid/app/admin/DevicePolicyManager;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .line 13
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOwnerUser(Landroid/app/admin/DevicePolicyManager;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .line 17
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOwnerUserId(Landroid/app/admin/DevicePolicyManager;)I
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .line 33
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0

    return v0
.end method

.method public static getProfileOwnerAsUser(Landroid/app/admin/DevicePolicyManager;I)Landroid/content/ComponentName;
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "userId"    # I

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static isDeviceOwnerAppOnAnyUser(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUninstallInQueue(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static packageHasActiveAdmins(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
