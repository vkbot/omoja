.class public final La2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:La2/a;


# direct methods
.method public constructor <init>(La2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/c;->a:La2/a;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "AudioPlayer"

    const-string v0, "AudioPlayer onCompletion"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La2/c;->a:La2/a;

    iget-object p1, p1, La2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, La2/c;->a:La2/a;

    iget-boolean p1, p1, La2/a;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, La2/c;->a:La2/a;

    iget-boolean p1, p1, La2/a;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, La2/c;->a:La2/a;

    iget-object p1, p1, La2/a;->b:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, La2/c;->a:La2/a;

    const/4 v0, 0x0

    iput-object v0, p1, La2/a;->b:Landroid/media/MediaPlayer;

    :cond_0
    iget-object p1, p0, La2/c;->a:La2/a;

    iget-object v0, p1, La2/a;->a:Landroid/media/AudioManager;

    iget-object p1, p1, La2/a;->j:La2/a$a;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object p0, p0, La2/c;->a:La2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
