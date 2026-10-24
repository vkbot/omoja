.class public Lmega/blur/engine/RenderScriptBlur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/blur/engine/BlurEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderScriptBlur"


# instance fields
.field private final mAsyncTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlurConfig:Lmega/blur/engine/BlurConfig;

.field private mHeight:I

.field private mInput:Landroid/renderscript/Allocation;

.field private final mLock:Ljava/lang/Object;

.field private mOutput:Landroid/renderscript/Allocation;

.field private final mRs:Landroid/renderscript/RenderScript;

.field private final mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mWidth:I


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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mAsyncTasks:Ljava/util/List;

    iput-object p2, p0, Lmega/blur/engine/RenderScriptBlur;->mBlurConfig:Lmega/blur/engine/BlurConfig;

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lmega/blur/engine/RenderScriptBlur;->mRs:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lmega/blur/engine/RenderScriptBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/blur/engine/RenderScriptBlur;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lmega/blur/engine/RenderScriptBlur;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmega/blur/engine/RenderScriptBlur;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lmega/blur/engine/RenderScriptBlur;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmega/blur/engine/RenderScriptBlur;->mAsyncTasks:Ljava/util/List;

    return-object p0
.end method

.method private blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lmega/blur/engine/RenderScriptBlur;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lmega/blur/engine/RenderScriptBlur;->mInput:Landroid/renderscript/Allocation;

    if-eqz v5, :cond_0

    iget v5, p0, Lmega/blur/engine/RenderScriptBlur;->mWidth:I

    if-ne v5, v2, :cond_0

    iget v5, p0, Lmega/blur/engine/RenderScriptBlur;->mHeight:I

    if-eq v5, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput v2, p0, Lmega/blur/engine/RenderScriptBlur;->mWidth:I

    iput v3, p0, Lmega/blur/engine/RenderScriptBlur;->mHeight:I

    invoke-direct {p0}, Lmega/blur/engine/RenderScriptBlur;->destroyInputOutput()V

    iget-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mRs:Landroid/renderscript/RenderScript;

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v5, 0x1

    invoke-static {v2, p1, v3, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mInput:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lmega/blur/engine/RenderScriptBlur;->mRs:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mOutput:Landroid/renderscript/Allocation;

    :cond_1
    iget-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lmega/blur/engine/RenderScriptBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mBlurConfig:Lmega/blur/engine/BlurConfig;

    invoke-virtual {v2}, Lmega/blur/engine/BlurConfig;->radius()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object p1, p0, Lmega/blur/engine/RenderScriptBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mInput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p1, p0, Lmega/blur/engine/RenderScriptBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lmega/blur/engine/RenderScriptBlur;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object p0, p0, Lmega/blur/engine/RenderScriptBlur;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_2

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide p0

    sub-long/2addr p0, v0

    sget-object v0, Lmega/blur/engine/RenderScriptBlur;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "RenderScriptBlur took %d ms."

    const-wide/32 v3, 0xf4240

    div-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p2

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private destroyInputOutput()V
    .locals 2

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mInput:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lmega/blur/engine/RenderScriptBlur;->mInput:Landroid/renderscript/Allocation;

    :cond_0
    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lmega/blur/engine/RenderScriptBlur;->mOutput:Landroid/renderscript/Allocation;

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mAsyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mAsyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmega/blur/engine/RenderScriptBlur;->mRs:Landroid/renderscript/RenderScript;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lmega/blur/engine/RenderScriptBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/renderscript/BaseObj;->destroy()V

    :cond_2
    invoke-direct {p0}, Lmega/blur/engine/RenderScriptBlur;->destroyInputOutput()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

    .line 2
    invoke-direct {p0, p1, p2}, Lmega/blur/engine/RenderScriptBlur;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public execute(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lmega/blur/engine/RenderScriptBlur;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 2
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

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mAsyncTasks:Ljava/util/List;

    .line 7
    new-instance v1, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;-><init>(Lmega/blur/engine/RenderScriptBlur;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmega/blur/engine/BlurEngine$Callback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;ZLmega/blur/engine/BlurEngine$Callback;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmega/blur/engine/BlurEngine$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmega/blur/engine/RenderScriptBlur;->mAsyncTasks:Ljava/util/List;

    .line 3
    new-instance v1, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;

    if-eqz p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    invoke-direct {v1, p0, p1, p2, p3}, Lmega/blur/engine/RenderScriptBlur$BlurAsyncTask;-><init>(Lmega/blur/engine/RenderScriptBlur;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lmega/blur/engine/BlurEngine$Callback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 5
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public methodDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "RenderScript\'s ScriptIntrinsicBlur"

    return-object p0
.end method
