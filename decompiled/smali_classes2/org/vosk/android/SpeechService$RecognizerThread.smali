.class final Lorg/vosk/android/SpeechService$RecognizerThread;
.super Ljava/lang/Thread;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vosk/android/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecognizerThread"
.end annotation


# static fields
.field private static final NO_TIMEOUT:I = -0x1


# instance fields
.field listener:Lorg/vosk/android/RecognitionListener;

.field private volatile paused:Z

.field private remainingSamples:I

.field private volatile reset:Z

.field final synthetic this$0:Lorg/vosk/android/SpeechService;

.field private final timeoutSamples:I


# direct methods
.method public constructor <init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lorg/vosk/android/SpeechService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 10
    .line 11
    iput-object p2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    if-eq p3, p2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lorg/vosk/android/SpeechService;->access$000(Lorg/vosk/android/SpeechService;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    mul-int/2addr p1, p3

    .line 21
    div-int/lit16 p1, p1, 0x3e8

    .line 22
    .line 23
    iput p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput p2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 29
    .line 30
    iput p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lorg/vosk/android/SpeechService$RecognizerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/vosk/android/SpeechService$RecognizerThread;->lambda$run$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;->lambda$run$1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;->lambda$run$4(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;->lambda$run$0(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;->lambda$run$2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$run$0(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onError(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onPartialResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$run$3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

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
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onFinalResult(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    const-string v1, "Failed to start recording. Microphone might be already in use."

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 40
    .line 41
    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lorg/vosk/android/a;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v2, v3, p0, v0}, Lorg/vosk/android/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 55
    .line 56
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$300(Lorg/vosk/android/SpeechService;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    new-array v1, v0, [S

    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, -0x1

    .line 67
    if-nez v2, :cond_7

    .line 68
    .line 69
    iget v2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 70
    .line 71
    if-eq v2, v3, :cond_2

    .line 72
    .line 73
    iget v2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 74
    .line 75
    if-lez v2, :cond_7

    .line 76
    .line 77
    :cond_2
    iget-object v2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 78
    .line 79
    invoke-static {v2}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v2, v1, v4, v0}, Landroid/media/AudioRecord;->read([SII)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget-boolean v5, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-boolean v5, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 94
    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    iget-object v5, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 98
    .line 99
    invoke-static {v5}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lorg/vosk/Recognizer;->reset()V

    .line 104
    .line 105
    .line 106
    iput-boolean v4, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 107
    .line 108
    :cond_4
    if-ltz v2, :cond_6

    .line 109
    .line 110
    iget-object v4, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 111
    .line 112
    invoke-static {v4}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v4, v1, v2}, Lorg/vosk/Recognizer;->acceptWaveForm([SI)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iget-object v5, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 121
    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-static {v5}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iget-object v5, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 133
    .line 134
    invoke-static {v5}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    new-instance v6, Lorg/vosk/android/b;

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    invoke-direct {v6, p0, v4, v7}, Lorg/vosk/android/b;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-static {v5}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iget-object v5, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 157
    .line 158
    invoke-static {v5}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v6, Lorg/vosk/android/b;

    .line 163
    .line 164
    const/4 v7, 0x1

    .line 165
    invoke-direct {v6, p0, v4, v7}, Lorg/vosk/android/b;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    .line 170
    .line 171
    :goto_1
    iget v4, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 172
    .line 173
    if-eq v4, v3, :cond_1

    .line 174
    .line 175
    iget v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 176
    .line 177
    sub-int/2addr v3, v2

    .line 178
    iput v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_6
    const-string v0, "error reading audio buffer"

    .line 182
    .line 183
    invoke-static {v0}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_7
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 188
    .line 189
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 194
    .line 195
    .line 196
    iget-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    .line 197
    .line 198
    if-nez v0, :cond_9

    .line 199
    .line 200
    iget v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 201
    .line 202
    if-eq v0, v3, :cond_8

    .line 203
    .line 204
    iget v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 205
    .line 206
    if-gtz v0, :cond_8

    .line 207
    .line 208
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 209
    .line 210
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Lorg/vosk/android/c;

    .line 215
    .line 216
    const/4 v2, 0x0

    .line 217
    invoke-direct {v1, p0, v2}, Lorg/vosk/android/c;-><init>(Ljava/lang/Thread;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_8
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 225
    .line 226
    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lorg/vosk/Recognizer;->getFinalResult()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    .line 235
    .line 236
    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v2, Lorg/vosk/android/b;

    .line 241
    .line 242
    const/4 v3, 0x2

    .line 243
    invoke-direct {v2, p0, v0, v3}, Lorg/vosk/android/b;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    .line 248
    .line 249
    :cond_9
    return-void
.end method

.method public setPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    .line 2
    .line 3
    return-void
.end method
