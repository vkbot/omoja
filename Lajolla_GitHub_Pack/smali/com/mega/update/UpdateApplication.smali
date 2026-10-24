.class public Lcom/mega/update/UpdateApplication;
.super Landroid/app/Application;
.source "UpdateApplication.java"


# static fields
.field private static final HUD_SERVICE:Ljava/lang/String; = "com.mega.update.peripheral.HudService"

.field public static final PKGNAME:Ljava/lang/String; = "com.mega.update"

.field private static final PRODUCT_HURON:Ljava/lang/String; = "huron"

.field private static final PRODUCT_NAME:Ljava/lang/String; = "ro.product.name"

.field private static final PRODUCT_TAHOE:Ljava/lang/String; = "tahoe"

.field private static final SYS_UPDATE_USB_AUTO:Ljava/lang/String; = "sys.update.usb.auto"

.field private static final SYS_UPDATE_XCU:Ljava/lang/String; = "sys.update.xcu"

.field private static final TAG:Ljava/lang/String; = "Application"

.field private static final TBOX_SERVICE:Ljava/lang/String; = "com.mega.update.peripheral.TboxService"

.field private static final UPDATE_SERVICE:Ljava/lang/String; = "com.mega.update.service.UpdateService"

.field private static final USB_SERVICE:Ljava/lang/String; = "com.mega.update.usb.UsbService"

.field private static sGlobalContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/UpdateApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/UpdateApplication;

    .line 19
    invoke-direct {p0}, Lcom/mega/update/UpdateApplication;->startUsbMonitor()V

    return-void
.end method

.method private startTboxService()V
    .locals 5

    .line 56
    const-string v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "product":Ljava/lang/String;
    const-string v1, "tahoe"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "huron"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mega.update"

    const-string v4, "com.mega.update.peripheral.TboxService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    sget-object v2, Lcom/mega/update/UpdateApplication;->sGlobalContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 62
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private startUpdateService()V
    .locals 4

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.update"

    const-string v3, "com.mega.update.service.UpdateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    sget-object v1, Lcom/mega/update/UpdateApplication;->sGlobalContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 53
    return-void
.end method

.method private startUsbMonitor()V
    .locals 4

    .line 65
    const-string v0, "sys.update.usb.auto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.update"

    const-string v3, "com.mega.update.usb.UsbService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    sget-object v1, Lcom/mega/update/UpdateApplication;->sGlobalContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 71
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 37
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 38
    invoke-virtual {p0}, Lcom/mega/update/UpdateApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mega/update/UpdateApplication;->sGlobalContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/mega/update/UpdateApplication;->startUpdateService()V

    .line 40
    invoke-direct {p0}, Lcom/mega/update/UpdateApplication;->startTboxService()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mega/update/UpdateApplication$1;

    invoke-direct {v1, p0}, Lcom/mega/update/UpdateApplication$1;-><init>(Lcom/mega/update/UpdateApplication;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method
