.class public Lcom/example/navistart/MyCarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/ArrayList;

.field public static f:J

.field public static g:I

.field public static h:Le0/m2;

.field public static i:Z

.field public static j:Z

.field public static k:I

.field public static l:Z

.field public static m:Z

.field public static n:Ljava/lang/Boolean;

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:Ljava/util/concurrent/ScheduledFuture;

.field public static s:Ljava/util/concurrent/ScheduledFuture;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-static {v2, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    new-array v0, v0, [B

    .line 29
    .line 30
    fill-array-data v0, :array_2

    .line 31
    .line 32
    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_3

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-wide/16 v1, 0xa

    .line 43
    .line 44
    invoke-static {v1, v2, v0}, Le0/w;->b(JLjava/lang/String;)Le0/v;

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/Object;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/example/navistart/MyCarReceiver;->d:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/example/navistart/MyCarReceiver;->e:Ljava/util/ArrayList;

    .line 60
    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .line 63
    sput-wide v0, Lcom/example/navistart/MyCarReceiver;->f:J

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    sput v0, Lcom/example/navistart/MyCarReceiver;->g:I

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/example/navistart/MyCarReceiver;->i:Z

    .line 70
    .line 71
    sput-boolean v0, Lcom/example/navistart/MyCarReceiver;->j:Z

    .line 72
    .line 73
    sput v0, Lcom/example/navistart/MyCarReceiver;->k:I

    .line 74
    .line 75
    sput-boolean v0, Lcom/example/navistart/MyCarReceiver;->l:Z

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    sput-boolean v1, Lcom/example/navistart/MyCarReceiver;->m:Z

    .line 79
    .line 80
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    .line 82
    sput-object v1, Lcom/example/navistart/MyCarReceiver;->n:Ljava/lang/Boolean;

    .line 83
    .line 84
    sput v0, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 85
    .line 86
    sput v0, Lcom/example/navistart/MyCarReceiver;->p:I

    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 1
        0x18t
        0x14t
        -0x1at
        -0x67t
        0x35t
        -0x5ct
        0x7at
        -0x55t
        0x30t
        0x4t
        -0x2dt
        -0x63t
        0x35t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    nop

    .line 101
    :array_1
    .array-data 1
        0x55t
        0x6dt
        -0x5bt
        -0x8t
        0x47t
        -0xat
        0x1ft
        -0x38t
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_2
    .array-data 1
        0x73t
        0x75t
        0x64t
        0x6bt
        0x2dt
        0x34t
        -0x10t
        -0x24t
        0x5bt
        0x65t
        0x51t
        0x6ft
        0x2dt
        0x34t
        -0x20t
        -0x2ft
    .end array-data

    .line 110
    .line 111
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
    :array_3
    .array-data 1
        0x3et
        0xct
        0x27t
        0xat
        0x5ft
        0x66t
        -0x6bt
        -0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/example/navistart/MyCarReceiver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

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
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    new-array v3, v2, [B

    .line 14
    .line 15
    fill-array-data v3, :array_1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :goto_0
    const/4 v1, 0x4

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x19

    .line 43
    .line 44
    new-array v4, v4, [B

    .line 45
    .line 46
    fill-array-data v4, :array_2

    .line 47
    .line 48
    .line 49
    new-array v5, v2, [B

    .line 50
    .line 51
    fill-array-data v5, :array_3

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v5, v3, v0}, Lcom/google/protobuf/q;->j([B[BLjava/lang/StringBuilder;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const v4, 0x7f1300ea

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v1, v3, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v3, Le0/m;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    sget v1, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 78
    .line 79
    if-eq v1, v0, :cond_0

    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    new-array v3, v1, [B

    .line 84
    .line 85
    fill-array-data v3, :array_4

    .line 86
    .line 87
    .line 88
    new-array v4, v2, [B

    .line 89
    .line 90
    fill-array-data v4, :array_5

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3}, Lcom/example/navistart/MyCarReceiver;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_0

    .line 106
    .line 107
    new-instance v3, Landroid/content/Intent;

    .line 108
    .line 109
    const-class v4, Lcom/example/navistart/AutoVibVodActivity;

    .line 110
    .line 111
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    const/high16 v4, 0x10000000

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/16 v4, 0xb

    .line 121
    .line 122
    new-array v4, v4, [B

    .line 123
    .line 124
    fill-array-data v4, :array_6

    .line 125
    .line 126
    .line 127
    new-array v5, v2, [B

    .line 128
    .line 129
    fill-array-data v5, :array_7

    .line 130
    .line 131
    .line 132
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-static {p0, v3, v4}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    new-array v1, v1, [B

    .line 145
    .line 146
    fill-array-data v1, :array_8

    .line 147
    .line 148
    .line 149
    new-array v3, v2, [B

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
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    .line 162
    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_1
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 1
        -0x7ct
        -0x17t
        0x57t
        0x8t
        0x61t
        0x79t
        0x5bt
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 1
        -0x3at
        -0x7bt
        0x22t
        0x57t
        0x17t
        0x16t
        0x3ft
        0x9t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_2
    .array-data 1
        0x17t
        -0x33t
        0x4ct
        0x17t
        -0x10t
        0x3ft
        0x25t
        -0x4at
        -0x7bt
        0x13t
        -0x37t
        -0xat
        0x6et
        -0x36t
        -0x48t
        0x4bt
        -0x7ct
        0x3t
        -0x37t
        -0x3t
        0x6et
        -0x3bt
        -0x47t
        0x7ft
        0x75t
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
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    nop

    .line 203
    :array_3
    .array-data 1
        0x55t
        -0x7ft
        0x19t
        0x48t
        -0x42t
        0x7et
        0x68t
        -0xdt
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_4
    .array-data 1
        -0x11t
        -0x7ft
        0x39t
        0x25t
        -0x78t
        -0x3bt
        -0x5ct
        -0x43t
        -0x3ft
        -0x70t
        0x24t
        0x3et
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_5
    .array-data 1
        -0x52t
        -0xct
        0x4dt
        0x4at
        -0x25t
        -0x60t
        -0x30t
        -0x15t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_6
    .array-data 1
        -0x49t
        0x6at
        0x17t
        -0x25t
        -0x72t
        0x61t
        0x5et
        -0x7t
        -0x4et
        0x60t
        0x7t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_7
    .array-data 1
        -0x3ft
        0x5t
        0x73t
        -0x4et
        -0x6t
        0x4t
        0x32t
        -0x5at
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_8
    .array-data 1
        0x46t
        0xdt
        0x7ct
        -0x6t
        0x1t
        -0x33t
        -0x5bt
        -0x1t
        0x68t
        0x1ct
        0x61t
        -0x1ft
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_9
    .array-data 1
        0x7t
        0x78t
        0x8t
        -0x6bt
        0x52t
        -0x58t
        -0x2ft
        -0x57t
    .end array-data
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p0, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 1
        -0x43t
        0x6bt
        -0x63t
        -0x39t
        0x79t
        0x73t
        -0x3dt
        0x2dt
        -0x63t
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    nop

    .line 47
    :array_1
    .array-data 1
        -0xet
        0x5t
        -0x2et
        -0x5ft
        0x1ft
        0x32t
        -0x4at
        0x59t
    .end array-data
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {v0, p0, p1}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 1
        -0x24t
        0x6bt
        0x3ct
        0x33t
        -0x26t
        0x38t
        -0x3bt
        0x49t
        -0x4t
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
    nop

    .line 45
    :array_1
    .array-data 1
        -0x6dt
        0x5t
        0x73t
        0x55t
        -0x44t
        0x79t
        -0x50t
        0x3dt
    .end array-data
.end method

.method public static e()V
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    new-array v2, v0, [B

    .line 9
    .line 10
    fill-array-data v2, :array_1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/16 v3, 0xe

    .line 30
    .line 31
    new-array v4, v3, [B

    .line 32
    .line 33
    fill-array-data v4, :array_2

    .line 34
    .line 35
    .line 36
    new-array v5, v0, [B

    .line 37
    .line 38
    fill-array-data v5, :array_3

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v2, v4, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v1, :cond_10

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-array v2, v0, [B

    .line 59
    .line 60
    fill-array-data v2, :array_4

    .line 61
    .line 62
    .line 63
    new-array v4, v0, [B

    .line 64
    .line 65
    fill-array-data v4, :array_5

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    sget-object v1, Lcom/example/navistart/cores/BezFunEnum;->ID_CAR_AEB:Lcom/example/navistart/cores/BezFunEnum;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->f(Lcom/example/navistart/cores/BezFunEnum;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-array v2, v0, [B

    .line 88
    .line 89
    fill-array-data v2, :array_6

    .line 90
    .line 91
    .line 92
    new-array v4, v0, [B

    .line 93
    .line 94
    fill-array-data v4, :array_7

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    sget-object v1, Lcom/example/navistart/cores/BezFunEnum;->ID_CAR_FCW_SENSITIVITY:Lcom/example/navistart/cores/BezFunEnum;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->f(Lcom/example/navistart/cores/BezFunEnum;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-static {}, Lcom/example/navistart/cores/BezFunEnum;->values()[Lcom/example/navistart/cores/BezFunEnum;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    array-length v2, v1

    .line 117
    move v4, v5

    .line 118
    :goto_0
    if-ge v4, v2, :cond_3

    .line 119
    .line 120
    aget-object v6, v1, v4

    .line 121
    .line 122
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v7, v8, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_2

    .line 135
    .line 136
    invoke-static {v6}, Lcom/example/navistart/MyCarReceiver;->f(Lcom/example/navistart/cores/BezFunEnum;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    const/16 v1, 0xa

    .line 143
    .line 144
    new-array v2, v1, [B

    .line 145
    .line 146
    fill-array-data v2, :array_8

    .line 147
    .line 148
    .line 149
    new-array v4, v0, [B

    .line 150
    .line 151
    fill-array-data v4, :array_9

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    new-array v1, v1, [B

    .line 163
    .line 164
    fill-array-data v1, :array_a

    .line 165
    .line 166
    .line 167
    new-array v6, v0, [B

    .line 168
    .line 169
    fill-array-data v6, :array_b

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v6, ""

    .line 177
    .line 178
    invoke-virtual {v4, v1, v6}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    const/4 v2, 0x3

    .line 187
    const/4 v4, 0x4

    .line 188
    const/4 v6, 0x1

    .line 189
    if-eqz v1, :cond_4

    .line 190
    .line 191
    invoke-static {}, Le0/x;->a()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_4
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    const/16 v8, 0x1d

    .line 203
    .line 204
    new-array v8, v8, [B

    .line 205
    .line 206
    fill-array-data v8, :array_c

    .line 207
    .line 208
    .line 209
    new-array v9, v0, [B

    .line 210
    .line 211
    fill-array-data v9, :array_d

    .line 212
    .line 213
    .line 214
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    goto :goto_1

    .line 219
    :cond_5
    const/16 v8, 0x14

    .line 220
    .line 221
    new-array v8, v8, [B

    .line 222
    .line 223
    fill-array-data v8, :array_e

    .line 224
    .line 225
    .line 226
    new-array v9, v0, [B

    .line 227
    .line 228
    fill-array-data v9, :array_f

    .line 229
    .line 230
    .line 231
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    :goto_1
    invoke-virtual {v7, v8, v5}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-lt v7, v6, :cond_8

    .line 240
    .line 241
    if-eqz v1, :cond_6

    .line 242
    .line 243
    move v1, v4

    .line 244
    goto :goto_2

    .line 245
    :cond_6
    move v1, v2

    .line 246
    :goto_2
    if-le v7, v1, :cond_7

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    sub-int/2addr v7, v6

    .line 250
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 251
    .line 252
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .line 254
    .line 255
    new-array v8, v2, [B

    .line 256
    .line 257
    fill-array-data v8, :array_10

    .line 258
    .line 259
    .line 260
    new-array v9, v0, [B

    .line 261
    .line 262
    fill-array-data v9, :array_11

    .line 263
    .line 264
    .line 265
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    new-array v9, v3, [B

    .line 270
    .line 271
    fill-array-data v9, :array_12

    .line 272
    .line 273
    .line 274
    new-array v10, v0, [B

    .line 275
    .line 276
    fill-array-data v10, :array_13

    .line 277
    .line 278
    .line 279
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    .line 285
    .line 286
    const/4 v8, 0x5

    .line 287
    new-array v8, v8, [B

    .line 288
    .line 289
    fill-array-data v8, :array_14

    .line 290
    .line 291
    .line 292
    new-array v9, v0, [B

    .line 293
    .line 294
    fill-array-data v9, :array_15

    .line 295
    .line 296
    .line 297
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    .line 303
    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const/16 v9, 0xf

    .line 310
    .line 311
    new-array v9, v9, [B

    .line 312
    .line 313
    fill-array-data v9, :array_16

    .line 314
    .line 315
    .line 316
    new-array v10, v0, [B

    .line 317
    .line 318
    fill-array-data v10, :array_17

    .line 319
    .line 320
    .line 321
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    sget-object v8, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 336
    .line 337
    invoke-static {v7, v8}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 338
    .line 339
    .line 340
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 341
    .line 342
    .line 343
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-interface {v7, v1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .line 349
    .line 350
    :catchall_0
    :cond_8
    :goto_3
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const/16 v7, 0x11

    .line 355
    .line 356
    new-array v7, v7, [B

    .line 357
    .line 358
    fill-array-data v7, :array_18

    .line 359
    .line 360
    .line 361
    new-array v8, v0, [B

    .line 362
    .line 363
    fill-array-data v8, :array_19

    .line 364
    .line 365
    .line 366
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v1, v7, v5}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    const/4 v7, 0x2

    .line 375
    if-eq v1, v6, :cond_9

    .line 376
    .line 377
    if-eq v1, v7, :cond_9

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_9
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    .line 381
    .line 382
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 383
    .line 384
    .line 385
    new-array v9, v2, [B

    .line 386
    .line 387
    fill-array-data v9, :array_1a

    .line 388
    .line 389
    .line 390
    new-array v10, v0, [B

    .line 391
    .line 392
    fill-array-data v10, :array_1b

    .line 393
    .line 394
    .line 395
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    new-array v3, v3, [B

    .line 400
    .line 401
    fill-array-data v3, :array_1c

    .line 402
    .line 403
    .line 404
    new-array v10, v0, [B

    .line 405
    .line 406
    fill-array-data v10, :array_1d

    .line 407
    .line 408
    .line 409
    invoke-static {v3, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    .line 415
    .line 416
    const/4 v3, 0x5

    .line 417
    new-array v3, v3, [B

    .line 418
    .line 419
    fill-array-data v3, :array_1e

    .line 420
    .line 421
    .line 422
    new-array v9, v0, [B

    .line 423
    .line 424
    fill-array-data v9, :array_1f

    .line 425
    .line 426
    .line 427
    invoke-static {v3, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v8, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 432
    .line 433
    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    const/16 v9, 0xf

    .line 440
    .line 441
    new-array v9, v9, [B

    .line 442
    .line 443
    fill-array-data v9, :array_20

    .line 444
    .line 445
    .line 446
    new-array v10, v0, [B

    .line 447
    .line 448
    fill-array-data v10, :array_21

    .line 449
    .line 450
    .line 451
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    sget-object v3, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 466
    .line 467
    invoke-static {v1, v3}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 468
    .line 469
    .line 470
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 471
    .line 472
    .line 473
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-interface {v1, v8}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    .line 479
    .line 480
    :catchall_1
    :goto_4
    const/16 v1, 0x1b

    .line 481
    .line 482
    new-array v3, v1, [B

    .line 483
    .line 484
    fill-array-data v3, :array_22

    .line 485
    .line 486
    .line 487
    new-array v8, v0, [B

    .line 488
    .line 489
    fill-array-data v8, :array_23

    .line 490
    .line 491
    .line 492
    invoke-static {v3, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    new-array v1, v1, [B

    .line 501
    .line 502
    fill-array-data v1, :array_24

    .line 503
    .line 504
    .line 505
    new-array v9, v0, [B

    .line 506
    .line 507
    fill-array-data v9, :array_25

    .line 508
    .line 509
    .line 510
    invoke-static {v1, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v8, v1, v5}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    const/4 v8, 0x0

    .line 519
    if-eq v1, v6, :cond_c

    .line 520
    .line 521
    if-eq v1, v7, :cond_b

    .line 522
    .line 523
    if-eq v1, v2, :cond_a

    .line 524
    .line 525
    move-object v1, v8

    .line 526
    goto :goto_5

    .line 527
    :cond_a
    sget-object v1, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_HIGH:Lcom/example/navistart/cores/HFunEnum;

    .line 528
    .line 529
    goto :goto_5

    .line 530
    :cond_b
    sget-object v1, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_MEDIUM:Lcom/example/navistart/cores/HFunEnum;

    .line 531
    .line 532
    goto :goto_5

    .line 533
    :cond_c
    sget-object v1, Lcom/example/navistart/cores/HFunEnum;->ID_ENERGY_RECYCLE_LOW:Lcom/example/navistart/cores/HFunEnum;

    .line 534
    .line 535
    :goto_5
    invoke-static {v3, v1}, Lcom/example/navistart/MyCarReceiver;->g(Ljava/lang/String;Lcom/example/navistart/cores/HFunEnum;)V

    .line 536
    .line 537
    .line 538
    const/16 v1, 0x1e

    .line 539
    .line 540
    new-array v1, v1, [B

    .line 541
    .line 542
    fill-array-data v1, :array_26

    .line 543
    .line 544
    .line 545
    new-array v2, v0, [B

    .line 546
    .line 547
    fill-array-data v2, :array_27

    .line 548
    .line 549
    .line 550
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    const/16 v3, 0x1e

    .line 559
    .line 560
    new-array v3, v3, [B

    .line 561
    .line 562
    fill-array-data v3, :array_28

    .line 563
    .line 564
    .line 565
    new-array v9, v0, [B

    .line 566
    .line 567
    fill-array-data v9, :array_29

    .line 568
    .line 569
    .line 570
    invoke-static {v3, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v2, v3, v5}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    if-eq v2, v6, :cond_f

    .line 579
    .line 580
    if-eq v2, v7, :cond_e

    .line 581
    .line 582
    if-eq v2, v4, :cond_d

    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_d
    sget-object v8, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_FORCED:Lcom/example/navistart/cores/HFunEnum;

    .line 586
    .line 587
    goto :goto_6

    .line 588
    :cond_e
    sget-object v8, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_SMART:Lcom/example/navistart/cores/HFunEnum;

    .line 589
    .line 590
    goto :goto_6

    .line 591
    :cond_f
    sget-object v8, Lcom/example/navistart/cores/HFunEnum;->ID_SOC_MANAGER_INITIAL:Lcom/example/navistart/cores/HFunEnum;

    .line 592
    .line 593
    :goto_6
    invoke-static {v1, v8}, Lcom/example/navistart/MyCarReceiver;->g(Ljava/lang/String;Lcom/example/navistart/cores/HFunEnum;)V

    .line 594
    .line 595
    .line 596
    sget-object v1, Lcom/example/navistart/cores/HFunEnum;->ID_VCU_DISCHARGE_SWITCH:Lcom/example/navistart/cores/HFunEnum;

    .line 597
    .line 598
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->h(Lcom/example/navistart/cores/HFunEnum;)V

    .line 599
    .line 600
    .line 601
    sget-object v1, Lcom/example/navistart/cores/HFunEnum;->ID_VCU_ELECTRONIC_LOCKING_UNLOCKS:Lcom/example/navistart/cores/HFunEnum;

    .line 602
    .line 603
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->h(Lcom/example/navistart/cores/HFunEnum;)V

    .line 604
    .line 605
    .line 606
    new-array v1, v0, [B

    .line 607
    .line 608
    fill-array-data v1, :array_2a

    .line 609
    .line 610
    .line 611
    new-array v0, v0, [B

    .line 612
    .line 613
    fill-array-data v0, :array_2b

    .line 614
    .line 615
    .line 616
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 621
    .line 622
    invoke-static {v0, v1}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 623
    .line 624
    .line 625
    :cond_10
    return-void

    .line 626
    nop

    .line 627
    :array_0
    .array-data 1
        -0x1bt
        -0x24t
        0x54t
        -0x28t
        -0x27t
        0x28t
        0x1t
        0x51t
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_1
    .array-data 1
        -0x6at
        -0x55t
        0xbt
        -0x55t
        -0x53t
        0x47t
        0x6dt
        0x3at
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_2
    .array-data 1
        0x4ct
        0x3bt
        0x29t
        -0x4ct
        -0x1at
        0x4ft
        -0x2bt
        0x6t
        0x5et
        0x3ft
        0x18t
        -0x47t
        -0x10t
        0x41t
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    nop

    .line 655
    :array_3
    .array-data 1
        0x3ft
        0x4ct
        0x76t
        -0x2at
        -0x7dt
        0x35t
        -0x46t
        0x76t
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    :array_4
    .array-data 1
        0x32t
        0x9t
        -0x38t
        0x68t
        -0x50t
        0x11t
        0x16t
        -0x33t
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_5
    .array-data 1
        0x41t
        0x7et
        -0x69t
        0x1bt
        -0x3ct
        0x7et
        0x7at
        -0x5at
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    :array_6
    .array-data 1
        0x5at
        0x43t
        0x5bt
        0x12t
        0x5ft
        0x65t
        0x5et
        -0x6at
    .end array-data

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    :array_7
    .array-data 1
        0x29t
        0x34t
        0x4t
        0x61t
        0x2bt
        0xat
        0x32t
        -0x3t
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    :array_8
    .array-data 1
        0x78t
        0x79t
        -0x37t
        0x2bt
        -0x50t
        -0x9t
        -0x5ft
        -0x78t
        0x78t
        0x75t
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    nop

    .line 705
    :array_9
    .array-data 1
        0x3dt
        0x21t
        -0x7bt
        0x6at
        -0x2t
        -0x5dt
        -0x18t
        -0x30t
    .end array-data

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_a
    .array-data 1
        -0x43t
        0x4ft
        0x11t
        0x18t
        0x1dt
        0x9t
        0x2et
        0x40t
        -0x6et
        0x6bt
    .end array-data

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    nop

    .line 723
    :array_b
    .array-data 1
        -0x2t
        0xet
        0x43t
        0x48t
        0x6ft
        0x66t
        0x48t
        0x29t
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_c
    .array-data 1
        -0x18t
        0x7ct
        -0x3t
        0x62t
        0x3et
        -0x23t
        -0x16t
        -0x15t
        -0x2et
        0x60t
        -0x1dt
        0x6at
        0x26t
        -0x34t
        -0x24t
        -0x2t
        -0x1et
        0x60t
        -0xct
        0x5ct
        0x23t
        -0x34t
        -0x11t
        -0xat
        -0x12t
        0x70t
        -0x8t
        0x6ct
        0x3et
    .end array-data

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    nop

    .line 751
    :array_d
    .array-data 1
        -0x73t
        0x4t
        -0x6ft
        0x3t
        0x50t
        -0x57t
        -0x7dt
        -0x6dt
    .end array-data

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    :array_e
    .array-data 1
        -0x5ct
        -0x7bt
        0x23t
        -0x1bt
        -0x5et
        0x3ct
        0x3t
        0x12t
        -0x5ct
        -0x6et
        0x15t
        -0x20t
        -0x5et
        0xft
        0xbt
        0x1et
        -0x4ct
        -0x62t
        0x25t
        -0x3t
    .end array-data

    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    :array_f
    .array-data 1
        -0x40t
        -0x9t
        0x4at
        -0x6dt
        -0x39t
        0x63t
        0x6et
        0x7dt
    .end array-data

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_10
    .array-data 1
        0x7ct
        0x4dt
        -0x2et
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_11
    .array-data 1
        0x1ft
        0x20t
        -0x4at
        0x5dt
        -0x6ct
        0x35t
        -0x37t
        -0x4at
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_12
    .array-data 1
        -0xft
        -0x66t
        -0x75t
        0x38t
        -0x1at
        -0x18t
        0x3dt
        0x3dt
        -0x19t
        -0x60t
        -0x6et
        0x8t
        -0x1at
        -0x1t
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    nop

    .line 807
    :array_13
    .array-data 1
        -0x7et
        -0x1t
        -0x1t
        0x67t
        -0x7et
        -0x66t
        0x54t
        0x4bt
    .end array-data

    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :array_14
    .array-data 1
        0x3et
        0x57t
        0x78t
        -0xdt
        0x39t
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    nop

    .line 823
    :array_15
    .array-data 1
        0x48t
        0x36t
        0x14t
        -0x7at
        0x5ct
        0xat
        0x6bt
        0x5t
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    :array_16
    .array-data 1
        -0x18t
        0x31t
        -0x74t
        0x4dt
        0x47t
        -0xft
        -0x7ft
        0x6at
        -0xat
        0x3bt
        -0x64t
        0x6ct
        0x15t
        -0x4bt
        -0x29t
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :array_17
    .array-data 1
        -0x45t
        0x54t
        -0x8t
        0x9t
        0x35t
        -0x68t
        -0x9t
        0xft
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_18
    .array-data 1
        0x1et
        0x5at
        -0x5t
        -0x42t
        -0x5bt
        0x11t
        0x70t
        -0x6ct
        0x1bt
        0x4ct
        -0x5t
        -0x51t
        -0x6bt
        0x13t
        0x40t
        -0x80t
        0x11t
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    nop

    .line 865
    :array_19
    .array-data 1
        0x74t
        0x3bt
        -0x62t
        -0x23t
        -0x36t
        0x7et
        0x2ft
        -0x1ct
    .end array-data

    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    :array_1a
    .array-data 1
        0x7at
        0x35t
        -0x64t
    .end array-data

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :array_1b
    .array-data 1
        0x19t
        0x58t
        -0x8t
        -0x69t
        -0x4bt
        0x31t
        -0x5at
        0x14t
    .end array-data

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :array_1c
    .array-data 1
        -0x74t
        0x40t
        0x52t
        0x7et
        -0x2et
        -0x74t
        -0x42t
        -0xct
        -0x73t
        0x7at
        0x4bt
        0x4et
        -0x3at
        -0x7at
    .end array-data

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    nop

    .line 899
    :array_1d
    .array-data 1
        -0x1t
        0x25t
        0x26t
        0x21t
        -0x5et
        -0x1dt
        -0x37t
        -0x6ft
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :array_1e
    .array-data 1
        0x60t
        -0x41t
        0x7t
        0x58t
        -0x1t
    .end array-data

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    nop

    .line 915
    :array_1f
    .array-data 1
        0x16t
        -0x22t
        0x6bt
        0x2dt
        -0x66t
        -0x34t
        -0xft
        -0x74t
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    :array_20
    .array-data 1
        0x40t
        0x1at
        0x76t
        0x46t
        0x63t
        0x43t
        -0x27t
        0x78t
        0x5et
        0x10t
        0x66t
        0x73t
        0x2ct
        0x19t
        -0x64t
    .end array-data

    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_21
    .array-data 1
        0x13t
        0x7ft
        0x2t
        0x16t
        0xct
        0x34t
        -0x44t
        0xat
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    :array_22
    .array-data 1
        -0x7et
        -0x61t
        -0x54t
        0x18t
        -0x2t
        -0x4at
        -0xet
        -0xat
        -0x7at
        -0x65t
        -0x45t
        0x1ct
        -0x18t
        -0x7at
        -0x21t
        -0xat
        -0x75t
        -0x79t
        -0x56t
        0x17t
        -0xct
        -0x7at
        -0x3ft
        -0xat
        -0x62t
        -0x65t
        -0x5bt
    .end array-data

    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    :array_23
    .array-data 1
        -0x18t
        -0x2t
        -0x37t
        0x7bt
        -0x6ft
        -0x27t
        -0x53t
        -0x6dt
    .end array-data

    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_24
    .array-data 1
        -0x6dt
        0x18t
        -0x75t
        0x18t
        0x42t
        0x79t
        -0x71t
        0x71t
        -0x69t
        0x1ct
        -0x64t
        0x1ct
        0x54t
        0x49t
        -0x5et
        0x71t
        -0x66t
        0x0t
        -0x73t
        0x17t
        0x48t
        0x49t
        -0x44t
        0x71t
        -0x71t
        0x1ct
        -0x7et
    .end array-data

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_25
    .array-data 1
        -0x7t
        0x79t
        -0x12t
        0x7bt
        0x2dt
        0x16t
        -0x30t
        0x14t
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :array_26
    .array-data 1
        -0x67t
        -0x67t
        -0x3et
        -0x58t
        -0x24t
        -0x2at
        0x60t
        -0x6et
        -0x6et
        -0x74t
        -0x2dt
        -0x52t
        -0x3ft
        -0x40t
        0x60t
        -0x80t
        -0x7ft
        -0x69t
        -0x2dt
        -0x52t
        -0x30t
        -0x33t
        0x56t
        -0x61t
        -0x63t
        -0x59t
        -0x36t
        -0x5ct
        -0x29t
        -0x24t
    .end array-data

    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    nop

    .line 1015
    :array_27
    .array-data 1
        -0xdt
        -0x8t
        -0x59t
        -0x35t
        -0x4dt
        -0x47t
        0x3ft
        -0x10t
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    :array_28
    .array-data 1
        0x3t
        -0x33t
        0x10t
        0x28t
        0x43t
        0xet
        -0x7ft
        -0x52t
        0x8t
        -0x28t
        0x1t
        0x2et
        0x5et
        0x18t
        -0x7ft
        -0x44t
        0x1bt
        -0x3dt
        0x1t
        0x2et
        0x4ft
        0x15t
        -0x49t
        -0x5dt
        0x7t
        -0xdt
        0x18t
        0x24t
        0x48t
        0x4t
    .end array-data

    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    nop

    .line 1043
    :array_29
    .array-data 1
        0x69t
        -0x54t
        0x75t
        0x4bt
        0x2ct
        0x61t
        -0x22t
        -0x34t
    .end array-data

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :array_2a
    .array-data 1
        0x10t
        -0x22t
        0x79t
        0x7t
        0x0t
        -0x2ft
        0x4t
        -0x6et
    .end array-data

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    :array_2b
    .array-data 1
        0x63t
        -0x57t
        0x26t
        0x74t
        0x74t
        -0x42t
        0x68t
        -0x7t
    .end array-data
.end method

.method public static f(Lcom/example/navistart/cores/BezFunEnum;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v3, v2, [B

    .line 16
    .line 17
    fill-array-data v3, :array_1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    fill-array-data v1, :array_2

    .line 34
    .line 35
    .line 36
    new-array v2, v2, [B

    .line 37
    .line 38
    fill-array-data v2, :array_3

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0, p0, v1}, Lcom/example/navistart/cores/CarCmdProxy;->bezoff(Lcom/example/navistart/cores/BezFunEnum;Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 1
        0x4bt
        -0x6dt
        -0x15t
        -0x6ct
        0x1et
        0x14t
        -0x64t
        -0x30t
        0x24t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    nop

    .line 83
    :array_1
    .array-data 1
        0x4t
        -0xbt
        -0x73t
        -0x2at
        0x7bt
        0x6et
        -0x44t
        -0x3t
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_2
    .array-data 1
        -0x49t
        0x4et
        -0x4dt
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_3
    .array-data 1
        -0x69t
        0x63t
        -0x6dt
        -0x5dt
        0x12t
        -0x79t
        0x1at
        -0x80t
    .end array-data
.end method

.method public static g(Ljava/lang/String;Lcom/example/navistart/cores/HFunEnum;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    new-array v3, v2, [B

    .line 18
    .line 19
    fill-array-data v3, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3, v0, p0}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x3

    .line 26
    new-array p0, p0, [B

    .line 27
    .line 28
    fill-array-data p0, :array_2

    .line 29
    .line 30
    .line 31
    new-array v1, v2, [B

    .line 32
    .line 33
    fill-array-data v1, :array_3

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object v0, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 51
    .line 52
    invoke-static {p0, v0}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-interface {p0, p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->hybrid(Lcom/example/navistart/cores/HFunEnum;Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 1
        -0x74t
        -0x16t
        0x1at
        -0x6et
        0x73t
        -0x3bt
        -0x5t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 1
        -0x3dt
        -0x74t
        0x7ct
        -0x26t
        0x53t
        -0x18t
        -0x25t
        -0x5t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 1
        -0x57t
        -0x5ft
        -0x27t
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_3
    .array-data 1
        -0x77t
        -0x74t
        -0x7t
        -0x74t
        0x31t
        0x59t
        0x79t
        -0xft
    .end array-data
.end method

.method public static h(Lcom/example/navistart/cores/HFunEnum;)V
    .locals 5

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    new-array v2, v2, [B

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    new-array v4, v3, [B

    .line 28
    .line 29
    fill-array-data v4, :array_1

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    new-array v2, v2, [B

    .line 44
    .line 45
    fill-array-data v2, :array_2

    .line 46
    .line 47
    .line 48
    new-array v3, v3, [B

    .line 49
    .line 50
    fill-array-data v3, :array_3

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 68
    .line 69
    invoke-static {v1, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v1, p0, v0}, Lcom/example/navistart/cores/CarCmdProxy;->hybrid(Lcom/example/navistart/cores/HFunEnum;Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :array_0
    .array-data 1
        0xft
        0x6ft
        -0x4dt
        0xbt
        -0x30t
        -0x5t
        0x4t
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 1
        0x40t
        0x9t
        -0x2bt
        0x43t
        -0x10t
        -0x2at
        0x24t
        0x6dt
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_2
    .array-data 1
        -0x6et
        0x3at
        0x7at
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_3
    .array-data 1
        -0x4et
        0x17t
        0x5at
        -0x7at
        0xct
        -0x5et
        0x59t
        -0x43t
    .end array-data
.end method

.method public static j()V
    .locals 7

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    new-array v2, v0, [B

    .line 25
    .line 26
    fill-array-data v2, :array_2

    .line 27
    .line 28
    .line 29
    new-array v3, v1, [B

    .line 30
    .line 31
    fill-array-data v3, :array_3

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {v2, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x1f

    .line 44
    .line 45
    new-array v2, v2, [B

    .line 46
    .line 47
    fill-array-data v2, :array_4

    .line 48
    .line 49
    .line 50
    new-array v4, v1, [B

    .line 51
    .line 52
    fill-array-data v4, :array_5

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    .line 61
    .line 62
    const/16 v2, 0x17

    .line 63
    .line 64
    new-array v2, v2, [B

    .line 65
    .line 66
    fill-array-data v2, :array_6

    .line 67
    .line 68
    .line 69
    new-array v4, v1, [B

    .line 70
    .line 71
    fill-array-data v4, :array_7

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 79
    .line 80
    .line 81
    const/16 v2, 0x18

    .line 82
    .line 83
    new-array v4, v2, [B

    .line 84
    .line 85
    fill-array-data v4, :array_8

    .line 86
    .line 87
    .line 88
    new-array v5, v1, [B

    .line 89
    .line 90
    fill-array-data v5, :array_9

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    .line 99
    .line 100
    const/16 v4, 0x12

    .line 101
    .line 102
    new-array v4, v4, [B

    .line 103
    .line 104
    fill-array-data v4, :array_a

    .line 105
    .line 106
    .line 107
    new-array v5, v1, [B

    .line 108
    .line 109
    fill-array-data v5, :array_b

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    const/16 v4, 0x16

    .line 120
    .line 121
    new-array v4, v4, [B

    .line 122
    .line 123
    fill-array-data v4, :array_c

    .line 124
    .line 125
    .line 126
    new-array v5, v1, [B

    .line 127
    .line 128
    fill-array-data v5, :array_d

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 136
    .line 137
    .line 138
    const/16 v4, 0x17

    .line 139
    .line 140
    new-array v4, v4, [B

    .line 141
    .line 142
    fill-array-data v4, :array_e

    .line 143
    .line 144
    .line 145
    new-array v5, v1, [B

    .line 146
    .line 147
    fill-array-data v5, :array_f

    .line 148
    .line 149
    .line 150
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 155
    .line 156
    .line 157
    const/16 v4, 0xf

    .line 158
    .line 159
    new-array v4, v4, [B

    .line 160
    .line 161
    fill-array-data v4, :array_10

    .line 162
    .line 163
    .line 164
    new-array v5, v1, [B

    .line 165
    .line 166
    fill-array-data v5, :array_11

    .line 167
    .line 168
    .line 169
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 174
    .line 175
    .line 176
    const/16 v4, 0xc

    .line 177
    .line 178
    new-array v4, v4, [B

    .line 179
    .line 180
    fill-array-data v4, :array_12

    .line 181
    .line 182
    .line 183
    new-array v5, v1, [B

    .line 184
    .line 185
    fill-array-data v5, :array_13

    .line 186
    .line 187
    .line 188
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    .line 194
    .line 195
    const/16 v4, 0x24

    .line 196
    .line 197
    new-array v4, v4, [B

    .line 198
    .line 199
    fill-array-data v4, :array_14

    .line 200
    .line 201
    .line 202
    new-array v5, v1, [B

    .line 203
    .line 204
    fill-array-data v5, :array_15

    .line 205
    .line 206
    .line 207
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    .line 213
    .line 214
    const/16 v4, 0x25

    .line 215
    .line 216
    new-array v4, v4, [B

    .line 217
    .line 218
    fill-array-data v4, :array_16

    .line 219
    .line 220
    .line 221
    new-array v5, v1, [B

    .line 222
    .line 223
    fill-array-data v5, :array_17

    .line 224
    .line 225
    .line 226
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v4, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    .line 232
    .line 233
    const/16 v4, 0x1d

    .line 234
    .line 235
    new-array v5, v4, [B

    .line 236
    .line 237
    fill-array-data v5, :array_18

    .line 238
    .line 239
    .line 240
    new-array v6, v1, [B

    .line 241
    .line 242
    fill-array-data v6, :array_19

    .line 243
    .line 244
    .line 245
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-static {v5, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    .line 251
    .line 252
    new-array v0, v0, [B

    .line 253
    .line 254
    fill-array-data v0, :array_1a

    .line 255
    .line 256
    .line 257
    new-array v5, v1, [B

    .line 258
    .line 259
    fill-array-data v5, :array_1b

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 267
    .line 268
    .line 269
    new-array v0, v4, [B

    .line 270
    .line 271
    fill-array-data v0, :array_1c

    .line 272
    .line 273
    .line 274
    new-array v4, v1, [B

    .line 275
    .line 276
    fill-array-data v4, :array_1d

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 284
    .line 285
    .line 286
    new-array v0, v2, [B

    .line 287
    .line 288
    fill-array-data v0, :array_1e

    .line 289
    .line 290
    .line 291
    new-array v4, v1, [B

    .line 292
    .line 293
    fill-array-data v4, :array_1f

    .line 294
    .line 295
    .line 296
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 301
    .line 302
    .line 303
    const/16 v0, 0x1c

    .line 304
    .line 305
    new-array v0, v0, [B

    .line 306
    .line 307
    fill-array-data v0, :array_20

    .line 308
    .line 309
    .line 310
    new-array v4, v1, [B

    .line 311
    .line 312
    fill-array-data v4, :array_21

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 320
    .line 321
    .line 322
    new-array v0, v1, [B

    .line 323
    .line 324
    fill-array-data v0, :array_22

    .line 325
    .line 326
    .line 327
    new-array v4, v1, [B

    .line 328
    .line 329
    fill-array-data v4, :array_23

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 337
    .line 338
    .line 339
    new-array v0, v2, [B

    .line 340
    .line 341
    fill-array-data v0, :array_24

    .line 342
    .line 343
    .line 344
    new-array v1, v1, [B

    .line 345
    .line 346
    fill-array-data v1, :array_25

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :array_0
    .array-data 1
        -0xbt
        0xft
        0x36t
        -0x3at
        0x2bt
        0x35t
        0x22t
        -0x19t
        -0x38t
        0x1ft
        0x2bt
        -0x29t
        0x3at
        0x18t
        -0x7ft
        0x19t
        -0x1at
        0x1ft
        0x31t
        -0x34t
        0x0t
        0x25t
        -0x44t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_1
    .array-data 1
        -0x59t
        0x6at
        0x45t
        -0x5dt
        0x5ft
        0x6at
        -0xet
        0x46t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_2
    .array-data 1
        0x13t
        0x1dt
        0x5dt
        0x2ft
        0x1at
        -0x2ft
        0x2dt
        -0x49t
        0x8t
        0x10t
        0x54t
        0x29t
        0x9t
        -0x24t
        0x21t
        -0x4at
        0x1bt
        0xdt
        0x5dt
        0x3at
        0x1et
        -0x33t
        0x26t
        -0x46t
        0x16t
        0x18t
        0x56t
        0x25t
        0x14t
        -0x33t
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
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
    nop

    .line 401
    :array_3
    .array-data 1
        0x5at
        0x59t
        0x2t
        0x6ct
        0x5bt
        -0x7dt
        0x72t
        -0xdt
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_4
    .array-data 1
        -0x2t
        0x10t
        -0x29t
        0x1dt
        0x5ft
        -0x63t
        0x72t
        -0x2et
        -0x8t
        0x4t
        -0x3ft
        0x12t
        0x51t
        -0x65t
        0x72t
        -0x3et
        -0xet
        0x15t
        -0x24t
        0x1t
        0x48t
        -0x76t
        0x63t
        -0x3bt
        -0x2t
        0x18t
        -0x37t
        0xat
        0x57t
        -0x80t
        0x63t
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
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
    .line 428
    .line 429
    :array_5
    .array-data 1
        -0x49t
        0x54t
        -0x78t
        0x5et
        0x1et
        -0x31t
        0x2dt
        -0x6ft
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_6
    .array-data 1
        -0x2et
        0x52t
        -0x6t
        0x2ft
        0x41t
        -0x66t
        -0x32t
        -0x1t
        -0x37t
        0x5ft
        -0xdt
        0x29t
        0x52t
        -0x69t
        -0x3et
        -0x2t
        -0x26t
        0x42t
        -0x6t
        0x24t
        0x45t
        -0x77t
        -0x3bt
    .end array-data

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
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_7
    .array-data 1
        -0x65t
        0x16t
        -0x5bt
        0x6ct
        0x0t
        -0x38t
        -0x6ft
        -0x45t
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_8
    .array-data 1
        -0x8t
        0x5et
        -0x2ct
        0x6t
        0x3t
        -0x26t
        -0x14t
        -0x13t
        -0x2t
        0x4at
        -0x3et
        0x9t
        0xdt
        -0x24t
        -0x14t
        -0x3t
        -0xct
        0x5bt
        -0x21t
        0x1at
        0xat
        -0x33t
        -0xet
        -0x6t
    .end array-data

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
    :array_9
    .array-data 1
        -0x4ft
        0x1at
        -0x75t
        0x45t
        0x42t
        -0x78t
        -0x4dt
        -0x52t
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :array_a
    .array-data 1
        0x78t
        -0x4ct
        -0x26t
        0x48t
        0x16t
        0x44t
        -0xdt
        -0x5bt
        0x70t
        -0x5et
        -0x26t
        0x4dt
        0x10t
        0x5dt
        -0xdt
        -0x51t
        0x62t
        -0x5ct
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    nop

    .line 499
    :array_b
    .array-data 1
        0x31t
        -0x10t
        -0x7bt
        0x9t
        0x55t
        0x1bt
        -0x5ft
        -0x20t
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_c
    .array-data 1
        -0x4dt
        0x21t
        0x36t
        0x11t
        0x40t
        -0x6dt
        -0x23t
        0x74t
        -0x4bt
        0x2bt
        0x3dt
        0xft
        0x44t
        -0x80t
        -0x26t
        0x75t
        -0x57t
        0x3at
        0x21t
        0x15t
        0x42t
        -0x68t
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    nop

    .line 523
    :array_d
    .array-data 1
        -0x6t
        0x65t
        0x69t
        0x50t
        0x3t
        -0x34t
        -0x65t
        0x26t
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_e
    .array-data 1
        0x27t
        0x26t
        0x18t
        0x42t
        -0x6bt
        -0x8t
        -0x5bt
        0x60t
        0x3at
        0x27t
        0x2t
        0x53t
        -0x75t
        -0x3t
        -0x4et
        0x76t
        0x2bt
        0x2et
        0x18t
        0x49t
        -0x6ft
        -0x15t
        -0x52t
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_f
    .array-data 1
        0x6et
        0x62t
        0x47t
        0x1t
        -0x2ct
        -0x56t
        -0x6t
        0x33t
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_10
    .array-data 1
        0x60t
        0x13t
        -0x5at
        -0x42t
        0x50t
        -0x72t
        -0x27t
        0x15t
        0x7ct
        0x19t
        -0x56t
        -0x4bt
        0x50t
        -0x68t
        -0x3dt
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_11
    .array-data 1
        0x29t
        0x57t
        -0x7t
        -0x3t
        0x11t
        -0x24t
        -0x7at
        0x46t
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_12
    .array-data 1
        0x23t
        0x1at
        0x6at
        -0x66t
        0x7et
        0x3bt
        -0x23t
        0x3t
        0xdt
        0xbt
        0x77t
        -0x7ft
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_13
    .array-data 1
        0x62t
        0x6ft
        0x1et
        -0xbt
        0x2dt
        0x5et
        -0x57t
        0x55t
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_14
    .array-data 1
        -0x2dt
        0xdt
        0x5ft
        0x5t
        0x2at
        -0x3dt
        0x5ft
        -0x4bt
        -0x38t
        0x0t
        0x56t
        0x3t
        0x39t
        -0x32t
        0x53t
        -0x4ct
        -0x25t
        0x1dt
        0x5ft
        0x10t
        0x2et
        -0x21t
        0x54t
        -0x48t
        -0x2at
        0x8t
        0x54t
        0xft
        0x24t
        -0x21t
        0x5ft
        -0x5bt
        -0x2dt
        0x4t
        0x45t
        0x14t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :array_15
    .array-data 1
        -0x66t
        0x49t
        0x0t
        0x46t
        0x6bt
        -0x6ft
        0x0t
        -0xft
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_16
    .array-data 1
        -0x6t
        0x4ft
        -0x36t
        0x7t
        0x40t
        -0xbt
        -0x38t
        0x15t
        -0x4t
        0x5bt
        -0x24t
        0x8t
        0x4et
        -0xdt
        -0x38t
        0x5t
        -0xat
        0x4at
        -0x3ft
        0x1bt
        0x57t
        -0x1et
        -0x27t
        0x2t
        -0x6t
        0x47t
        -0x2ct
        0x10t
        0x48t
        -0x18t
        -0x27t
        0x9t
        -0x19t
        0x42t
        -0x28t
        0x1t
        0x53t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    nop

    .line 647
    :array_17
    .array-data 1
        -0x4dt
        0xbt
        -0x6bt
        0x44t
        0x1t
        -0x59t
        -0x69t
        0x56t
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_18
    .array-data 1
        -0x44t
        0x69t
        -0x49t
        -0x4t
        -0x22t
        0x53t
        0x41t
        0x32t
        -0x59t
        0x64t
        -0x42t
        -0x6t
        -0x33t
        0x5et
        0x4dt
        0x33t
        -0x4ct
        0x79t
        -0x49t
        -0x9t
        -0x26t
        0x40t
        0x4at
        0x29t
        -0x5ft
        0x64t
        -0x5bt
        -0x6t
        -0x33t
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    nop

    .line 675
    :array_19
    .array-data 1
        -0xbt
        0x2dt
        -0x18t
        -0x41t
        -0x61t
        0x1t
        0x1et
        0x76t
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_1a
    .array-data 1
        -0x7ct
        0x28t
        0x36t
        -0x45t
        0x79t
        0x5dt
        -0x2bt
        -0x11t
        -0x7et
        0x3ct
        0x20t
        -0x4ct
        0x77t
        0x5bt
        -0x2bt
        -0x1t
        -0x78t
        0x2dt
        0x3dt
        -0x59t
        0x70t
        0x4at
        -0x35t
        -0x8t
        -0x6et
        0x38t
        0x20t
        -0x4bt
        0x7dt
        0x5dt
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    nop

    .line 703
    :array_1b
    .array-data 1
        -0x33t
        0x6ct
        0x69t
        -0x8t
        0x38t
        0xft
        -0x76t
        -0x54t
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :array_1c
    .array-data 1
        -0x68t
        0x43t
        0x72t
        -0x60t
        -0x6ft
        -0x7et
        0x5dt
        -0x35t
        -0x7bt
        0x42t
        0x68t
        -0x4ft
        -0x71t
        -0x79t
        0x4at
        -0x23t
        -0x6ct
        0x4bt
        0x72t
        -0x55t
        -0x6bt
        -0x6ft
        0x56t
        -0x39t
        -0x7bt
        0x4et
        0x60t
        -0x5at
        -0x7et
    .end array-data

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    nop

    .line 731
    :array_1d
    .array-data 1
        -0x2ft
        0x7t
        0x2dt
        -0x1dt
        -0x30t
        -0x30t
        0x2t
        -0x68t
    .end array-data

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_1e
    .array-data 1
        -0x66t
        -0x2dt
        0x3ft
        0x49t
        0x2t
        0x4bt
        -0x3ft
        -0x63t
        -0x6et
        -0x3bt
        0x3ft
        0x4ct
        0x4t
        0x52t
        -0x3ft
        -0x69t
        -0x80t
        -0x3dt
        0x3ft
        0x5ct
        0x8t
        0x59t
        -0x2at
        -0x76t
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_1f
    .array-data 1
        -0x2dt
        -0x69t
        0x60t
        0x8t
        0x41t
        0x14t
        -0x6dt
        -0x28t
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_20
    .array-data 1
        0x6bt
        0x19t
        -0x61t
        0x51t
        -0x5et
        -0x65t
        0x60t
        0x24t
        0x6dt
        0x13t
        -0x6ct
        0x4ft
        -0x5at
        -0x78t
        0x67t
        0x25t
        0x71t
        0x2t
        -0x78t
        0x55t
        -0x60t
        -0x70t
        0x79t
        0x22t
        0x6bt
        0x10t
        -0x7bt
        0x42t
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_21
    .array-data 1
        0x22t
        0x5dt
        -0x40t
        0x10t
        -0x1ft
        -0x3ct
        0x26t
        0x76t
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_22
    .array-data 1
        0x5bt
        -0x68t
        0x73t
        0x75t
        0x4t
        0x5t
        -0x6at
        -0x56t
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_23
    .array-data 1
        0x28t
        -0x11t
        0x2ct
        0x6t
        0x70t
        0x6at
        -0x6t
        -0x3ft
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_24
    .array-data 1
        -0x57t
        -0x7dt
        0x20t
        -0x1ft
        0x53t
        0x0t
        -0x2dt
        -0x11t
        -0x7bt
        -0x68t
        0x16t
        -0x1t
        0x4at
        0x11t
        -0x17t
        -0x16t
        -0x4at
        -0x6bt
        0xdt
        -0x1t
        0x7ct
        0xat
        -0x30t
        -0x13t
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_25
    .array-data 1
        -0x26t
        -0xct
        0x7ft
        -0x6et
        0x23t
        0x65t
        -0x4at
        -0x75t
    .end array-data
.end method

.method public static k()Ljava/lang/Boolean;
    .locals 9

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
    fill-array-data v1, :array_0

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
    if-eqz v0, :cond_1

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
    const/16 v7, 0x4f

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
    fill-array-data v7, :array_1

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
    if-gez v0, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v5, v8

    .line 117
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_0
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
    :array_1
    .array-data 1
        0x7ft
        0x7dt
        0x38t
        -0x4bt
        -0x2ft
        -0x41t
        0x3ct
        -0x7at
    .end array-data
.end method

.method public static n()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

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
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sput v0, Lcom/example/navistart/MyCarReceiver;->k:I

    .line 29
    .line 30
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lh0/b;->u()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-class v1, Lv1/b;

    .line 42
    .line 43
    iget-object v0, v0, Lv1/d;->a:Landroidx/lifecycle/ViewModelProvider;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lv1/b;

    .line 50
    .line 51
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lh0/b;->e()Le0/p;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v0, v0, Lv1/b;->b:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :array_0
    .array-data 1
        -0x5at
        0x4ct
        -0xet
        -0x1et
        -0x31t
        0x6bt
        0x1et
        0x29t
        -0x61t
        0x48t
        -0x14t
        -0x6t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 1
        -0x15t
        0x2dt
        -0x7ft
        -0x76t
        -0x70t
        0x5t
        0x7ft
        0x5bt
    .end array-data
.end method

.method public static q(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Lcom/example/navistart/Notik;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->s:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->s:Ljava/util/concurrent/ScheduledFuture;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    sput-boolean p1, Lcom/example/navistart/Notik;->n:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroidx/profileinstaller/c;

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-direct {p1, p0, v0}, Landroidx/profileinstaller/c;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v0, 0x3e8

    .line 48
    .line 49
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    sget-object v2, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 52
    .line 53
    invoke-interface {v2, p1, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sput-object p0, Lcom/example/navistart/MyCarReceiver;->s:Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public static r(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/example/navistart/Si;->d:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v2, Lcom/example/navistart/Si;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->r:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->r:Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    sput-boolean p1, Lcom/example/navistart/Si;->d:Z

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Landroidx/profileinstaller/c;

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-direct {p1, p0, v0}, Landroidx/profileinstaller/c;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v0, 0x3e8

    .line 44
    .line 45
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    sget-object v2, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 48
    .line 49
    invoke-interface {v2, p1, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sput-object p0, Lcom/example/navistart/MyCarReceiver;->r:Ljava/util/concurrent/ScheduledFuture;

    .line 54
    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget v0, Lcom/example/navistart/MyCarReceiver;->g:I

    .line 2
    .line 3
    if-gez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lcom/example/navistart/MyA11yService;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    new-array v2, v1, [B

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Lh0/b;->p:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v3, v0, Lh0/b;->b:Lb1/m;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    sget-object v3, Lh0/b;->c:Ljava/lang/String;

    .line 44
    .line 45
    const/16 v4, 0xe

    .line 46
    .line 47
    new-array v4, v4, [B

    .line 48
    .line 49
    fill-array-data v4, :array_2

    .line 50
    .line 51
    .line 52
    new-array v5, v1, [B

    .line 53
    .line 54
    fill-array-data v5, :array_3

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    new-instance v3, Lb1/m;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->h()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-direct {v3, v4}, Lb1/m;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object v3, v0, Lh0/b;->b:Lb1/m;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, v0, Lh0/b;->b:Lb1/m;

    .line 80
    .line 81
    iget-object v2, v0, Lb1/m;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroid/content/Context;

    .line 84
    .line 85
    const/16 v3, 0x28

    .line 86
    .line 87
    new-array v3, v3, [B

    .line 88
    .line 89
    fill-array-data v3, :array_4

    .line 90
    .line 91
    .line 92
    new-array v1, v1, [B

    .line 93
    .line 94
    fill-array-data v1, :array_5

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    if-nez v1, :cond_1

    .line 109
    .line 110
    invoke-static {}, Lcom/example/navistart/MyA11yService;->f()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_1

    .line 115
    .line 116
    iget-object v1, v0, Lb1/m;->f:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Landroid/content/ContentResolver;

    .line 119
    .line 120
    iget-object v0, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v1, v0}, Lb1/m;->j(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw v0

    .line 130
    :cond_1
    :goto_2
    const/4 v0, 0x2

    .line 131
    sput v0, Lcom/example/navistart/MyCarReceiver;->g:I

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 135
    .line 136
    sput v0, Lcom/example/navistart/MyCarReceiver;->g:I

    .line 137
    .line 138
    :goto_3
    invoke-static {}, Lcom/example/navistart/MyA11yService;->f()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 145
    .line 146
    new-instance v1, La4/g;

    .line 147
    .line 148
    const/16 v2, 0xf

    .line 149
    .line 150
    invoke-direct {v1, v2, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const-wide/16 v2, 0x1f4

    .line 154
    .line 155
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 156
    .line 157
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 158
    .line 159
    .line 160
    :cond_3
    return-void

    .line 161
    :array_0
    .array-data 1
        -0xet
        0x65t
        0x44t
        -0x7t
        -0x3t
        -0x11t
        -0x7t
        0x63t
        -0x3ct
        0x62t
        0x56t
        -0x1et
        -0x15t
        -0x39t
        -0xat
        0x69t
        -0x2bt
        0x68t
        0x60t
        -0x1bt
        -0x18t
        -0x34t
        -0xat
        0x65t
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
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 1
        -0x5ft
        0x11t
        0x25t
        -0x75t
        -0x77t
        -0x52t
        -0x66t
        0x0t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_2
    .array-data 1
        -0x9t
        -0x3t
        -0x45t
        -0x57t
        0x4ct
        -0x37t
        -0x4ft
        -0x10t
        -0x8t
        -0xat
        -0x53t
        -0x62t
        0x4ct
        -0x37t
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
    :array_3
    .array-data 1
        -0x67t
        -0x68t
        -0x34t
        -0x7t
        0x29t
        -0x45t
        -0x24t
        -0x43t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_4
    .array-data 1
        -0x3dt
        0x12t
        -0x35t
        -0x1bt
        0x7dt
        0xbt
        -0x4et
        -0x7ft
        -0x2et
        0x19t
        -0x23t
        -0x6t
        0x7bt
        0x11t
        -0x5bt
        -0x3at
        -0x33t
        0x12t
        -0x7ft
        -0x40t
        0x40t
        0x2bt
        -0x7et
        -0x16t
        -0x3t
        0x2ft
        -0x16t
        -0x2ct
        0x47t
        0x30t
        -0x6dt
        -0x10t
        -0xft
        0x39t
        -0x5t
        -0x3dt
        0x5bt
        0x2ct
        -0x6ft
        -0x4t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
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
    .line 226
    .line 227
    .line 228
    .line 229
    :array_5
    .array-data 1
        -0x5et
        0x7ct
        -0x51t
        -0x69t
        0x12t
        0x62t
        -0x2at
        -0x51t
    .end array-data
.end method

.method public final i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/example/navistart/MyCarReceiver;->r(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Le0/x1;->n:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v2, Le0/v1;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-direct {v2, v0, v3}, Le0/v1;-><init>(Le0/x1;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    new-array v2, v1, [B

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    new-array v4, v3, [B

    .line 39
    .line 40
    fill-array-data v4, :array_1

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v0, v2, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lh0/b;->c()Lcom/example/navistart/cores/AreaDisplayProxy;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const/16 v6, 0x19

    .line 77
    .line 78
    new-array v6, v6, [B

    .line 79
    .line 80
    fill-array-data v6, :array_2

    .line 81
    .line 82
    .line 83
    new-array v7, v3, [B

    .line 84
    .line 85
    fill-array-data v7, :array_3

    .line 86
    .line 87
    .line 88
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {v0, v5}, Lcom/example/navistart/cores/AreaDisplayProxy;->StartProGu(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v5, 0x13

    .line 104
    .line 105
    new-array v5, v5, [B

    .line 106
    .line 107
    fill-array-data v5, :array_4

    .line 108
    .line 109
    .line 110
    new-array v6, v3, [B

    .line 111
    .line 112
    fill-array-data v6, :array_5

    .line 113
    .line 114
    .line 115
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v0, v5, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    iget-object v0, p0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 136
    .line 137
    new-instance v5, Landroid/content/Intent;

    .line 138
    .line 139
    iget-object v6, p0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 140
    .line 141
    const-class v7, Lcom/example/navistart/BlackActivity;

    .line 142
    .line 143
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    const/high16 v6, 0x10000000

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v0, v5, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    :cond_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/16 v5, 0x1a

    .line 160
    .line 161
    new-array v5, v5, [B

    .line 162
    .line 163
    fill-array-data v5, :array_6

    .line 164
    .line 165
    .line 166
    new-array v6, v3, [B

    .line 167
    .line 168
    fill-array-data v6, :array_7

    .line 169
    .line 170
    .line 171
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v0, v5, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    .line 181
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_2

    .line 190
    .line 191
    iget-object v0, p0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 192
    .line 193
    new-instance v5, Landroid/content/Intent;

    .line 194
    .line 195
    iget-object v6, p0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 196
    .line 197
    const-class v7, Lcom/example/navistart/home/WebLauncherActivity;

    .line 198
    .line 199
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .line 201
    .line 202
    const/high16 v6, 0x34000000

    .line 203
    .line 204
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {v0, v5, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    :cond_2
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-array v1, v1, [B

    .line 216
    .line 217
    fill-array-data v1, :array_8

    .line 218
    .line 219
    .line 220
    new-array v2, v3, [B

    .line 221
    .line 222
    fill-array-data v2, :array_9

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_3

    .line 234
    .line 235
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_3

    .line 244
    .line 245
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 246
    .line 247
    .line 248
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const/16 v1, 0x15

    .line 253
    .line 254
    new-array v1, v1, [B

    .line 255
    .line 256
    fill-array-data v1, :array_a

    .line 257
    .line 258
    .line 259
    new-array v2, v3, [B

    .line 260
    .line 261
    fill-array-data v2, :array_b

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Lj0/c;->a(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_3
    return-void

    .line 272
    nop

    .line 273
    :array_0
    .array-data 1
        0x2ct
        -0x5at
        0x15t
        -0x56t
        -0x1dt
        -0x18t
        -0x24t
        0x1bt
        0x0t
        -0x5ft
        0x38t
        -0x4at
        -0x38t
        -0x12t
        -0x25t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_1
    .array-data 1
        0x5ft
        -0x2ft
        0x4at
        -0x27t
        -0x69t
        -0x77t
        -0x52t
        0x6ft
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_2
    .array-data 1
        0x54t
        0x6dt
        0x2bt
        -0x69t
        -0x63t
        -0x63t
        -0x66t
        0x50t
        0x7bt
        0x58t
        0x9t
        -0x69t
        -0x71t
        -0x68t
        -0x79t
        0x51t
        0x4at
        0x4et
        0xft
        -0x57t
        -0x64t
        -0x67t
        -0x54t
        0x59t
        0x60t
    .end array-data

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
    nop

    .line 311
    :array_3
    .array-data 1
        0x15t
        0x3dt
        0x7bt
        -0x38t
        -0x12t
        -0x13t
        -0xdt
        0x3et
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_4
    .array-data 1
        0x19t
        0x31t
        -0x53t
        -0x80t
        -0x38t
        -0x5ct
        0x3ct
        -0x67t
        0x19t
        0x32t
        -0x6dt
        -0x6dt
        -0x37t
        -0x71t
        0x31t
        -0x56t
        0xbt
        0x25t
        -0x67t
    .end array-data

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
    :array_5
    .array-data 1
        0x6at
        0x46t
        -0xet
        -0x1ft
        -0x43t
        -0x30t
        0x53t
        -0x3at
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_6
    .array-data 1
        -0x1at
        0x35t
        -0x5at
        0x78t
        0x4bt
        -0x5t
        0x35t
        0x6ct
        -0x1at
        0x36t
        -0x68t
        0x6bt
        0x4at
        -0x30t
        0x2dt
        0x56t
        -0x9t
        0x1dt
        -0x6bt
        0x78t
        0x4bt
        -0x1ft
        0x39t
        0x5bt
        -0x10t
        0x30t
    .end array-data

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
    .line 357
    .line 358
    nop

    .line 359
    :array_7
    .array-data 1
        -0x6bt
        0x42t
        -0x7t
        0x19t
        0x3et
        -0x71t
        0x5at
        0x33t
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_8
    .array-data 1
        0x9t
        -0x73t
        0x17t
        0x5at
        0x1ft
        -0x7ft
        -0x56t
        -0x36t
        0xat
        -0x76t
        0x17t
        0x45t
        0x5t
        -0x63t
        -0x70t
    .end array-data

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
    .line 378
    .line 379
    :array_9
    .array-data 1
        0x7at
        -0x6t
        0x48t
        0x28t
        0x6at
        -0x11t
        -0xbt
        -0x55t
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_a
    .array-data 1
        -0x6dt
        -0x28t
        0x1at
        -0x48t
        0x1ft
        -0x78t
        0x32t
        -0x7bt
        -0x74t
        -0x3et
        0x6t
        -0x7et
        0x21t
        -0x75t
        0x27t
        -0x52t
        -0x6bt
        -0x3ct
        0x1at
        -0x80t
        0xdt
    .end array-data

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
    nop

    .line 403
    :array_b
    .array-data 1
        -0x1ft
        -0x53t
        0x74t
        -0x19t
        0x7et
        -0x8t
        0x42t
        -0x26t
    .end array-data
.end method

.method public final l()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/example/navistart/MyCarReceiver;->j:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->e()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x17

    .line 20
    .line 21
    new-array v3, v3, [B

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    new-array v4, v1, [B

    .line 27
    .line 28
    fill-array-data v4, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget v3, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v2, v3}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v4, v0

    .line 53
    const-wide/32 v6, 0xea60

    .line 54
    .line 55
    .line 56
    mul-long/2addr v4, v6

    .line 57
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/16 v2, 0x1c

    .line 62
    .line 63
    new-array v2, v2, [B

    .line 64
    .line 65
    fill-array-data v2, :array_2

    .line 66
    .line 67
    .line 68
    new-array v6, v1, [B

    .line 69
    .line 70
    fill-array-data v6, :array_3

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    invoke-virtual {v0, v2, v6, v7}, Lu0/a;->loadLong(Ljava/lang/String;J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/16 v2, 0x1d

    .line 88
    .line 89
    new-array v2, v2, [B

    .line 90
    .line 91
    fill-array-data v2, :array_4

    .line 92
    .line 93
    .line 94
    new-array v10, v1, [B

    .line 95
    .line 96
    fill-array-data v10, :array_5

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2, v6, v7}, Lu0/a;->loadLong(Ljava/lang/String;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    sub-long/2addr v8, v10

    .line 108
    cmp-long v0, v4, v6

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    cmp-long v0, v4, v8

    .line 113
    .line 114
    if-gez v0, :cond_0

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const/16 v2, 0x66

    .line 123
    .line 124
    new-array v2, v2, [B

    .line 125
    .line 126
    fill-array-data v2, :array_6

    .line 127
    .line 128
    .line 129
    new-array v4, v1, [B

    .line 130
    .line 131
    fill-array-data v4, :array_7

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    long-to-double v4, v8

    .line 142
    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    div-double/2addr v4, v6

    .line 148
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const/4 v2, 0x6

    .line 152
    new-array v2, v2, [B

    .line 153
    .line 154
    fill-array-data v2, :array_8

    .line 155
    .line 156
    .line 157
    new-array v4, v1, [B

    .line 158
    .line 159
    fill-array-data v4, :array_9

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_1
    :goto_0
    const/16 v0, 0x1e

    .line 179
    .line 180
    new-array v0, v0, [B

    .line 181
    .line 182
    fill-array-data v0, :array_a

    .line 183
    .line 184
    .line 185
    new-array v2, v1, [B

    .line 186
    .line 187
    fill-array-data v2, :array_b

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sget-object v2, Le0/b2;->c:Le0/b2;

    .line 195
    .line 196
    new-instance v4, Le0/a2;

    .line 197
    .line 198
    const/4 v5, 0x1

    .line 199
    invoke-direct {v4, v0, v5}, Le0/a2;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    new-instance v5, Le0/v0;

    .line 203
    .line 204
    const/16 v6, 0xc

    .line 205
    .line 206
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 210
    .line 211
    .line 212
    const/16 v0, 0x1f

    .line 213
    .line 214
    new-array v0, v0, [B

    .line 215
    .line 216
    fill-array-data v0, :array_c

    .line 217
    .line 218
    .line 219
    new-array v4, v1, [B

    .line 220
    .line 221
    fill-array-data v4, :array_d

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v4, Le0/a2;

    .line 229
    .line 230
    const/4 v5, 0x2

    .line 231
    invoke-direct {v4, v0, v5}, Le0/a2;-><init>(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    new-instance v5, Le0/v0;

    .line 235
    .line 236
    const/16 v6, 0xd

    .line 237
    .line 238
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 242
    .line 243
    .line 244
    const/16 v0, 0x17

    .line 245
    .line 246
    new-array v0, v0, [B

    .line 247
    .line 248
    fill-array-data v0, :array_e

    .line 249
    .line 250
    .line 251
    new-array v2, v1, [B

    .line 252
    .line 253
    fill-array-data v2, :array_f

    .line 254
    .line 255
    .line 256
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sget-object v2, Le0/b2;->b:Le0/b2;

    .line 261
    .line 262
    new-instance v4, Le0/a2;

    .line 263
    .line 264
    const/4 v5, 0x3

    .line 265
    invoke-direct {v4, v0, v5}, Le0/a2;-><init>(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    new-instance v5, Le0/v0;

    .line 269
    .line 270
    const/4 v6, 0x2

    .line 271
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 275
    .line 276
    .line 277
    const/16 v0, 0x18

    .line 278
    .line 279
    new-array v0, v0, [B

    .line 280
    .line 281
    fill-array-data v0, :array_10

    .line 282
    .line 283
    .line 284
    new-array v4, v1, [B

    .line 285
    .line 286
    fill-array-data v4, :array_11

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    new-instance v4, Le0/a2;

    .line 294
    .line 295
    invoke-direct {v4, v0, v3}, Le0/a2;-><init>(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    new-instance v5, Le0/v0;

    .line 299
    .line 300
    const/4 v6, 0x3

    .line 301
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 305
    .line 306
    .line 307
    const/16 v0, 0x17

    .line 308
    .line 309
    new-array v0, v0, [B

    .line 310
    .line 311
    fill-array-data v0, :array_12

    .line 312
    .line 313
    .line 314
    new-array v4, v1, [B

    .line 315
    .line 316
    fill-array-data v4, :array_13

    .line 317
    .line 318
    .line 319
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    new-instance v4, Le0/v0;

    .line 324
    .line 325
    const/4 v5, 0x4

    .line 326
    invoke-direct {v4, v5}, Le0/v0;-><init>(I)V

    .line 327
    .line 328
    .line 329
    new-instance v5, Le0/v0;

    .line 330
    .line 331
    const/4 v6, 0x5

    .line 332
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 336
    .line 337
    .line 338
    const/16 v0, 0x12

    .line 339
    .line 340
    new-array v0, v0, [B

    .line 341
    .line 342
    fill-array-data v0, :array_14

    .line 343
    .line 344
    .line 345
    new-array v4, v1, [B

    .line 346
    .line 347
    fill-array-data v4, :array_15

    .line 348
    .line 349
    .line 350
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    new-instance v4, Le0/v0;

    .line 355
    .line 356
    invoke-direct {v4, v1}, Le0/v0;-><init>(I)V

    .line 357
    .line 358
    .line 359
    new-instance v5, Le0/v0;

    .line 360
    .line 361
    const/16 v6, 0x9

    .line 362
    .line 363
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 367
    .line 368
    .line 369
    const/16 v0, 0x16

    .line 370
    .line 371
    new-array v0, v0, [B

    .line 372
    .line 373
    fill-array-data v0, :array_16

    .line 374
    .line 375
    .line 376
    new-array v4, v1, [B

    .line 377
    .line 378
    fill-array-data v4, :array_17

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    new-instance v4, Le0/v0;

    .line 386
    .line 387
    const/16 v5, 0xa

    .line 388
    .line 389
    invoke-direct {v4, v5}, Le0/v0;-><init>(I)V

    .line 390
    .line 391
    .line 392
    new-instance v5, Le0/v0;

    .line 393
    .line 394
    const/16 v6, 0xb

    .line 395
    .line 396
    invoke-direct {v5, v6}, Le0/v0;-><init>(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/example/navistart/MyCarReceiver;->s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 400
    .line 401
    .line 402
    :goto_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    const/16 v4, 0xf

    .line 412
    .line 413
    new-array v4, v4, [B

    .line 414
    .line 415
    fill-array-data v4, :array_18

    .line 416
    .line 417
    .line 418
    new-array v5, v1, [B

    .line 419
    .line 420
    fill-array-data v5, :array_19

    .line 421
    .line 422
    .line 423
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    sget v4, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 431
    .line 432
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v0, v2, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_2

    .line 444
    .line 445
    const/16 v0, 0xf

    .line 446
    .line 447
    new-array v0, v0, [B

    .line 448
    .line 449
    fill-array-data v0, :array_1a

    .line 450
    .line 451
    .line 452
    new-array v2, v1, [B

    .line 453
    .line 454
    fill-array-data v2, :array_1b

    .line 455
    .line 456
    .line 457
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/example/navistart/MyCarReceiver;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_2

    .line 470
    .line 471
    sget-boolean v0, Lcom/example/navistart/MyCarReceiver;->i:Z

    .line 472
    .line 473
    if-eqz v0, :cond_2

    .line 474
    .line 475
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 476
    .line 477
    .line 478
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 483
    .line 484
    invoke-interface {v0, v2}, Lcom/example/navistart/cores/CarCmdProxy;->sunupdown(Ljava/lang/Boolean;)V

    .line 485
    .line 486
    .line 487
    const/16 v0, 0xf

    .line 488
    .line 489
    new-array v0, v0, [B

    .line 490
    .line 491
    fill-array-data v0, :array_1c

    .line 492
    .line 493
    .line 494
    new-array v2, v1, [B

    .line 495
    .line 496
    fill-array-data v2, :array_1d

    .line 497
    .line 498
    .line 499
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 504
    .line 505
    invoke-static {v0, v2}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 506
    .line 507
    .line 508
    const/16 v0, 0x14

    .line 509
    .line 510
    new-array v0, v0, [B

    .line 511
    .line 512
    fill-array-data v0, :array_1e

    .line 513
    .line 514
    .line 515
    new-array v1, v1, [B

    .line 516
    .line 517
    fill-array-data v1, :array_1f

    .line 518
    .line 519
    .line 520
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 525
    .line 526
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 527
    .line 528
    .line 529
    :cond_2
    return-void

    .line 530
    :cond_3
    const/16 v0, 0x2f

    .line 531
    .line 532
    new-array v0, v0, [B

    .line 533
    .line 534
    fill-array-data v0, :array_20

    .line 535
    .line 536
    .line 537
    new-array v1, v1, [B

    .line 538
    .line 539
    fill-array-data v1, :array_21

    .line 540
    .line 541
    .line 542
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    nop

    .line 551
    :array_0
    .array-data 1
        0x6ct
        0x6at
        -0x75t
        0x6ft
        0x24t
        -0x61t
        -0x71t
        -0x2bt
        0x41t
        0x5ct
        -0x57t
        0x64t
        0x3ft
        -0x4ft
        -0x7bt
        -0x2et
        0x67t
        0x50t
        -0x5bt
        0x58t
        0x25t
        -0x45t
        -0x53t
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_1
    .array-data 1
        0x38t
        0x3t
        -0x1at
        0xat
        0x60t
        -0x2t
        -0x1dt
        -0x4ct
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_2
    .array-data 1
        -0x66t
        -0x67t
        -0x2ct
        -0x47t
        -0x14t
        -0x7bt
        0x0t
        -0x28t
        -0x68t
        -0x78t
        -0x3bt
        -0x4bt
        -0x13t
        -0x6ct
        0x10t
        -0x3bt
        -0x7ct
        -0x72t
        -0x37t
        -0x43t
        -0x1at
        -0x67t
        0x0t
        -0x31t
        -0x62t
        -0x6at
        -0x3ft
        -0x57t
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    :array_3
    .array-data 1
        -0x25t
        -0x26t
        -0x80t
        -0x10t
        -0x5dt
        -0x35t
        0x5ft
        -0x75t
    .end array-data

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_4
    .array-data 1
        0x5t
        0x56t
        0x15t
        -0x7t
        -0x15t
        -0x53t
        0x73t
        0x14t
        0x7t
        0x47t
        0x4t
        -0xbt
        -0x16t
        -0x44t
        0x63t
        0x1t
        0x2t
        0x4at
        0x15t
        -0x7t
        -0x17t
        -0x5at
        0x7et
        0x18t
        0x0t
        0x50t
        0xdt
        -0xft
        -0x3t
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    nop

    .line 621
    :array_5
    .array-data 1
        0x44t
        0x15t
        0x41t
        -0x50t
        -0x5ct
        -0x1dt
        0x2ct
        0x47t
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_6
    .array-data 1
        0x2ft
        -0x4ct
        0x23t
        -0x3t
        0x4dt
        0x77t
        0x5t
        0x31t
        0x4et
        0x11t
        -0x36t
        0x42t
        -0x49t
        0x39t
        -0xbt
        -0x5dt
        -0x41t
        0x41t
        -0x79t
        0x2ct
        -0x2dt
        -0x6ft
        -0xbt
        -0x59t
        -0x42t
        0x7ft
        0x77t
        0x42t
        -0x4at
        -0x37t
        -0x65t
        -0x33t
        -0x11t
        0x10t
        -0x2bt
        0x42t
        -0x4et
        -0x38t
        -0x59t
        -0x34t
        -0x30t
        0x10t
        -0x30t
        0x42t
        -0x41t
        -0x37t
        -0x65t
        0x3ct
        -0x42t
        0x73t
        -0x7at
        0x12t
        -0x2et
        -0x54t
        -0xbt
        -0x60t
        -0x42t
        0x74t
        -0x79t
        0x2ft
        -0x2et
        -0x5ft
        0x5t
        -0x33t
        -0x11t
        -0x1ft
        -0x79t
        0x2dt
        -0x2dt
        -0x67t
        -0xbt
        -0x57t
        -0x42t
        0x75t
        -0x7at
        0x19t
        -0x2et
        -0x53t
        -0xct
        -0x61t
        -0x41t
        0x48t
        -0x79t
        0x27t
        -0x2et
        -0x60t
        0x5t
        -0x34t
        -0x2ft
        0x11t
        -0x17t
        0x42t
        -0x49t
        -0x37t
        -0x6et
        -0x34t
        -0x26t
        0x11t
        -0x13t
        0x42t
        -0x46t
        0x39t
    .end array-data

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    nop

    .line 685
    :array_7
    .array-data 1
        0x6et
        -0x3ft
        0x57t
        -0x6et
        0x2t
        0x19t
        0x25t
        0x1ct
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_8
    .array-data 1
        -0x7et
        -0x59t
        -0x4ft
        0x79t
        -0x4at
        0x7at
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    nop

    .line 701
    :array_9
    .array-data 1
        0x52t
        0x1bt
        0x61t
        -0x3ft
        0x66t
        -0x39t
        0xct
        0x2t
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :array_a
    .array-data 1
        0x73t
        0x31t
        0x53t
        0x18t
        -0x40t
        -0x1bt
        -0x54t
        0x59t
        0x68t
        0x3ct
        0x5at
        0x1et
        -0x2dt
        -0x18t
        -0x60t
        0x58t
        0x7bt
        0x21t
        0x53t
        0xdt
        -0x3ct
        -0x7t
        -0x59t
        0x54t
        0x76t
        0x34t
        0x58t
        0x12t
        -0x32t
        -0x7t
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    nop

    .line 729
    :array_b
    .array-data 1
        0x3at
        0x75t
        0xct
        0x5bt
        -0x7ft
        -0x49t
        -0xdt
        0x1dt
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_c
    .array-data 1
        -0x63t
        0x6et
        -0x4at
        0x2dt
        0x59t
        0x0t
        0x3et
        0x3ft
        -0x65t
        0x7at
        -0x60t
        0x22t
        0x57t
        0x6t
        0x3et
        0x2ft
        -0x6ft
        0x6bt
        -0x43t
        0x31t
        0x4et
        0x17t
        0x2ft
        0x28t
        -0x63t
        0x66t
        -0x58t
        0x3at
        0x51t
        0x1dt
        0x2ft
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    :array_d
    .array-data 1
        -0x2ct
        0x2at
        -0x17t
        0x6et
        0x18t
        0x52t
        0x61t
        0x7ct
    .end array-data

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    :array_e
    .array-data 1
        0x34t
        -0xet
        0x9t
        -0x2ct
        -0x37t
        -0x35t
        0x4bt
        0x69t
        0x2ft
        -0x1t
        0x0t
        -0x2et
        -0x26t
        -0x3at
        0x47t
        0x68t
        0x3ct
        -0x1et
        0x9t
        -0x21t
        -0x33t
        -0x28t
        0x40t
    .end array-data

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_f
    .array-data 1
        0x7dt
        -0x4at
        0x56t
        -0x69t
        -0x78t
        -0x67t
        0x14t
        0x2dt
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_10
    .array-data 1
        0x64t
        0x57t
        0x67t
        -0x24t
        -0x3ft
        -0x63t
        -0x47t
        0x75t
        0x62t
        0x43t
        0x71t
        -0x2dt
        -0x31t
        -0x65t
        -0x47t
        0x65t
        0x68t
        0x52t
        0x6ct
        -0x40t
        -0x38t
        -0x76t
        -0x59t
        0x62t
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_11
    .array-data 1
        0x2dt
        0x13t
        0x38t
        -0x61t
        -0x80t
        -0x31t
        -0x1at
        0x36t
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    :array_12
    .array-data 1
        0x7ct
        -0x4t
        0x6t
        0x6dt
        0x61t
        0x74t
        -0x3et
        0x6ft
        0x61t
        -0x3t
        0x1ct
        0x7ct
        0x7ft
        0x71t
        -0x2bt
        0x79t
        0x70t
        -0xct
        0x6t
        0x66t
        0x65t
        0x67t
        -0x37t
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_13
    .array-data 1
        0x35t
        -0x48t
        0x59t
        0x2et
        0x20t
        0x26t
        -0x63t
        0x3ct
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_14
    .array-data 1
        0x67t
        0x1ft
        0x2et
        -0x6dt
        0x5t
        0x9t
        0x54t
        -0x2dt
        0x6ft
        0x9t
        0x2et
        -0x6at
        0x3t
        0x10t
        0x54t
        -0x27t
        0x7dt
        0xft
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    nop

    .line 851
    :array_15
    .array-data 1
        0x2et
        0x5bt
        0x71t
        -0x2et
        0x46t
        0x56t
        0x6t
        -0x6at
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_16
    .array-data 1
        -0x6dt
        -0x3ct
        -0x7bt
        -0x6dt
        -0x5ct
        -0x4t
        -0x66t
        0x7dt
        -0x6bt
        -0x32t
        -0x72t
        -0x73t
        -0x60t
        -0x11t
        -0x63t
        0x7ct
        -0x77t
        -0x21t
        -0x6et
        -0x69t
        -0x5at
        -0x9t
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    nop

    .line 875
    :array_17
    .array-data 1
        -0x26t
        -0x80t
        -0x26t
        -0x2et
        -0x19t
        -0x5dt
        -0x24t
        0x2ft
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_18
    .array-data 1
        0x18t
        0x34t
        -0xbt
        -0x7dt
        -0x51t
        0x4dt
        -0x54t
        -0x71t
        0x4t
        0x3et
        -0x7t
        -0x78t
        -0x51t
        0x5bt
        -0x4at
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_19
    .array-data 1
        0x51t
        0x70t
        -0x56t
        -0x40t
        -0x12t
        0x1ft
        -0xdt
        -0x24t
    .end array-data

    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :array_1a
    .array-data 1
        -0x3ft
        0x65t
        -0x19t
        -0x40t
        0x25t
        0x6ft
        -0x73t
        -0x1dt
        -0x23t
        0x6ft
        -0x15t
        -0x35t
        0x25t
        0x79t
        -0x69t
    .end array-data

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_1b
    .array-data 1
        -0x78t
        0x21t
        -0x48t
        -0x7dt
        0x64t
        0x3dt
        -0x2et
        -0x50t
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    :array_1c
    .array-data 1
        -0x7ft
        0x2et
        0x10t
        -0x3ct
        0x9t
        0x0t
        -0x7dt
        0xet
        -0x63t
        0x24t
        0x1ct
        -0x31t
        0x9t
        0x16t
        -0x67t
    .end array-data

    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_1d
    .array-data 1
        -0x38t
        0x6at
        0x4ft
        -0x79t
        0x48t
        0x52t
        -0x24t
        0x5dt
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    :array_1e
    .array-data 1
        0x59t
        0x32t
        -0x1at
        -0x15t
        -0x2dt
        0x55t
        0x59t
        -0x7ct
        0x45t
        0x38t
        -0x16t
        -0x20t
        -0x2dt
        0x43t
        0x43t
        -0x78t
        0x5ft
        0x26t
        -0x4t
        -0x1at
    .end array-data

    :array_1f
    .array-data 1
        0x10t
        0x76t
        -0x47t
        -0x58t
        -0x6et
        0x7t
        0x6t
        -0x29t
    .end array-data

    :array_20
    .array-data 1
        0xdt
        -0x5bt
        0xct
        -0x23t
        0x5t
        -0x36t
        -0x35t
        -0x17t
        0x6ct
        0x0t
        -0x14t
        0x62t
        -0x8t
        0x74t
        0x53t
        0x14t
        -0x1t
        0x0t
        -0x38t
        0x63t
        -0x38t
        0x74t
        0x5et
        0x14t
        -0x9t
        0x1t
        -0xct
        -0x6et
        -0x66t
        0x19t
        0x3bt
        0x71t
        0x6ct
        0x0t
        -0x31t
        0x62t
        -0x6t
        0x74t
        0x54t
        0x15t
        -0x31t
        0x1t
        -0xft
        0x62t
        -0x1t
        0x74t
        0x56t
    .end array-data

    :array_21
    .array-data 1
        0x4ct
        -0x30t
        0x78t
        -0x4et
        0x4at
        -0x5ct
        -0x15t
        -0x3ct
    .end array-data
.end method

.method public final m()Li0/a;
    .locals 10

    .line 1
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->h:Le0/m2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Le0/m2;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Le0/m2;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/example/navistart/MyCarReceiver;->h:Le0/m2;

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Le0/m2;->a:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    sget-object v3, Le0/m2;->b:Ljava/lang/String;

    .line 23
    .line 24
    const-wide/16 v4, -0x1

    .line 25
    .line 26
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    cmp-long v4, v4, v1

    .line 31
    .line 32
    if-lez v4, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->j()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lh0/b;->l()Li0/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Li0/b;->c()Li0/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Li0/a;->c:Li0/a;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/example/navistart/MyCarReceiver;->i()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v3, 0x4

    .line 76
    new-array v3, v3, [B

    .line 77
    .line 78
    fill-array-data v3, :array_0

    .line 79
    .line 80
    .line 81
    new-array v4, v2, [B

    .line 82
    .line 83
    fill-array-data v4, :array_1

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-virtual {v0, v3, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    .line 97
    const-wide/16 v5, 0x2710

    .line 98
    .line 99
    sget-object v7, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    new-instance v0, Le0/v0;

    .line 104
    .line 105
    const/4 v8, 0x6

    .line 106
    invoke-direct {v0, v8, p0}, Le0/v0;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v7, v0, v5, v6, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/16 v8, 0x10

    .line 117
    .line 118
    new-array v8, v8, [B

    .line 119
    .line 120
    fill-array-data v8, :array_2

    .line 121
    .line 122
    .line 123
    new-array v9, v2, [B

    .line 124
    .line 125
    fill-array-data v9, :array_3

    .line 126
    .line 127
    .line 128
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v0, v8, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    new-instance v0, Le0/v0;

    .line 139
    .line 140
    const/4 v4, 0x7

    .line 141
    invoke-direct {v0, v4, p0}, Le0/v0;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v7, v0, v5, v6, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 145
    .line 146
    .line 147
    :cond_2
    const/16 v0, 0xd

    .line 148
    .line 149
    new-array v0, v0, [B

    .line 150
    .line 151
    fill-array-data v0, :array_4

    .line 152
    .line 153
    .line 154
    new-array v2, v2, [B

    .line 155
    .line 156
    fill-array-data v2, :array_5

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    .line 176
    .line 177
    :goto_0
    const/4 v0, 0x0

    .line 178
    return-object v0

    .line 179
    :array_0
    .array-data 1
        0x74t
        0x7ct
        -0x2ft
        -0x3at
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_1
    .array-data 1
        0x16t
        0x13t
        -0x42t
        -0x4et
        -0x54t
        0x1et
        -0x25t
        0x36t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_2
    .array-data 1
        0x22t
        -0x2dt
        0x7t
        -0x5dt
        -0x34t
        -0x1bt
        0x79t
        0x2t
        0x3ct
        -0xct
        0x8t
        -0x4dt
        -0x33t
        -0x9t
        0x7ft
        0x19t
    .end array-data

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
        0x51t
        -0x5ct
        0x58t
        -0x20t
        -0x47t
        -0x6at
        0xdt
        0x6dt
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
        0x71t
        0x49t
        0x3ct
        -0x5at
        0x75t
        0x38t
        0xft
        0x26t
        0x70t
        0x53t
        0x2ct
        -0x44t
        0x74t
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
    nop

    .line 225
    :array_5
    .array-data 1
        0x23t
        0xct
        0x7et
        -0x17t
        0x3at
        0x6ct
        0x50t
        0x69t
    .end array-data
.end method

.method public native m3643p(Ljava/lang/String;Z)Z
.end method

.method public final o()V
    .locals 5

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->l()Li0/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    sget-object v2, Li0/a;->e:Li0/a;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Li0/b;->a(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x18

    .line 23
    .line 24
    new-array v1, v0, [B

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    new-array v3, v2, [B

    .line 32
    .line 33
    fill-array-data v3, :array_1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-array v3, v0, [B

    .line 55
    .line 56
    fill-array-data v3, :array_2

    .line 57
    .line 58
    .line 59
    new-array v4, v2, [B

    .line 60
    .line 61
    fill-array-data v4, :array_3

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-virtual {v1, v3, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Lcom/example/navistart/cores/CarCmdProxy;->offSpeedLimitAlarm()V

    .line 83
    .line 84
    .line 85
    new-array v0, v0, [B

    .line 86
    .line 87
    fill-array-data v0, :array_4

    .line 88
    .line 89
    .line 90
    new-array v1, v2, [B

    .line 91
    .line 92
    fill-array-data v1, :array_5

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 102
    .line 103
    .line 104
    const/16 v0, 0x15

    .line 105
    .line 106
    new-array v0, v0, [B

    .line 107
    .line 108
    fill-array-data v0, :array_6

    .line 109
    .line 110
    .line 111
    new-array v1, v2, [B

    .line 112
    .line 113
    fill-array-data v1, :array_7

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 121
    .line 122
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 1
        -0x14t
        0x12t
        0xet
        0x75t
        0x6at
        -0x5et
        0x5et
        -0x4t
        -0x40t
        0x9t
        0x38t
        0x6bt
        0x73t
        -0x4dt
        0x64t
        -0x7t
        -0xdt
        0x4t
        0x23t
        0x6bt
        0x45t
        -0x58t
        0x5dt
        -0x2t
    .end array-data

    .line 128
    .line 129
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
    :array_1
    .array-data 1
        -0x61t
        0x65t
        0x51t
        0x6t
        0x1at
        -0x39t
        0x3bt
        -0x68t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 1
        -0x30t
        -0x59t
        -0x3bt
        -0x5ft
        0x12t
        0x55t
        -0x2bt
        0x25t
        -0x4t
        -0x44t
        -0xdt
        -0x41t
        0xbt
        0x44t
        -0x11t
        0x20t
        -0x31t
        -0x4ft
        -0x18t
        -0x41t
        0x3dt
        0x5ft
        -0x2at
        0x27t
    .end array-data

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
    :array_3
    .array-data 1
        -0x5dt
        -0x30t
        -0x66t
        -0x2et
        0x62t
        0x30t
        -0x50t
        0x41t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_4
    .array-data 1
        0x21t
        0x2ct
        0x5at
        -0x2bt
        -0x19t
        -0x3t
        -0x49t
        0x6at
        0xdt
        0x37t
        0x6ct
        -0x35t
        -0x2t
        -0x14t
        -0x73t
        0x6ft
        0x3et
        0x3at
        0x77t
        -0x35t
        -0x38t
        -0x9t
        -0x4ct
        0x68t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
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
    :array_5
    .array-data 1
        0x52t
        0x5bt
        0x5t
        -0x5at
        -0x69t
        -0x68t
        -0x2et
        0xet
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_6
    .array-data 1
        -0x5ft
        0x33t
        0x47t
        -0x1et
        0x2ft
        0x54t
        0x38t
        -0x39t
        -0x41t
        0x2at
        0x56t
        -0x28t
        0x2at
        0x67t
        0x35t
        -0x24t
        -0x41t
        0x1ct
        0x4dt
        -0x1ft
        0x2dt
    .end array-data

    .line 200
    .line 201
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
    .line 212
    .line 213
    .line 214
    nop

    .line 215
    :array_7
    .array-data 1
        -0x2et
        0x43t
        0x22t
        -0x79t
        0x4bt
        0xbt
        0x54t
        -0x52t
    .end array-data
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v5, Landroid/content/Intent;

    .line 8
    .line 9
    move-object/from16 v0, p2

    .line 10
    .line 11
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x2d

    .line 23
    .line 24
    new-array v1, v1, [B

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    new-array v6, v0, [B

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-static {v3, v1}, Lcom/example/navistart/MyCarReceiver;->r(Landroid/content/Context;Z)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v1}, Lcom/example/navistart/MyCarReceiver;->q(Landroid/content/Context;Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v6, 0x0

    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/16 v2, 0x1f

    .line 69
    .line 70
    new-array v2, v2, [B

    .line 71
    .line 72
    fill-array-data v2, :array_2

    .line 73
    .line 74
    .line 75
    new-array v3, v0, [B

    .line 76
    .line 77
    fill-array-data v3, :array_3

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    sget-object v2, Lcom/example/navistart/MyCarReceiver;->d:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v2

    .line 94
    :try_start_0
    sget-object v3, Lcom/example/navistart/MyCarReceiver;->e:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const/16 v7, 0x14

    .line 101
    .line 102
    if-lt v4, v7, :cond_2

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    :goto_0
    new-instance v4, Landroid/content/Intent;

    .line 111
    .line 112
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    new-array v2, v2, [B

    .line 122
    .line 123
    fill-array-data v2, :array_4

    .line 124
    .line 125
    .line 126
    new-array v0, v0, [B

    .line 127
    .line 128
    fill-array-data v0, :array_5

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 140
    .line 141
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw v0

    .line 147
    :cond_3
    :goto_2
    return-void

    .line 148
    :cond_4
    sget-object v1, Lcom/example/navistart/MyCarReceiver;->d:Ljava/lang/Object;

    .line 149
    .line 150
    monitor-enter v1

    .line 151
    :try_start_2
    sget-object v7, Lcom/example/navistart/MyCarReceiver;->e:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_6

    .line 158
    .line 159
    monitor-exit v1

    .line 160
    :cond_5
    move/from16 p2, v6

    .line 161
    .line 162
    move-object/from16 v6, p0

    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :catchall_1
    move-exception v0

    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 175
    .line 176
    .line 177
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const/16 v7, 0x13

    .line 184
    .line 185
    new-array v7, v7, [B

    .line 186
    .line 187
    fill-array-data v7, :array_6

    .line 188
    .line 189
    .line 190
    new-array v9, v0, [B

    .line 191
    .line 192
    fill-array-data v9, :array_7

    .line 193
    .line 194
    .line 195
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    sget-object v7, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 214
    .line 215
    invoke-static {v1, v7}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    move v7, v6

    .line 223
    move v9, v7

    .line 224
    :goto_3
    if-ge v9, v1, :cond_5

    .line 225
    .line 226
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    add-int/lit8 v9, v9, 0x1

    .line 231
    .line 232
    check-cast v10, Landroid/content/Intent;

    .line 233
    .line 234
    const/16 v11, 0x1f

    .line 235
    .line 236
    new-array v11, v11, [B

    .line 237
    .line 238
    fill-array-data v11, :array_8

    .line 239
    .line 240
    .line 241
    new-array v12, v0, [B

    .line 242
    .line 243
    fill-array-data v12, :array_9

    .line 244
    .line 245
    .line 246
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    if-nez v11, :cond_7

    .line 259
    .line 260
    const-wide/16 v11, 0xfa

    .line 261
    .line 262
    int-to-long v13, v7

    .line 263
    mul-long/2addr v13, v11

    .line 264
    sget-object v11, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 265
    .line 266
    new-instance v12, Lb1/n;

    .line 267
    .line 268
    const/4 v15, 0x3

    .line 269
    move/from16 p2, v6

    .line 270
    .line 271
    move-object/from16 v6, p0

    .line 272
    .line 273
    invoke-direct {v12, v6, v2, v10, v15}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 277
    .line 278
    invoke-interface {v11, v12, v13, v14, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 279
    .line 280
    .line 281
    add-int/lit8 v7, v7, 0x1

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_7
    move/from16 p2, v6

    .line 285
    .line 286
    move-object/from16 v6, p0

    .line 287
    .line 288
    :goto_4
    move/from16 v6, p2

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :goto_5
    const/16 v1, 0x20

    .line 292
    .line 293
    new-array v1, v1, [B

    .line 294
    .line 295
    fill-array-data v1, :array_a

    .line 296
    .line 297
    .line 298
    new-array v7, v0, [B

    .line 299
    .line 300
    fill-array-data v7, :array_b

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_9

    .line 312
    .line 313
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_9

    .line 322
    .line 323
    const/16 v1, 0xd

    .line 324
    .line 325
    new-array v1, v1, [B

    .line 326
    .line 327
    fill-array-data v1, :array_c

    .line 328
    .line 329
    .line 330
    new-array v7, v0, [B

    .line 331
    .line 332
    fill-array-data v7, :array_d

    .line 333
    .line 334
    .line 335
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const/16 v7, 0x1b

    .line 340
    .line 341
    new-array v7, v7, [B

    .line 342
    .line 343
    fill-array-data v7, :array_e

    .line 344
    .line 345
    .line 346
    new-array v8, v0, [B

    .line 347
    .line 348
    fill-array-data v8, :array_f

    .line 349
    .line 350
    .line 351
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v7

    .line 362
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const/16 v9, 0x1c

    .line 367
    .line 368
    new-array v9, v9, [B

    .line 369
    .line 370
    fill-array-data v9, :array_10

    .line 371
    .line 372
    .line 373
    new-array v10, v0, [B

    .line 374
    .line 375
    fill-array-data v10, :array_11

    .line 376
    .line 377
    .line 378
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-virtual {v1, v9, v7, v8}, Lu0/a;->loadLong(Ljava/lang/String;J)J

    .line 383
    .line 384
    .line 385
    move-result-wide v9

    .line 386
    sub-long v9, v7, v9

    .line 387
    .line 388
    const-wide/16 v11, 0x2710

    .line 389
    .line 390
    cmp-long v1, v9, v11

    .line 391
    .line 392
    if-lez v1, :cond_8

    .line 393
    .line 394
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    const/16 v9, 0x1d

    .line 399
    .line 400
    new-array v9, v9, [B

    .line 401
    .line 402
    fill-array-data v9, :array_12

    .line 403
    .line 404
    .line 405
    new-array v10, v0, [B

    .line 406
    .line 407
    fill-array-data v10, :array_13

    .line 408
    .line 409
    .line 410
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    invoke-virtual {v1, v9, v7, v8}, Lu0/a;->saveLong(Ljava/lang/String;J)V

    .line 415
    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_8
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    const/16 v7, 0x1c

    .line 423
    .line 424
    new-array v7, v7, [B

    .line 425
    .line 426
    fill-array-data v7, :array_14

    .line 427
    .line 428
    .line 429
    new-array v8, v0, [B

    .line 430
    .line 431
    fill-array-data v8, :array_15

    .line 432
    .line 433
    .line 434
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    sget-wide v8, Lcom/example/navistart/MyCarReceiver;->f:J

    .line 439
    .line 440
    invoke-virtual {v1, v7, v8, v9}, Lu0/a;->saveLong(Ljava/lang/String;J)V

    .line 441
    .line 442
    .line 443
    :goto_6
    const/16 v1, 0x1b

    .line 444
    .line 445
    new-array v1, v1, [B

    .line 446
    .line 447
    fill-array-data v1, :array_16

    .line 448
    .line 449
    .line 450
    new-array v0, v0, [B

    .line 451
    .line 452
    fill-array-data v0, :array_17

    .line 453
    .line 454
    .line 455
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    sput-boolean p2, Lcom/example/navistart/MyCarReceiver;->l:Z

    .line 463
    .line 464
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->j()V

    .line 465
    .line 466
    .line 467
    sput-boolean p2, Lcom/example/navistart/MyCarReceiver;->j:Z

    .line 468
    .line 469
    move/from16 v0, p2

    .line 470
    .line 471
    invoke-static {v3, v0}, Lcom/example/navistart/MyCarReceiver;->r(Landroid/content/Context;Z)V

    .line 472
    .line 473
    .line 474
    invoke-static {v3, v0}, Lcom/example/navistart/MyCarReceiver;->q(Landroid/content/Context;Z)V

    .line 475
    .line 476
    .line 477
    :cond_9
    sget-object v7, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 478
    .line 479
    new-instance v0, Le0/z1;

    .line 480
    .line 481
    move-object v1, v6

    .line 482
    invoke-direct/range {v0 .. v5}, Le0/z1;-><init>(Lcom/example/navistart/MyCarReceiver;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 483
    .line 484
    .line 485
    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 486
    .line 487
    .line 488
    return-void

    .line 489
    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 490
    throw v0

    .line 491
    :array_0
    .array-data 1
        -0xct
        -0x23t
        0x8t
        -0x62t
        0x8t
        0x3t
        -0x8t
        -0x10t
        -0x9t
        -0x21t
        0x19t
        -0x77t
        0x13t
        0x5t
        -0xdt
        -0x56t
        -0x3t
        -0x63t
        0x8t
        -0x77t
        0x11t
        0x3t
        -0x1t
        -0x45t
        -0x45t
        -0x2et
        0xft
        -0x68t
        0xet
        0x5t
        -0xet
        -0x10t
        -0x2ct
        -0x10t
        0x20t
        -0x4dt
        0x24t
        0x25t
        -0x2et
        -0x70t
        -0x30t
        -0x10t
        0x38t
        -0x57t
        0x23t
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
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
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    nop

    .line 519
    :array_1
    .array-data 1
        -0x6bt
        -0x4dt
        0x6ct
        -0x14t
        0x67t
        0x6at
        -0x64t
        -0x22t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_2
    .array-data 1
        0x3et
        0x62t
        0x8t
        0x52t
        0x9t
        0x46t
        -0x21t
        0x70t
        0x36t
        0x62t
        0x18t
        0x45t
        0x8t
        0x5bt
        -0x6bt
        0x3ft
        0x3ct
        0x78t
        0x5t
        0x4ft
        0x8t
        0x1t
        -0x11t
        0x17t
        0x12t
        0x49t
        0x33t
        0x74t
        0x2ft
        0x6ct
        -0x10t
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_3
    .array-data 1
        0x5ft
        0xct
        0x6ct
        0x20t
        0x66t
        0x2ft
        -0x45t
        0x5et
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_4
    .array-data 1
        -0x66t
        0x65t
        0x1at
        0x38t
        0x54t
        -0x65t
        0xct
        0x58t
        -0x5ct
        0x74t
        0x11t
        0x32t
        0x49t
        -0x5at
        0xat
        0x67t
        -0x51t
        0x20t
        0x59t
        0x7ct
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_5
    .array-data 1
        -0x36t
        0x0t
        0x74t
        0x5ct
        0x3dt
        -0xbt
        0x6bt
        0x11t
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_6
    .array-data 1
        0x20t
        0x37t
        -0x5et
        -0x8t
        -0x75t
        0x2t
        -0x1dt
        0x2at
        0x1et
        0x26t
        -0x57t
        -0xet
        -0x6at
        0x3et
        -0xft
        0xdt
        0x50t
        0x7ft
        -0x14t
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_7
    .array-data 1
        0x70t
        0x52t
        -0x34t
        -0x64t
        -0x1et
        0x6ct
        -0x7ct
        0x63t
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_8
    .array-data 1
        -0xft
        -0x43t
        0x5t
        0x64t
        -0x2ct
        -0x10t
        -0x28t
        0x52t
        -0x7t
        -0x43t
        0x15t
        0x73t
        -0x2bt
        -0x13t
        -0x6et
        0x1dt
        -0xdt
        -0x59t
        0x8t
        0x79t
        -0x2bt
        -0x49t
        -0x18t
        0x35t
        -0x23t
        -0x6at
        0x3et
        0x42t
        -0xet
        -0x26t
        -0x9t
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_9
    .array-data 1
        -0x70t
        -0x2dt
        0x61t
        0x16t
        -0x45t
        -0x67t
        -0x44t
        0x7ct
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_a
    .array-data 1
        0x25t
        -0x34t
        0x48t
        0xat
        -0x3bt
        0x6at
        0x7at
        -0x39t
        0x2dt
        -0x34t
        0x58t
        0x1dt
        -0x3ct
        0x77t
        0x30t
        -0x78t
        0x27t
        -0x2at
        0x45t
        0x17t
        -0x3ct
        0x2dt
        0x4dt
        -0x56t
        0x16t
        -0x19t
        0x69t
        0x36t
        -0xbt
        0x4ct
        0x58t
        -0x51t
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_b
    .array-data 1
        0x44t
        -0x5et
        0x2ct
        0x78t
        -0x56t
        0x3t
        0x1et
        -0x17t
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_c
    .array-data 1
        -0x13t
        0x54t
        0x40t
        0x20t
        -0x71t
        -0x65t
        -0x43t
        0x77t
        -0x3bt
        0x44t
        0x75t
        0x24t
        -0x71t
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    nop

    .line 667
    :array_d
    .array-data 1
        -0x60t
        0x2dt
        0x3t
        0x41t
        -0x3t
        -0x37t
        -0x28t
        0x14t
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_e
    .array-data 1
        -0x6dt
        -0x47t
        -0x25t
        -0x68t
        -0x65t
        0x5et
        0x70t
        0x66t
        -0x67t
        -0x78t
        -0x38t
        -0x42t
        -0x54t
        0x72t
        0x56t
        0x5et
        -0x5dt
        -0x7ct
        -0x36t
        -0x51t
        -0x43t
        0x7et
        0x57t
        0x4ft
        -0x4dt
        -0x6ft
        -0x31t
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_f
    .array-data 1
        -0x4t
        -0x29t
        -0x77t
        -0x3t
        -0x8t
        0x3bt
        0x19t
        0x10t
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :array_10
    .array-data 1
        0x2dt
        0x2bt
        0x7ft
        -0x3at
        0x3ct
        -0x3t
        -0x9t
        -0x49t
        0x2ft
        0x3at
        0x6et
        -0x36t
        0x3dt
        -0x14t
        -0x19t
        -0x56t
        0x33t
        0x3ct
        0x62t
        -0x3et
        0x36t
        -0x1ft
        -0x9t
        -0x60t
        0x29t
        0x24t
        0x6at
        -0x2at
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_11
    .array-data 1
        0x6ct
        0x68t
        0x2bt
        -0x71t
        0x73t
        -0x4dt
        -0x58t
        -0x1ct
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :array_12
    .array-data 1
        -0x6et
        0x13t
        0x2at
        -0x20t
        0x47t
        0x10t
        -0x19t
        -0x6at
        -0x70t
        0x2t
        0x3bt
        -0x14t
        0x46t
        0x1t
        -0x9t
        -0x7dt
        -0x6bt
        0xft
        0x2at
        -0x20t
        0x45t
        0x1bt
        -0x16t
        -0x66t
        -0x69t
        0x15t
        0x32t
        -0x18t
        0x51t
    .end array-data

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    nop

    .line 747
    :array_13
    .array-data 1
        -0x2dt
        0x50t
        0x7et
        -0x57t
        0x8t
        0x5et
        -0x48t
        -0x3bt
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_14
    .array-data 1
        0x2bt
        0x1dt
        -0x30t
        0x79t
        -0x4bt
        0x26t
        -0x59t
        -0xct
        0x29t
        0xct
        -0x3ft
        0x75t
        -0x4ct
        0x37t
        -0x49t
        -0x17t
        0x35t
        0xat
        -0x33t
        0x7dt
        -0x41t
        0x3at
        -0x59t
        -0x1dt
        0x2ft
        0x12t
        -0x3bt
        0x69t
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    :array_15
    .array-data 1
        0x6at
        0x5et
        -0x7ct
        0x30t
        -0x6t
        0x68t
        -0x8t
        -0x59t
    .end array-data

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_16
    .array-data 1
        -0x46t
        0x7dt
        0x75t
        -0x16t
        -0x6ft
        0x5at
        -0x66t
        -0x19t
        -0x50t
        0x4ct
        0x66t
        -0x34t
        -0x5at
        0x76t
        -0x44t
        -0x21t
        -0x76t
        0x40t
        0x64t
        -0x23t
        -0x49t
        0x7at
        -0x43t
        -0x32t
        -0x66t
        0x55t
        0x61t
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    :array_17
    .array-data 1
        -0x2bt
        0x13t
        0x27t
        -0x71t
        -0xet
        0x3ft
        -0xdt
        -0x6ft
    .end array-data
.end method

.method public final p()V
    .locals 5

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0x1c

    .line 35
    .line 36
    new-array v1, v1, [B

    .line 37
    .line 38
    fill-array-data v1, :array_2

    .line 39
    .line 40
    .line 41
    new-array v3, v2, [B

    .line 42
    .line 43
    fill-array-data v3, :array_3

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v0, v1, v3, v4}, Lu0/a;->saveLong(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lh0/b;->l()Li0/b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Li0/b;->c()Li0/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Li0/a;->d:Li0/a;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/example/navistart/MyCarReceiver;->i()V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/16 v1, 0x11

    .line 84
    .line 85
    new-array v1, v1, [B

    .line 86
    .line 87
    fill-array-data v1, :array_4

    .line 88
    .line 89
    .line 90
    new-array v3, v2, [B

    .line 91
    .line 92
    fill-array-data v3, :array_5

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Lcom/example/navistart/cores/CarCmdProxy;->offStartStop()V

    .line 114
    .line 115
    .line 116
    const/16 v0, 0xe

    .line 117
    .line 118
    new-array v0, v0, [B

    .line 119
    .line 120
    fill-array-data v0, :array_6

    .line 121
    .line 122
    .line 123
    new-array v1, v2, [B

    .line 124
    .line 125
    fill-array-data v1, :array_7

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 133
    .line 134
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void

    .line 138
    nop

    .line 139
    :array_0
    .array-data 1
        0x2et
        0x42t
        -0x4at
        -0x54t
        -0x27t
        -0x3ct
        -0x8t
        0x23t
        0x28t
        0x48t
        -0x78t
        -0x47t
        -0xdt
        -0x3ct
        -0x8t
        0x23t
        0x21t
        0x58t
        -0x63t
        -0x5et
        -0xdt
        -0x3dt
        -0x1dt
        0x1dt
        0x32t
        0x59t
        -0x4at
        -0x58t
        -0x3et
        -0x29t
        -0x2t
        0x12t
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
    nop

    .line 161
    :array_1
    .array-data 1
        0x40t
        0x2dt
        -0x17t
        -0x33t
        -0x54t
        -0x50t
        -0x69t
        0x7ct
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 1
        -0x51t
        0x24t
        0x58t
        0x46t
        0x25t
        0x5dt
        0x16t
        0x2ct
        -0x53t
        0x35t
        0x49t
        0x4at
        0x24t
        0x4ct
        0x6t
        0x31t
        -0x4ft
        0x33t
        0x45t
        0x42t
        0x2ft
        0x41t
        0x16t
        0x3bt
        -0x55t
        0x2bt
        0x4dt
        0x56t
    .end array-data

    .line 170
    .line 171
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
    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 1
        -0x12t
        0x67t
        0xct
        0xft
        0x6at
        0x13t
        0x49t
        0x7ft
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_4
    .array-data 1
        0x3t
        -0x61t
        0x4ft
        -0x5ct
        -0x3bt
        -0x6et
        -0x71t
        0x20t
        0x2ft
        -0x65t
        0x64t
        -0x48t
        -0x3ft
        -0x54t
        -0x6et
        0x32t
        0x16t
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
    .line 208
    nop

    .line 209
    :array_5
    .array-data 1
        0x70t
        -0x18t
        0x10t
        -0x29t
        -0x4ft
        -0xdt
        -0x3t
        0x54t
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_6
    .array-data 1
        0x4ft
        -0x35t
        -0x2et
        0x57t
        0x41t
        -0x30t
        0x17t
        -0x18t
        0x53t
        -0x31t
        -0x34t
        0x4at
        0x53t
        -0x37t
    .end array-data

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
    .line 228
    nop

    .line 229
    :array_7
    .array-data 1
        0x1ct
        -0x61t
        -0x6dt
        0x5t
        0x15t
        -0x71t
        0x44t
        -0x44t
    .end array-data
.end method

.method public final s(Le0/b2;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x5

    .line 14
    new-array v4, v4, [B

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    const/16 v5, 0x8

    .line 20
    .line 21
    new-array v6, v5, [B

    .line 22
    .line 23
    fill-array-data v6, :array_1

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget v4, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/16 v4, 0x28

    .line 43
    .line 44
    invoke-virtual {v2, v3, v4}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    const-wide/32 v6, 0x337f9800

    .line 53
    .line 54
    .line 55
    sub-long/2addr v3, v6

    .line 56
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v8, 0x19

    .line 66
    .line 67
    new-array v8, v8, [B

    .line 68
    .line 69
    fill-array-data v8, :array_2

    .line 70
    .line 71
    .line 72
    new-array v9, v5, [B

    .line 73
    .line 74
    fill-array-data v9, :array_3

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    sget v8, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v8, 0x0

    .line 94
    invoke-virtual {v6, v7, v8}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    int-to-long v6, v6

    .line 99
    const-wide/32 v9, 0xea60

    .line 100
    .line 101
    .line 102
    mul-long/2addr v6, v9

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v11

    .line 107
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    const/16 v14, 0x1c

    .line 112
    .line 113
    new-array v14, v14, [B

    .line 114
    .line 115
    fill-array-data v14, :array_4

    .line 116
    .line 117
    .line 118
    new-array v15, v5, [B

    .line 119
    .line 120
    fill-array-data v15, :array_5

    .line 121
    .line 122
    .line 123
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    invoke-virtual {v13, v14, v3, v4}, Lu0/a;->loadLong(Ljava/lang/String;J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v13

    .line 131
    sub-long/2addr v11, v13

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    const/4 v14, 0x1

    .line 137
    if-eqz v13, :cond_2

    .line 138
    .line 139
    if-eq v13, v14, :cond_1

    .line 140
    .line 141
    :cond_0
    move v13, v8

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    sget v13, Lcom/example/navistart/MyCarReceiver;->k:I

    .line 144
    .line 145
    if-le v13, v2, :cond_0

    .line 146
    .line 147
    :goto_0
    move v13, v14

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    sget v13, Lcom/example/navistart/MyCarReceiver;->k:I

    .line 150
    .line 151
    if-ge v13, v2, :cond_0

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :goto_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    move-wide/from16 v16, v9

    .line 159
    .line 160
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    sget v10, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 165
    .line 166
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {v15, v9, v8}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    invoke-static {v1}, Lcom/example/navistart/MyCarReceiver;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    const/4 v15, 0x6

    .line 186
    new-array v15, v15, [B

    .line 187
    .line 188
    fill-array-data v15, :array_6

    .line 189
    .line 190
    .line 191
    new-array v8, v5, [B

    .line 192
    .line 193
    fill-array-data v8, :array_7

    .line 194
    .line 195
    .line 196
    invoke-static {v15, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-static {v8}, Lcom/example/navistart/MyCarReceiver;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    const/4 v14, 0x2

    .line 217
    new-array v14, v14, [B

    .line 218
    .line 219
    fill-array-data v14, :array_8

    .line 220
    .line 221
    .line 222
    move-wide/from16 v18, v6

    .line 223
    .line 224
    new-array v6, v5, [B

    .line 225
    .line 226
    fill-array-data v6, :array_9

    .line 227
    .line 228
    .line 229
    invoke-static {v14, v6, v15, v2}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 230
    .line 231
    .line 232
    const/16 v2, 0xa

    .line 233
    .line 234
    new-array v2, v2, [B

    .line 235
    .line 236
    fill-array-data v2, :array_a

    .line 237
    .line 238
    .line 239
    new-array v6, v5, [B

    .line 240
    .line 241
    fill-array-data v6, :array_b

    .line 242
    .line 243
    .line 244
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const/16 v2, 0xe

    .line 255
    .line 256
    new-array v2, v2, [B

    .line 257
    .line 258
    fill-array-data v2, :array_c

    .line 259
    .line 260
    .line 261
    new-array v6, v5, [B

    .line 262
    .line 263
    fill-array-data v6, :array_d

    .line 264
    .line 265
    .line 266
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const/16 v2, 0xc

    .line 277
    .line 278
    new-array v6, v2, [B

    .line 279
    .line 280
    fill-array-data v6, :array_e

    .line 281
    .line 282
    .line 283
    new-array v7, v5, [B

    .line 284
    .line 285
    fill-array-data v7, :array_f

    .line 286
    .line 287
    .line 288
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-static {v6}, Lh0/b;->v(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    if-eqz v9, :cond_8

    .line 306
    .line 307
    if-eqz v10, :cond_8

    .line 308
    .line 309
    if-eqz v8, :cond_8

    .line 310
    .line 311
    if-nez v13, :cond_4

    .line 312
    .line 313
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const/16 v8, 0x1d

    .line 323
    .line 324
    new-array v8, v8, [B

    .line 325
    .line 326
    fill-array-data v8, :array_10

    .line 327
    .line 328
    .line 329
    new-array v9, v5, [B

    .line 330
    .line 331
    fill-array-data v9, :array_11

    .line 332
    .line 333
    .line 334
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    sget v8, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 342
    .line 343
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    const/4 v8, 0x1

    .line 351
    invoke-virtual {v6, v7, v8}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-nez v6, :cond_3

    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_3
    const/4 v6, 0x0

    .line 359
    goto :goto_3

    .line 360
    :cond_4
    const/4 v8, 0x1

    .line 361
    :goto_2
    move v6, v8

    .line 362
    :goto_3
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    const/16 v9, 0x16

    .line 367
    .line 368
    new-array v9, v9, [B

    .line 369
    .line 370
    fill-array-data v9, :array_12

    .line 371
    .line 372
    .line 373
    new-array v10, v5, [B

    .line 374
    .line 375
    fill-array-data v10, :array_13

    .line 376
    .line 377
    .line 378
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-static {v7}, Lh0/b;->v(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    if-eqz v6, :cond_8

    .line 396
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 398
    .line 399
    .line 400
    move-result-wide v6

    .line 401
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    new-array v10, v2, [B

    .line 406
    .line 407
    fill-array-data v10, :array_14

    .line 408
    .line 409
    .line 410
    new-array v13, v5, [B

    .line 411
    .line 412
    fill-array-data v13, :array_15

    .line 413
    .line 414
    .line 415
    invoke-static {v10, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v10

    .line 423
    invoke-virtual {v9, v10, v3, v4}, Lu0/a;->loadLong(Ljava/lang/String;J)J

    .line 424
    .line 425
    .line 426
    move-result-wide v3

    .line 427
    sub-long/2addr v6, v3

    .line 428
    const-wide/16 v3, 0x0

    .line 429
    .line 430
    cmp-long v6, v6, v3

    .line 431
    .line 432
    if-lez v6, :cond_6

    .line 433
    .line 434
    cmp-long v3, v18, v3

    .line 435
    .line 436
    if-eqz v3, :cond_5

    .line 437
    .line 438
    cmp-long v3, v11, v18

    .line 439
    .line 440
    if-gez v3, :cond_6

    .line 441
    .line 442
    :cond_5
    move v14, v8

    .line 443
    goto :goto_4

    .line 444
    :cond_6
    const/4 v14, 0x0

    .line 445
    :goto_4
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    const/16 v4, 0x10

    .line 450
    .line 451
    new-array v4, v4, [B

    .line 452
    .line 453
    fill-array-data v4, :array_16

    .line 454
    .line 455
    .line 456
    new-array v6, v5, [B

    .line 457
    .line 458
    fill-array-data v6, :array_17

    .line 459
    .line 460
    .line 461
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    new-array v4, v5, [B

    .line 472
    .line 473
    fill-array-data v4, :array_18

    .line 474
    .line 475
    .line 476
    new-array v6, v5, [B

    .line 477
    .line 478
    fill-array-data v6, :array_19

    .line 479
    .line 480
    .line 481
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    div-long v6, v18, v16

    .line 489
    .line 490
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const/16 v4, 0x10

    .line 494
    .line 495
    new-array v4, v4, [B

    .line 496
    .line 497
    fill-array-data v4, :array_1a

    .line 498
    .line 499
    .line 500
    new-array v6, v5, [B

    .line 501
    .line 502
    fill-array-data v6, :array_1b

    .line 503
    .line 504
    .line 505
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    div-long v11, v11, v16

    .line 513
    .line 514
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const/4 v4, 0x4

    .line 518
    new-array v4, v4, [B

    .line 519
    .line 520
    fill-array-data v4, :array_1c

    .line 521
    .line 522
    .line 523
    new-array v6, v5, [B

    .line 524
    .line 525
    fill-array-data v6, :array_1d

    .line 526
    .line 527
    .line 528
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-static {v3}, Lh0/b;->v(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    if-eqz v14, :cond_8

    .line 543
    .line 544
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 545
    .line 546
    .line 547
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 548
    .line 549
    invoke-static {v1, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 550
    .line 551
    .line 552
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    new-array v2, v2, [B

    .line 557
    .line 558
    fill-array-data v2, :array_1e

    .line 559
    .line 560
    .line 561
    new-array v4, v5, [B

    .line 562
    .line 563
    fill-array-data v4, :array_1f

    .line 564
    .line 565
    .line 566
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 575
    .line 576
    .line 577
    move-result-wide v6

    .line 578
    invoke-virtual {v3, v2, v6, v7}, Lu0/a;->saveLong(Ljava/lang/String;J)V

    .line 579
    .line 580
    .line 581
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    const/16 v4, 0xf

    .line 590
    .line 591
    new-array v4, v4, [B

    .line 592
    .line 593
    fill-array-data v4, :array_20

    .line 594
    .line 595
    .line 596
    new-array v6, v5, [B

    .line 597
    .line 598
    fill-array-data v6, :array_21

    .line 599
    .line 600
    .line 601
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    sget v4, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 609
    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    const/4 v4, 0x0

    .line 618
    invoke-virtual {v2, v3, v4}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    if-lez v2, :cond_7

    .line 623
    .line 624
    new-instance v3, La1/a;

    .line 625
    .line 626
    const/16 v4, 0x19

    .line 627
    .line 628
    move-object/from16 v6, p4

    .line 629
    .line 630
    invoke-direct {v3, v4, v6, v1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    int-to-long v6, v2

    .line 634
    mul-long v6, v6, v16

    .line 635
    .line 636
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    new-instance v4, Lb1/n;

    .line 645
    .line 646
    invoke-direct {v4, v0, v3, v2}, Lb1/n;-><init>(Lcom/example/navistart/MyCarReceiver;La1/a;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 650
    .line 651
    sget-object v8, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 652
    .line 653
    invoke-interface {v8, v4, v6, v7, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    iget-object v4, v0, Lcom/example/navistart/MyCarReceiver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 658
    .line 659
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    :cond_7
    const/4 v2, 0x3

    .line 663
    new-array v2, v2, [B

    .line 664
    .line 665
    fill-array-data v2, :array_22

    .line 666
    .line 667
    .line 668
    new-array v3, v5, [B

    .line 669
    .line 670
    fill-array-data v3, :array_23

    .line 671
    .line 672
    .line 673
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 682
    .line 683
    invoke-static {v1, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 684
    .line 685
    .line 686
    :cond_8
    return-void

    .line 687
    :array_0
    .array-data 1
        -0x6t
        -0x11t
        -0x49t
        0x11t
        -0x49t
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    nop

    .line 695
    :array_1
    .array-data 1
        -0x5bt
        -0x45t
        -0xet
        0x5ct
        -0x19t
        -0xat
        -0xct
        -0x2bt
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_2
    .array-data 1
        -0x59t
        0x67t
        -0x49t
        -0x73t
        0x6ft
        -0x50t
        -0x34t
        0x3at
        -0x76t
        0x46t
        -0x41t
        -0x77t
        0x5ft
        -0x72t
        -0x31t
        0x2ft
        -0x54t
        0x6dt
        -0x45t
        -0x66t
        0x58t
        -0x5bt
        -0x3ft
        0x29t
        -0x79t
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    nop

    .line 721
    :array_3
    .array-data 1
        -0xdt
        0xet
        -0x26t
        -0x18t
        0x2bt
        -0x2ft
        -0x60t
        0x5bt
    .end array-data

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_4
    .array-data 1
        -0x77t
        -0x2ft
        -0x65t
        0x5at
        0x2ct
        -0x51t
        0x5ft
        0x2bt
        -0x75t
        -0x40t
        -0x76t
        0x56t
        0x2dt
        -0x42t
        0x4ft
        0x36t
        -0x69t
        -0x3at
        -0x7at
        0x5et
        0x26t
        -0x4dt
        0x5ft
        0x3ct
        -0x73t
        -0x22t
        -0x72t
        0x4at
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_5
    .array-data 1
        -0x38t
        -0x6et
        -0x31t
        0x13t
        0x63t
        -0x1ft
        0x0t
        0x78t
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_6
    .array-data 1
        0x54t
        0x28t
        -0x50t
        -0x4t
        0x25t
        0x25t
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    nop

    .line 763
    :array_7
    .array-data 1
        0xbt
        0x7ct
        -0x7t
        -0x4ft
        0x60t
        0x77t
        0x26t
        -0x2t
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_8
    .array-data 1
        0x2dt
        -0x1ct
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    nop

    .line 777
    :array_9
    .array-data 1
        0x17t
        -0x3ct
        -0x9t
        0x36t
        0x3at
        -0x7et
        0x5t
        0x2ct
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_a
    .array-data 1
        -0x6bt
        0x18t
        0x78t
        0x44t
        -0x63t
        0x32t
        0x3t
        0x4et
        -0x6ct
        0x18t
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    nop

    .line 795
    :array_b
    .array-data 1
        -0x47t
        0x38t
        0x37t
        0x2at
        -0x2et
        0x54t
        0x65t
        0x6et
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_c
    .array-data 1
        -0x6at
        0x67t
        0x16t
        -0x2ft
        0xbt
        0x28t
        0x31t
        -0x1ct
        -0x31t
        0x26t
        0x15t
        -0x69t
        0x40t
        0x45t
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    nop

    .line 815
    :array_d
    .array-data 1
        -0x46t
        0x47t
        0x79t
        -0x49t
        0x6dt
        0x65t
        0x50t
        -0x76t
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :array_e
    .array-data 1
        0x30t
        0x1at
        0x32t
        0x52t
        -0x2bt
        -0x7bt
        -0x75t
        -0xet
        0x79t
        0x1at
        0x70t
        0x14t
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_f
    .array-data 1
        0x1ct
        0x3at
        0x5dt
        0x34t
        -0x4dt
        -0x2ft
        -0x1et
        -0x61t
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    :array_10
    .array-data 1
        0x51t
        -0x62t
        -0x43t
        0x2t
        -0x19t
        -0x7ct
        -0x1ct
        -0x4dt
        0x7ct
        -0x41t
        -0x4bt
        0x6t
        -0x29t
        -0x46t
        -0x14t
        -0x4dt
        0x71t
        -0x6ct
        -0x48t
        0xet
        -0x38t
        -0x75t
        -0x17t
        -0x60t
        0x70t
        -0x70t
        -0x71t
        0x28t
        -0x13t
    .end array-data

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    nop

    .line 861
    :array_11
    .array-data 1
        0x5t
        -0x9t
        -0x30t
        0x67t
        -0x5dt
        -0x1bt
        -0x78t
        -0x2et
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :array_12
    .array-data 1
        0x4dt
        -0x59t
        0x6ft
        0x65t
        0x29t
        -0x34t
        -0x64t
        0x6dt
        0x16t
        -0xdt
        0x4et
        0x72t
        0x21t
        -0x64t
        -0x66t
        0x77t
        0x12t
        -0x1ct
        0x50t
        0x20t
        0x69t
        -0x64t
    .end array-data

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    nop

    .line 885
    :array_13
    .array-data 1
        0x77t
        -0x79t
        0x3bt
        0x0t
        0x44t
        -0x44t
        -0x7t
        0x1ft
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :array_14
    .array-data 1
        0x28t
        -0x6ct
        -0x37t
        0x59t
        -0x5at
        -0x44t
        -0x58t
        -0x37t
        0x32t
        -0x74t
        -0x3ft
        0x4dt
    .end array-data

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :array_15
    .array-data 1
        0x77t
        -0x40t
        -0x80t
        0x14t
        -0x1dt
        -0x12t
        -0x9t
        -0x73t
    .end array-data

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :array_16
    .array-data 1
        -0x75t
        0x5et
        0x1at
        -0x36t
        -0x70t
        -0xet
        0x3dt
        -0x34t
        -0x2et
        0x16t
        0x2bt
        -0x40t
        -0x6at
        -0x49t
        0x62t
        -0x34t
    .end array-data

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    :array_17
    .array-data 1
        -0x4ft
        0x7et
        0x4et
        -0x5dt
        -0x3t
        -0x69t
        0x4ft
        -0x14t
    .end array-data

    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :array_18
    .array-data 1
        -0x17t
        0x42t
        0x35t
        0x42t
        0x16t
        -0x19t
        -0x79t
        0x9t
    .end array-data

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_19
    .array-data 1
        -0x3bt
        0x62t
        0x46t
        0x27t
        0x62t
        -0x39t
        -0x56t
        0x29t
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_1a
    .array-data 1
        0x45t
        0x39t
        -0x7bt
        -0x2et
        -0x39t
        0x0t
        0x58t
        -0x60t
        0x4t
        0x24t
        -0x61t
        -0x27t
        -0x71t
        0x0t
        0x10t
        -0x14t
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_1b
    .array-data 1
        0x65t
        0x54t
        -0x14t
        -0x44t
        -0x15t
        0x20t
        0x3dt
        -0x34t
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    :array_1c
    .array-data 1
        -0x7ct
        0x60t
        0x27t
        -0x38t
    .end array-data

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    :array_1d
    .array-data 1
        -0x5ct
        0xdt
        0x4et
        -0x5at
        0x20t
        0x50t
        0x46t
        0x60t
    .end array-data

    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    :array_1e
    .array-data 1
        0x23t
        -0x11t
        0x52t
        0x2et
        -0x68t
        -0x65t
        0x4et
        -0x3et
        0x39t
        -0x9t
        0x5at
        0x3at
    .end array-data

    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    :array_1f
    .array-data 1
        0x7ct
        -0x45t
        0x1bt
        0x63t
        -0x23t
        -0x37t
        0x11t
        -0x7at
    .end array-data

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    :array_20
    .array-data 1
        -0x4bt
        0xct
        0x47t
        0x79t
        0x14t
        -0x78t
        0x73t
        -0x53t
        -0x7at
        0x19t
        0x57t
        0x4bt
        0x3et
        -0x6ft
        0x51t
    .end array-data

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_21
    .array-data 1
        -0x16t
        0x78t
        0x2et
        0x14t
        0x71t
        -0x29t
        0x17t
        -0x38t
    .end array-data

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_22
    .array-data 1
        -0x4ft
        0xat
        0x18t
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    :array_23
    .array-data 1
        -0x12t
        0x45t
        0x56t
        -0x4et
        0x7bt
        0x1t
        -0x45t
        0x4dt
    .end array-data
.end method
