.class public final Ln1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/AlertDialog$Builder;

.field public c:Landroid/app/AlertDialog;

.field public d:Landroid/widget/VideoView;

.field public e:I

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Button;


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Ln1/l;->a:Landroid/content/Context;

    invoke-static {v0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/a;->c(I)Ln1/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "playVideo, pos = %s, mediaFile = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbVedioDialog"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v1, v0, Ln1/e;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Ln1/l;->e:I

    iget-object p1, p0, Ln1/l;->f:Landroid/widget/TextView;

    iget-object v1, v0, Ln1/e;->x:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Ln1/e;->y:Ljava/lang/String;

    iget-object v0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    new-instance v1, Ln1/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    new-instance v1, Ln1/j;

    invoke-direct {v1, p0, p1}, Ln1/j;-><init>(Ln1/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    new-instance v1, Ln1/k;

    invoke-direct {v1, p0}, Ln1/k;-><init>(Ln1/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p1, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "playAudio path err"

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
