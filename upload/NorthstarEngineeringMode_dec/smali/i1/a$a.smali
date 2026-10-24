.class public final Li1/a$a;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/a;


# direct methods
.method public constructor <init>(Li1/a;)V
    .locals 0

    iput-object p1, p0, Li1/a$a;->a:Li1/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Camera2Manager"

    const-string v0, "camera disconnected"

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Li1/a$a;->a:Li1/a;

    iget-object p0, p0, Li1/a;->i:Landroidx/constraintlayout/core/state/a;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Camera2Manager"

    const-string p2, "camera openError"

    invoke-static {p1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Li1/a$a;->a:Li1/a;

    iget-object p0, p0, Li1/a;->i:Landroidx/constraintlayout/core/state/a;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Camera2Manager"

    const-string v1, "camera opened"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Li1/a$a;->a:Li1/a;

    iput-object p1, p0, Li1/a;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0}, Li1/a;->b()V

    iget-object p0, p0, Li1/a;->i:Landroidx/constraintlayout/core/state/a;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/a;->a(Z)V

    :cond_0
    return-void
.end method
