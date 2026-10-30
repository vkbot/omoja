.class public Lcom/mega/nexus/app/MegaNotificationManager;
.super Ljava/lang/Object;
.source "MegaNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageContext(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p1, "content"    # Landroid/content/Context;

    .line 14
    invoke-virtual {p0, p1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getZenMode(Landroid/app/NotificationManager;)I
    .locals 1
    .param p0, "manager"    # Landroid/app/NotificationManager;

    .line 10
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method
