.class public final Lm7/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/net/wifi/WifiManager;

.field public final c:Lr5/c;

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public final l:Lb1/c;

.field public final m:Lm7/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;ZIJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb1/c;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0}, Lb1/c;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm7/j;->l:Lb1/c;

    .line 11
    .line 12
    new-instance v0, Lm7/i;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lm7/i;-><init>(Lm7/j;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lm7/j;->m:Lm7/i;

    .line 19
    .line 20
    iput-object p1, p0, Lm7/j;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lm7/j;->b:Landroid/net/wifi/WifiManager;

    .line 23
    .line 24
    new-instance v0, Lr5/c;

    .line 25
    .line 26
    const/16 v1, 0x16

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Lr5/c;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-class v1, Landroid/net/ConnectivityManager;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 43
    .line 44
    iput-object p1, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object v0, p0, Lm7/j;->c:Lr5/c;

    .line 47
    .line 48
    iput-boolean p3, p0, Lm7/j;->d:Z

    .line 49
    .line 50
    iput p4, p0, Lm7/j;->h:I

    .line 51
    .line 52
    iput-wide p5, p0, Lm7/j;->e:J

    .line 53
    .line 54
    iput-wide p7, p0, Lm7/j;->f:J

    .line 55
    .line 56
    const-wide/16 p3, 0x1388

    .line 57
    .line 58
    iput-wide p3, p0, Lm7/j;->g:J

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lm7/j;->i:I

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lm7/j;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lm7/j;->b:Landroid/net/wifi/WifiManager;

    .line 6
    .line 7
    invoke-static {v0}, Lm7/k;->a(Landroid/net/wifi/WifiManager;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lm7/j;->k:Z

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    new-array v2, v1, [B

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v2, 0x41

    .line 35
    .line 36
    new-array v2, v2, [B

    .line 37
    .line 38
    fill-array-data v2, :array_2

    .line 39
    .line 40
    .line 41
    new-array v3, v1, [B

    .line 42
    .line 43
    fill-array-data v3, :array_3

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lm7/j;->c:Lr5/c;

    .line 54
    .line 55
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/16 v3, 0xd

    .line 64
    .line 65
    new-array v3, v3, [B

    .line 66
    .line 67
    fill-array-data v3, :array_4

    .line 68
    .line 69
    .line 70
    new-array v1, v1, [B

    .line 71
    .line 72
    fill-array-data v1, :array_5

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    :catch_0
    :cond_0
    iget-wide v0, p0, Lm7/j;->g:J

    .line 104
    .line 105
    invoke-virtual {p0, v0, v1}, Lm7/j;->e(J)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lm7/j;->c()V

    .line 110
    .line 111
    .line 112
    iget-wide v0, p0, Lm7/j;->e:J

    .line 113
    .line 114
    invoke-virtual {p0, v0, v1}, Lm7/j;->e(J)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 1
        -0x6ct
        0x38t
        -0x5at
        0x71t
        0x27t
        0x7t
        0x1ft
        0x34t
        -0x51t
        0x34t
        -0x78t
        0x7dt
        0x1ft
        0x18t
        0x1dt
        0x21t
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
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 1
        -0x3dt
        0x51t
        -0x40t
        0x18t
        0x73t
        0x68t
        0x78t
        0x53t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_2
    .array-data 1
        0x8t
        0x50t
        -0x11t
        0x71t
        -0x6ft
        -0x2ft
        -0x43t
        -0x67t
        0x29t
        0x4ct
        -0x45t
        0x63t
        -0x7et
        -0x36t
        -0x60t
        -0x31t
        0x25t
        0x13t
        -0x45t
        0x66t
        -0x78t
        -0x33t
        -0x58t
        -0x25t
        0x2ct
        0x56t
        -0xbt
        0x65t
        -0x3ft
        -0x1t
        -0x67t
        -0x67t
        0x22t
        0x5at
        -0x3t
        0x6dt
        -0x6dt
        -0x25t
        -0x17t
        -0x24t
        0x2et
        0x5et
        -0x7t
        0x6et
        -0x78t
        -0x30t
        -0x52t
        -0x67t
        0x17t
        0x56t
        -0x4at
        0x44t
        -0x78t
        -0x62t
        -0x56t
        -0x2bt
        0x29t
        0x5at
        -0xbt
        0x76t
        -0x3ft
        -0x2dt
        -0x5at
        -0x23t
        0x25t
    .end array-data

    .line 140
    .line 141
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
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
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
    .line 175
    .line 176
    nop

    .line 177
    :array_3
    .array-data 1
        0x40t
        0x3ft
        -0x65t
        0x2t
        -0x1ft
        -0x42t
        -0x37t
        -0x47t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_4
    .array-data 1
        0x51t
        -0x38t
        -0x75t
        -0x78t
        0x25t
        -0x4at
        -0xdt
        0x55t
        0x47t
        -0x32t
        -0x73t
        -0x6at
        0x16t
    .end array-data

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
    nop

    .line 197
    :array_5
    .array-data 1
        0x22t
        -0x44t
        -0x1ct
        -0x8t
        0x71t
        -0x2dt
        -0x79t
        0x3dt
    .end array-data
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-object v0, Lm7/k;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lm7/j;->m:Lm7/i;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lm7/j;->d:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lm7/j;->b:Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    invoke-static {v1}, Lm7/k;->b(Landroid/net/wifi/WifiManager;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lm7/h;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v1, v3}, Lm7/h;-><init>(Landroid/net/wifi/WifiManager;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x9c4

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    new-instance v2, Lm7/h;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v2, v1, v3}, Lm7/h;-><init>(Landroid/net/wifi/WifiManager;I)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v3, 0x1770

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    const-class v0, Lm7/k;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lm7/k;->c:Lm7/j;

    .line 43
    .line 44
    if-ne v1, p0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lm7/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw v1
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lm7/j;->b:Landroid/net/wifi/WifiManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput v1, p0, Lm7/j;->i:I

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x8

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
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x16

    .line 33
    .line 34
    new-array v4, v4, [B

    .line 35
    .line 36
    fill-array-data v4, :array_2

    .line 37
    .line 38
    .line 39
    new-array v5, v2, [B

    .line 40
    .line 41
    fill-array-data v5, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v4, p0, Lm7/j;->d:Z

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v5, 0xf

    .line 57
    .line 58
    new-array v5, v5, [B

    .line 59
    .line 60
    fill-array-data v5, :array_4

    .line 61
    .line 62
    .line 63
    new-array v6, v2, [B

    .line 64
    .line 65
    fill-array-data v6, :array_5

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v5, p0, Lm7/j;->i:I

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v5, 0x13

    .line 81
    .line 82
    new-array v5, v5, [B

    .line 83
    .line 84
    fill-array-data v5, :array_6

    .line 85
    .line 86
    .line 87
    new-array v2, v2, [B

    .line 88
    .line 89
    fill-array-data v2, :array_7

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v2, p0, Lm7/j;->h:I

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :array_0
    .array-data 1
        0xdt
        -0x3ct
        0x62t
        0x54t
        -0x4ft
        0x3ft
        -0x79t
        -0x2at
        0x36t
        -0x38t
        0x4ct
        0x58t
        -0x77t
        0x20t
        -0x7bt
        -0x3dt
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
    :array_1
    .array-data 1
        0x5at
        -0x53t
        0x4t
        0x3dt
        -0x1bt
        0x50t
        -0x20t
        -0x4ft
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 1
        -0xbt
        -0x28t
        0x1ft
        0x3dt
        0x29t
        0x26t
        0x23t
        -0x48t
        -0x10t
        -0x2ct
        0x43t
        0xet
        0x25t
        0x75t
        0x32t
        -0xat
        -0x3at
        -0x21t
        0x2t
        0x2dt
        0x28t
        0x68t
    .end array-data

    .line 136
    .line 137
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
    .line 149
    .line 150
    nop

    .line 151
    :array_3
    .array-data 1
        -0x59t
        -0x43t
        0x6et
        0x48t
        0x4ct
        0x55t
        0x57t
        -0x68t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_4
    .array-data 1
        -0x3ct
        0x7ct
        -0x49t
        0x62t
        0x44t
        0x13t
        -0x29t
        -0x5ft
        -0x64t
        0xft
        -0x60t
        0x76t
        0x42t
        0x4t
        -0x71t
    .end array-data

    .line 160
    .line 161
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
    :array_5
    .array-data 1
        -0x18t
        0x5ct
        -0x2ct
        0x17t
        0x36t
        0x61t
        -0x4et
        -0x31t
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_6
    .array-data 1
        0x2et
        0x7dt
        0x1ct
        0x56t
        -0x21t
        -0x1ft
        -0x17t
        0x33t
        0x71t
        0xft
        0xbt
        0x5et
        -0x36t
        -0x6t
        -0x12t
        0x3ft
        0x6ct
        0x3at
        0x53t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
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
    :array_7
    .array-data 1
        0x2t
        0x5dt
        0x6et
        0x33t
        -0x55t
        -0x6dt
        -0x80t
        0x56t
    .end array-data
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lm7/j;->m:Lm7/i;

    .line 2
    .line 3
    iget-boolean v1, p0, Lm7/j;->d:Z

    .line 4
    .line 5
    iget-wide v2, p0, Lm7/j;->e:J

    .line 6
    .line 7
    iget-boolean v4, p0, Lm7/j;->k:Z

    .line 8
    .line 9
    iget-object v5, p0, Lm7/j;->b:Landroid/net/wifi/WifiManager;

    .line 10
    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    const/16 v7, 0x8

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-static {v5}, Lm7/k;->a(Landroid/net/wifi/WifiManager;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iput-boolean v8, p0, Lm7/j;->k:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lm7/j;->c()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2, v3}, Lm7/j;->e(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-array v0, v6, [B

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    new-array v1, v7, [B

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/16 v1, 0x46

    .line 48
    .line 49
    new-array v1, v1, [B

    .line 50
    .line 51
    fill-array-data v1, :array_2

    .line 52
    .line 53
    .line 54
    new-array v4, v7, [B

    .line 55
    .line 56
    fill-array-data v4, :array_3

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iput-boolean v8, p0, Lm7/j;->k:Z

    .line 67
    .line 68
    invoke-virtual {p0}, Lm7/j;->c()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Lm7/j;->e(J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iget-boolean v9, p0, Lm7/j;->d:Z

    .line 80
    .line 81
    const/4 v10, 0x1

    .line 82
    if-eqz v9, :cond_2

    .line 83
    .line 84
    const/4 v9, 0x3

    .line 85
    if-ne v4, v9, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    if-ne v4, v10, :cond_3

    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0}, Lm7/j;->b()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    iget v4, p0, Lm7/j;->h:I

    .line 95
    .line 96
    if-gtz v4, :cond_5

    .line 97
    .line 98
    sget-object v2, Lm7/k;->b:Landroid/os/Handler;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    new-array v0, v6, [B

    .line 104
    .line 105
    fill-array-data v0, :array_4

    .line 106
    .line 107
    .line 108
    new-array v2, v7, [B

    .line 109
    .line 110
    fill-array-data v2, :array_5

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const/16 v3, 0x23

    .line 123
    .line 124
    new-array v3, v3, [B

    .line 125
    .line 126
    fill-array-data v3, :array_6

    .line 127
    .line 128
    .line 129
    new-array v4, v7, [B

    .line 130
    .line 131
    fill-array-data v4, :array_7

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-array v1, v6, [B

    .line 145
    .line 146
    fill-array-data v1, :array_8

    .line 147
    .line 148
    .line 149
    new-array v3, v7, [B

    .line 150
    .line 151
    fill-array-data v3, :array_9

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v1, p0, Lm7/j;->i:I

    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    const-class v9, Lm7/k;

    .line 174
    .line 175
    monitor-enter v9

    .line 176
    :try_start_0
    sget-object v0, Lm7/k;->c:Lm7/j;

    .line 177
    .line 178
    if-ne v0, p0, :cond_4

    .line 179
    .line 180
    invoke-static {}, Lm7/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    :goto_1
    monitor-exit v9

    .line 187
    return-void

    .line 188
    :goto_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw v0

    .line 190
    :cond_5
    sub-int/2addr v4, v10

    .line 191
    iput v4, p0, Lm7/j;->h:I

    .line 192
    .line 193
    new-array v4, v6, [B

    .line 194
    .line 195
    fill-array-data v4, :array_a

    .line 196
    .line 197
    .line 198
    new-array v6, v7, [B

    .line 199
    .line 200
    fill-array-data v6, :array_b

    .line 201
    .line 202
    .line 203
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const/16 v9, 0x36

    .line 213
    .line 214
    new-array v9, v9, [B

    .line 215
    .line 216
    fill-array-data v9, :array_c

    .line 217
    .line 218
    .line 219
    new-array v10, v7, [B

    .line 220
    .line 221
    fill-array-data v10, :array_d

    .line 222
    .line 223
    .line 224
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const/16 v9, 0x13

    .line 235
    .line 236
    new-array v9, v9, [B

    .line 237
    .line 238
    fill-array-data v9, :array_e

    .line 239
    .line 240
    .line 241
    new-array v7, v7, [B

    .line 242
    .line 243
    fill-array-data v7, :array_f

    .line 244
    .line 245
    .line 246
    invoke-static {v9, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget v7, p0, Lm7/j;->h:I

    .line 254
    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    sget-object v4, Lm7/k;->b:Landroid/os/Handler;

    .line 266
    .line 267
    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    .line 269
    .line 270
    if-eqz v1, :cond_6

    .line 271
    .line 272
    iput-boolean v8, p0, Lm7/j;->k:Z

    .line 273
    .line 274
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 275
    .line 276
    .line 277
    new-instance v0, Lm7/i;

    .line 278
    .line 279
    const/4 v1, 0x1

    .line 280
    invoke-direct {v0, p0, v1}, Lm7/i;-><init>(Lm7/j;I)V

    .line 281
    .line 282
    .line 283
    iget-wide v5, p0, Lm7/j;->f:J

    .line 284
    .line 285
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_6
    invoke-virtual {p0}, Lm7/j;->c()V

    .line 290
    .line 291
    .line 292
    :goto_3
    invoke-virtual {p0, v2, v3}, Lm7/j;->e(J)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    nop

    .line 297
    :array_0
    .array-data 1
        0x70t
        -0x59t
        -0x36t
        -0x30t
        -0x6dt
        -0x5at
        0x59t
        -0x73t
        0x4bt
        -0x55t
        -0x1ct
        -0x24t
        -0x55t
        -0x47t
        0x5bt
        -0x68t
    .end array-data

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
    :array_1
    .array-data 1
        0x27t
        -0x32t
        -0x54t
        -0x47t
        -0x39t
        -0x37t
        0x3et
        -0x16t
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_2
    .array-data 1
        -0x19t
        0x44t
        -0x56t
        -0x4et
        -0x67t
        -0x19t
        0xct
        0x29t
        -0x35t
        0x42t
        -0x46t
        -0x1ft
        -0x79t
        -0x19t
        0xct
        0x29t
        -0x35t
        0x42t
        -0x53t
        -0x60t
        -0x75t
        -0x1ct
        0x1dt
        0x29t
        -0x3at
        0x45t
        -0x2t
        -0x4bt
        -0x80t
        -0x1bt
        0x1dt
        0x25t
        -0x71t
        0x48t
        -0x4ft
        -0x51t
        -0x63t
        -0x1ft
        0x16t
        0x7ct
        -0x3at
        0x45t
        -0x47t
        -0x1ft
        -0x62t
        -0x1ft
        0xct
        0x61t
        -0x71t
        0x58t
        -0x56t
        -0x60t
        -0x79t
        -0x14t
        0x19t
        0x7bt
        -0x35t
        0xbt
        -0x77t
        -0x58t
        -0x3ct
        -0x32t
        0x11t
        0x29t
        -0x36t
        0x45t
        -0x41t
        -0x5dt
        -0x7bt
        -0x13t
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
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
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
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
    nop

    .line 357
    :array_3
    .array-data 1
        -0x51t
        0x2bt
        -0x22t
        -0x3ft
        -0x17t
        -0x78t
        0x78t
        0x9t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_4
    .array-data 1
        0x37t
        0x7ct
        -0x36t
        -0x75t
        0x7t
        0x27t
        -0x3dt
        -0x5bt
        0xct
        0x70t
        -0x1ct
        -0x79t
        0x3ft
        0x38t
        -0x3ft
        -0x50t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_5
    .array-data 1
        0x60t
        0x15t
        -0x54t
        -0x1et
        0x53t
        0x48t
        -0x5ct
        -0x3et
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_6
    .array-data 1
        0x4t
        -0x66t
        -0x57t
        -0x1ct
        -0x78t
        0x1dt
        0x27t
        0x4ct
        0x34t
        -0x6ct
        -0x18t
        -0x39t
        -0x3ft
        0x5bt
        0x32t
        0x4at
        0x3ft
        -0x6at
        -0x20t
        -0x74t
        -0x3ft
        0x49t
        0x32t
        0x51t
        0x34t
        -0x6at
        -0x10t
        -0x19t
        -0x71t
        0x5ct
        0x31t
        0x4ft
        0x36t
        -0x69t
        -0x47t
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_7
    .array-data 1
        0x53t
        -0xdt
        -0x7ct
        -0x5et
        -0x1ft
        0x3dt
        0x53t
        0x23t
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_8
    .array-data 1
        -0x67t
        0x23t
        -0x4t
        -0x70t
        0x1bt
        -0x53t
        0x62t
        -0x33t
        -0x2dt
        0x6at
        -0x3dt
        -0x7bt
        0x9t
        -0x53t
        0x50t
        -0x67t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_9
    .array-data 1
        -0x4bt
        0x3t
        -0x70t
        -0xft
        0x68t
        -0x27t
        0x35t
        -0x5ct
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_a
    .array-data 1
        0x76t
        -0x54t
        -0x41t
        -0x18t
        -0x5dt
        0x4dt
        0x69t
        0x7dt
        0x4dt
        -0x60t
        -0x6ft
        -0x1ct
        -0x65t
        0x52t
        0x6bt
        0x68t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_b
    .array-data 1
        0x21t
        -0x3bt
        -0x27t
        -0x7ft
        -0x9t
        0x22t
        0xet
        0x1at
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_c
    .array-data 1
        0x21t
        0x43t
        -0x18t
        -0xct
        0x58t
        0x3t
        0x6ct
        0x4ft
        0x11t
        0x4dt
        -0x57t
        -0x29t
        0x11t
        0x50t
        0x6ct
        0x55t
        0x15t
        0x41t
        -0x17t
        -0x6et
        0x43t
        0x56t
        0x76t
        0x4et
        0x1ft
        0x44t
        -0x5et
        -0x6et
        0x42t
        0x4ct
        0x7et
        0x54t
        0x56t
        0x58t
        -0x60t
        -0x3at
        0x43t
        0x5at
        0x36t
        0x0t
        0x2t
        0x4bt
        -0x49t
        -0x2bt
        0x54t
        0x57t
        0x5dt
        0x4et
        0x17t
        0x48t
        -0x57t
        -0x29t
        0x55t
        0x1et
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    nop

    .line 487
    :array_d
    .array-data 1
        0x76t
        0x2at
        -0x3bt
        -0x4et
        0x31t
        0x23t
        0x18t
        0x20t
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_e
    .array-data 1
        0x11t
        0x12t
        -0x33t
        -0x63t
        -0x1at
        -0x1ct
        0x61t
        -0x12t
        0x4et
        0x60t
        -0x26t
        -0x6bt
        -0xdt
        -0x1t
        0x66t
        -0x1et
        0x53t
        0x55t
        -0x7et
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_f
    .array-data 1
        0x3dt
        0x32t
        -0x41t
        -0x8t
        -0x6et
        -0x6at
        0x8t
        -0x75t
    .end array-data
.end method

.method public final e(J)V
    .locals 2

    .line 1
    sget-object v0, Lm7/k;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lm7/j;->m:Lm7/i;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
