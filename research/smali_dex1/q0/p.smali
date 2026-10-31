.class public final Lq0/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lq0/h;


# static fields
.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/example/navistart/MockGPS/MockGpsService;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:J

.field public volatile i:Z

.field public volatile j:Z

.field public k:Ly0/d;

.field public l:Ly0/d;

.field public m:Ly0/d;

.field public n:Ly0/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_28

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_32

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lq0/p;->o:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x11

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_3a

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_48

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lq0/p;->p:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 1
        0x37t
        0x32t
        -0x4bt
        -0x4at
        -0x7ft
        0x1at
        0x46t
        0x64t
        0x37t
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    nop

    .line 51
    :array_32
    .array-data 1
        0x47t
        0x5at
        -0x26t
        -0x28t
        -0x1ct
        0x45t
        0x27t
        0x14t
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_3a
    .array-data 1
        0x77t
        -0x11t
        -0x1t
        -0x5et
        0x28t
        -0x78t
        0x61t
        0x6bt
        0x60t
        -0x9t
        -0x1dt
        -0x61t
        0x22t
        -0x44t
        0x63t
        0x78t
        0x42t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    nop

    .line 73
    :array_48
    .array-data 1
        0x27t
        -0x79t
        -0x70t
        -0x34t
        0x4dt
        -0x37t
        0x11t
        0x1bt
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/MockGPS/MockGpsService;Lcom/example/navistart/MockGPS/MockGpsService;)V
    .registers 5

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
    iput-object v0, p0, Lq0/p;->c:Ljava/util/concurrent/ExecutorService;

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
    iput-object v0, p0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lq0/p;->j:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lq0/p;->a:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 28
    .line 29
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
    const/16 v7, 0x6b

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_86

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

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
    move v5, v8

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
        0x5bt
        0x49t
        -0x1ct
        0x16t
        0x40t
        0x18t
        0x25t
        -0x13t
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ly0/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->y:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_11
    iget-object v0, p0, Lq0/p;->a:Landroid/content/Context;

    .line 19
    .line 20
    const v1, 0x7f130407

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final b(Lj/i;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final d(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lq0/p;->n:Ly0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_4a

    .line 4
    .line 5
    iget-boolean v1, p0, Lq0/p;->f:Z

    .line 6
    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    goto :goto_4a

    .line 10
    :cond_9
    const/16 v1, 0x16

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    :try_start_d
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_4c

    .line 17
    .line 18
    .line 19
    new-array v3, v2, [B

    .line 20
    .line 21
    fill-array-data v3, :array_5c

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    fill-array-data v3, :array_64

    .line 32
    .line 33
    .line 34
    new-array v4, v2, [B

    .line 35
    .line 36
    fill-array-data v4, :array_6a

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3, p1}, Lcom/bumptech/glide/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, v1, p1}, Ly0/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_31} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_31} :catch_32

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_32
    move-exception p1

    .line 52
    goto :goto_35

    .line 53
    :catch_34
    move-exception p1

    .line 54
    :goto_35
    sget-object v0, Lq0/p;->p:Ljava/lang/String;

    .line 55
    .line 56
    const/16 v1, 0x1e

    .line 57
    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    fill-array-data v1, :array_72

    .line 61
    .line 62
    .line 63
    new-array v2, v2, [B

    .line 64
    .line 65
    fill-array-data v2, :array_86

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :cond_4a
    :goto_4a
    return-void

    .line 76
    nop

    .line 77
    :array_4c
    .array-data 1
        0x64t
        -0x1dt
        -0x78t
        0x34t
        -0x3ct
        0x75t
        -0x25t
        0x21t
        0x64t
        -0x41t
        -0x67t
        0x28t
        -0x2et
        0x76t
        -0x2ft
        0x3dt
        0x73t
        -0xct
        -0x39t
        0x3dt
        -0x39t
        0x76t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :array_5c
    .array-data 1
        0x10t
        -0x6ft
        -0x17t
        0x5at
        -0x49t
        0x5t
        -0x4ct
        0x53t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_64
    .array-data 1
        0x4bt
        -0x21t
        0x4et
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_6a
    .array-data 1
        0x2ct
        -0x51t
        0x3dt
        -0x3dt
        -0x2t
        0x67t
        0x70t
        0x77t
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_72
    .array-data 1
        -0x70t
        -0x77t
        -0x5at
        -0x36t
        -0x6ft
        0x1dt
        -0x51t
        -0x51t
        -0x56t
        -0x39t
        -0x49t
        -0x23t
        -0x61t
        0x14t
        -0x1at
        -0x58t
        -0x53t
        -0x39t
        -0x80t
        -0x8t
        -0x52t
        0x58t
        -0x1t
        -0x57t
        -0x60t
        -0x6ct
        -0x5et
        -0x3at
        -0x62t
        0x1dt
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
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
        -0x3bt
        -0x19t
        -0x39t
        -0x58t
        -0x3t
        0x78t
        -0x71t
        -0x25t
    .end array-data
.end method

.method public final e()V
    .registers 6

    .line 1
    iget-object v0, p0, Lq0/p;->n:Ly0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_4c

    .line 4
    .line 5
    iget-boolean v1, p0, Lq0/p;->f:Z

    .line 6
    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    goto :goto_4c

    .line 10
    :cond_9
    const/16 v1, 0xa

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    :try_start_d
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_4e

    .line 17
    .line 18
    .line 19
    new-array v3, v2, [B

    .line 20
    .line 21
    fill-array-data v3, :array_58

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    fill-array-data v3, :array_60

    .line 32
    .line 33
    .line 34
    new-array v4, v2, [B

    .line 35
    .line 36
    fill-array-data v4, :array_66

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-boolean v4, p0, Lq0/p;->j:Z

    .line 44
    .line 45
    invoke-static {v3, v4}, Lcom/bumptech/glide/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v1, v3}, Ly0/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_33} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_33} :catch_34

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_34
    move-exception v0

    .line 54
    goto :goto_37

    .line 55
    :catch_36
    move-exception v0

    .line 56
    :goto_37
    sget-object v1, Lq0/p;->p:Ljava/lang/String;

    .line 57
    .line 58
    const/16 v3, 0x1c

    .line 59
    .line 60
    new-array v3, v3, [B

    .line 61
    .line 62
    fill-array-data v3, :array_6e

    .line 63
    .line 64
    .line 65
    new-array v2, v2, [B

    .line 66
    .line 67
    fill-array-data v2, :array_80

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :cond_4c
    :goto_4c
    return-void

    .line 78
    nop

    .line 79
    :array_4e
    .array-data 1
        0x37t
        0x6t
        -0x76t
        0x32t
        0x45t
        0xbt
        -0x5t
        -0x6t
        0x3et
        0x12t
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_58
    .array-data 1
        0x50t
        0x76t
        -0x7t
        0x1ct
        0x21t
        0x6et
        -0x6at
        -0x65t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_60
    .array-data 1
        0x58t
        0x7ct
        -0x53t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        0x3ft
        0xct
        -0x22t
        -0x70t
        0x43t
        0x4et
        -0xdt
        0x57t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_6e
    .array-data 1
        0x1bt
        -0x66t
        -0x29t
        -0x12t
        0x25t
        0x36t
        0x16t
        -0x2ft
        0x21t
        -0x2ct
        -0x3at
        -0x7t
        0x2bt
        0x3ft
        0x5ft
        -0x2at
        0x26t
        -0x2ct
        -0xft
        -0x24t
        0x1at
        0x73t
        0x52t
        -0x40t
        0x23t
        -0x6bt
        -0x28t
        -0x18t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_80
    .array-data 1
        0x4et
        -0xct
        -0x4at
        -0x74t
        0x49t
        0x53t
        0x36t
        -0x5bt
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/p;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f130285

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lq0/p;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final start()V
    .registers 7

    .line 1
    iget-object v0, p0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-boolean v0, p0, Lq0/p;->e:Z

    .line 13
    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    :try_start_10
    invoke-static {}, Lq0/p;->c()Ljava/lang/Boolean;

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
    iput-boolean v2, p0, Lq0/p;->e:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1c

    .line 28
    .line 29
    :catch_1c
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lq0/p;->a:Landroid/content/Context;

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    fill-array-data v3, :array_92

    .line 36
    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    new-array v5, v4, [B

    .line 41
    .line 42
    fill-array-data v5, :array_9c

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v0, v3}, Ly0/g;->a(Landroid/content/Context;Ljava/lang/String;)Ly0/h;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lq0/p;->n:Ly0/h;

    .line 54
    .line 55
    const/16 v0, 0xc

    .line 56
    .line 57
    new-array v3, v0, [B

    .line 58
    .line 59
    fill-array-data v3, :array_a4

    .line 60
    .line 61
    .line 62
    new-array v5, v4, [B

    .line 63
    .line 64
    fill-array-data v5, :array_ae

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v5, Lq0/o;

    .line 72
    .line 73
    invoke-direct {v5, p0, v1}, Lq0/o;-><init>(Lq0/p;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v5}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, p0, Lq0/p;->k:Ly0/d;

    .line 81
    .line 82
    const/16 v1, 0x16

    .line 83
    .line 84
    new-array v1, v1, [B

    .line 85
    .line 86
    fill-array-data v1, :array_b6

    .line 87
    .line 88
    .line 89
    new-array v3, v4, [B

    .line 90
    .line 91
    fill-array-data v3, :array_c6

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v3, Lq0/o;

    .line 99
    .line 100
    invoke-direct {v3, p0, v2}, Lq0/o;-><init>(Lq0/p;I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v3}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lq0/p;->m:Ly0/d;

    .line 108
    .line 109
    new-instance v1, Le0/d2;

    .line 110
    .line 111
    invoke-direct {v1, v2, p0}, Le0/d2;-><init>(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v3, Ly0/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    sget-object v3, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v1, v3}, Le0/d2;->a(Z)V

    .line 126
    .line 127
    .line 128
    new-instance v3, Ly0/d;

    .line 129
    .line 130
    invoke-direct {v3, v2, v1}, Ly0/d;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iput-object v3, p0, Lq0/p;->l:Ly0/d;

    .line 134
    .line 135
    iget-object v1, p0, Lq0/p;->c:Ljava/util/concurrent/ExecutorService;

    .line 136
    .line 137
    new-instance v2, Lf5/j;

    .line 138
    .line 139
    invoke-direct {v2, v0, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :array_92
    .array-data 1
        -0x1dt
        0x46t
        -0xbt
        -0x6dt
        -0x1et
        0x61t
        -0x1ft
        0x63t
        -0x19t
        0x53t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    nop

    .line 157
    :array_9c
    .array-data 1
        -0x7ct
        0x36t
        -0x7at
        -0x42t
        -0x6ft
        0xet
        -0x6ct
        0x11t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_a4
    .array-data 1
        -0x7et
        0x50t
        0x24t
        0x61t
        0x25t
        0x2et
        0x7et
        0x2ct
        -0x6ft
        0x49t
        0x38t
        0x21t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_ae
    .array-data 1
        -0x1bt
        0x20t
        0x57t
        0x4ft
        0x49t
        0x41t
        0x1dt
        0x4dt
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_b6
    .array-data 1
        -0x3at
        -0x22t
        -0x46t
        -0x6at
        0x5at
        -0x44t
        -0x77t
        -0x5bt
        -0x3at
        -0x7et
        -0x55t
        -0x76t
        0x4ct
        -0x41t
        -0x7dt
        -0x47t
        -0x2ft
        -0x37t
        -0xbt
        -0x61t
        0x59t
        -0x41t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    nop

    .line 199
    :array_c6
    .array-data 1
        -0x4et
        -0x54t
        -0x25t
        -0x8t
        0x29t
        -0x34t
        -0x1at
        -0x29t
    .end array-data
.end method

.method public final stop()V
    .registers 4

    .line 1
    iget-object v0, p0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lq0/p;->k:Ly0/d;

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_e

    .line 12
    :cond_b
    :try_start_b
    invoke-static {v0}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_e

    .line 13
    .line 14
    .line 15
    :catch_e
    :goto_e
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lq0/p;->k:Ly0/d;

    .line 17
    .line 18
    iget-object v2, p0, Lq0/p;->l:Ly0/d;

    .line 19
    .line 20
    if-nez v2, :cond_16

    .line 21
    .line 22
    goto :goto_19

    .line 23
    :cond_16
    :try_start_16
    invoke-static {v2}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_19

    .line 24
    .line 25
    .line 26
    :catch_19
    :goto_19
    iput-object v0, p0, Lq0/p;->l:Ly0/d;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lq0/p;->d(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lq0/p;->m:Ly0/d;

    .line 32
    .line 33
    if-nez v1, :cond_23

    .line 34
    .line 35
    goto :goto_26

    .line 36
    :cond_23
    :try_start_23
    invoke-static {v1}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_26

    .line 37
    .line 38
    .line 39
    :catch_26
    :goto_26
    iput-object v0, p0, Lq0/p;->m:Ly0/d;

    .line 40
    .line 41
    iget-object v1, p0, Lq0/p;->n:Ly0/h;

    .line 42
    .line 43
    if-eqz v1, :cond_31

    .line 44
    .line 45
    invoke-virtual {v1}, Ly0/h;->close()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lq0/p;->n:Ly0/h;

    .line 49
    .line 50
    :cond_31
    iget-object v0, p0, Lq0/p;->c:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    return-void
.end method
