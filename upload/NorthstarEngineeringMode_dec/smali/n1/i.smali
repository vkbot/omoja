.class public final Ln1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method
