.class final Lorg/vosk/android/SpeechStreamService$RecognizerThread;
.super Ljava/lang/Thread;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vosk/android/SpeechStreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecognizerThread"
.end annotation


# static fields
.field private static final NO_TIMEOUT:I = -0x1


# instance fields
.field listener:Lorg/vosk/android/RecognitionListener;

.field private remainingSamples:I

.field final synthetic this$0:Lorg/vosk/android/SpeechStreamService;

.field private final timeoutSamples:I


# direct methods
.method public constructor <init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 7
    .line 8
    const/4 p2, -0x1

    .line 9
    if-eq p3, p2, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lorg/vosk/android/SpeechStreamService;->access$000(Lorg/vosk/android/SpeechStreamService;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    mul-int/2addr p1, p3

    .line 16
    div-int/lit16 p1, p1, 0x3e8

    .line 17
    .line 18
    iput p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput p2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 22
    .line 23
    :goto_0
    iget p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 24
    .line 25
    iput p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->lambda$run$4(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/vosk/android/SpeechStreamService$RecognizerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->lambda$run$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->lambda$run$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->lambda$run$2(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->lambda$run$1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onPartialResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$2(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onError(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/vosk/android/RecognitionListener;->onTimeout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$4(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onFinalResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/vosk/android/SpeechStreamService;->access$100(Lorg/vosk/android/SpeechStreamService;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-nez v2, :cond_4

    .line 15
    .line 16
    iget v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 17
    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    iget v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    .line 21
    .line 22
    if-lez v2, :cond_4

    .line 23
    .line 24
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 25
    .line 26
    invoke-static {v2}, Lorg/vosk/android/SpeechStreamService;->access$200(Lorg/vosk/android/SpeechStreamService;)Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-gez v2, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    iget-object v4, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 39
    .line 40
    invoke-static {v4}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v1, v2}, Lorg/vosk/Recognizer;->acceptWaveForm([BI)Z

    .line 45
    .line 46
    .line 47
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v5, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    :try_start_1
    invoke-static {v5}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 61
    .line 62
    invoke-static {v5}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    new-instance v6, Lorg/vosk/android/d;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-direct {v6, p0, v4, v7}, Lorg/vosk/android/d;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-static {v5}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget-object v5, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 87
    .line 88
    invoke-static {v5}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    new-instance v6, Lorg/vosk/android/d;

    .line 93
    .line 94
    const/4 v7, 0x1

    .line 95
    invoke-direct {v6, p0, v4, v7}, Lorg/vosk/android/d;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    :goto_1
    iget v4, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 102
    .line 103
    if-eq v4, v3, :cond_0

    .line 104
    .line 105
    iget v3, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    .line 106
    .line 107
    sub-int/2addr v3, v2

    .line 108
    iput v3, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :goto_2
    iget-object v3, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 112
    .line 113
    invoke-static {v3}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v4, Lorg/vosk/android/a;

    .line 118
    .line 119
    const/4 v5, 0x1

    .line 120
    invoke-direct {v4, v5, p0, v2}, Lorg/vosk/android/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    :goto_3
    iget v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 128
    .line 129
    if-eq v0, v3, :cond_5

    .line 130
    .line 131
    iget v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    .line 132
    .line 133
    if-gtz v0, :cond_5

    .line 134
    .line 135
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 136
    .line 137
    invoke-static {v0}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lorg/vosk/android/c;

    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-direct {v1, p0, v2}, Lorg/vosk/android/c;-><init>(Ljava/lang/Thread;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 152
    .line 153
    invoke-static {v0}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/vosk/Recognizer;->getFinalResult()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    .line 162
    .line 163
    invoke-static {v1}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Lorg/vosk/android/d;

    .line 168
    .line 169
    const/4 v3, 0x2

    .line 170
    invoke-direct {v2, p0, v0, v3}, Lorg/vosk/android/d;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    :goto_4
    return-void
.end method
