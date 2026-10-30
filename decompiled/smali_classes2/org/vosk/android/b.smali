.class public final synthetic Lorg/vosk/android/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/vosk/android/SpeechService$RecognizerThread;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/vosk/android/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/vosk/android/b;->c:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/vosk/android/b;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/vosk/android/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/vosk/android/b;->c:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/vosk/android/b;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread;->c(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lorg/vosk/android/b;->c:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/vosk/android/b;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread;->e(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lorg/vosk/android/b;->c:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/vosk/android/b;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread;->b(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
