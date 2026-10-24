.class public final Lcom/mega/engineeringmode/function/mic/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/mic/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Landroid/content/Context;

.field public c:Landroid/media/MediaRecorder;

.field public d:Landroid/media/MediaPlayer;

.field public final e:Landroid/os/Handler;

.field public f:Lcom/mega/engineeringmode/function/mic/a$b;

.field public final g:Landroid/media/AudioFocusRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field public final h:Lcom/mega/engineeringmode/function/mic/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->g:Landroid/media/AudioFocusRequest;

    new-instance v0, Lcom/mega/engineeringmode/function/mic/a$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/mic/a$a;-><init>(Lcom/mega/engineeringmode/function/mic/a;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->h:Lcom/mega/engineeringmode/function/mic/a$a;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->e:Landroid/os/Handler;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->a:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const-string v0, "MicPresenter"

    const-string/jumbo v1, "stopRecord"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mega/engineeringmode/function/mic/a;->b:Landroid/content/Context;

    instance-of v3, v2, Lcom/mega/engineeringmode/function/mic/MicActivity;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateDbView:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MicPresenter"

    invoke-static {v4, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/mega/engineeringmode/function/mic/MicActivity;

    iget-object v3, v2, Lcom/mega/engineeringmode/function/mic/MicActivity;->l:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    new-instance v4, Lu1/c;

    invoke-direct {v4, v2, v0, v1}, Lu1/c;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;D)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/a;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/a;->h:Lcom/mega/engineeringmode/function/mic/a$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 0

    return-void
.end method
