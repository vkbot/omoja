.class public final Lcom/mega/nexus/view/MegaSurfaceControl;
.super Ljava/lang/Object;
.source "MegaSurfaceControl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/mega/nexus/view/MegaSurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/nexus/view/MegaSurfaceControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotation"    # I

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/mega/nexus/view/MegaSurfaceControlAdapter;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setBackgroundBlurRadius(Landroid/view/View;I)Z
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "radius"    # I

    .line 27
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 28
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 29
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 30
    sget-object v3, Lcom/mega/nexus/view/MegaSurfaceControl;->TAG:Ljava/lang/String;

    const-string v4, "viewRoot is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v2

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 34
    .local v3, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 35
    sget-object v4, Lcom/mega/nexus/view/MegaSurfaceControl;->TAG:Ljava/lang/String;

    const-string v5, "surfaceControl is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v2

    .line 38
    :cond_1
    invoke-virtual {v0, v3, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 39
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 40
    const/4 v2, 0x1

    return v2
.end method
