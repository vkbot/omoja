.class public final synthetic Lorg/vosk/android/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Lorg/vosk/android/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/vosk/android/a;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/vosk/android/a;->c:Ljava/lang/Object;

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
    .registers 3

    .line 1
    iget v0, p0, Lorg/vosk/android/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/vosk/android/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/vosk/android/StorageService$Callback;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/vosk/android/a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/io/IOException;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/vosk/android/StorageService;->c(Lorg/vosk/android/StorageService$Callback;Ljava/io/IOException;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Lorg/vosk/android/a;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/vosk/android/StorageService$Callback;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/vosk/android/a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lorg/vosk/Model;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/vosk/android/StorageService;->b(Lorg/vosk/android/StorageService$Callback;Lorg/vosk/Model;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1d
    iget-object v0, p0, Lorg/vosk/android/a;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;

    .line 33
    .line 34
    iget-object v1, p0, Lorg/vosk/android/a;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/io/IOException;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->d(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/io/IOException;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_29
    iget-object v0, p0, Lorg/vosk/android/a;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 45
    .line 46
    iget-object v1, p0, Lorg/vosk/android/a;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/io/IOException;

    .line 49
    .line 50
    invoke-static {v0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread;->d(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/io/IOException;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method
