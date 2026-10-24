.class public Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final synthetic m:I


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Li1/a;

.field public k:Ljava/lang/String;

.field public l:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0054

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a017a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a007c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "open_camera_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->k:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->i:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0a00de

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->l:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p1, Li1/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Li1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->j:Li1/a;

    new-instance v0, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/state/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Li1/a;->i:Landroidx/constraintlayout/core/state/a;

    :goto_0
    const p1, 0x7f1201c5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lf/c;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->j:Li1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "setPreviewTexture"

    const-string v2, "Camera2Manager"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Li1/a;->f:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->j:Li1/a;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->k:Ljava/lang/String;

    iget-object v1, p1, Li1/a;->a:Landroid/hardware/camera2/CameraManager;

    const-string/jumbo v3, "width=="

    const-string v4, "height=="

    iget-object v5, p1, Li1/a;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string/jumbo v5, "releaseCamera"

    invoke-static {v2, v5}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Li1/a;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v6, p1, Li1/a;->c:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v5, p1, Li1/a;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v6, p1, Li1/a;->b:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_2

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, p2, p3}, Li1/a;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object p2

    iput-object p2, p1, Li1/a;->g:Landroid/util/Size;

    iget-object p1, p1, Li1/a;->j:Li1/a$a;

    invoke-virtual {v1, v0, p1, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot get available preview/video sizes"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->j:Li1/a;

    invoke-virtual {p0}, Li1/a;->b()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onSurfaceTextureAvailable  "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPreviewActivity"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "CameraPreviewActivity"

    const-string/jumbo p1, "onSurfaceTextureDestroyed"

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
