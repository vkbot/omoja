.class public Lorg/vosk/android/SpeechStreamService;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vosk/android/SpeechStreamService$RecognizerThread;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_SECONDS:F = 0.2f


# instance fields
.field private final bufferSize:I

.field private final inputStream:Ljava/io/InputStream;

.field private final mainHandler:Landroid/os/Handler;

.field private final recognizer:Lorg/vosk/Recognizer;

.field private recognizerThread:Ljava/lang/Thread;

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Lorg/vosk/Recognizer;Ljava/io/InputStream;F)V
    .registers 6

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
    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->mainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/vosk/android/SpeechStreamService;->recognizer:Lorg/vosk/Recognizer;

    .line 16
    .line 17
    float-to-int p1, p3

    .line 18
    iput p1, p0, Lorg/vosk/android/SpeechStreamService;->sampleRate:I

    .line 19
    .line 20
    iput-object p2, p0, Lorg/vosk/android/SpeechStreamService;->inputStream:Ljava/io/InputStream;

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    const p2, 0x3e4ccccd    # 0.2f

    .line 24
    .line 25
    .line 26
    mul-float/2addr p1, p2

    .line 27
    const/high16 p2, 0x40000000    # 2.0f

    .line 28
    .line 29
    mul-float/2addr p1, p2

    .line 30
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lorg/vosk/android/SpeechStreamService;->bufferSize:I

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic access$000(Lorg/vosk/android/SpeechStreamService;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/vosk/android/SpeechStreamService;->sampleRate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lorg/vosk/android/SpeechStreamService;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/vosk/android/SpeechStreamService;->bufferSize:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lorg/vosk/android/SpeechStreamService;)Ljava/io/InputStream;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/vosk/android/SpeechStreamService;->inputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/vosk/android/SpeechStreamService;->recognizer:Lorg/vosk/Recognizer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/vosk/android/SpeechStreamService;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public start(Lorg/vosk/android/RecognitionListener;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

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
    new-instance v0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

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

.method public start(Lorg/vosk/android/RecognitionListener;I)Z
    .registers 4

    .line 19
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_6
    new-instance v0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;

    invoke-direct {v0, p0, p1, p2}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;I)V

    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public stop()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

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
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

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
    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0
.end method
