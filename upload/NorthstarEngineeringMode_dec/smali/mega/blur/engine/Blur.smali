.class public Lmega/blur/engine/Blur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/blur/engine/BlurEngine;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Blur"


# instance fields
.field private final mBlurEngine:Lmega/blur/engine/BlurEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmega/blur/engine/BlurConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmega/blur/engine/RenderScriptBlur;

    invoke-direct {v0, p1, p2}, Lmega/blur/engine/RenderScriptBlur;-><init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V

    iput-object v0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    sget-object p0, Lmega/blur/engine/Blur;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Used Blur Method: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lmega/blur/engine/BlurEngine;->methodDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    iget-object p0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    invoke-interface {p0}, Lmega/blur/engine/BlurEngine;->destroy()V

    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    .line 2
    invoke-interface {p0, p1, p2}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    .line 1
    invoke-interface {p0, p1, p2}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmega/blur/engine/BlurEngine$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    .line 4
    invoke-interface {p0, p1, p2, p3}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;ZLmega/blur/engine/BlurEngine$Callback;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmega/blur/engine/BlurEngine$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lmega/blur/engine/BlurEngine;->execute(Landroid/graphics/Bitmap;ZLmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method

.method public methodDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lmega/blur/engine/Blur;->mBlurEngine:Lmega/blur/engine/BlurEngine;

    invoke-interface {p0}, Lmega/blur/engine/BlurEngine;->methodDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
