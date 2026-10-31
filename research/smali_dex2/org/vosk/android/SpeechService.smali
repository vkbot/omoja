.class public Lorg/vosk/android/SpeechService;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vosk/android/SpeechService$RecognizerThread;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_SECONDS:F = 0.2f


# instance fields
.field private final bufferSize:I

.field private final mainHandler:Landroid/os/Handler;

.field private final recognizer:Lorg/vosk/Recognizer;

.field private recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

.field private final recorder:Landroid/media/AudioRecord;

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Lorg/vosk/Recognizer;F)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/vosk/android/SpeechService;->mainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/vosk/android/SpeechService;->recognizer:Lorg/vosk/Recognizer;

    .line 16
    .line 17
    float-to-int v4, p2

    .line 18
    iput v4, p0, Lorg/vosk/android/SpeechService;->sampleRate:I

    .line 19
    .line 20
    int-to-float p1, v4

    .line 21
    const p2, 0x3e4ccccd    # 0.2f

    .line 22
    .line 23
    .line 24
    mul-float/2addr p1, p2

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lorg/vosk/android/SpeechService;->bufferSize:I

    .line 30
    .line 31
    new-instance v2, Landroid/media/AudioRecord;

    .line 32
    .line 33
    mul-int/lit8 v7, p1, 0x2

    .line 34
    .line 35
    const/4 v3, 0x6

    .line 36
    const/16 v5, 0x10

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_32

    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 52
    .line 53
    .line 54
    const-string p1, "Failed to initialize recorder. Microphone might be already in use."

    .line 55
    .line 56
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    throw p1
.end method

.method public static synthetic access$000(Lorg/vosk/android/SpeechService;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/vosk/android/SpeechService;->sampleRate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/vosk/android/SpeechService;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/vosk/android/SpeechService;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/vosk/android/SpeechService;->bufferSize:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/vosk/android/SpeechService;->recognizer:Lorg/vosk/Recognizer;

    .line 2
    .line 3
    return-object p0
.end method

.method private stopRecognizerThread()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_e} :catch_f

    .line 13
    .line 14
    .line 15
    goto :goto_16

    .line 16
    :catch_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    .line 22
    .line 23
    :goto_16
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0
.end method


# virtual methods
.method public cancel()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread;->setPause(Z)V

    .line 7
    .line 8
    .line 9
    :cond_8
    invoke-direct {p0}, Lorg/vosk/android/SpeechService;->stopRecognizerThread()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public reset()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public setPause(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;->setPause(Z)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startListening(Lorg/vosk/android/RecognitionListener;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    new-instance v0, Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public startListening(Lorg/vosk/android/RecognitionListener;I)Z
    .registers 4

    .line 19
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_6
    new-instance v0, Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-direct {v0, p0, p1, p2}, Lorg/vosk/android/SpeechService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;I)V

    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public stop()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/vosk/android/SpeechService;->stopRecognizerThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
