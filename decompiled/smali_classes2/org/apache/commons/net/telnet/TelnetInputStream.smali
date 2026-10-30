.class final Lorg/apache/commons/net/telnet/TelnetInputStream;
.super Ljava/io/BufferedInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EOF:I = -0x1

.field static final STATE_CR:I = 0x8

.field static final STATE_DATA:I = 0x0

.field static final STATE_DO:I = 0x4

.field static final STATE_DONT:I = 0x5

.field static final STATE_IAC:I = 0x1

.field static final STATE_IAC_SB:I = 0x9

.field static final STATE_SB:I = 0x6

.field static final STATE_SE:I = 0x7

.field static final STATE_WILL:I = 0x2

.field static final STATE_WONT:I = 0x3

.field private static final WOULD_BLOCK:I = -0x2


# instance fields
.field private bytesAvailable:I

.field private final client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private hasReachedEOF:Z

.field private ioException:Ljava/io/IOException;

.field private volatile isClosed:Z

.field private final queue:[I

.field private queueHead:I

.field private queueTail:I

.field private readIsWaiting:Z

.field private receiveState:I

.field private final suboption:[I

.field private suboptionCount:I

.field private final thread:Ljava/lang/Thread;

.field private volatile threaded:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    .line 13
    .line 14
    const/16 v0, 0x801

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 19
    .line 20
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    .line 21
    .line 22
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    .line 23
    .line 24
    iget p2, p2, Lorg/apache/commons/net/telnet/TelnetClient;->maxSubnegotiationLength:I

    .line 25
    .line 26
    new-array p2, p2, [I

    .line 27
    .line 28
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    .line 29
    .line 30
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 34
    .line 35
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    new-instance p1, Ljava/lang/Thread;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 50
    .line 51
    return-void
.end method

.method private processChar(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    iget v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 14
    .line 15
    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 16
    .line 17
    array-length v5, v5

    .line 18
    sub-int/2addr v5, v3

    .line 19
    if-lt v4, v5, :cond_2

    .line 20
    .line 21
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "Queue is full! Cannot process another character."

    .line 50
    .line 51
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 69
    .line 70
    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    .line 71
    .line 72
    aput p1, v4, v5

    .line 73
    .line 74
    iget p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 75
    .line 76
    add-int/2addr p1, v3

    .line 77
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 78
    .line 79
    add-int/2addr v5, v3

    .line 80
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    .line 81
    .line 82
    array-length p1, v4

    .line 83
    if-lt v5, p1, :cond_4

    .line 84
    .line 85
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    .line 86
    .line 87
    :cond_4
    monitor-exit v0

    .line 88
    return v1

    .line 89
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw p1
.end method

.method private read(Z)I
    .locals 6

    .line 1
    :goto_0
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x2

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/Telnet;->processAYTResponse()V

    .line 27
    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 30
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/Telnet;->spyRead(I)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 36
    .line 37
    const/16 v2, 0xf0

    .line 38
    .line 39
    const/4 v3, 0x6

    .line 40
    const/16 v4, 0xff

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    packed-switch v1, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    :pswitch_0
    return v0

    .line 47
    :pswitch_1
    if-eq v0, v2, :cond_4

    .line 48
    .line 49
    if-eq v0, v4, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 53
    .line 54
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    .line 55
    .line 56
    array-length v4, v2

    .line 57
    if-ge v1, v4, :cond_3

    .line 58
    .line 59
    add-int/lit8 v4, v1, 0x1

    .line 60
    .line 61
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 62
    .line 63
    aput v0, v2, v1

    .line 64
    .line 65
    :cond_3
    :goto_1
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 69
    .line 70
    monitor-enter v1

    .line 71
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 72
    .line 73
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    .line 74
    .line 75
    iget v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/telnet/Telnet;->processSuboption([II)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 81
    .line 82
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    .line 83
    .line 84
    .line 85
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    throw p1

    .line 92
    :pswitch_2
    if-nez v0, :cond_8

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_3
    if-eq v0, v4, :cond_6

    .line 96
    .line 97
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 98
    .line 99
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    .line 100
    .line 101
    array-length v4, v2

    .line 102
    if-ge v1, v4, :cond_5

    .line 103
    .line 104
    add-int/lit8 v4, v1, 0x1

    .line 105
    .line 106
    iput v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 107
    .line 108
    aput v0, v2, v1

    .line 109
    .line 110
    :cond_5
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    const/16 v0, 0x9

    .line 114
    .line 115
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 119
    .line 120
    monitor-enter v1

    .line 121
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processDont(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    .line 129
    .line 130
    .line 131
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :catchall_1
    move-exception p1

    .line 137
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    throw p1

    .line 139
    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 140
    .line 141
    monitor-enter v1

    .line 142
    :try_start_5
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processDo(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    .line 150
    .line 151
    .line 152
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 153
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :catchall_2
    move-exception p1

    .line 158
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 159
    throw p1

    .line 160
    :pswitch_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 161
    .line 162
    monitor-enter v1

    .line 163
    :try_start_7
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processWont(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 169
    .line 170
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    .line 171
    .line 172
    .line 173
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 174
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :catchall_3
    move-exception p1

    .line 179
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 180
    throw p1

    .line 181
    :pswitch_7
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 182
    .line 183
    monitor-enter v1

    .line 184
    :try_start_9
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 185
    .line 186
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/Telnet;->processWill(I)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 190
    .line 191
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    .line 192
    .line 193
    .line 194
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 195
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :catchall_4
    move-exception p1

    .line 200
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 201
    throw p1

    .line 202
    :pswitch_8
    if-eq v0, v2, :cond_7

    .line 203
    .line 204
    packed-switch v0, :pswitch_data_1

    .line 205
    .line 206
    .line 207
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 208
    .line 209
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/telnet/Telnet;->processCommand(I)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_9
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 217
    .line 218
    return v0

    .line 219
    :pswitch_a
    const/4 v0, 0x5

    .line 220
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_b
    const/4 v0, 0x4

    .line 225
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_c
    const/4 v0, 0x3

    .line 230
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_d
    const/4 v0, 0x2

    .line 235
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_e
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 240
    .line 241
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_7
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_8
    :pswitch_f
    if-ne v0, v4, :cond_9

    .line 250
    .line 251
    const/4 v0, 0x1

    .line 252
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_9
    const/16 p1, 0xd

    .line 257
    .line 258
    if-ne v0, p1, :cond_b

    .line 259
    .line 260
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 261
    .line 262
    monitor-enter p1

    .line 263
    :try_start_b
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 264
    .line 265
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_a

    .line 270
    .line 271
    const/16 v1, 0x8

    .line 272
    .line 273
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :catchall_5
    move-exception v0

    .line 277
    goto :goto_3

    .line 278
    :cond_a
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 279
    .line 280
    :goto_2
    monitor-exit p1

    .line 281
    return v0

    .line 282
    :goto_3
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 283
    throw v0

    .line 284
    :cond_b
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 285
    .line 286
    return v0

    .line 287
    :catchall_6
    move-exception p1

    .line 288
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 289
    throw p1

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :pswitch_data_1
    .packed-switch 0xfa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    monitor-exit v0

    .line 11
    return v2

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v2, v1

    .line 19
    monitor-exit v0

    .line 20
    return v2

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public read()I
    .locals 7

    .line 291
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    .line 292
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    if-nez v1, :cond_9

    .line 293
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 294
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 295
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    .line 296
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    .line 299
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 300
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 301
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 302
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Fatal thread interruption during read."

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 304
    throw v2

    .line 305
    :cond_1
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 306
    :goto_1
    :try_start_3
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read(Z)I

    move-result v1
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, -0x2

    if-gez v1, :cond_2

    if-eq v1, v5, :cond_2

    .line 307
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v1

    :cond_2
    if-eq v1, v5, :cond_3

    .line 308
    :try_start_5
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->processChar(I)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 309
    :catch_1
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 310
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    if-eqz v1, :cond_3

    .line 311
    monitor-exit v0

    return v4

    .line 312
    :cond_3
    :goto_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v1, v5, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_1

    .line 313
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    goto :goto_0

    :catch_2
    move-exception v1

    .line 314
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    :try_start_7
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 316
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 317
    :try_start_8
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    .line 318
    :catch_3
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 319
    :goto_4
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 320
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return v4

    .line 321
    :goto_5
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1

    .line 322
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    aget v6, v4, v5

    add-int/2addr v5, v3

    .line 323
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    array-length v4, v4

    if-lt v5, v4, :cond_7

    .line 324
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    :cond_7
    sub-int/2addr v1, v3

    .line 325
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    if-nez v1, :cond_8

    .line 326
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_8

    .line 327
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 328
    :cond_8
    monitor-exit v0

    return v6

    :cond_9
    const/4 v2, 0x0

    .line 329
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 330
    throw v1

    .line 331
    :goto_6
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v1
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 332
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    .line 334
    :try_start_0
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    if-le p3, v1, :cond_1

    move p3, v1

    .line 335
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    move v2, p2

    :goto_0
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    .line 337
    aput-byte v0, p1, v2

    add-int/2addr p3, v1

    if-lez p3, :cond_4

    .line 338
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    sub-int/2addr v3, p2

    return v3

    :catchall_0
    move-exception p1

    .line 339
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez v2, :cond_4

    .line 6
    .line 7
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read(Z)I

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    if-gez v2, :cond_1

    .line 12
    .line 13
    goto :goto_5

    .line 14
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;->processChar(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v2

    .line 20
    goto :goto_4

    .line 21
    :catch_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 26
    .line 27
    .line 28
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    goto :goto_5

    .line 33
    :cond_2
    move v2, v0

    .line 34
    :goto_1
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_2
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 43
    .line 44
    .line 45
    goto :goto_5

    .line 46
    :catch_3
    move-exception v2

    .line 47
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 48
    .line 49
    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 50
    :try_start_4
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 51
    .line 52
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_5
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 58
    .line 59
    const-wide/16 v4, 0x64

    .line 60
    .line 61
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception v2

    .line 66
    goto :goto_3

    .line 67
    :catch_4
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 72
    .line 73
    .line 74
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    monitor-exit v3

    .line 79
    goto :goto_5

    .line 80
    :cond_3
    :goto_2
    monitor-exit v3

    .line 81
    goto :goto_0

    .line 82
    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 83
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 84
    :goto_4
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 85
    .line 86
    monitor-enter v3

    .line 87
    :try_start_8
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 88
    .line 89
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 90
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_5
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 96
    .line 97
    monitor-enter v2

    .line 98
    :try_start_9
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 99
    .line 100
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    .line 101
    .line 102
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 105
    .line 106
    .line 107
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 108
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 109
    .line 110
    return-void

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 113
    throw v0

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 116
    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    add-int/2addr v0, v1

    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-le v0, v2, :cond_1

    .line 22
    .line 23
    move v0, v2

    .line 24
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 40
    .line 41
    return-void
.end method
