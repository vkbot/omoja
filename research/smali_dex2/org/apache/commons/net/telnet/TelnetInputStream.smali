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
    .registers 4

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V
    .registers 5

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
    if-eqz p3, :cond_30

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
    :cond_30
    iput-object p2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 50
    .line 51
    return-void
.end method

.method private processChar(I)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_b

    .line 9
    .line 10
    move v1, v3

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v1, v2

    .line 13
    :goto_c
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
    if-lt v4, v5, :cond_36

    .line 20
    .line 21
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 22
    .line 23
    if-eqz v4, :cond_2e

    .line 24
    .line 25
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_23

    .line 28
    .line 29
    .line 30
    :try_start_1d
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_25
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    goto :goto_c

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    goto :goto_58

    .line 38
    :catch_25
    move-exception p1

    .line 39
    :try_start_26
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
    :cond_2e
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
    :cond_36
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    .line 56
    .line 57
    if-eqz v4, :cond_43

    .line 58
    .line 59
    iget-boolean v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 60
    .line 61
    if-eqz v4, :cond_43

    .line 62
    .line 63
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 66
    .line 67
    .line 68
    :cond_43
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
    if-lt v5, p1, :cond_56

    .line 84
    .line 85
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueTail:I

    .line 86
    .line 87
    :cond_56
    monitor-exit v0

    .line 88
    return v1

    .line 89
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_26 .. :try_end_59} :catchall_23

    .line 90
    throw p1
.end method

