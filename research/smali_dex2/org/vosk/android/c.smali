.class public final synthetic Lorg/vosk/android/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/vosk/android/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/vosk/android/c;->c:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget v0, p0, Lorg/vosk/android/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/vosk/android/c;->c:Ljava/lang/Thread;

    .line 7
    .line 8
    check-cast v0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;

    .line 9
    .line 10
    invoke-static {v0}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->b(Lorg/vosk/android/SpeechStreamService$RecognizerThread;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lorg/vosk/android/c;->c:Ljava/lang/Thread;

    .line 15
    .line 16
    check-cast v0, Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->a(Lorg/vosk/android/SpeechService$RecognizerThread;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
