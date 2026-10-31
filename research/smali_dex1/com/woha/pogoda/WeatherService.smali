.class public Lcom/woha/pogoda/WeatherService;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static f:Z

.field public static g:Landroid/location/Location;

.field public static h:Lk7/c;

.field public static i:Lr5/c;

.field public static volatile j:Lk7/b;

.field public static k:Landroid/location/Location;

.field public static l:Ljava/lang/String;


# instance fields
.field public b:Lk7/e;

.field public c:Landroid/view/WindowManager;

.field public final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public e:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xe

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_1e

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_2a

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
    iput-object v0, p0, Lcom/woha/pogoda/WeatherService;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_1e
    .array-data 1
        -0x7bt
        -0x24t
        0x2et
        -0x4ct
        0xat
        -0x25t
        -0x21t
        0x17t
        -0x49t
        -0x35t
        0x39t
        -0x57t
        0x1t
        -0x25t
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    nop

    .line 43
    :array_2a
    .array-data 1
        -0x2et
        -0x47t
        0x4ft
        -0x40t
        0x62t
        -0x42t
        -0x53t
        0x44t
    .end array-data
.end method

.method public static declared-synchronized a()Lk7/c;
    .registers 7

    .line 1
    const-class v0, Lcom/woha/pogoda/WeatherService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/woha/pogoda/WeatherService;->h:Lk7/c;

    .line 9
    .line 10
    if-eqz v2, :cond_16

    .line 11
    .line 12
    sget-object v2, Lcom/woha/pogoda/WeatherService;->l:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_5c

    .line 19
    .line 20
    goto :goto_16

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    goto :goto_60

    .line 23
    :cond_16
    :goto_16
    sget-object v2, Ln0/f;->d:Ln0/f;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2a

    .line 34
    .line 35
    new-instance v2, Lk7/f;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v2, Lcom/woha/pogoda/WeatherService;->h:Lk7/c;

    .line 41
    .line 42
    goto :goto_5a

    .line 43
    :cond_2a
    sget-object v2, Ln0/f;->e:Ln0/f;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3e

    .line 54
    .line 55
    new-instance v2, Lk7/a;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v2, Lcom/woha/pogoda/WeatherService;->h:Lk7/c;

    .line 61
    .line 62
    goto :goto_5a

    .line 63
    :cond_3e
    new-instance v2, Lr5/c;

    .line 64
    .line 65
    new-instance v3, Lk7/f;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v4, Lk7/a;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x2

    .line 76
    new-array v5, v5, [Lk7/c;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    aput-object v3, v5, v6

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    aput-object v4, v5, v3

    .line 83
    .line 84
    const/16 v3, 0x17

    .line 85
    .line 86
    invoke-direct {v2, v3, v5}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sput-object v2, Lcom/woha/pogoda/WeatherService;->h:Lk7/c;

    .line 90
    .line 91
    :goto_5a
    sput-object v1, Lcom/woha/pogoda/WeatherService;->l:Ljava/lang/String;

    .line 92
    .line 93
    :cond_5c
    sget-object v1, Lcom/woha/pogoda/WeatherService;->h:Lk7/c;
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_14

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    return-object v1

    .line 97
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_14

    .line 98
    throw v1
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_22

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_32

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Ln0/f;->c:Ln0/f;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_22
    .array-data 1
        -0x1t
        -0x3bt
        0x37t
        0x2et
        -0x9t
        0x65t
        -0x7at
        -0x40t
        -0x4t
        -0x26t
        0x39t
        0x2ft
        -0x3t
        0x61t
        -0x55t
        -0x18t
        -0x1bt
        -0x2ft
        0x39t
        0x1ft
        -0x17t
        0x72t
        -0x65t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_32
    .array-data 1
        -0x74t
        -0x4bt
        0x5et
        0x40t
        -0x67t
        0x0t
        -0xct
        -0x61t
    .end array-data
.end method

.method public static c()Lk7/b;
    .registers 4

    .line 1
    sget-object v0, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 2
    .line 3
    if-nez v0, :cond_21

    .line 4
    .line 5
    new-instance v0, Lk7/b;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    fill-array-data v1, :array_24

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v2, v2, [B

    .line 16
    .line 17
    fill-array-data v2, :array_2a

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f070240

    .line 25
    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-direct {v0, v1, v3, v3, v2}, Lk7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 33
    .line 34
    :cond_21
    sget-object v0, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 35
    .line 36
    return-object v0

    .line 37
    :array_24
    .array-data 1
        -0x50t
        0x73t
        -0x9t
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :array_2a
    .array-data 1
        -0x2t
        0x5ct
        -0x4at
        -0xdt
        -0x6t
        -0x72t
        -0x38t
        0x54t
    .end array-data
.end method

.method public static d(DDLandroidx/fragment/app/h;)Z
    .registers 9

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_74

    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_74

    .line 12
    .line 13
    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmpg-double v0, p0, v0

    .line 19
    .line 20
    if-ltz v0, :cond_74

    .line 21
    .line 22
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpl-double v0, p0, v0

    .line 28
    .line 29
    if-gtz v0, :cond_74

    .line 30
    .line 31
    const-wide v0, -0x3f99800000000000L    # -180.0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmpg-double v0, p2, v0

    .line 37
    .line 38
    if-ltz v0, :cond_74

    .line 39
    .line 40
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpl-double v0, p2, v0

    .line 46
    .line 47
    if-lez v0, :cond_31

    .line 48
    .line 49
    goto :goto_74

    .line 50
    :cond_31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    const/16 v1, 0x9

    .line 53
    .line 54
    new-array v1, v1, [B

    .line 55
    .line 56
    fill-array-data v1, :array_76

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    new-array v3, v2, [B

    .line 62
    .line 63
    fill-array-data v3, :array_80

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const/16 p1, 0xe

    .line 87
    .line 88
    new-array p1, p1, [B

    .line 89
    .line 90
    fill-array-data p1, :array_88

    .line 91
    .line 92
    .line 93
    new-array p2, v2, [B

    .line 94
    .line 95
    fill-array-data p2, :array_94

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 p2, -0x1

    .line 103
    invoke-static {p2, p1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Le0/j2;

    .line 108
    .line 109
    invoke-direct {p2, p4, p0}, Le0/j2;-><init>(Landroidx/fragment/app/h;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x1

    .line 116
    return p0

    .line 117
    :cond_74
    :goto_74
    const/4 p0, 0x0

    .line 118
    return p0

    .line 119
    :array_76
    .array-data 1
        0x2at
        0x67t
        -0x4t
        0x13t
        -0x5bt
        -0x34t
        -0x45t
        0x28t
        0x69t
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    nop

    .line 129
    :array_80
    .array-data 1
        0xft
        0x49t
        -0x32t
        0x75t
        -0x77t
        -0x17t
        -0x6bt
        0x1at
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_88
    .array-data 1
        0x0t
        0x7t
        -0x80t
        0x35t
        -0x75t
        0x13t
        0x2at
        -0x70t
        0x32t
        0x10t
        -0x69t
        0x28t
        -0x80t
        0x13t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    nop

    .line 149
    :array_94
    .array-data 1
        0x57t
        0x62t
        -0x1ft
        0x41t
        -0x1dt
        0x76t
        0x58t
        -0x3dt
    .end array-data
.end method

.method public static e(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_28

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_36

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_27

    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v1, Lcom/woha/pogoda/WeatherService;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    :cond_27
    return-void

    .line 41
    :array_28
    .array-data 1
        0x2bt
        0x61t
        -0x28t
        0x2et
        -0x75t
        -0x37t
        0x54t
        0x56t
        0x39t
        0x49t
        -0x10t
        0x37t
        -0x80t
        -0x37t
        0x64t
        0x5dt
        0x36t
        0x79t
        -0x1ft
        0x38t
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
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_36
    .array-data 1
        0x58t
        0x16t
        -0x79t
        0x5et
        -0x1ct
        -0x52t
        0x3bt
        0x32t
    .end array-data
.end method

.method public static g(Lk7/b;)V
    .registers 9

    .line 1
    sput-object p0, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 2
    .line 3
    sget-object v0, Lcom/woha/pogoda/WeatherService;->i:Lr5/c;

    .line 4
    .line 5
    if-eqz v0, :cond_81

    .line 6
    .line 7
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/woha/pogoda/WeatherService;

    .line 10
    .line 11
    sget-object v1, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    const v4, 0x7f070240

    .line 17
    .line 18
    .line 19
    const-string v5, ""

    .line 20
    .line 21
    if-nez v1, :cond_2b

    .line 22
    .line 23
    new-instance v1, Lk7/b;

    .line 24
    .line 25
    new-array v6, v3, [B

    .line 26
    .line 27
    fill-array-data v6, :array_82

    .line 28
    .line 29
    .line 30
    new-array v7, v2, [B

    .line 31
    .line 32
    fill-array-data v7, :array_88

    .line 33
    .line 34
    .line 35
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-direct {v1, v6, v5, v5, v4}, Lk7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 43
    .line 44
    :cond_2b
    new-array v1, v3, [B

    .line 45
    .line 46
    fill-array-data v1, :array_90

    .line 47
    .line 48
    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    fill-array-data v2, :array_96

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lk7/b;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_4f

    .line 65
    .line 66
    iget-object v1, p0, Lk7/b;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4f

    .line 73
    .line 74
    sget-object v1, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 75
    .line 76
    iget-object v2, p0, Lk7/b;->a:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v2, v1, Lk7/b;->a:Ljava/lang/String;

    .line 79
    .line 80
    :cond_4f
    iget-object v1, p0, Lk7/b;->b:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5d

    .line 87
    .line 88
    sget-object v1, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 89
    .line 90
    iget-object v2, p0, Lk7/b;->b:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v2, v1, Lk7/b;->b:Ljava/lang/String;

    .line 93
    .line 94
    :cond_5d
    iget p0, p0, Lk7/b;->d:I

    .line 95
    .line 96
    const/4 v1, -0x1

    .line 97
    if-ne p0, v1, :cond_67

    .line 98
    .line 99
    sget-object p0, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 100
    .line 101
    iput v4, p0, Lk7/b;->d:I

    .line 102
    .line 103
    goto :goto_6b

    .line 104
    :cond_67
    sget-object v1, Lcom/woha/pogoda/WeatherService;->j:Lk7/b;

    .line 105
    .line 106
    iput p0, v1, Lk7/b;->d:I

    .line 107
    .line 108
    :goto_6b
    iget-object p0, v0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 109
    .line 110
    if-eqz p0, :cond_81

    .line 111
    .line 112
    new-instance p0, Landroid/os/Handler;

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    .line 120
    .line 121
    new-instance v1, Lk7/d;

    .line 122
    .line 123
    const/4 v2, 0x2

    .line 124
    invoke-direct {v1, v0, v2}, Lk7/d;-><init>(Lcom/woha/pogoda/WeatherService;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    :cond_81
    return-void

    .line 131
    :array_82
    .array-data 1
        -0x6at
        -0x47t
        -0x77t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_88
    .array-data 1
        -0x28t
        -0x6at
        -0x38t
        -0x57t
        0x5et
        -0x28t
        -0x5ft
        0x48t
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_90
    .array-data 1
        -0x3t
        -0x4bt
        -0x3et
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_96
    .array-data 1
        -0x4dt
        -0x66t
        -0x7dt
        -0x5dt
        0x71t
        -0xat
        -0x1at
        -0x42t
    .end array-data
.end method

.method public static h(Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/woha/pogoda/WeatherService;->i:Lr5/c;

    .line 2
    .line 3
    if-eqz v0, :cond_23

    .line 4
    .line 5
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/woha/pogoda/WeatherService;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object v1, v0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 14
    .line 15
    if-eqz v1, :cond_23

    .line 16
    .line 17
    new-instance v1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Le0/j2;

    .line 27
    .line 28
    const/16 v3, 0xe

    .line 29
    .line 30
    invoke-direct {v2, v3, v0, p0}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method


# virtual methods
.method public final f()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/woha/pogoda/WeatherService;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_10

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_10

    .line 11
    .line 12
    iget-object v0, p0, Lcom/woha/pogoda/WeatherService;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Le0/m;->j:[B

    .line 27
    .line 28
    sget-object v4, Le0/p3;->a:[Ljava/lang/String;

    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x9

    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_d6

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Le0/x1;->q:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v3, Le0/m;->f:[B

    .line 56
    .line 57
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz v0, :cond_88

    .line 63
    .line 64
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-wide v4, 0x7fffffffffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    new-instance v0, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    new-instance v8, Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Le0/m;->g:[B

    .line 97
    .line 98
    invoke-static {v3, v7, v8}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-array v7, v1, [B

    .line 103
    .line 104
    const/16 v8, 0x57

    .line 105
    .line 106
    aput-byte v8, v7, v2

    .line 107
    .line 108
    const/16 v8, 0x8

    .line 109
    .line 110
    new-array v8, v8, [B

    .line 111
    .line 112
    fill-array-data v8, :array_e0

    .line 113
    .line 114
    .line 115
    invoke-static {v7, v8, v6, v3, v2}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    cmp-long v0, v4, v6

    .line 127
    .line 128
    if-gez v0, :cond_82

    .line 129
    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move v1, v2

    .line 132
    :goto_83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_8a

    .line 137
    :cond_88
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    .line 139
    :goto_8a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_d5

    .line 144
    .line 145
    sget-object v0, Lcom/woha/pogoda/WeatherService;->g:Landroid/location/Location;

    .line 146
    .line 147
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 148
    .line 149
    iget-object v3, p0, Lcom/woha/pogoda/WeatherService;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 150
    .line 151
    if-eqz v0, :cond_c8

    .line 152
    .line 153
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->b()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v4, Ln0/f;->f:Ln0/f;

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_b9

    .line 168
    .line 169
    sget-object v0, Lcom/woha/pogoda/WeatherService;->g:Landroid/location/Location;

    .line 170
    .line 171
    if-nez v0, :cond_ad

    .line 172
    .line 173
    goto :goto_b9

    .line 174
    :cond_ad
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 179
    .line 180
    .line 181
    move-result-wide v6

    .line 182
    const/4 v0, 0x0

    .line 183
    invoke-static {v4, v5, v6, v7, v0}, Lcom/woha/pogoda/WeatherService;->d(DDLandroidx/fragment/app/h;)Z

    .line 184
    .line 185
    .line 186
    :cond_b9
    :goto_b9
    new-instance v0, Lk7/d;

    .line 187
    .line 188
    invoke-direct {v0, p0, v2}, Lk7/d;-><init>(Lcom/woha/pogoda/WeatherService;I)V

    .line 189
    .line 190
    .line 191
    const-wide/32 v4, 0x1b7740

    .line 192
    .line 193
    .line 194
    invoke-interface {v3, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/woha/pogoda/WeatherService;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 199
    .line 200
    return-void

    .line 201
    :cond_c8
    new-instance v0, Lk7/d;

    .line 202
    .line 203
    invoke-direct {v0, p0, v2}, Lk7/d;-><init>(Lcom/woha/pogoda/WeatherService;I)V

    .line 204
    .line 205
    .line 206
    const-wide/16 v4, 0x2710

    .line 207
    .line 208
    invoke-interface {v3, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/woha/pogoda/WeatherService;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 213
    .line 214
    :cond_d5
    return-void

    .line 215
    :array_d6
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

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    nop

    .line 225
    :array_e0
    .array-data 1
        0x67t
        0x22t
        -0x75t
        0x11t
        -0x66t
        0x21t
        0x26t
        0x1et
    .end array-data
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->a()Lk7/c;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/woha/pogoda/WeatherService;->f:Z

    .line 9
    .line 10
    return-void
.end method

.method public final onDestroy()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/woha/pogoda/WeatherService;->i:Lr5/c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 8
    .line 9
    if-eqz v1, :cond_11

    .line 10
    .line 11
    iget-object v2, p0, Lcom/woha/pogoda/WeatherService;->c:Landroid/view/WindowManager;

    .line 12
    .line 13
    invoke-static {v2, v1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 17
    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/woha/pogoda/WeatherService;->f:Z

    .line 20
    .line 21
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 5
    .line 6
    if-eqz p1, :cond_f

    .line 7
    .line 8
    iget-object p2, p0, Lcom/woha/pogoda/WeatherService;->c:Landroid/view/WindowManager;

    .line 9
    .line 10
    invoke-static {p2, p1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 15
    .line 16
    :cond_f
    new-instance p1, Le0/u1;

    .line 17
    .line 18
    const/16 p2, 0xb

    .line 19
    .line 20
    new-array p2, p2, [B

    .line 21
    .line 22
    fill-array-data p2, :array_aa

    .line 23
    .line 24
    .line 25
    const/16 p3, 0x8

    .line 26
    .line 27
    new-array p3, p3, [B

    .line 28
    .line 29
    fill-array-data p3, :array_b4

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p0, p2}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lk7/e;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    .line 46
    iput-object p3, p2, Lk7/e;->g:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    const v0, 0x7f0c0120

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    const p3, 0x7f09054b

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object p3, p2, Lk7/e;->b:Landroid/widget/TextView;

    .line 69
    .line 70
    const p3, 0x7f09054c

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p3, p2, Lk7/e;->c:Landroid/widget/TextView;

    .line 80
    .line 81
    const p3, 0x7f090256

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    check-cast p3, Landroid/widget/ImageView;

    .line 89
    .line 90
    iput-object p3, p2, Lk7/e;->d:Landroid/widget/ImageView;

    .line 91
    .line 92
    const p3, 0x7f0905d3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Landroid/widget/LinearLayout;

    .line 100
    .line 101
    iput-object p3, p2, Lk7/e;->e:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    const p3, 0x7f0903bf

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Landroid/widget/ProgressBar;

    .line 111
    .line 112
    iput-object p3, p2, Lk7/e;->f:Landroid/widget/ProgressBar;

    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    .line 116
    .line 117
    const/4 p3, 0x0

    .line 118
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iput-object p2, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 122
    .line 123
    new-instance p2, Lr5/c;

    .line 124
    .line 125
    const/16 p3, 0x18

    .line 126
    .line 127
    invoke-direct {p2, p3, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    sput-object p2, Lcom/woha/pogoda/WeatherService;->i:Lr5/c;

    .line 131
    .line 132
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-interface {p2}, Lj1/v;->b()Lz0/a;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    iget-object p3, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 144
    .line 145
    iget-object v0, p1, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 146
    .line 147
    invoke-interface {p2, p3, v0}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    iput-object p2, p0, Lcom/woha/pogoda/WeatherService;->c:Landroid/view/WindowManager;

    .line 152
    .line 153
    new-instance p3, Lk7/d;

    .line 154
    .line 155
    invoke-direct {p3, p0, v1}, Lk7/d;-><init>(Lcom/woha/pogoda/WeatherService;I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 159
    .line 160
    invoke-virtual {p1, v0, p2, p3}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Le0/u1;->d()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/woha/pogoda/WeatherService;->f()V

    .line 167
    .line 168
    .line 169
    return v1

    .line 170
    nop

    .line 171
    :array_aa
    .array-data 1
        -0xct
        0x12t
        -0x46t
        0x7ct
        0x57t
        -0x5dt
        0x4at
        -0x6dt
        -0x16t
        0x12t
        -0x54t
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
    :array_b4
    .array-data 1
        -0x7dt
        0x77t
        -0x25t
        0x8t
        0x3ft
        -0x3at
        0x38t
        -0x3bt
    .end array-data
.end method
