.class public Lmega/blur/utils/BlurUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUFFER_PERMISSION:Ljava/lang/String; = "android.permission.READ_FRAME_BUFFER"

.field private static final TAG:Ljava/lang/String; = "BlurUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurDialogBackground(Landroid/app/Dialog;II)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string p1, "context is null.."

    invoke-static {p0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "window is null.."

    invoke-static {p0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0}, Lmega/blur/utils/BlurUtils;->captureFullScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "#25000000"

    if-nez v1, :cond_2

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "screenshot is null, set default background"

    invoke-static {p0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Lmega/blur/engine/Blur;

    new-instance v5, Lmega/blur/engine/BlurConfig$Builder;

    invoke-direct {v5}, Lmega/blur/engine/BlurConfig$Builder;-><init>()V

    invoke-virtual {v5, p1}, Lmega/blur/engine/BlurConfig$Builder;->radius(I)Lmega/blur/engine/BlurConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmega/blur/engine/BlurConfig$Builder;->build()Lmega/blur/engine/BlurConfig;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lmega/blur/engine/Blur;-><init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V

    invoke-interface {v1, v3, v4}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v1}, Lmega/blur/engine/BlurEngine;->destroy()V

    if-nez p1, :cond_3

    sget-object v1, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string v3, "blur failed, set default background"

    invoke-static {v1, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static captureFullScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string v0, "do screenshot but context is null"

    invoke-static {p0, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v0}, Lu2/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string v1, "Please checkout your manifest\uff0cwe need permission: android.permission.READ_FRAME_BUFFER"

    invoke-static {p0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "We have the permission to screenshot, but we still failed, permission cache may not updated, uninstall your app then retry.."

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static captureSelectScreen(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string p1, "do screenshot but context is null"

    .line 1
    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 4
    invoke-static {p1, v0, v1}, Lu2/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string v0, "android.permission.READ_FRAME_BUFFER"

    .line 5
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string v1, "Please checkout your manifest\uff0cwe need permission: android.permission.READ_FRAME_BUFFER"

    .line 6
    invoke-static {v0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "We have the permission to screenshot, but we still failed, permission cache may not updated, uninstall your app then retry.."

    .line 7
    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    new-instance p1, Lmega/blur/engine/Blur;

    new-instance v2, Lmega/blur/engine/BlurConfig$Builder;

    invoke-direct {v2}, Lmega/blur/engine/BlurConfig$Builder;-><init>()V

    .line 11
    invoke-virtual {v2, p2}, Lmega/blur/engine/BlurConfig$Builder;->radius(I)Lmega/blur/engine/BlurConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lmega/blur/engine/BlurConfig$Builder;->build()Lmega/blur/engine/BlurConfig;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmega/blur/engine/Blur;-><init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V

    .line 12
    invoke-interface {p1, v0, v1}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 13
    invoke-interface {p1}, Lmega/blur/engine/BlurEngine;->destroy()V

    return-object p0
.end method

.method public static captureSelectScreen(Landroid/content/Context;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string p1, "do screenshot but context is null"

    .line 14
    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 16
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 17
    invoke-static {p1, v0, v1}, Lu2/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string v0, "android.permission.READ_FRAME_BUFFER"

    .line 18
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmega/blur/utils/BlurUtils;->TAG:Ljava/lang/String;

    const-string v1, "Please checkout your manifest\uff0cwe need permission: android.permission.READ_FRAME_BUFFER"

    .line 19
    invoke-static {v0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "We have the permission to screenshot, but we still failed, permission cache may not updated, uninstall your app then retry.."

    .line 20
    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v0, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    new-instance p1, Lmega/blur/engine/Blur;

    new-instance v0, Lmega/blur/engine/BlurConfig$Builder;

    invoke-direct {v0}, Lmega/blur/engine/BlurConfig$Builder;-><init>()V

    .line 27
    invoke-virtual {v0, p2}, Lmega/blur/engine/BlurConfig$Builder;->radius(I)Lmega/blur/engine/BlurConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lmega/blur/engine/BlurConfig$Builder;->build()Lmega/blur/engine/BlurConfig;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmega/blur/engine/Blur;-><init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V

    .line 28
    invoke-interface {p1, p3, v1}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 29
    invoke-interface {p1}, Lmega/blur/engine/BlurEngine;->destroy()V

    return-object p0
.end method
