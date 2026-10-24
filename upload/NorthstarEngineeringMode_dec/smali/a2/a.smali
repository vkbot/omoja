.class public final La2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public b:Landroid/media/MediaPlayer;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile e:Z

.field public volatile f:Z

.field public g:Landroid/media/AudioAttributes;

.field public h:La2/d;

.field public i:I

.field public final j:La2/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, La2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, La2/a;->i:I

    new-instance v0, La2/a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La2/a;->j:La2/a$a;

    iput-object p1, p0, La2/a;->c:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, La2/a;->a:Landroid/media/AudioManager;

    const-string p0, "AudioPlayer"

    invoke-static {p0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 6

    const-string v0, "AudioPlayer"

    const-string v1, "AudioPlayer start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, La2/a;->i:I

    const/4 v1, 0x1

    iput-boolean v1, p0, La2/a;->e:Z

    iput-boolean p2, p0, La2/a;->f:Z

    packed-switch p1, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    move p2, v1

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x3ea

    goto :goto_0

    :pswitch_2
    const/16 p2, 0xd

    goto :goto_0

    :pswitch_3
    const/16 p2, 0xc

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x2

    :goto_0
    if-nez p2, :cond_0

    const-string p0, "USAGE_UNKNOWN"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    iput-object p2, p0, La2/a;->g:Landroid/media/AudioAttributes;

    iget-boolean p2, p0, La2/a;->e:Z

    if-eqz p2, :cond_2

    new-instance p2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v2, p0, La2/a;->j:La2/a$a;

    invoke-virtual {p2, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    iget-object v2, p0, La2/a;->g:Landroid/media/AudioAttributes;

    invoke-virtual {p2, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/media/AudioFocusRequest$Builder;->setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p2

    iget-object v2, p0, La2/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v2, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p2

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MediaPlayer denied focus for usage "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, La2/a;->g:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer got focus for usage "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La2/a;->g:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, La2/a;->h:La2/d;

    if-eqz p2, :cond_3

    packed-switch p1, :pswitch_data_1

    const p1, 0x7f120373

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    goto :goto_2

    :pswitch_5
    const p1, 0x7f1202d1

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    goto :goto_2

    :pswitch_6
    const p1, 0x7f1202cb

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    goto :goto_2

    :pswitch_7
    const p1, 0x7f1202ca

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    goto :goto_2

    :pswitch_8
    const p1, 0x7f1202c8

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    goto :goto_2

    :pswitch_9
    const p1, 0x7f1202cc

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    goto :goto_2

    :pswitch_a
    const p1, 0x7f1202ce

    check-cast p2, La2/i;

    invoke-virtual {p2, p1}, La2/i;->b(I)V

    :cond_3
    :goto_2
    iget-object p1, p0, La2/a;->g:Landroid/media/AudioAttributes;

    const-string p2, "doStart audio"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, La2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "already playing"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, La2/a;->b:Landroid/media/MediaPlayer;

    new-instance v0, La2/b;

    invoke-direct {v0, p0}, La2/b;-><init>(La2/a;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p2, p0, La2/a;->b:Landroid/media/MediaPlayer;

    new-instance v0, La2/c;

    invoke-direct {v0, p0}, La2/c;-><init>(La2/a;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p2, p0, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object p1, p0, La2/a;->b:Landroid/media/MediaPlayer;

    iget-boolean p2, p0, La2/a;->f:Z

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, La2/a;->b:Landroid/media/MediaPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :try_start_0
    iget-object p1, p0, La2/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110004

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object p1, p0, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_3
    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "resource not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, La2/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, "AudioPlayer"

    if-nez v0, :cond_0

    const-string p0, "already stopped"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "stop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La2/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, La2/a;->b:Landroid/media/MediaPlayer;

    iput-object v0, p0, La2/a;->g:Landroid/media/AudioAttributes;

    iget-boolean v0, p0, La2/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La2/a;->a:Landroid/media/AudioManager;

    iget-object v1, p0, La2/a;->j:La2/a$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    iget-object p0, p0, La2/a;->h:La2/d;

    const v0, 0x7f1202cd

    check-cast p0, La2/i;

    invoke-virtual {p0, v0}, La2/i;->b(I)V

    return-void
.end method
