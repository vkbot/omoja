.class public final Le0/a0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static h:Ljava/util/concurrent/ScheduledFuture;

.field public static volatile i:Ljava/lang/Boolean;

.field public static volatile j:Ljava/lang/Boolean;

.field public static k:Lcom/example/navistart/cores/HUDMassageObj;

.field public static l:I


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public b:Ljava/lang/Boolean;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Le0/a0;->i:Ljava/lang/Boolean;

    .line 4
    .line 5
    sput-object v0, Le0/a0;->j:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput v0, Le0/a0;->l:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xd

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_2e

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_3a

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Le0/a0;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Le0/a0;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    .line 36
    new-instance v1, Le0/y;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, p0, v2}, Le0/y;-><init>(Le0/a0;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_2e
    .array-data 1
        -0x8t
        0x15t
        0x23t
        0x30t
        -0x43t
        0x1et
        -0x34t
        -0x76t
        -0x3dt
        0x33t
        0xet
        0xet
        -0x58t
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    nop

    .line 59
    :array_3a
    .array-data 1
        -0x50t
        0x40t
        0x67t
        0x60t
        -0x31t
        0x71t
        -0x51t
        -0x11t
    .end array-data
.end method

.method public static a()Ljava/lang/Boolean;
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
    if-eqz v0, :cond_78

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
    const/4 v7, -0x8

    .line 89
    const/4 v8, 0x0

    .line 90
    aput-byte v7, v6, v8

    .line 91
    .line 92
    const/16 v7, 0x8

    .line 93
    .line 94
    new-array v7, v7, [B

    .line 95
    .line 96
    fill-array-data v7, :array_86

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    cmp-long v0, v0, v2

    .line 111
    .line 112
    if-gez v0, :cond_72

    .line 113
    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move v5, v8

    .line 116
    :goto_73
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    .line 123
    return-object v0

    .line 124
    nop

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
        -0x38t
        -0x57t
        0x11t
        0x1bt
        0x22t
        -0x68t
        -0x7t
        0x15t
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized b(Lcom/example/navistart/cores/HUDMassageObj;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_28

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    sput-object v0, Le0/a0;->j:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_44

    .line 19
    .line 20
    sget-object p2, Le0/a0;->i:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_24

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_44

    .line 33
    .line 34
    goto :goto_24

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_46

    .line 37
    :cond_24
    :goto_24
    invoke-virtual {p0, p1}, Le0/a0;->f(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 38
    .line 39
    .line 40
    goto :goto_44

    .line 41
    :cond_28
    iget-object p1, p0, Le0/a0;->b:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_40

    .line 48
    .line 49
    sget-object p1, Le0/a0;->i:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_40

    .line 56
    .line 57
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    sput-object p1, Le0/a0;->j:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p0}, Le0/a0;->g()V

    .line 62
    .line 63
    .line 64
    goto :goto_44

    .line 65
    :cond_40
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    sput-object p1, Le0/a0;->j:Ljava/lang/Boolean;
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_22

    .line 68
    .line 69
    :cond_44
    :goto_44
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_22

    .line 72
    throw p1
.end method

.method public final declared-synchronized c(Lcom/example/navistart/cores/HUDMassageObj;Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_22

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    sput-object v0, Le0/a0;->i:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1e

    .line 19
    .line 20
    sget-object p2, Le0/a0;->j:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1e

    .line 27
    .line 28
    goto :goto_3e

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_40

    .line 31
    :cond_1e
    invoke-virtual {p0, p1}, Le0/a0;->f(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 32
    .line 33
    .line 34
    goto :goto_3e

    .line 35
    :cond_22
    iget-object p1, p0, Le0/a0;->b:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3a

    .line 42
    .line 43
    sget-object p1, Le0/a0;->j:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3a

    .line 50
    .line 51
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    sput-object p1, Le0/a0;->i:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p0}, Le0/a0;->g()V

    .line 56
    .line 57
    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    sput-object p1, Le0/a0;->i:Ljava/lang/Boolean;
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_1c

    .line 62
    .line 63
    :goto_3e
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_1c

    .line 66
    throw p1
.end method

.method public final d()V
    .registers 7

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    new-array v1, v1, [B

    .line 7
    .line 8
    fill-array-data v1, :array_7c

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    new-array v3, v2, [B

    .line 14
    .line 15
    fill-array-data v3, :array_84

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Le0/a0;->d:Z

    .line 28
    .line 29
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    new-array v1, v1, [B

    .line 36
    .line 37
    fill-array-data v1, :array_8c

    .line 38
    .line 39
    .line 40
    new-array v4, v2, [B

    .line 41
    .line 42
    fill-array-data v4, :array_98

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Le0/a0;->e:Z

    .line 54
    .line 55
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/16 v1, 0x12

    .line 60
    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    fill-array-data v1, :array_a0

    .line 64
    .line 65
    .line 66
    new-array v4, v2, [B

    .line 67
    .line 68
    fill-array-data v4, :array_ae

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/16 v4, 0xb

    .line 76
    .line 77
    new-array v4, v4, [B

    .line 78
    .line 79
    fill-array-data v4, :array_b6

    .line 80
    .line 81
    .line 82
    new-array v5, v2, [B

    .line 83
    .line 84
    fill-array-data v5, :array_c0

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v0, v1, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Le0/a0;->g:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/16 v1, 0xc

    .line 102
    .line 103
    new-array v1, v1, [B

    .line 104
    .line 105
    fill-array-data v1, :array_c8

    .line 106
    .line 107
    .line 108
    new-array v2, v2, [B

    .line 109
    .line 110
    fill-array-data v2, :array_d2

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput-boolean v0, p0, Le0/a0;->f:Z

    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :array_7c
    .array-data 1
        -0x22t
        -0x28t
        0x3ct
        -0x61t
        0x7et
        0x32t
        -0x29t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_84
    .array-data 1
        -0x53t
        -0x54t
        0x4et
        -0x6t
        0x12t
        0x59t
        -0x4at
        0x68t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_8c
    .array-data 1
        -0x61t
        -0x2dt
        -0x76t
        0x54t
        0x40t
        -0x38t
        -0x4bt
        0x53t
        -0x7ft
        -0x3at
        -0x6at
        0x6et
        0x41t
        -0x2ft
        -0x60t
        0x7et
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_98
    .array-data 1
        -0x14t
        -0x59t
        -0x8t
        0xbt
        0x34t
        -0x59t
        -0x3bt
        0xct
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_a0
    .array-data 1
        -0x36t
        0x26t
        0x73t
        0x7bt
        -0x6at
        0x2et
        -0x70t
        -0x2et
        -0x28t
        0x24t
        0x7bt
        0x71t
        -0x67t
        0x39t
        -0x43t
        -0x3t
        -0x35t
        0x39t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :array_ae
    .array-data 1
        -0x47t
        0x56t
        0x1at
        0x15t
        -0x8t
        0x4bt
        -0x1et
        -0x73t
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
        -0x72t
        -0x47t
        -0x6at
        0x45t
        -0x1ct
        0x1bt
        0x59t
        0x3ct
        -0x7ft
        -0x7at
        -0x4et
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
    :array_c0
    .array-data 1
        -0x40t
        -0x2at
        -0x1et
        0x1at
        -0x4at
        0x6et
        0x37t
        0x63t
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_c8
    .array-data 1
        0x7dt
        0x79t
        0x57t
        0x6t
        -0x2ft
        -0x22t
        -0x6et
        0x29t
        0x5bt
        0x63t
        0x75t
        0x2et
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_d2
    .array-data 1
        0x35t
        0x2ct
        0x13t
        0x48t
        -0x50t
        -0x58t
        -0x5t
        0x66t
    .end array-data
.end method

.method public final e(Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 3

    .line 1
    iget-object v0, p0, Le0/a0;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized f(Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Le0/a0;->a()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a6

    .line 13
    if-nez v0, :cond_10

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_10
    :try_start_10
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/example/navistart/cores/ProBroProxy;->StartHUD()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/ProBroProxy;->SendInfoHUD(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const/16 v1, 0xd

    .line 43
    .line 44
    new-array v1, v1, [B

    .line 45
    .line 46
    fill-array-data v1, :array_aa

    .line 47
    .line 48
    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    new-array v3, v2, [B

    .line 52
    .line 53
    fill-array-data v3, :array_b6

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    new-array v3, v1, [B

    .line 70
    .line 71
    fill-array-data v3, :array_be

    .line 72
    .line 73
    .line 74
    new-array v4, v2, [B

    .line 75
    .line 76
    fill-array-data v4, :array_c4

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    new-array v3, v1, [B

    .line 92
    .line 93
    fill-array-data v3, :array_cc

    .line 94
    .line 95
    .line 96
    new-array v4, v2, [B

    .line 97
    .line 98
    fill-array-data v4, :array_d2

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    new-array v1, v1, [B

    .line 114
    .line 115
    fill-array-data v1, :array_da

    .line 116
    .line 117
    .line 118
    new-array v3, v2, [B

    .line 119
    .line 120
    fill-array-data v3, :array_e0

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const/4 v0, 0x5

    .line 147
    new-array v0, v0, [B

    .line 148
    .line 149
    fill-array-data v0, :array_e8

    .line 150
    .line 151
    .line 152
    new-array v1, v2, [B

    .line 153
    .line 154
    fill-array-data v1, :array_f0

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/4 v1, 0x1

    .line 162
    invoke-virtual {p1, v0, v1}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V
    :try_end_a4
    .catchall {:try_start_10 .. :try_end_a4} :catchall_a6

    .line 163
    .line 164
    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :catchall_a6
    move-exception p1

    .line 168
    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    .line 169
    throw p1

    .line 170
    nop

    .line 171
    :array_aa
    .array-data 1
        -0x42t
        -0x19t
        0x2at
        -0x41t
        -0x37t
        -0x58t
        0x48t
        0x78t
        -0x69t
        -0x2bt
        0xbt
        -0x26t
        -0x5ct
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    nop

    .line 183
    :array_b6
    .array-data 1
        -0xat
        -0x4et
        0x6et
        -0x20t
        -0x7ct
        -0x33t
        0x3bt
        0xbt
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_be
    .array-data 1
        0x11t
        -0x46t
        0x2et
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_c4
    .array-data 1
        0x31t
        -0x69t
        0xet
        -0x34t
        -0x56t
        0x76t
        0x58t
        0x18t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_cc
    .array-data 1
        0xdt
        -0x4ct
        0x53t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_d2
    .array-data 1
        0x2dt
        -0x67t
        0x73t
        0x3et
        -0x5ct
        0x69t
        -0x54t
        0x69t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_da
    .array-data 1
        -0x3ct
        -0x6at
        0x5dt
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_e0
    .array-data 1
        -0x1ct
        -0x45t
        0x7dt
        0x9t
        -0xat
        -0x9t
        0x2ct
        0x69t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_e8
    .array-data 1
        -0x7dt
        -0x4at
        0x46t
        -0xdt
        0x16t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    nop

    .line 241
    :array_f0
    .array-data 1
        -0x2dt
        -0x3ct
        0x29t
        -0x60t
        0x41t
        0x53t
        -0x6at
        -0x13t
    .end array-data
.end method

.method public final declared-synchronized g()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Lcom/example/navistart/cores/HUDMassageObj;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 12
    .line 13
    const-string v2, " "

    .line 14
    .line 15
    iput-object v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Le0/a0;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 18
    .line 19
    new-instance v3, Le0/z;

    .line 20
    .line 21
    invoke-direct {v3, v0, v1}, Le0/z;-><init>(Lcom/example/navistart/cores/HUDMassageObj;I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 v4, 0x32

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Le0/a0;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    .line 33
    new-instance v2, Le0/y;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v2, p0, v3}, Le0/y;-><init>(Le0/a0;I)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x4e20

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 42
    .line 43
    .line 44
    const/16 v0, 0xa

    .line 45
    .line 46
    new-array v0, v0, [B

    .line 47
    .line 48
    fill-array-data v0, :array_46

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    new-array v1, v1, [B

    .line 54
    .line 55
    fill-array-data v1, :array_50

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .line 69
    throw v0

    .line 70
    nop

    .line 71
    :array_46
    .array-data 1
        -0x17t
        -0xdt
        -0xdt
        0x32t
        0x3ft
        0x7ft
        0x38t
        -0x3bt
        -0x32t
        -0x2at
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    nop

    .line 81
    :array_50
    .array-data 1
        -0x5ft
        -0x5at
        -0x49t
        0x12t
        0x12t
        0x5ft
        0x6bt
        -0x4ft
    .end array-data
.end method
