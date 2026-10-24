.class public Lcom/mega/nexus/content/pm/MegaApplicationInfo;
.super Ljava/lang/Object;
.source "MegaApplicationInfo.java"


# static fields
.field public static final CATEGORY_AUDIO:I = 0x1

.field public static final CATEGORY_IMAGE:I = 0x3

.field public static final CATEGORY_VIDEO:I = 0x2

.field public static final PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnabledSetting(Landroid/content/pm/ApplicationInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 17
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    return v0
.end method

.method public static getPrivateFlags(Landroid/content/pm/ApplicationInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 21
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    return v0
.end method

.method public static getVolumeUuid(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 25
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public static isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 29
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 13
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method
