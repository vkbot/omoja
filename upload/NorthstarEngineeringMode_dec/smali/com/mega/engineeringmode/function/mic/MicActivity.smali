.class public Lcom/mega/engineeringmode/function/mic/MicActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/LinearLayout;

.field public n:Lcom/mega/engineeringmode/function/mic/a;

.field public final o:Landroid/os/Handler;

.field public p:Landroid/media/AudioManager;

.field public q:J

.field public r:Ljava/util/concurrent/ExecutorService;

.field public final s:Lcom/mega/engineeringmode/function/mic/MicActivity$a;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public final v:Lcom/mega/engineeringmode/function/mic/MicActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->o:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->q:J

    new-instance v0, Lcom/mega/engineeringmode/function/mic/MicActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/mic/MicActivity$a;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->s:Lcom/mega/engineeringmode/function/mic/MicActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/mic/MicActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/mic/MicActivity$c;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->v:Lcom/mega/engineeringmode/function/mic/MicActivity$c;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 9

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clickRecordBtn  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    iget-object v1, v1, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    sget-object v2, Lcom/mega/engineeringmode/function/mic/a$b;->c:Lcom/mega/engineeringmode/function/mic/a$b;

    iget-object v3, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->v:Lcom/mega/engineeringmode/function/mic/MicActivity$c;

    iget-object v4, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->o:Landroid/os/Handler;

    sget-object v5, Lcom/mega/engineeringmode/function/mic/a$b;->r:Lcom/mega/engineeringmode/function/mic/a$b;

    const/4 v6, 0x1

    const-string v7, "/ch_1_record.wav"

    const-string v8, "MicPresenter"

    if-ne v1, v2, :cond_3

    iput-object v5, v0, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    const-string/jumbo v1, "startRecord"

    invoke-static {v8, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v6}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :try_start_0
    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "prepare() failed:"

    invoke-static {v8, v2}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->c:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/mic/a;->b()V

    :goto_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f120220

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    const-wide/16 v0, 0x7530

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :cond_3
    sget-object v2, Lcom/mega/engineeringmode/function/mic/a$b;->x:Lcom/mega/engineeringmode/function/mic/a$b;

    if-ne v1, v5, :cond_4

    iput-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/mic/a;->a()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f120217

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_4
    sget-object v3, Lcom/mega/engineeringmode/function/mic/a$b;->y:Lcom/mega/engineeringmode/function/mic/a$b;

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_9

    :cond_5
    iput-object v3, v0, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    const-string v1, "file: "

    const-string/jumbo v2, "playRecord"

    invoke-static {v8, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->b:Landroid/content/Context;

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sdcardPath "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->a:Landroid/media/AudioManager;

    iget-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->g:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1

    if-eq v1, v6, :cond_7

    const-string v0, "We can\'t gain audio focus, so do nothing"

    invoke-static {v8, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    new-instance v2, Lu1/e;

    invoke-direct {v2, v0}, Lu1/e;-><init>(Lcom/mega/engineeringmode/function/mic/a;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string/jumbo v1, "prepare() failed"

    invoke-static {v8, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final o(I)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->q:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    const-string v1, "MicActivity"

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const-string p1, "MININUM_CLICK_INTERVAL"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f12021e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->q:J

    const-string/jumbo v0, "selectMicRoad "

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->j:Landroid/widget/Button;

    if-ne v1, p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->t:Landroid/view/View;

    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->u:Landroid/view/View;

    const/4 v3, 0x3

    if-ne v3, p1, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5

    const-string v2, "MicPresenter"

    const-string/jumbo v3, "stopPlaying"

    invoke-static {v2, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    :cond_5
    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/mic/a;->a()V

    :cond_6
    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->r:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_7

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->r:Ljava/util/concurrent/ExecutorService;

    :cond_7
    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mega/engineeringmode/function/mic/MicActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/mega/engineeringmode/function/mic/MicActivity$b;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201d4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a0277

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->i:Landroid/widget/Button;

    const p1, 0x7f0a0278

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->j:Landroid/widget/Button;

    const p1, 0x7f0a0276

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    const p1, 0x7f0a027b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a027f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->l:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->i:Landroid/widget/Button;

    new-instance v0, Lu1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu1/a;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->j:Landroid/widget/Button;

    new-instance v0, Lu1/b;

    invoke-direct {v0, p0, v1}, Lu1/b;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    new-instance v0, Lx0/b;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0279

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->t:Landroid/view/View;

    new-instance v0, Lu1/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lu1/a;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a027a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->u:Landroid/view/View;

    new-instance v0, Lu1/b;

    invoke-direct {v0, p0, v1}, Lu1/b;-><init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->p:Landroid/media/AudioManager;

    new-instance p1, Lcom/mega/engineeringmode/function/mic/a;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/mic/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/mic/a;->a()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    const-string v1, "MicPresenter"

    const-string/jumbo v2, "stopPlaying"

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->d:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->s:Lcom/mega/engineeringmode/function/mic/MicActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->v:Lcom/mega/engineeringmode/function/mic/MicActivity$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method
