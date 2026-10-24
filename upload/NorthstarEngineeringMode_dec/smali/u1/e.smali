.class public final Lu1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/mic/a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/mic/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/e;->a:Lcom/mega/engineeringmode/function/mic/a;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string p1, "MicPresenter"

    const-string/jumbo v0, "onCompletion"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lu1/e;->a:Lcom/mega/engineeringmode/function/mic/a;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->b:Landroid/content/Context;

    instance-of v0, p1, Lcom/mega/engineeringmode/function/mic/MicActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mega/engineeringmode/function/mic/MicActivity;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/mic/MicActivity;->o:Landroid/os/Handler;

    new-instance v1, Lu1/d;

    invoke-direct {v1, p1}, Lu1/d;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/a;->a:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/a;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_1
    return-void
.end method
