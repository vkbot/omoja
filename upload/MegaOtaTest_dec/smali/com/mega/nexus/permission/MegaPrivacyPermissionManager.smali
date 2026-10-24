.class public Lcom/mega/nexus/permission/MegaPrivacyPermissionManager;
.super Ljava/lang/Object;
.source "MegaPrivacyPermissionManager.java"


# static fields
.field public static final PRIVACY_CAMERA:Ljava/lang/String; = "privacy_camera"

.field public static final PRIVACY_LOCATION:Ljava/lang/String; = "privacy_location"

.field public static final PRIVACY_MICROPHONE:Ljava/lang/String; = "privacy_microphone"

.field public static final PRIVACY_PERMISSION_DENIED:I = -0x1

.field public static final PRIVACY_PERMISSION_GRANTED:I = 0x0

.field public static final PRIVACY_PERMISSION_INVALID:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "privacyName"    # Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static grantPrivacyPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "privacyName"    # Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 27
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 28
    return-void
.end method

.method public static revokePrivacyPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "privacyName"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    return-void
.end method