.method private read(Z)I
    .registers 8

    .line 1
    :goto_0
    if-nez p1, :cond_a

    .line 2
    .line 3
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p1, -0x2

    .line 10
    return p1

    .line 11
    :cond_a
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_12

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_12
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_17
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/Telnet;->processAYTResponse()V

    .line 27
    .line 28
    .line 29
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_11e

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
    packed-switch v1, :pswitch_data_122

    .line 44
    .line 45
    .line 46
    :pswitch_2d
    return v0

    .line 47
    :pswitch_2e
    if-eq v0, v2, :cond_43

    .line 48
    .line 49
    if-eq v0, v4, :cond_33

    .line 50
    .line 51
    goto :goto_40

    .line 52
    :cond_33
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 53
    .line 54
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboption:[I

    .line 55
    .line 56
    array-length v4, v2

    .line 57
    if-ge v1, v4, :cond_40

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
    :cond_40
    :goto_40
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_43
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 69
    .line 70
    monitor-enter v1

    .line 71
    :try_start_46
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
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_58

    .line 86
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_58
    move-exception p1

    .line 90
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    .line 91
    throw p1

    .line 92
    :pswitch_5b
    if-nez v0, :cond_f8

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_5e
    if-eq v0, v4, :cond_70

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
    if-ge v1, v4, :cond_6d

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
    :cond_6d
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_70
    const/16 v0, 0x9

    .line 114
    .line 115
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_75
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 119
    .line 120
    monitor-enter v1

    .line 121
    :try_start_78
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
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_87

    .line 132
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :catchall_87
    move-exception p1

    .line 137
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    .line 138
    throw p1

    .line 139
    :pswitch_8a
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 140
    .line 141
    monitor-enter v1

    .line 142
    :try_start_8d
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
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_9c

    .line 153
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :catchall_9c
    move-exception p1

    .line 158
    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    .line 159
    throw p1

    .line 160
    :pswitch_9f
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 161
    .line 162
    monitor-enter v1

    .line 163
    :try_start_a2
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
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_b1

    .line 174
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :catchall_b1
    move-exception p1

    .line 179
    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    .line 180
    throw p1

    .line 181
    :pswitch_b4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 182
    .line 183
    monitor-enter v1

    .line 184
    :try_start_b7
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
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c6

    .line 195
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :catchall_c6
    move-exception p1

    .line 200
    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    .line 201
    throw p1

    .line 202
    :pswitch_c9
    if-eq v0, v2, :cond_f4

    .line 203
    .line 204
    packed-switch v0, :pswitch_data_13a

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
    :pswitch_d7
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 217
    .line 218
    return v0

    .line 219
    :pswitch_da
    const/4 v0, 0x5

    .line 220
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_df
    const/4 v0, 0x4

    .line 225
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_e4
    const/4 v0, 0x3

    .line 230
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_e9
    const/4 v0, 0x2

    .line 235
    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_ee
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->suboptionCount:I

    .line 240
    .line 241
    iput v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_f4
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_f8
    :pswitch_f8
    if-ne v0, v4, :cond_ff

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
    :cond_ff
    const/16 p1, 0xd

    .line 257
    .line 258
    if-ne v0, p1, :cond_11b

    .line 259
    .line 260
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 261
    .line 262
    monitor-enter p1

    .line 263
    :try_start_106
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 264
    .line 265
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_115

    .line 270
    .line 271
    const/16 v1, 0x8

    .line 272
    .line 273
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 274
    .line 275
    goto :goto_117

    .line 276
    :catchall_113
    move-exception v0

    .line 277
    goto :goto_119

    .line 278
    :cond_115
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 279
    .line 280
    :goto_117
    monitor-exit p1

    .line 281
    return v0

    .line 282
    :goto_119
    monitor-exit p1
    :try_end_11a
    .catchall {:try_start_106 .. :try_end_11a} :catchall_113

    .line 283
    throw v0

    .line 284
    :cond_11b
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->receiveState:I

    .line 285
    .line 286
    return v0

    .line 287
    :catchall_11e
    move-exception p1

    .line 288
    :try_start_11f
    monitor-exit v1
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    .line 289
    throw p1

    .line 290
    nop

    .line 291
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_c9
        :pswitch_b4
        :pswitch_9f
        :pswitch_8a
        :pswitch_75
        :pswitch_5e
        :pswitch_2d
        :pswitch_5b
        :pswitch_2e
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
    :pswitch_data_13a
    .packed-switch 0xfa
        :pswitch_ee
        :pswitch_e9
        :pswitch_e4
        :pswitch_df
        :pswitch_da
        :pswitch_d7
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b

    .line 5
    .line 6
    iget v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    .line 7
    .line 8
    if-eqz v1, :cond_d

    .line 9
    .line 10
    :try_start_9
    monitor-exit v0

    .line 11
    return v2

    .line 12
    :catchall_b
    move-exception v1

    .line 13
    goto :goto_14

    .line 14
    :cond_d
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
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_b

    .line 22
    throw v1
.end method

.method public close()V
    .registers 3

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
    :try_start_7
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 13
    .line 14
    if-eqz v1, :cond_1d

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1d

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 25
    .line 26
    .line 27
    goto :goto_1d

    .line 28
    :catchall_1b
    move-exception v1

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    :goto_1d
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
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_1b

    .line 38
    throw v1
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public read()I
    .registers 8

    .line 291
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    .line 292
    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    if-nez v1, :cond_b1

    .line 293
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_93

    .line 294
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->hasReachedEOF:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_17

    .line 295
    monitor-exit v0

    return v4

    :catchall_14
    move-exception v1

    goto/16 :goto_b5

    .line 296
    :cond_17
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_3d

    .line 297
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_14

    .line 298
    :try_start_20
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    .line 299
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 300
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_29} :catch_2a
    .catchall {:try_start_20 .. :try_end_29} :catchall_14

    goto :goto_3

    :catch_2a
    move-exception v1

    .line 301
    :try_start_2b
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
    :cond_3d
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_14

    move v1, v3

    .line 306
    :goto_40
    :try_start_40
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read(Z)I

    move-result v1
    :try_end_44
    .catch Ljava/io/InterruptedIOException; {:try_start_40 .. :try_end_44} :catch_72
    .catchall {:try_start_40 .. :try_end_44} :catchall_14

    const/4 v5, -0x2

    if-gez v1, :cond_4b

    if-eq v1, v5, :cond_4b

    .line 307
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_14

    return v1

    :cond_4b
    if-eq v1, v5, :cond_5e

    .line 308
    :try_start_4d
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->processChar(I)Z
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_14

    goto :goto_5e

    .line 309
    :catch_51
    :try_start_51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 310
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z

    if-eqz v1, :cond_5e

    .line 311
    monitor-exit v0

    return v4

    .line 312
    :cond_5e
    :goto_5e
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-lez v1, :cond_6f

    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    iget-object v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    if-lt v1, v5, :cond_6d

    goto :goto_6f

    :cond_6d
    move v1, v2

    goto :goto_40

    .line 313
    :cond_6f
    :goto_6f
    iput-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->readIsWaiting:Z

    goto :goto_3

    :catch_72
    move-exception v1

    .line 314
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v2
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_14

    .line 315
    :try_start_76
    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 316
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_85

    .line 317
    :try_start_7d
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_84} :catch_87
    .catchall {:try_start_7d .. :try_end_84} :catchall_85

    goto :goto_8e

    :catchall_85
    move-exception v1

    goto :goto_91

    .line 318
    :catch_87
    :try_start_87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 319
    :goto_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_85

    .line 320
    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_14

    return v4

    .line 321
    :goto_91
    :try_start_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_85

    :try_start_92
    throw v1

    .line 322
    :cond_93
    iget-object v4, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    iget v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    aget v6, v4, v5

    add-int/2addr v5, v3

    .line 323
    iput v5, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    array-length v4, v4

    if-lt v5, v4, :cond_a1

    .line 324
    iput v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queueHead:I

    :cond_a1
    sub-int/2addr v1, v3

    .line 325
    iput v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    if-nez v1, :cond_af

    .line 326
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    if-eqz v1, :cond_af

    .line 327
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 328
    :cond_af
    monitor-exit v0

    return v6

    :cond_b1
    const/4 v2, 0x0

    .line 329
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 330
    throw v1

    .line 331
    :goto_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_92 .. :try_end_b6} :catchall_14

    throw v1
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    .line 332
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 8

    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    const/4 p1, 0x0

    return p1

    .line 333
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    monitor-enter v0

    .line 334
    :try_start_8
    iget v1, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->bytesAvailable:I

    if-le p3, v1, :cond_d

    move p3, v1

    .line 335
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_2a

    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    return v1

    :cond_16
    move v2, p2

    :goto_17
    add-int/lit8 v3, v2, 0x1

    int-to-byte v0, v0

    .line 337
    aput-byte v0, p1, v2

    add-int/2addr p3, v1

    if-lez p3, :cond_28

    .line 338
    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_26

    goto :goto_28

    :cond_26
    move v2, v3

    goto :goto_17

    :cond_28
    :goto_28
    sub-int/2addr v3, p2

    return v3

    :catchall_2a
    move-exception p1

    .line 339
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public run()V
    .registers 7

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_2
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->isClosed:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4} :catch_12

    .line 4
    .line 5
    if-nez v2, :cond_5e

    .line 6
    .line 7
    :try_start_6
    invoke-direct {p0, v1}, Lorg/apache/commons/net/telnet/TelnetInputStream;->read(Z)I

    .line 8
    .line 9
    .line 10
    move-result v2
    :try_end_a
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_a} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_29
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_12

    .line 11
    if-gez v2, :cond_d

    .line 12
    .line 13
    goto :goto_5e

    .line 14
    :cond_d
    :try_start_d
    invoke-direct {p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;->processChar(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    .line 18
    goto :goto_21

    .line 19
    :catch_12
    move-exception v2

    .line 20
    goto :goto_53

    .line 21
    :catch_14
    :try_start_14
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
    if-eqz v2, :cond_20

    .line 31
    .line 32
    goto :goto_5e

    .line 33
    :cond_20
    move v2, v0

    .line 34
    :goto_21
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
    :catch_29
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 43
    .line 44
    .line 45
    goto :goto_5e

    .line 46
    :catch_2d
    move-exception v2

    .line 47
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 48
    .line 49
    monitor-enter v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_31} :catch_12

    .line 50
    :try_start_31
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 51
    .line 52
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_40

    .line 55
    .line 56
    .line 57
    :try_start_38
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 58
    .line 59
    const-wide/16 v4, 0x64

    .line 60
    .line 61
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3f} :catch_42
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    .line 62
    .line 63
    .line 64
    goto :goto_4f

    .line 65
    :catchall_40
    move-exception v2

    .line 66
    goto :goto_51

    .line 67
    :catch_42
    :try_start_42
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
    if-eqz v2, :cond_4f

    .line 77
    .line 78
    monitor-exit v3

    .line 79
    goto :goto_5e

    .line 80
    :cond_4f
    :goto_4f
    monitor-exit v3

    .line 81
    goto :goto_0

    .line 82
    :goto_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_40

    .line 83
    :try_start_52
    throw v2
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_12

    .line 84
    :goto_53
    iget-object v3, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 85
    .line 86
    monitor-enter v3

    .line 87
    :try_start_56
    iput-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->ioException:Ljava/io/IOException;

    .line 88
    .line 89
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_71

    .line 90
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/apache/commons/net/telnet/TelnetClient;->notifyInputListener()V

    .line 93
    .line 94
    .line 95
    :cond_5e
    :goto_5e
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->queue:[I

    .line 96
    .line 97
    monitor-enter v2

    .line 98
    :try_start_61
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
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_6e

    .line 108
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->threaded:Z

    .line 109
    .line 110
    return-void

    .line 111
    :catchall_6e
    move-exception v0

    .line 112
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    .line 113
    throw v0

    .line 114
    :catchall_71
    move-exception v0

    .line 115
    :try_start_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    .line 116
    throw v0
.end method

.method public start()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetInputStream;->thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
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
    if-le v0, v2, :cond_17

    .line 22
    .line 23
    move v0, v2

    .line 24
    :cond_17
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
