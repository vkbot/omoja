.class public final Lcom/example/navistart/home/LauncherWindowService;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static e:Lcom/example/navistart/home/LauncherWindowService;


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->c:Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->d:Ljava/util/HashSet;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->d:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->c:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/hardware/display/VirtualDisplay;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const/16 v3, 0xb

    .line 36
    .line 37
    new-array v3, v3, [B

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    const/16 v9, 0x8

    .line 43
    .line 44
    new-array v4, v9, [B

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v6, 0xa0

    .line 54
    .line 55
    const/16 v8, 0xb

    .line 56
    .line 57
    move v4, p2

    .line 58
    move v5, p3

    .line 59
    move-object v7, p4

    .line 60
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object p2

    .line 70
    :cond_0
    const/16 p1, 0x15

    .line 71
    .line 72
    new-array p1, p1, [B

    .line 73
    .line 74
    fill-array-data p1, :array_2

    .line 75
    .line 76
    .line 77
    new-array p2, v9, [B

    .line 78
    .line 79
    fill-array-data p2, :array_3

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    return-object p1

    .line 91
    :cond_1
    move v4, p2

    .line 92
    move v5, p3

    .line 93
    move-object v7, p4

    .line 94
    const/16 p1, 0xa0

    .line 95
    .line 96
    invoke-virtual {v1, v4, v5, p1}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v7}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :array_0
    .array-data 1
        0x71t
        -0x78t
        0x49t
        -0xct
        -0x4t
        -0x41t
        -0x22t
        0x1dt
        0x54t
        -0x44t
        0x30t
    .end array-data

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
        0x3bt
        -0x35t
        0x1dt
        -0x27t
        -0x75t
        -0x2at
        -0x50t
        0x79t
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
        -0x57t
        -0x54t
        -0x7et
        0x41t
        -0x54t
        0x72t
        0x51t
        -0x12t
        -0x68t
        -0x58t
        -0x73t
        0x5bt
        -0x5at
        0x26t
        0x15t
        -0x1ct
        -0x67t
        -0x43t
        -0x80t
        0x4et
        -0x46t
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
    .line 133
    .line 134
    .line 135
    .line 136
    nop

    .line 137
    :array_3
    .array-data 1
        -0x16t
        -0x33t
        -0x14t
        0x2ft
        -0x3dt
        0x6t
        0x71t
        -0x73t
    .end array-data
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Ls1/y;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Ls1/y;-><init>(Lcom/example/navistart/home/LauncherWindowService;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/example/navistart/home/LauncherWindowService;->e:Lcom/example/navistart/home/LauncherWindowService;

    .line 5
    .line 6
    const-class v0, Landroid/app/NotificationManager;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/NotificationManager;

    .line 13
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x10

    .line 17
    .line 18
    const/16 v3, 0x14

    .line 19
    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    const/16 v5, 0x1a

    .line 23
    .line 24
    if-lt v1, v5, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lw0/d;->g()V

    .line 27
    .line 28
    .line 29
    new-array v6, v2, [B

    .line 30
    .line 31
    fill-array-data v6, :array_0

    .line 32
    .line 33
    .line 34
    new-array v7, v4, [B

    .line 35
    .line 36
    fill-array-data v7, :array_1

    .line 37
    .line 38
    .line 39
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    new-array v7, v3, [B

    .line 44
    .line 45
    fill-array-data v7, :array_2

    .line 46
    .line 47
    .line 48
    new-array v8, v4, [B

    .line 49
    .line 50
    fill-array-data v8, :array_3

    .line 51
    .line 52
    .line 53
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v6, v7}, Lw0/d;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v0, v6}, Lw0/d;->h(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    if-lt v1, v5, :cond_1

    .line 65
    .line 66
    new-instance v0, Landroid/app/Notification$Builder;

    .line 67
    .line 68
    new-array v0, v2, [B

    .line 69
    .line 70
    fill-array-data v0, :array_4

    .line 71
    .line 72
    .line 73
    new-array v1, v4, [B

    .line 74
    .line 75
    fill-array-data v1, :array_5

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lorg/apache/commons/net/util/a;->g(Lcom/example/navistart/home/LauncherWindowService;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 93
    .line 94
    const-class v2, Lcom/example/navistart/home/WebLauncherActivity;

    .line 95
    .line 96
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    const/high16 v2, 0xc000000

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-static {p0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const v2, 0x1080057

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-array v2, v3, [B

    .line 114
    .line 115
    fill-array-data v2, :array_6

    .line 116
    .line 117
    .line 118
    new-array v3, v4, [B

    .line 119
    .line 120
    fill-array-data v3, :array_7

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/16 v2, 0x18

    .line 132
    .line 133
    new-array v2, v2, [B

    .line 134
    .line 135
    fill-array-data v2, :array_8

    .line 136
    .line 137
    .line 138
    new-array v3, v4, [B

    .line 139
    .line 140
    fill-array-data v3, :array_9

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const v1, 0x976e

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :array_0
    .array-data 1
        0x43t
        -0x7at
        -0x76t
        0x4bt
        -0x46t
        -0x6dt
        0x6bt
        0x3at
        0x70t
        -0x70t
        -0x6at
        0x4bt
        -0x43t
        -0x6ct
        0x79t
        0x3bt
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
    .line 183
    :array_1
    .array-data 1
        0x2ft
        -0x19t
        -0x1t
        0x25t
        -0x27t
        -0x5t
        0xet
        0x48t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_2
    .array-data 1
        -0x22t
        -0x26t
        0x62t
        0x7dt
        0x48t
        -0x7at
        0x34t
        0x24t
        -0x4et
        -0x26t
        0x67t
        0x63t
        0xbt
        -0x67t
        0x38t
        0x38t
        -0xat
        -0x2ct
        0x60t
        0x60t
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
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
    :array_3
    .array-data 1
        -0x6et
        -0x45t
        0x17t
        0x13t
        0x2bt
        -0x12t
        0x51t
        0x56t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_4
    .array-data 1
        0x15t
        -0x46t
        -0x46t
        -0x4dt
        -0x4ft
        0x51t
        -0x3et
        0x41t
        0x26t
        -0x54t
        -0x5at
        -0x4dt
        -0x4at
        0x56t
        -0x30t
        0x40t
    .end array-data

    .line 214
    .line 215
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
    :array_5
    .array-data 1
        0x79t
        -0x25t
        -0x31t
        -0x23t
        -0x2et
        0x39t
        -0x59t
        0x33t
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_6
    .array-data 1
        -0x11t
        0x30t
        0x66t
        0x6ft
        -0x3et
        -0x28t
        0xft
        0x7at
        -0x3at
        0x1bt
        0x57t
        0x3dt
        -0x72t
        -0x32t
        0x13t
        0x7at
        -0x3ft
        0x1ct
        0x45t
        0x3ct
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_7
    .array-data 1
        -0x5bt
        0x73t
        0x32t
        0x4ft
        -0x52t
        -0x47t
        0x7at
        0x14t
    .end array-data

    :array_8
    .array-data 1
        0x8t
        -0xet
        -0x53t
        0x5ct
        -0x3et
        0x39t
        -0x4ft
        0x68t
        0x26t
        -0xbt
        -0x52t
        0x5ct
        -0x2ct
        0x22t
        -0x46t
        0x2ct
        0x3bt
        -0x19t
        -0x57t
        0x1dt
        -0x24t
        0x3et
        -0x46t
        0x68t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        -0x7et
        -0x23t
        0x7ct
        -0x4bt
        0x50t
        -0x21t
        0xct
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/home/LauncherWindowService;->e:Lcom/example/navistart/home/LauncherWindowService;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/example/navistart/home/LauncherWindowService;->e:Lcom/example/navistart/home/LauncherWindowService;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/example/navistart/home/LauncherWindowService;->b:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/hardware/display/VirtualDisplay;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    .line 36
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method
