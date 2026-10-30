.class public Lcom/mega/nexus/app/MegaActivityManagerProxy$TaskDescription;
.super Ljava/lang/Object;
.source "MegaActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/MegaActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconFilename(Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 1
    .param p0, "task"    # Landroid/app/ActivityManager$TaskDescription;

    .line 86
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInMemoryIcon(Landroid/app/ActivityManager$TaskDescription;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "task"    # Landroid/app/ActivityManager$TaskDescription;

    .line 82
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "task"    # Landroid/app/ActivityManager$TaskDescription;
    .param p1, "iconFilename"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 91
    invoke-static {p1, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
