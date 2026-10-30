.class public Lcom/example/navistart/TService;
.super Landroid/net/VpnService;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static c:Ld2/h;

.field public static d:Landroid/view/View;

.field public static e:Landroid/widget/ImageView;

.field public static volatile f:Z


# instance fields
.field public b:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lcom/example/navistart/TService;->f:Z

    .line 8
    .line 9
    sget-object v0, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object p0, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/TService;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, La4/g;

    .line 15
    .line 16
    const/16 v2, 0x14

    .line 17
    .line 18
    invoke-direct {v1, v2, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/example/navistart/TService;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x12

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :array_0
    .array-data 1
        0x6dt
        0x52t
        0x5ft
        -0x5dt
        0x51t
        0x25t
        0x2t
        -0x6t
        0x72t
        0x41t
        0x54t
        -0x71t
        0x7dt
        0x33t
        0x4t
        -0x13t
        0x69t
        0x56t
    .end array-data

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
    .line 56
    .line 57
    .line 58
    nop

    .line 59
    :array_1
    .array-data 1
        0x1bt
        0x22t
        0x31t
        -0x4t
        0x22t
        0x40t
        0x70t
        -0x74t
    .end array-data
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld2/h;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0xa

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
    new-array v2, v2, [B

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-static {v2, v1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Ld2/h;->a:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Ld2/h;->c:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0}, Ld2/h;->q()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 1
        -0x3et
        0x6at
        0x14t
        -0x50t
        -0x31t
        0x5et
        -0x14t
        -0x68t
        -0xbt
        0x7at
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
    nop

    .line 57
    :array_1
    .array-data 1
        -0x6at
        0x1ft
        0x7at
        -0x1dt
        -0x56t
        0x2ct
        -0x66t
        -0xft
    .end array-data
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/TService;->b:Landroid/view/WindowManager;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v2, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    sput-object v1, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :try_start_1
    iget-object v2, v0, Ld2/h;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lcom/wireguard/android/backend/GoBackend;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v3, v0, Ld2/h;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lr5/c;

    .line 31
    .line 32
    iget-object v0, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lf7/c;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-virtual {v2, v4, v0, v3}, Lcom/wireguard/android/backend/GoBackend;->c(ILf7/c;Lr5/c;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ld2/h;->q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    .line 44
    :catch_1
    :goto_0
    sget-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 50
    .line 51
    invoke-virtual {v0}, Ld2/h;->i()V

    .line 52
    .line 53
    .line 54
    :cond_2
    sput-object v1, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 55
    .line 56
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/example/navistart/TService;->b:Landroid/view/WindowManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v2, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    sput-object v1, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f0c011e

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 27
    .line 28
    const v1, 0x7f0905e1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    sput-object v0, Lcom/example/navistart/TService;->e:Landroid/widget/ImageView;

    .line 38
    .line 39
    new-instance v0, Le0/u1;

    .line 40
    .line 41
    const/16 v1, 0x11

    .line 42
    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_0

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    new-array v3, v2, [B

    .line 51
    .line 52
    fill-array-data v3, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, p0, v1}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Lj1/v;->b()Lz0/a;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v3, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 74
    .line 75
    iget-object v4, v0, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    invoke-interface {v1, v3, v4}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/example/navistart/TService;->b:Landroid/view/WindowManager;

    .line 82
    .line 83
    sget-object v3, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 84
    .line 85
    new-instance v4, Le0/v0;

    .line 86
    .line 87
    const/16 v5, 0x10

    .line 88
    .line 89
    invoke-direct {v4, v5}, Le0/v0;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3, v1, v4}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Le0/u1;->d()V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    :try_start_1
    iget-object v3, v0, Ld2/h;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Lcom/wireguard/android/backend/GoBackend;

    .line 107
    .line 108
    if-eqz v3, :cond_1

    .line 109
    .line 110
    iget-object v0, v0, Ld2/h;->f:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lr5/c;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    if-ne v3, v0, :cond_1

    .line 117
    .line 118
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 120
    :catch_1
    :cond_1
    move v0, v1

    .line 121
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/example/navistart/TService;->b(Ljava/lang/Boolean;)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/16 v3, 0x19

    .line 133
    .line 134
    new-array v3, v3, [B

    .line 135
    .line 136
    fill-array-data v3, :array_2

    .line 137
    .line 138
    .line 139
    new-array v4, v2, [B

    .line 140
    .line 141
    fill-array-data v4, :array_3

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v0, v3, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_2

    .line 153
    .line 154
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/example/navistart/TService;->a(Ljava/lang/Boolean;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    sget-boolean v0, Lcom/example/navistart/TService;->f:Z

    .line 160
    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    sget-object v0, Lcom/example/navistart/TService;->d:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const/16 v3, 0xe

    .line 175
    .line 176
    new-array v3, v3, [B

    .line 177
    .line 178
    fill-array-data v3, :array_4

    .line 179
    .line 180
    .line 181
    new-array v4, v2, [B

    .line 182
    .line 183
    fill-array-data v4, :array_5

    .line 184
    .line 185
    .line 186
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v0, v3, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_4

    .line 195
    .line 196
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/16 v3, 0x15

    .line 201
    .line 202
    new-array v3, v3, [B

    .line 203
    .line 204
    fill-array-data v3, :array_6

    .line 205
    .line 206
    .line 207
    new-array v2, v2, [B

    .line 208
    .line 209
    fill-array-data v2, :array_7

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v2, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_4

    .line 221
    .line 222
    sget-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 223
    .line 224
    iget-object v2, v0, Ld2/h;->a:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 227
    .line 228
    new-instance v3, Ll7/a;

    .line 229
    .line 230
    invoke-direct {v3, v0, v1}, Ll7/a;-><init>(Ld2/h;I)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 234
    .line 235
    .line 236
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    return p1

    .line 241
    :array_0
    .array-data 1
        0x69t
        -0x78t
        -0x3ct
        0x33t
        -0x53t
        0x55t
        -0x7et
        -0x7ct
        0x49t
        -0x55t
        -0x1ct
        0x2t
        -0x53t
        0x50t
        -0x72t
        -0x6dt
        0x48t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    nop

    .line 255
    :array_1
    .array-data 1
        0x3ft
        -0x3et
        -0x79t
        0x67t
        -0xet
        0x6t
        -0x19t
        -0xat
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_2
    .array-data 1
        -0x60t
        -0x72t
        0x47t
        0x72t
        0x13t
        -0x4ft
        0x5t
        0x2dt
        -0x80t
        -0x53t
        0x67t
        0x43t
        0x13t
        -0x4ct
        0x9t
        0x3at
        -0x7ft
        -0x65t
        0x72t
        0x4ft
        0x3ft
        -0x75t
        0x2t
        0x33t
        -0x6dt
    .end array-data

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
    .line 278
    .line 279
    .line 280
    nop

    .line 281
    :array_3
    .array-data 1
        -0xat
        -0x3ct
        0x4t
        0x26t
        0x4ct
        -0x1et
        0x60t
        0x5ft
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_4
    .array-data 1
        -0x3dt
        -0x76t
        -0x29t
        0xct
        -0x2at
        -0x63t
        0x74t
        -0x16t
        -0x16t
        -0x77t
        -0x33t
        0x32t
        -0x3at
        -0x7at
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    nop

    .line 301
    :array_5
    .array-data 1
        -0x4bt
        -0x6t
        -0x47t
        0x53t
        -0x4ct
        -0xet
        0x1bt
        -0x62t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_6
    .array-data 1
        -0x1bt
        0x18t
        -0x65t
        0x39t
        0x6at
        -0x1ct
        -0x80t
        0x3dt
        -0x34t
        0x1bt
        -0x7ft
        0x7t
        0x7at
        -0x1t
        -0x50t
        0x3at
        -0x19t
        0x9t
        -0x7ft
        0x13t
        0x7bt
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    nop

    .line 325
    :array_7
    .array-data 1
        -0x6dt
        0x68t
        -0xbt
        0x66t
        0x8t
        -0x75t
        -0x11t
        0x49t
    .end array-data
.end method
