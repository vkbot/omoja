.class public final Lcom/google/android/setupcompat/util/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;,
        Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;
    }
.end annotation


# direct methods
.method public static addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    .line 107
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$1;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/util/SystemBarHelper$1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/View;I)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr p1, v0

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/Window;I)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V
    .locals 2

    .line 307
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;-><init>(Lcom/google/android/setupcompat/util/SystemBarHelper$1;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;I)V

    return-void
.end method

.method public static hideSystemBars(Landroid/app/Dialog;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->temporarilyDisableDialogFocus(Landroid/view/Window;)V

    const/16 v0, 0x1002

    .line 141
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    .line 142
    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method private static temporarilyDisableDialogFocus(Landroid/view/Window;)V
    .locals 2

    const/16 v0, 0x8

    .line 250
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x100

    .line 256
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/setupcompat/util/SystemBarHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/util/SystemBarHelper$3;-><init>(Landroid/view/Window;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
