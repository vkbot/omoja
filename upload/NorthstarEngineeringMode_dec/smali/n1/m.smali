.class public final synthetic Ln1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    sget p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->p:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
