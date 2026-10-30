.class public Lcom/mega/nexus/view/MegaWindowManagerUtils;
.super Ljava/lang/Object;
.source "MegaWindowManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowAttributesList(Landroid/view/WindowManager;)Ljava/util/List;
    .locals 1
    .param p0, "windowManager"    # Landroid/view/WindowManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/WindowAttributes;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-interface {p0}, Landroid/view/WindowManager;->getWindowAttributesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static registerWindowAttributesListener(Landroid/view/WindowManager;Landroid/view/IWindowAttributesCallback;)Z
    .locals 1
    .param p0, "windowManager"    # Landroid/view/WindowManager;
    .param p1, "callback"    # Landroid/view/IWindowAttributesCallback;

    .line 12
    invoke-interface {p0, p1}, Landroid/view/WindowManager;->registerWindowAttributesListener(Landroid/view/IWindowAttributesCallback;)Z

    move-result v0

    return v0
.end method

.method public static unregisterWindowAttributesListener(Landroid/view/WindowManager;Landroid/view/IWindowAttributesCallback;)Z
    .locals 1
    .param p0, "windowManager"    # Landroid/view/WindowManager;
    .param p1, "callback"    # Landroid/view/IWindowAttributesCallback;

    .line 17
    invoke-interface {p0, p1}, Landroid/view/WindowManager;->unregisterWindowAttributesListener(Landroid/view/IWindowAttributesCallback;)Z

    move-result v0

    return v0
.end method
