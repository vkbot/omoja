.class public Lcom/example/navistart/Notik;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final l:Ljava/util/ArrayList;

.field public static final m:Ljava/lang/String;

.field public static n:Z


# instance fields
.field public b:Lg0/a;

.field public c:Lb1/m;

.field public final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public f:Ly0/h;

.field public g:Ly0/d;

.field public h:Ly0/d;

.field public i:Ly0/d;

.field public j:Ly0/d;

.field public k:Ly0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    fill-array-data v2, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/example/navistart/Notik;->m:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v0, 0x26

    .line 29
    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    fill-array-data v0, :array_2

    .line 33
    .line 34
    .line 35
    new-array v1, v1, [B

    .line 36
    .line 37
    fill-array-data v1, :array_3

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/example/navistart/Notik;->n:Z

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 1
        -0x2bt
        0x4dt
        -0x63t
        -0x13t
        -0x7ft
        0x4bt
        -0x12t
        0x18t
        -0x1t
        0x62t
        -0x79t
        -0x1bt
        -0x68t
        0x45t
        -0x11t
        0x8t
        -0x2ct
        0x4dt
        -0x7ft
        -0x13t
        -0x65t
        0x50t
        -0x22t
        0x3t
        -0x7t
        0x72t
        -0x64t
        -0x17t
        -0x79t
        0x50t
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
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    nop

    .line 67
    :array_1
    .array-data 1
        -0x69t
        0x21t
        -0x18t
        -0x78t
        -0xbt
        0x24t
        -0x7ft
        0x6ct
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_2
    .array-data 1
        0x22t
        0x65t
        -0x6dt
        -0xft
        -0x7t
        -0x54t
        -0x78t
        0x2ft
        0x8t
        0x4at
        -0x77t
        -0x7t
        -0x20t
        -0x5et
        -0x77t
        0x3ft
        0x23t
        0x65t
        -0x71t
        -0xft
        -0x1dt
        -0x49t
        -0x48t
        0x19t
        0xct
        0x7ct
        -0x7dt
        -0x20t
        -0x1et
        -0x54t
        -0x6dt
        0x33t
        0x24t
        0x6ct
        -0x70t
        -0x3t
        -0x12t
        -0x5at
    .end array-data

    .line 76
    .line 77
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
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    nop

    .line 99
    :array_3
    .array-data 1
        0x60t
        0x9t
        -0x1at
        -0x6ct
        -0x73t
        -0x3dt
        -0x19t
        0x5bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    new-array v2, v1, [B

    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-static {v2, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/example/navistart/Notik;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    fill-array-data v0, :array_2

    .line 33
    .line 34
    .line 35
    new-array v1, v1, [B

    .line 36
    .line 37
    fill-array-data v1, :array_3

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v1, 0x64

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Le0/w;->b(JLjava/lang/String;)Le0/v;

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/example/navistart/Notik;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    return-void

    .line 63
    :array_0
    .array-data 1
        0x19t
        0x7dt
        -0x16t
        -0x2ft
        -0x6at
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    nop

    .line 71
    :array_1
    .array-data 1
        0x57t
        0x12t
        -0x62t
        -0x48t
        -0x3t
        0x43t
        -0x6t
        0x2ft
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_2
    .array-data 1
        0x71t
        0x6ft
        -0x6bt
        0xet
        -0x77t
        -0x7t
        -0x44t
        -0x1ct
        0x7ct
        0x4bt
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
    :array_3
    .array-data 1
        0x3ft
        0x0t
        -0x1ft
        0x67t
        -0x1et
        -0x5at
        -0x10t
        -0x55t
    .end array-data
.end method

.method public static f(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0xb

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    fill-array-data p1, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    new-array v3, v2, [B

    .line 21
    .line 22
    fill-array-data v3, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x14

    .line 33
    .line 34
    new-array p1, p1, [B

    .line 35
    .line 36
    fill-array-data p1, :array_2

    .line 37
    .line 38
    .line 39
    new-array v1, v2, [B

    .line 40
    .line 41
    fill-array-data v1, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const-class p1, Lm0/n1;

    .line 53
    .line 54
    invoke-static {p0, p1, v0}, Lcom/example/navistart/W;->u(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 1
        -0x38t
        -0x5et
        0x16t
        -0x37t
        0x24t
        0x5et
        0x9t
        -0x2dt
        -0x3ct
        -0x4dt
        0x4t
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
    :array_1
    .array-data 1
        -0x5bt
        -0x39t
        0x65t
        -0x46t
        0x45t
        0x39t
        0x6ct
        -0x69t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 1
        0x4at
        0x3at
        -0xft
        0x55t
        0x3bt
        -0x4bt
        -0x7at
        -0x12t
        0x77t
        0x38t
        -0x7t
        0x4bt
        0x35t
        -0x4et
        -0x49t
        -0x1et
        0x41t
        0x3ft
        -0xdt
        0x49t
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
    :array_3
    .array-data 1
        0x28t
        0x5bt
        -0x6at
        0x27t
        0x5at
        -0x40t
        -0x18t
        -0x76t
    .end array-data
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/example/navistart/Notik;->m:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-boolean v0, Lcom/example/navistart/Notik;->n:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-class v2, Lcom/example/navistart/Notik;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lru/transfer/MessageData;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/example/navistart/Notik;->e(Lru/transfer/MessageData;)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/example/navistart/Notik;->f:Ly0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Ly0/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/16 v1, 0x1b

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    :try_start_0
    new-array v1, v1, [B

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    new-array v3, v2, [B

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-array v3, v2, [B

    .line 35
    .line 36
    fill-array-data v3, :array_2

    .line 37
    .line 38
    .line 39
    new-array v4, v2, [B

    .line 40
    .line 41
    fill-array-data v4, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3, p1}, Lcom/bumptech/glide/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, v1, p1}, Ly0/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception p1

    .line 59
    :goto_0
    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [B

    .line 61
    .line 62
    fill-array-data v0, :array_4

    .line 63
    .line 64
    .line 65
    new-array v1, v2, [B

    .line 66
    .line 67
    fill-array-data v1, :array_5

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/16 v1, 0x23

    .line 75
    .line 76
    new-array v1, v1, [B

    .line 77
    .line 78
    fill-array-data v1, :array_6

    .line 79
    .line 80
    .line 81
    new-array v2, v2, [B

    .line 82
    .line 83
    fill-array-data v2, :array_7

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_1
    return-void

    .line 94
    nop

    .line 95
    :array_0
    .array-data 1
        -0x51t
        -0x22t
        0x2bt
        -0x38t
        0x33t
        0x7t
        0x5at
        -0x10t
        -0x51t
        -0x7et
        0x3at
        -0x2ct
        0x25t
        0x4t
        0x50t
        -0x14t
        -0x48t
        -0x37t
        0x64t
        -0x35t
        0x25t
        0x4t
        0x46t
        -0x1dt
        -0x44t
        -0x37t
        0x39t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 1
        -0x25t
        -0x54t
        0x4at
        -0x5at
        0x40t
        0x77t
        0x35t
        -0x7et
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_2
    .array-data 1
        -0x79t
        -0x63t
        -0x51t
        0x13t
        0x10t
        0x10t
        0x4ct
        0x36t
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_3
    .array-data 1
        -0x16t
        -0x8t
        -0x24t
        0x60t
        0x71t
        0x77t
        0x29t
        0x45t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_4
    .array-data 1
        -0x4at
        0x56t
        0xat
        -0x1at
        0x8t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    nop

    .line 145
    :array_5
    .array-data 1
        -0x8t
        0x39t
        0x7et
        -0x71t
        0x63t
        -0x72t
        -0x8t
        0x7t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_6
    .array-data 1
        0x29t
        -0x7at
        0x11t
        -0x42t
        -0x38t
        -0x18t
        -0x3bt
        0x75t
        0x13t
        -0x38t
        0x0t
        -0x57t
        -0x3at
        -0x1ft
        -0x74t
        0x72t
        0x14t
        -0x38t
        0x1dt
        -0x47t
        -0x29t
        -0x2t
        -0x7ct
        0x66t
        0x19t
        -0x65t
        0x50t
        -0x54t
        -0x2at
        -0x18t
        -0x6at
        0x64t
        0x12t
        -0x75t
        0x15t
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :array_7
    .array-data 1
        0x7ct
        -0x18t
        0x70t
        -0x24t
        -0x5ct
        -0x73t
        -0x1bt
        0x1t
    .end array-data
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Lru/transfer/MessageData;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :cond_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    check-cast v3, Lru/transfer/MessageData;

    .line 18
    .line 19
    invoke-virtual {v3}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-object v3

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    monitor-exit p0

    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final d(Lru/transfer/MessageData;)V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0xd

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    fill-array-data v3, :array_2

    .line 28
    .line 29
    .line 30
    new-array v4, v1, [B

    .line 31
    .line 32
    fill-array-data v4, :array_3

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    new-array v3, v3, [B

    .line 51
    .line 52
    fill-array-data v3, :array_4

    .line 53
    .line 54
    .line 55
    new-array v1, v1, [B

    .line 56
    .line 57
    fill-array-data v1, :array_5

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lru/transfer/MessageData;->gethasReply()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/example/navistart/Notik;->a(Lru/transfer/MessageData;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroid/os/Handler;

    .line 85
    .line 86
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, La1/a;

    .line 94
    .line 95
    const/16 v2, 0x1c

    .line 96
    .line 97
    invoke-direct {v1, v2, p0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 1
        -0x65t
        -0x2dt
        -0x79t
        -0x28t
        0x5t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    nop

    .line 113
    :array_1
    .array-data 1
        -0x2bt
        -0x44t
        -0xdt
        -0x4ft
        0x6et
        -0xbt
        -0x2et
        -0x3ft
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_2
    .array-data 1
        0x77t
        -0x1t
        -0x5ft
        0x7at
        0x61t
        0x6ct
        0x50t
        0x38t
        0x5bt
        -0x12t
        -0x4dt
        0x33t
        0x20t
    .end array-data

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
    nop

    .line 133
    :array_3
    .array-data 1
        0x3at
        -0x66t
        -0x2et
        0x9t
        0x0t
        0xbt
        0x35t
        0x7ct
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_4
    .array-data 1
        0x57t
        0x74t
        -0x66t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_5
    .array-data 1
        0x77t
        0x59t
        -0x46t
        0x44t
        -0x79t
        0x6bt
        0x76t
        0x2ct
    .end array-data
.end method

.method public final declared-synchronized e(Lru/transfer/MessageData;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lru/transfer/MessageData;

    .line 19
    .line 20
    invoke-virtual {v1}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb1/m;

    .line 5
    .line 6
    invoke-direct {v0, p0, p0}, Lb1/m;-><init>(Lcom/example/navistart/Notik;Lcom/example/navistart/Notik;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/example/navistart/Notik;->c:Lb1/m;

    .line 10
    .line 11
    new-instance v0, Lg0/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lg0/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/example/navistart/Notik;->b:Lg0/a;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    new-array v2, v0, [B

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0, v1}, Ly0/g;->a(Landroid/content/Context;Ljava/lang/String;)Ly0/h;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/example/navistart/Notik;->f:Ly0/h;

    .line 39
    .line 40
    const/16 v1, 0xf

    .line 41
    .line 42
    new-array v2, v1, [B

    .line 43
    .line 44
    fill-array-data v2, :array_2

    .line 45
    .line 46
    .line 47
    new-array v3, v0, [B

    .line 48
    .line 49
    fill-array-data v3, :array_3

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Le0/c2;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v3, p0, v4}, Le0/c2;-><init>(Lcom/example/navistart/Notik;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/example/navistart/Notik;->g:Ly0/d;

    .line 67
    .line 68
    new-array v1, v1, [B

    .line 69
    .line 70
    fill-array-data v1, :array_4

    .line 71
    .line 72
    .line 73
    new-array v2, v0, [B

    .line 74
    .line 75
    fill-array-data v2, :array_5

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Le0/c2;

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    invoke-direct {v2, p0, v3}, Le0/c2;-><init>(Lcom/example/navistart/Notik;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iput-object v1, p0, Lcom/example/navistart/Notik;->h:Ly0/d;

    .line 93
    .line 94
    const/16 v1, 0x15

    .line 95
    .line 96
    new-array v1, v1, [B

    .line 97
    .line 98
    fill-array-data v1, :array_6

    .line 99
    .line 100
    .line 101
    new-array v2, v0, [B

    .line 102
    .line 103
    fill-array-data v2, :array_7

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-instance v2, Le0/c2;

    .line 111
    .line 112
    const/4 v3, 0x2

    .line 113
    invoke-direct {v2, p0, v3}, Le0/c2;-><init>(Lcom/example/navistart/Notik;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/example/navistart/Notik;->i:Ly0/d;

    .line 121
    .line 122
    const/16 v1, 0x1b

    .line 123
    .line 124
    new-array v1, v1, [B

    .line 125
    .line 126
    fill-array-data v1, :array_8

    .line 127
    .line 128
    .line 129
    new-array v0, v0, [B

    .line 130
    .line 131
    fill-array-data v0, :array_9

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Le0/c2;

    .line 139
    .line 140
    const/4 v2, 0x3

    .line 141
    invoke-direct {v1, p0, v2}, Le0/c2;-><init>(Lcom/example/navistart/Notik;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Ly0/g;->e(Ljava/lang/String;Ly0/e;)Ly0/d;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/example/navistart/Notik;->k:Ly0/d;

    .line 149
    .line 150
    new-instance v0, Le0/d2;

    .line 151
    .line 152
    invoke-direct {v0, v4, p0}, Le0/d2;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object v1, Ly0/g;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {v0, v1}, Le0/d2;->a(Z)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Ly0/d;

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    invoke-direct {v1, v2, v0}, Ly0/d;-><init>(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lcom/example/navistart/Notik;->j:Ly0/d;

    .line 176
    .line 177
    return-void

    .line 178
    nop

    .line 179
    :array_0
    .array-data 1
        -0x3t
        0x60t
        0x0t
        -0x5t
        0x65t
        0x7ft
        0x3dt
        -0x4et
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 1
        -0x70t
        0x5t
        0x73t
        -0x78t
        0x4t
        0x18t
        0x58t
        -0x3ft
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_2
    .array-data 1
        0x48t
        -0xbt
        -0x3dt
        0x6at
        -0x8t
        0x7t
        -0x5ct
        0x6at
        0xbt
        -0x1bt
        -0x40t
        0x6at
        -0x4t
        0x12t
        -0x4bt
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_3
    .array-data 1
        0x25t
        -0x70t
        -0x50t
        0x19t
        -0x67t
        0x60t
        -0x3ft
        0x19t
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_4
    .array-data 1
        -0x5et
        0x5t
        0x57t
        0x15t
        -0x80t
        -0x7t
        -0xft
        -0x7t
        -0x1ft
        0x12t
        0x41t
        0xbt
        -0x72t
        -0x18t
        -0xft
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_5
    .array-data 1
        -0x31t
        0x60t
        0x24t
        0x66t
        -0x1ft
        -0x62t
        -0x6ct
        -0x76t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_6
    .array-data 1
        -0x22t
        0x22t
        -0x56t
        0x2bt
        -0x47t
        0x28t
        -0x7dt
        0x79t
        -0x63t
        0x35t
        -0x44t
        0x28t
        -0x4ct
        0x36t
        -0x38t
        0x78t
        -0x2at
        0x34t
        -0x54t
        0x34t
        -0x54t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    nop

    .line 251
    :array_7
    .array-data 1
        -0x4dt
        0x47t
        -0x27t
        0x58t
        -0x28t
        0x4ft
        -0x1at
        0xat
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_8
    .array-data 1
        0x23t
        -0x4et
        0x7et
        -0x75t
        0x44t
        0x53t
        0x6t
        0x1at
        0x23t
        -0x12t
        0x6ft
        -0x69t
        0x52t
        0x50t
        0xct
        0x6t
        0x34t
        -0x5bt
        0x31t
        -0x78t
        0x52t
        0x50t
        0x1at
        0x9t
        0x30t
        -0x5bt
        0x6ct
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_9
    .array-data 1
        0x57t
        -0x40t
        0x1ft
        -0x1bt
        0x37t
        0x23t
        0x69t
        0x68t
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/example/navistart/Notik;->b(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/example/navistart/Notik;->g:Ly0/d;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-static {v0}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/example/navistart/Notik;->g:Ly0/d;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/example/navistart/Notik;->h:Ly0/d;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :try_start_1
    invoke-static {v1}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    .line 23
    .line 24
    :catch_1
    :goto_1
    iput-object v0, p0, Lcom/example/navistart/Notik;->h:Ly0/d;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/example/navistart/Notik;->i:Ly0/d;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :try_start_2
    invoke-static {v1}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    .line 33
    .line 34
    :catch_2
    :goto_2
    iput-object v0, p0, Lcom/example/navistart/Notik;->i:Ly0/d;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/example/navistart/Notik;->j:Ly0/d;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    :try_start_3
    invoke-static {v1}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 42
    .line 43
    .line 44
    :catch_3
    :goto_3
    iput-object v0, p0, Lcom/example/navistart/Notik;->j:Ly0/d;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/example/navistart/Notik;->k:Ly0/d;

    .line 47
    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    :try_start_4
    invoke-static {v1}, Lai/onnxruntime/a;->A(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 52
    .line 53
    .line 54
    :catch_4
    :goto_4
    iput-object v0, p0, Lcom/example/navistart/Notik;->k:Ly0/d;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/example/navistart/Notik;->f:Ly0/h;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1}, Ly0/h;->close()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/example/navistart/Notik;->f:Ly0/h;

    .line 64
    .line 65
    :cond_5
    iget-object v1, p0, Lcom/example/navistart/Notik;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/example/navistart/Notik;->b:Lg0/a;

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    invoke-virtual {v1}, Lg0/a;->a()V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-object v1, p0, Lcom/example/navistart/Notik;->c:Lb1/m;

    .line 78
    .line 79
    if-eqz v1, :cond_7

    .line 80
    .line 81
    iget-object v2, v1, Lb1/m;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v0, v1, Lb1/m;->e:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 88
    .line 89
    .line 90
    :cond_7
    invoke-static {p0}, Lcom/example/navistart/Notik;->g(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lm0/n1;->e:Lcom/example/navistart/Notik;

    .line 94
    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-static {p0}, Ly0/g;->d(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/example/navistart/Notik;->b:Lg0/a;

    .line 5
    .line 6
    invoke-virtual {p1}, Lg0/a;->a()V

    .line 7
    .line 8
    .line 9
    sput-object p0, Lm0/n1;->e:Lcom/example/navistart/Notik;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method
