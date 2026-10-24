.class public Lcom/mega/engineeringmode/function/display/VideoActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public i:Landroid/widget/VideoView;

.field public j:I

.field public k:Landroid/os/HandlerThread;

.field public l:Landroid/os/Handler;

.field public m:Landroid/content/ContentResolver;

.field public n:Ln1/p;

.field public final o:Lcom/mega/engineeringmode/function/display/VideoActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/display/VideoActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/display/VideoActivity$a;-><init>(Lcom/mega/engineeringmode/function/display/VideoActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->o:Lcom/mega/engineeringmode/function/display/VideoActivity$a;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playVideo  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/a;->c(I)Ln1/e;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p1, Ln1/e;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Ln1/e;->y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "playVideo  err path empty"

    invoke-static {v1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string/jumbo p0, "playAudio path err"

    invoke-static {v1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    const p1, 0x7f0d0086

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201d0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p1, 0x7f0a02df

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    new-instance v0, Ln1/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    new-instance v0, Ln1/n;

    invoke-direct {v0, p0}, Ln1/n;-><init>(Lcom/mega/engineeringmode/function/display/VideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    new-instance v0, Ln1/o;

    invoke-direct {v0, p0}, Ln1/o;-><init>(Lcom/mega/engineeringmode/function/display/VideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_1
    const p1, 0x7f0a00ae

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lq0/a;

    const/16 v2, 0x9

    invoke-direct {v0, v2, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VideoActivity"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->l:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->m:Landroid/content/ContentResolver;

    new-instance p1, Ln1/p;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->l:Landroid/os/Handler;

    invoke-direct {p1, p0, v2}, Ln1/p;-><init>(Lcom/mega/engineeringmode/function/display/VideoActivity;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->n:Ln1/p;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->m:Landroid/content/ContentResolver;

    const-string v2, "mega_android_power_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->n:Ln1/p;

    const/4 v5, -0x2

    invoke-static {p1, v3, v4, v5}, Lb1/a;->r(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->m:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3, v5}, Lt2/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const-string/jumbo v2, "onCreate powerState  "

    invoke-static {v2, p1, v0}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p1, v3, :cond_3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "vedio_pos"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->j:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/VideoActivity;->n(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    :goto_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->o:Lcom/mega/engineeringmode/function/display/VideoActivity$a;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "VideoActivity"

    const-string v1, " onDestroy "

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopVedio  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->m:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->n:Ln1/p;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_2
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->o:Lcom/mega/engineeringmode/function/display/VideoActivity$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const-string p0, "VideoActivity"

    const-string/jumbo v0, "onStop"

    invoke-static {p0, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
