.class public final La2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:La2/a;


# direct methods
.method public constructor <init>(La2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/b;->a:La2/a;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "audio error what "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La2/b;->a:La2/a;

    iget-object p1, p1, La2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, La2/b;->a:La2/a;

    iget-boolean p1, p1, La2/a;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, La2/b;->a:La2/a;

    iget-boolean p1, p1, La2/a;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, La2/b;->a:La2/a;

    iget-object p1, p1, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, La2/b;->a:La2/a;

    iget-object p1, p1, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p0, p0, La2/b;->a:La2/a;

    const/4 p1, 0x0

    iput-object p1, p0, La2/a;->b:Landroid/media/MediaPlayer;

    iget-object p1, p0, La2/a;->a:Landroid/media/AudioManager;

    iget-object p0, p0, La2/a;->j:La2/a$a;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return p2
.end method
