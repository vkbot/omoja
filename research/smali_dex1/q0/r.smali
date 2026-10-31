.class public abstract Lq0/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lq0/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/example/navistart/MockGPS/MockGpsService;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lorg/apache/commons/net/ftp/a;

.field public final l:Lq0/n;

.field public volatile m:Ljava/lang/String;

.field public volatile n:I

.field public volatile o:Ljava/net/Socket;

.field public volatile p:Z


# direct methods
.method public constructor <init>(Lcom/example/navistart/MockGPS/MockGpsService;Lcom/example/navistart/MockGPS/MockGpsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/net/ftp/a;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lq0/r;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq0/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lq0/r;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lq0/r;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 25
    .line 26
    iput-object p3, p0, Lq0/r;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p4, p0, Lq0/r;->f:Ljava/lang/String;

    .line 29
    .line 30
    const/16 p1, 0x2b02

    .line 31
    .line 32
    iput p1, p0, Lq0/r;->g:I

    .line 33
    .line 34
    iput p1, p0, Lq0/r;->n:I

    .line 35
    .line 36
    iput-object p5, p0, Lq0/r;->h:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p6, p0, Lq0/r;->i:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p7, p0, Lq0/r;->j:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p8, p0, Lq0/r;->k:Lorg/apache/commons/net/ftp/a;

    .line 43
    .line 44
    new-instance p1, Lq0/n;

    .line 45
    .line 46
    invoke-direct {p1, p9}, Lq0/n;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lq0/r;->l:Lq0/n;

    .line 50
    .line 51
    return-void
.end method

.method public static c()Ljava/lang/Boolean;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_7c

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_79

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/16 v8, 0x65

    .line 90
    .line 91
    aput-byte v8, v6, v7

    .line 92
    .line 93
    const/16 v8, 0x8

    .line 94
    .line 95
    new-array v8, v8, [B

    .line 96
    .line 97
    fill-array-data v8, :array_86

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v8, v4, v2, v7}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_73

    .line 114
    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v5, v7

    .line 117
    :goto_74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_7c
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0x55t
        0x76t
        -0x6ft
        0x16t
        -0x78t
        0x68t
        0x1dt
        0x64t
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lq0/r;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_23

    .line 6
    .line 7
    iget-object v0, p0, Lq0/r;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lq0/r;->h:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Lq0/r;->n:I

    .line 12
    .line 13
    if-lez v2, :cond_11

    .line 14
    .line 15
    iget v2, p0, Lq0/r;->n:I

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iget v2, p0, Lq0/r;->g:I

    .line 19
    .line 20
    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f130294

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_23
    iget v1, p0, Lq0/r;->n:I

    .line 37
    .line 38
    if-lez v1, :cond_2a

    .line 39
    .line 40
    iget v1, p0, Lq0/r;->n:I

    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    iget v1, p0, Lq0/r;->g:I

    .line 44
    .line 45
    :goto_2c
    invoke-virtual {p0, v1, v0}, Lq0/r;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final b(Lj/i;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lq0/r;->m:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lq0/r;->n:I

    .line 4
    .line 5
    iget-object v2, p1, Lj/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/lang/String;

    .line 8
    .line 9
    iput-object v2, p0, Lq0/r;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget p1, p1, Lj/i;->b:I

    .line 12
    .line 13
    if-lez p1, :cond_15

    .line 14
    .line 15
    const v2, 0xffff

    .line 16
    .line 17
    .line 18
    if-gt p1, v2, :cond_15

    .line 19
    .line 20
    iput p1, p0, Lq0/r;->n:I

    .line 21
    .line 22
    :cond_15
    iget-object p1, p0, Lq0/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_3d

    .line 29
    .line 30
    iget p1, p0, Lq0/r;->n:I

    .line 31
    .line 32
    if-ne v1, p1, :cond_3a

    .line 33
    .line 34
    iget-object p1, p0, Lq0/r;->m:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    if-nez v0, :cond_29

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    goto :goto_2d

    .line 42
    :cond_29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_2d
    if-nez p1, :cond_30

    .line 47
    .line 48
    goto :goto_34

    .line 49
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3d

    .line 58
    .line 59
    :cond_3a
    invoke-virtual {p0}, Lq0/r;->d()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/r;->o:Ljava/net/Socket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lq0/r;->o:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_a

    .line 9
    .line 10
    .line 11
    :catch_a
    :cond_a
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Ljava/net/Socket;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v2, v0, Lq0/r;->o:Ljava/net/Socket;

    .line 11
    .line 12
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 13
    .line 14
    iget v4, v0, Lq0/r;->n:I

    .line 15
    .line 16
    if-lez v4, :cond_16

    .line 17
    .line 18
    iget v4, v0, Lq0/r;->n:I

    .line 19
    .line 20
    :goto_13
    move-object/from16 v5, p1

    .line 21
    .line 22
    goto :goto_19

    .line 23
    :cond_16
    iget v4, v0, Lq0/r;->g:I

    .line 24
    .line 25
    goto :goto_13

    .line 26
    :goto_19
    invoke-direct {v3, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const/16 v4, 0x4b0

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lq0/r;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 38
    .line 39
    iget-object v4, v0, Lq0/r;->a:Landroid/content/Context;

    .line 40
    .line 41
    const v5, 0x7f130257

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-static {v4, v1, v3}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    new-instance v6, Ljava/io/BufferedReader;

    .line 60
    .line 61
    new-instance v7, Ljava/io/InputStreamReader;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    move-wide v9, v7

    .line 78
    :cond_4d
    :goto_4d
    iget-object v11, v0, Lq0/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_cc

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-nez v11, :cond_cc

    .line 91
    .line 92
    :try_start_5b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    if-eqz v11, :cond_82

    .line 97
    .line 98
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_6c

    .line 107
    .line 108
    goto :goto_4d

    .line 109
    :cond_6c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    iget-object v12, v0, Lq0/r;->l:Lq0/n;

    .line 114
    .line 115
    invoke-virtual {v12, v11}, Lq0/n;->c(Ljava/lang/String;)Lq0/q;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    if-eqz v11, :cond_4d

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    iget-object v12, v0, Lq0/r;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 126
    .line 127
    invoke-virtual {v12, v11}, Lcom/example/navistart/MockGPS/MockGpsService;->i(Lq0/q;)V

    .line 128
    .line 129
    .line 130
    goto :goto_4d

    .line 131
    :cond_82
    new-instance v11, Ljava/io/IOException;

    .line 132
    .line 133
    iget-object v12, v0, Lq0/r;->a:Landroid/content/Context;

    .line 134
    .line 135
    const v13, 0x7f130282

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v11
    :try_end_91
    .catch Ljava/net/SocketTimeoutException; {:try_start_5b .. :try_end_91} :catch_91

    .line 146
    :catch_91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v11

    .line 150
    cmp-long v13, v9, v7

    .line 151
    .line 152
    if-lez v13, :cond_b8

    .line 153
    .line 154
    sub-long v13, v11, v9

    .line 155
    .line 156
    const-wide/16 v15, 0xfa0

    .line 157
    .line 158
    cmp-long v13, v13, v15

    .line 159
    .line 160
    if-lez v13, :cond_b8

    .line 161
    .line 162
    iget-object v9, v0, Lq0/r;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 163
    .line 164
    invoke-virtual {v9}, Lcom/example/navistart/MockGPS/MockGpsService;->g()V

    .line 165
    .line 166
    .line 167
    iget-object v9, v0, Lq0/r;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 168
    .line 169
    iget-object v10, v0, Lq0/r;->a:Landroid/content/Context;

    .line 170
    .line 171
    const v13, 0x7f130258

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v10, v1, v3}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    .line 183
    .line 184
    move-wide v9, v7

    .line 185
    :cond_b8
    sub-long/2addr v11, v4

    .line 186
    const-wide/16 v13, 0x1f40

    .line 187
    .line 188
    cmp-long v11, v11, v13

    .line 189
    .line 190
    if-gtz v11, :cond_c0

    .line 191
    .line 192
    goto :goto_4d

    .line 193
    :cond_c0
    iget-object v1, v0, Lq0/r;->a:Landroid/content/Context;

    .line 194
    .line 195
    const v2, 0x7f130275

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_cc
    return-void
.end method

.method public final f(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    iget-object p2, p0, Lq0/r;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lq0/r;->a:Landroid/content/Context;

    .line 22
    .line 23
    const v0, 0x7f130294

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    new-array p2, p2, [B

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    const/4 v2, 0x0

    .line 48
    aput-byte v1, p2, v2

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    new-array v1, v1, [B

    .line 53
    .line 54
    fill-array-data v1, :array_3e

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v1, v0, p1}, Lcom/google/protobuf/q;->j([B[BLjava/lang/StringBuilder;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :array_3e
    .array-data 1
        0x3ft
        0x6ct
        0x7at
        -0x54t
        -0x2dt
        0x8t
        0x4et
        -0x3bt
    .end array-data
.end method

.method public final g()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/r;->m:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    iget-object v0, p0, Lq0/r;->m:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_17

    .line 16
    .line 17
    iget-object v0, p0, Lq0/r;->m:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    iget-object v0, p0, Lq0/r;->k:Lorg/apache/commons/net/ftp/a;

    .line 25
    .line 26
    if-nez v0, :cond_1d

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_1d
    iget-object v1, p0, Lq0/r;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ly5/k;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_29

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_29
    invoke-static {v1}, Ly5/k;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lq0/r;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lq0/r;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final start()V
    .registers 4

    .line 1
    iget-object v0, p0, Lq0/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget-boolean v0, p0, Lq0/r;->p:Z

    .line 13
    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    :try_start_10
    invoke-static {}, Lq0/r;->c()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1c

    .line 26
    .line 27
    iput-boolean v2, p0, Lq0/r;->p:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1c

    .line 28
    .line 29
    :catch_1c
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lq0/r;->c:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v1, Lf5/j;

    .line 32
    .line 33
    const/16 v2, 0xd

    .line 34
    .line 35
    invoke-direct {v1, v2, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lq0/r;->d()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lq0/r;->c:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    return-void
.end method
