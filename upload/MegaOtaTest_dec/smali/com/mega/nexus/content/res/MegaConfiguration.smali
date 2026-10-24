.class public Lcom/mega/nexus/content/res/MegaConfiguration;
.super Ljava/lang/Object;
.source "MegaConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 8
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static userSetLocale(Landroid/content/res/Configuration;Z)V
    .locals 0
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "userSetLocale"    # Z

    .line 12
    iput-boolean p1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 13
    return-void
.end method
