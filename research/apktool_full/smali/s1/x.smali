.class public final Ls1/x;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static k:Ls1/x;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile f:Z

.field public g:Z

.field public h:Ljava/net/Socket;

.field public i:Ljava/io/BufferedReader;

.field public j:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

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
    iput-object v0, p0, Ls1/x;->c:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Ls1/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 24
    .line 25
    const/16 v0, 0x80

    .line 26
    .line 27
    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    .line 31
    .line 32
    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x1

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Ls1/x;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    .line 46
    iput-object p1, p0, Ls1/x;->a:Landroid/content/Context;

    .line 47
    .line 48
    const/16 v0, 0x16

    .line 49
    .line 50
    new-array v0, v0, [B

    .line 51
    .line 52
    fill-array-data v0, :array_0

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    new-array v2, v1, [B

    .line 58
    .line 59
    fill-array-data v2, :array_1

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v0, 0x5

    .line 72
    new-array v2, v0, [B

    .line 73
    .line 74
    fill-array-data v2, :array_2

    .line 75
    .line 76
    .line 77
    new-array v3, v1, [B

    .line 78
    .line 79
    fill-array-data v3, :array_3

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_0

    .line 92
    .line 93
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-array v0, v0, [B

    .line 106
    .line 107
    fill-array-data v0, :array_4

    .line 108
    .line 109
    .line 110
    new-array v1, v1, [B

    .line 111
    .line 112
    fill-array-data v1, :array_5

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .line 125
    .line 126
    :cond_0
    iput-object v2, p0, Ls1/x;->b:Ljava/lang/String;

    .line 127
    .line 128
    return-void

    .line 129
    :array_0
    .array-data 1
        -0x4et
        0x23t
        -0x49t
        -0x9t
        -0x25t
        0x33t
        0x4t
        -0x1ft
        -0x7ft
        0x35t
        -0x55t
        -0x9t
        -0x24t
        0x34t
        0x16t
        -0x34t
        -0x44t
        0x30t
        -0x55t
        -0x3t
        -0x21t
        0x3et
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :array_1
    .array-data 1
        -0x22t
        0x42t
        -0x3et
        -0x67t
        -0x48t
        0x5bt
        0x61t
        -0x6dt
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_2
    .array-data 1
        -0x6dt
        -0x1ft
        -0x2ft
        0x77t
        0xet
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    nop

    .line 161
    :array_3
    .array-data 1
        -0x19t
        -0x72t
        -0x46t
        0x12t
        0x60t
        -0x2et
        0x55t
        -0x4ft
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_4
    .array-data 1
        -0x32t
        -0x7et
        0x3dt
        0x6at
        -0x3bt
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    nop

    .line 177
    :array_5
    .array-data 1
        -0x46t
        -0x13t
        0x56t
        0xft
        -0x55t
        -0x17t
        -0x7ct
        -0x71t
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ls1/x;
    .locals 2

    .line 1
    const-class v0, Ls1/x;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ls1/x;->k:Ls1/x;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ls1/x;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Ls1/x;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Ls1/x;->k:Ls1/x;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object p0, Ls1/x;->k:Ls1/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, -0xa

    .line 11
    .line 12
    aput-byte v4, v2, v3

    .line 13
    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    new-array v5, v4, [B

    .line 17
    .line 18
    fill-array-data v5, :array_0

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    const/16 v5, -0x38

    .line 31
    .line 32
    aput-byte v5, v2, v3

    .line 33
    .line 34
    new-array v5, v4, [B

    .line 35
    .line 36
    fill-array-data v5, :array_1

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v5, 0x4

    .line 44
    new-array v5, v5, [B

    .line 45
    .line 46
    fill-array-data v5, :array_2

    .line 47
    .line 48
    .line 49
    new-array v6, v4, [B

    .line 50
    .line 51
    fill-array-data v6, :array_3

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-array p0, v1, [B

    .line 66
    .line 67
    const/16 v1, 0x52

    .line 68
    .line 69
    aput-byte v1, p0, v3

    .line 70
    .line 71
    new-array v1, v4, [B

    .line 72
    .line 73
    fill-array-data v1, :array_4

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :array_0
    .array-data 1
        -0x2ft
        -0x5ct
        -0x62t
        -0xct
        0x42t
        0x16t
        -0x8t
        0xft
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 1
        -0x11t
        0x59t
        0x7dt
        0x45t
        -0x64t
        0xct
        0x11t
        -0x36t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 1
        0x3ct
        0x12t
        0x69t
        0x2ft
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_3
    .array-data 1
        0x1bt
        0x4et
        0x4et
        0x8t
        -0x5at
        -0x55t
        0x8t
        0x6ct
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_4
    .array-data 1
        0x75t
        -0x55t
        0xbt
        -0x44t
        0x44t
        0xet
        0x1et
        0x58t
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ls1/x;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    new-array v3, v2, [B

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ls1/x;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [B

    .line 42
    .line 43
    fill-array-data p1, :array_2

    .line 44
    .line 45
    .line 46
    new-array v1, v2, [B

    .line 47
    .line 48
    fill-array-data v1, :array_3

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Ls1/x;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    :cond_1
    monitor-exit p0

    .line 65
    return-object v0

    .line 66
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 1
        0x5at
        -0x79t
        -0x31t
        0x26t
        0x3ft
        0x1t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    .line 77
    :array_1
    .array-data 1
        0xet
        -0x38t
        -0x66t
        0x65t
        0x77t
        0x21t
        0x46t
        -0x74t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_2
    .array-data 1
        -0x3ft
        0xat
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    nop

    .line 91
    :array_3
    .array-data 1
        -0x72t
        0x41t
        0x62t
        -0x3t
        -0x21t
        0x45t
        -0x52t
        -0x41t
    .end array-data
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    :goto_0
    new-instance v1, Ljava/net/Socket;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 23
    .line 24
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 25
    .line 26
    const/16 v3, 0x9

    .line 27
    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    fill-array-data v3, :array_0

    .line 31
    .line 32
    .line 33
    new-array v4, v0, [B

    .line 34
    .line 35
    fill-array-data v4, :array_1

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const v4, 0x976e

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x15e

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 54
    .line 55
    const/16 v2, 0x1f40

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/io/BufferedReader;

    .line 61
    .line 62
    new-instance v2, Ljava/io/InputStreamReader;

    .line 63
    .line 64
    iget-object v3, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/4 v4, 0x5

    .line 71
    new-array v5, v4, [B

    .line 72
    .line 73
    fill-array-data v5, :array_2

    .line 74
    .line 75
    .line 76
    new-array v6, v0, [B

    .line 77
    .line 78
    fill-array-data v6, :array_3

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-direct {v2, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Ls1/x;->i:Ljava/io/BufferedReader;

    .line 92
    .line 93
    new-instance v1, Ljava/io/PrintWriter;

    .line 94
    .line 95
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 96
    .line 97
    iget-object v3, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-array v5, v4, [B

    .line 104
    .line 105
    fill-array-data v5, :array_4

    .line 106
    .line 107
    .line 108
    new-array v6, v0, [B

    .line 109
    .line 110
    fill-array-data v6, :array_5

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-direct {v2, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v3, 0x1

    .line 121
    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Ls1/x;->j:Ljava/io/PrintWriter;

    .line 125
    .line 126
    iget-object v2, p0, Ls1/x;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-array v1, v4, [B

    .line 132
    .line 133
    fill-array-data v1, :array_6

    .line 134
    .line 135
    .line 136
    new-array v2, v0, [B

    .line 137
    .line 138
    fill-array-data v2, :array_7

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, p0, Ls1/x;->i:Ljava/io/BufferedReader;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    :cond_1
    iget-object v1, p0, Ls1/x;->j:Ljava/io/PrintWriter;

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Ls1/x;->i:Ljava/io/BufferedReader;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_2

    .line 169
    .line 170
    return-object p1

    .line 171
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 172
    .line 173
    const/16 v1, 0x13

    .line 174
    .line 175
    new-array v1, v1, [B

    .line 176
    .line 177
    fill-array-data v1, :array_8

    .line 178
    .line 179
    .line 180
    new-array v2, v0, [B

    .line 181
    .line 182
    fill-array-data v2, :array_9

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 194
    .line 195
    const/16 v1, 0x1c

    .line 196
    .line 197
    new-array v1, v1, [B

    .line 198
    .line 199
    fill-array-data v1, :array_a

    .line 200
    .line 201
    .line 202
    new-array v2, v0, [B

    .line 203
    .line 204
    fill-array-data v2, :array_b

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    iget-object v1, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 216
    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    .line 221
    .line 222
    :catch_1
    :cond_4
    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Ls1/x;->h:Ljava/net/Socket;

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    iput-boolean v1, p0, Ls1/x;->f:Z

    .line 227
    .line 228
    const/4 v1, 0x6

    .line 229
    new-array v1, v1, [B

    .line 230
    .line 231
    fill-array-data v1, :array_c

    .line 232
    .line 233
    .line 234
    new-array v0, v0, [B

    .line 235
    .line 236
    fill-array-data v0, :array_d

    .line 237
    .line 238
    .line 239
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    return-object p1

    .line 256
    nop

    .line 257
    :array_0
    .array-data 1
        -0x14t
        0x1bt
        -0x15t
        -0x74t
        0x51t
        -0x1ct
        0xct
        0x54t
        -0x14t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    nop

    .line 267
    :array_1
    .array-data 1
        -0x23t
        0x29t
        -0x24t
        -0x5et
        0x61t
        -0x36t
        0x3ct
        0x7at
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_2
    .array-data 1
        0x79t
        0x41t
        0x59t
        -0x48t
        -0x14t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    nop

    .line 283
    :array_3
    .array-data 1
        0x2ct
        0x15t
        0x1ft
        -0x6bt
        -0x2ct
        -0x26t
        0x54t
        -0x49t
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :array_4
    .array-data 1
        0x2ft
        -0x66t
        -0x41t
        -0x20t
        -0x65t
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    nop

    .line 299
    :array_5
    .array-data 1
        0x7at
        -0x32t
        -0x7t
        -0x33t
        -0x5dt
        0x18t
        0xat
        0x39t
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_6
    .array-data 1
        0x5at
        -0x48t
        0x5bt
        0x17t
        -0x78t
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    nop

    .line 315
    :array_7
    .array-data 1
        0x8t
        -0x3t
        0x1at
        0x53t
        -0x2ft
        -0x58t
        -0x73t
        0x1bt
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_8
    .array-data 1
        -0x66t
        -0x17t
        0x43t
        -0x78t
        -0x59t
        -0xat
        -0x13t
        0x57t
        -0x45t
        -0x1t
        0x4ct
        -0x69t
        -0x54t
        -0x16t
        -0x58t
        0x50t
        -0x5at
        -0x17t
        0x4bt
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_9
    .array-data 1
        -0x2et
        -0x74t
        0x2ft
        -0x8t
        -0x3et
        -0x7ct
        -0x33t
        0x33t
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_a
    .array-data 1
        -0x26t
        0x65t
        0x64t
        0x6bt
        -0x3t
        0x22t
        -0x6ft
        0x13t
        -0x19t
        0x74t
        0x60t
        0x7et
        -0xat
        0x24t
        -0x28t
        0x11t
        -0xdt
        0x74t
        0x61t
        0x74t
        -0xat
        0x70t
        -0x29t
        0x13t
        -0x5t
        0x6ct
        0x6dt
        0x7ft
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_b
    .array-data 1
        -0x6et
        0x0t
        0x8t
        0x1bt
        -0x68t
        0x50t
        -0x4ft
        0x72t
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_c
    .array-data 1
        0x2at
        0x2et
        0x8t
        -0x5ft
        0x5bt
        -0x55t
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    nop

    .line 379
    :array_d
    .array-data 1
        0x6ft
        0x7ct
        0x5at
        -0x12t
        0x9t
        -0x75t
        0x9t
        0x6t
    .end array-data
.end method
