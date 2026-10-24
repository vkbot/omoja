.class public abstract Lcom/android/managedprovisioning/common/SetupLayoutActivity;
.super Landroid/app/Activity;
.source "SetupLayoutActivity.java"


# instance fields
.field private mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

.field protected final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method private toSolidColor(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {v1, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getUtils()Lcom/android/managedprovisioning/common/Utils;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-object p0
.end method

.method protected isDialogAdded(Ljava/lang/String;)Z
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance p1, Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getMetricsCategory()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    .line 61
    invoke-virtual {p1}, Lcom/android/managedprovisioning/analytics/TimeLogger;->start()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->stop()V

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected setStatusBarColor(I)V
    .locals 3

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->toSolidColor(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/managedprovisioning/common/Utils;->isBrightColor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v1, -0x2001

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method protected showDialog(Lcom/android/managedprovisioning/common/DialogBuilder;Ljava/lang/String;)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->isDialogAdded(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 122
    invoke-interface {p1}, Lcom/android/managedprovisioning/common/DialogBuilder;->build()Landroid/app/DialogFragment;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
