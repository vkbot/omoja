.class public Lcom/mega/nexus/app/MegaUiModeManager;
.super Ljava/lang/Object;
.source "MegaUiModeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNightModeActivated(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activate"    # Z

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const-class v0, Landroid/app/UiModeManager;

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 13
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 14
    return-void
.end method
