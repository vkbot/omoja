.class public Lcom/mega/engineeringmode/function/display/AudioActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public i:I

.field public j:Landroid/os/HandlerThread;

.field public k:Landroid/os/Handler;

.field public l:Landroid/content/ContentResolver;

.field public m:Ln1/a;

.field public n:Landroid/media/MediaPlayer;

.field public final o:Lcom/mega/engineeringmode/function/display/AudioActivity$a;

.field public final p:Lcom/mega/engineeringmode/function/display/AudioActivity$b;

.field public final q:Lcom/mega/engineeringmode/function/display/AudioActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/display/AudioActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/display/AudioActivity$a;-><init>(Lcom/mega/engineeringmode/function/display/AudioActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->o:Lcom/mega/engineeringmode/function/display/AudioActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/display/AudioActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/display/AudioActivity$b;-><init>(Lcom/mega/engineeringmode/function/display/AudioActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->p:Lcom/mega/engineeringmode/function/display/AudioActivity$b;

    new-instance v0, Lcom/mega/engineeringmode/function/display/AudioActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/display/AudioActivity$c;-><init>(Lcom/mega/engineeringmode/function/display/AudioActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->q:Lcom/mega/engineeringmode/function/display/AudioActivity$c;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playAudio "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/a;->a(I)Ln1/e;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Ln1/e;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->o:Lcom/mega/engineeringmode/function/display/AudioActivity$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->p:Lcom/mega/engineeringmode/function/display/AudioActivity$b;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    iget-object p1, p1, Ln1/e;->y:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string/jumbo p0, "playAudio path err"

    invoke-static {v1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f1201d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lq0/a;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->j:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->k:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->l:Landroid/content/ContentResolver;

    new-instance v0, Ln1/a;

    iget-object v3, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->k:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Ln1/a;-><init>(Lcom/mega/engineeringmode/function/display/AudioActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->m:Ln1/a;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->l:Landroid/content/ContentResolver;

    const-string v3, "mega_android_power_status"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->m:Ln1/a;

    const/4 v6, -0x2

    invoke-static {v0, v4, v5, v6}, Lb1/a;->r(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->l:Landroid/content/ContentResolver;

    invoke-static {v0, v3, p1, v6}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v3, "onCreate powerState  "

    invoke-static {v3, v0, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq v0, p1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "audio_pos"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->i:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/AudioActivity;->n(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    :goto_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->q:Lcom/mega/engineeringmode/function/display/AudioActivity$c;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "AudioActivity"

    const-string v1, " onDestroy "

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "stopAudio"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->n:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->l:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->m:Ln1/a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_2
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->q:Lcom/mega/engineeringmode/function/display/AudioActivity$c;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string p0, "AudioActivity"

    const-string/jumbo v0, "onStop"

    invoke-static {p0, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
