.class public Lcom/example/navistart/AllWidgetServices;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static volatile g:Lcom/example/navistart/AllWidgetServices;

.field public static volatile h:Z

.field public static volatile i:Z


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Landroid/view/WindowManager;

.field public final d:Ljava/lang/Boolean;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

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
    iput-object v0, p0, Lcom/example/navistart/AllWidgetServices;->b:Landroid/os/Handler;

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/example/navistart/AllWidgetServices;->d:Ljava/lang/Boolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/example/navistart/AllWidgetServices;->f:Ljava/util/HashMap;

    .line 32
    .line 33
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

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
    const-class v2, Lcom/example/navistart/AllWidgetServices;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 13

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x15

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_e4

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_f4

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1f

    .line 29
    .line 30
    goto/16 :goto_e2

    .line 31
    .line 32
    :cond_1f
    const/4 v0, 0x7

    .line 33
    new-array v0, v0, [B

    .line 34
    .line 35
    fill-array-data v0, :array_fc

    .line 36
    .line 37
    .line 38
    new-array v1, v2, [B

    .line 39
    .line 40
    fill-array-data v1, :array_104

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lx0/p;->a()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    move v5, v3

    .line 66
    :goto_41
    if-ge v5, v4, :cond_e2

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    check-cast v6, Lx0/o;

    .line 75
    .line 76
    iget-boolean v7, v6, Lx0/o;->c:Z

    .line 77
    .line 78
    if-nez v7, :cond_50

    .line 79
    .line 80
    goto :goto_41

    .line 81
    :cond_50
    const/4 v7, -0x1

    .line 82
    move v8, v3

    .line 83
    :goto_52
    array-length v9, v0

    .line 84
    if-ge v8, v9, :cond_63

    .line 85
    .line 86
    aget-object v9, v0, v8

    .line 87
    .line 88
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    iget v10, v6, Lx0/o;->h:I

    .line 93
    .line 94
    if-ne v9, v10, :cond_60

    .line 95
    .line 96
    move v7, v8

    .line 97
    :cond_60
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    goto :goto_52

    .line 100
    :cond_63
    if-gez v7, :cond_66

    .line 101
    .line 102
    goto :goto_41

    .line 103
    :cond_66
    aget-object v8, v0, v7

    .line 104
    .line 105
    invoke-virtual {p0, v8}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const/16 v10, 0x18

    .line 115
    .line 116
    new-array v10, v10, [B

    .line 117
    .line 118
    fill-array-data v10, :array_10c

    .line 119
    .line 120
    .line 121
    new-array v11, v2, [B

    .line 122
    .line 123
    fill-array-data v11, :array_11c

    .line 124
    .line 125
    .line 126
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v10, v6, Lx0/o;->a:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    new-instance v10, Lx0/c;

    .line 143
    .line 144
    invoke-direct {v10, v8, v6, v3, v3}, Lx0/c;-><init>(Landroid/content/Context;Lx0/o;ZZ)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Le0/u1;

    .line 148
    .line 149
    invoke-direct {v6, v8, v9}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-interface {v8}, Lj1/v;->b()Lz0/a;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    iget-object v11, v6, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 164
    .line 165
    invoke-interface {v8, v10, v7, v11}, Lz0/a;->g(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    iget-object v8, p0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object v8, p0, Lcom/example/navistart/AllWidgetServices;->f:Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    new-instance v8, Le0/f;

    .line 180
    .line 181
    invoke-direct {v8, v10, v3}, Le0/f;-><init>(Lx0/c;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v10, v7, v8}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    iput-object v6, v10, Lx0/c;->o:Le0/u1;

    .line 188
    .line 189
    invoke-virtual {v10}, Lx0/c;->k()V

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const/4 v7, 0x3

    .line 197
    new-array v7, v7, [B

    .line 198
    .line 199
    fill-array-data v7, :array_124

    .line 200
    .line 201
    .line 202
    new-array v8, v2, [B

    .line 203
    .line 204
    fill-array-data v8, :array_12a

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    const/4 v8, 0x1

    .line 216
    invoke-virtual {v6, v7, v8}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v10, v9}, Lcom/example/navistart/AllWidgetServices;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_41

    .line 226
    .line 227
    :cond_e2
    :goto_e2
    return-void

    .line 228
    nop

    .line 229
    :array_e4
    .array-data 1
        0x7at
        -0x4ct
        0x21t
        -0x50t
        -0x3t
        0x10t
        0x6bt
        -0x4et
        0x6dt
        -0x5at
        0x34t
        -0x5ft
        -0x4t
        0x10t
        0x79t
        -0x4bt
        0x68t
        -0x5dt
        0x3dt
        -0x50t
        -0x15t
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
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    nop

    .line 245
    :array_f4
    .array-data 1
        0x9t
        -0x3ft
        0x51t
        -0x2bt
        -0x71t
        0x4ft
        0x1ct
        -0x25t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_fc
    .array-data 1
        0x20t
        0x65t
        0x37t
        0x3et
        -0xat
        -0x2ft
        0x60t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_104
    .array-data 1
        0x44t
        0xct
        0x44t
        0x4et
        -0x66t
        -0x50t
        0x19t
        0x3bt
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_10c
    .array-data 1
        0x2ct
        -0x60t
        -0x3ct
        -0x8t
        -0xet
        -0x5ft
        -0x3t
        -0x4at
        0x19t
        -0x61t
        -0x33t
        -0x23t
        -0x13t
        -0x54t
        -0x7t
        -0x4at
        0x1et
        -0x6dt
        -0x5t
        -0x26t
        -0x15t
        -0x60t
        -0x18t
        -0x74t
    .end array-data

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
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_11c
    .array-data 1
        0x6dt
        -0x34t
        -0x58t
        -0x51t
        -0x65t
        -0x3bt
        -0x66t
        -0x2dt
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_124
    .array-data 1
        0x5ct
        0xct
        0x2ct
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_12a
    .array-data 1
        0x3t
        0x43t
        0x42t
        0x4et
        -0x56t
        -0x20t
        -0x2et
        0x5t
    .end array-data
.end method

.method public final b(Landroid/view/View;Ljava/lang/String;)V
    .registers 13

    .line 1
    sget-boolean v0, Lcom/example/navistart/AllWidgetServices;->i:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    if-eqz p1, :cond_d7

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Le0/m;->j:[B

    .line 23
    .line 24
    sget-object v4, Le0/p3;->a:[Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, ""

    .line 27
    .line 28
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    new-array v2, v2, [B

    .line 34
    .line 35
    fill-array-data v2, :array_d8

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Le0/x1;->q:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v3, Le0/m;->f:[B

    .line 52
    .line 53
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz v0, :cond_82

    .line 59
    .line 60
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-wide v4, 0x7fffffffffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    new-instance v0, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    new-instance v8, Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    .line 90
    .line 91
    .line 92
    sget-object v3, Le0/m;->g:[B

    .line 93
    .line 94
    invoke-static {v3, v7, v8}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v7, 0x1

    .line 99
    new-array v8, v7, [B

    .line 100
    .line 101
    const/4 v9, -0x4

    .line 102
    aput-byte v9, v8, v2

    .line 103
    .line 104
    new-array v9, v1, [B

    .line 105
    .line 106
    fill-array-data v9, :array_e2

    .line 107
    .line 108
    .line 109
    invoke-static {v8, v9, v6, v3, v2}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    cmp-long v0, v4, v8

    .line 121
    .line 122
    if-gez v0, :cond_7c

    .line 123
    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move v7, v2

    .line 126
    :goto_7d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_84

    .line 131
    :cond_82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 132
    .line 133
    :goto_84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_b5

    .line 138
    .line 139
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {p2}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const/4 v4, 0x3

    .line 148
    new-array v4, v4, [B

    .line 149
    .line 150
    fill-array-data v4, :array_ea

    .line 151
    .line 152
    .line 153
    new-array v5, v1, [B

    .line 154
    .line 155
    fill-array-data v5, :array_f0

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v0, v3, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_b2

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_b5

    .line 179
    :cond_b2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    :cond_b5
    :goto_b5
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_c6

    .line 187
    .line 188
    iget-object p1, p0, Lcom/example/navistart/AllWidgetServices;->d:Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_c6

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    :cond_c6
    invoke-static {p0}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_d7

    .line 204
    .line 205
    iget-object p1, p0, Lcom/example/navistart/AllWidgetServices;->d:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_d5

    .line 212
    .line 213
    goto :goto_d7

    .line 214
    :cond_d5
    const/4 p1, 0x0

    .line 215
    throw p1

    .line 216
    :cond_d7
    :goto_d7
    return-void

    .line 217
    :array_d8
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

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    nop

    .line 227
    :array_e2
    .array-data 1
        -0x34t
        -0x59t
        0x23t
        0x29t
        0xat
        -0x2ct
        -0x22t
        0x5t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_ea
    .array-data 1
        -0x18t
        -0x4et
        0x30t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f0
    .array-data 1
        -0x49t
        -0x3t
        0x5et
        -0x1dt
        -0x57t
        -0x18t
        -0x2bt
        -0x3t
    .end array-data
.end method

.method public final d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/example/navistart/AllWidgetServices;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2c

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_a

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/view/WindowManager;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/view/View;

    .line 40
    .line 41
    invoke-static {v3, v2}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_a

    .line 45
    :cond_2c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final e(Le0/h;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    fill-array-data v1, :array_36

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    fill-array-data v3, :array_44

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object p1, p1, Le0/h;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/view/View;

    .line 32
    .line 33
    sget-boolean v0, Lcom/example/navistart/AllWidgetServices;->i:Z

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-nez v0, :cond_29

    .line 37
    .line 38
    if-eqz p2, :cond_29

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move p2, v1

    .line 43
    :goto_2a
    if-eqz p1, :cond_35

    .line 44
    .line 45
    if-eqz p2, :cond_32

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void

    .line 55
    :array_36
    .array-data 1
        0x6t
        0x3et
        0x32t
        0x5at
        0x75t
        0x22t
        0x6ct
        0x3bt
        0x33t
        0x1t
        0x3bt
        0x7ft
        0x6at
        0x2ft
        0x68t
        0x3bt
        0x34t
        0xdt
    .end array-data

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
    .line 67
    .line 68
    nop

    .line 69
    :array_44
    .array-data 1
        0x47t
        0x52t
        0x5et
        0xdt
        0x1ct
        0x46t
        0xbt
        0x5et
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
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 5
    .line 6
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    sget-object v0, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 2
    .line 3
    if-ne v0, p0, :cond_7

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 7
    .line 8
    :cond_7
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/example/navistart/AllWidgetServices;->d()V

    .line 12
    .line 13
    .line 14
    sput-object p0, Lcom/example/navistart/MainActivity;->i1:Lcom/example/navistart/AllWidgetServices;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/example/navistart/AllWidgetServices;->c(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/example/navistart/AllWidgetServices;->d()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Le0/h;->values()[Le0/h;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_c
    const/4 v5, 0x0

    .line 14
    if-ge v4, v2, :cond_dd

    .line 15
    .line 16
    aget-object v6, v1, v4

    .line 17
    .line 18
    const/16 v7, 0x12

    .line 19
    .line 20
    new-array v7, v7, [B

    .line 21
    .line 22
    fill-array-data v7, :array_10e

    .line 23
    .line 24
    .line 25
    const/16 v8, 0x8

    .line 26
    .line 27
    new-array v9, v8, [B

    .line 28
    .line 29
    fill-array-data v9, :array_11c

    .line 30
    .line 31
    .line 32
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    iget-object v9, v6, Le0/h;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v6, v6, Le0/h;->c:Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;

    .line 43
    .line 44
    invoke-interface {v6, v0}, Lcom/example/navistart/cores/ProxyFactory$ProxyFactoryCreatContext;->create(Landroid/content/Context;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroid/view/View;

    .line 49
    .line 50
    iget-object v9, v0, Lcom/example/navistart/AllWidgetServices;->e:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    if-eqz v6, :cond_d9

    .line 56
    .line 57
    new-instance v9, Le0/u1;

    .line 58
    .line 59
    invoke-direct {v9, v0, v7}, Le0/u1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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
    move-result-object v10

    .line 69
    invoke-interface {v10}, Lj1/v;->b()Lz0/a;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget-object v11, v9, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 74
    .line 75
    invoke-interface {v10, v6, v11}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    iput-object v10, v0, Lcom/example/navistart/AllWidgetServices;->c:Landroid/view/WindowManager;

    .line 80
    .line 81
    iget-object v11, v0, Lcom/example/navistart/AllWidgetServices;->f:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v11, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    instance-of v10, v6, Ls1/u0;

    .line 87
    .line 88
    if-eqz v10, :cond_a5

    .line 89
    .line 90
    move-object v11, v6

    .line 91
    check-cast v11, Ls1/u0;

    .line 92
    .line 93
    iget-object v12, v0, Lcom/example/navistart/AllWidgetServices;->c:Landroid/view/WindowManager;

    .line 94
    .line 95
    iget-object v13, v9, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 96
    .line 97
    iput-object v12, v11, Ls1/u0;->l:Landroid/view/WindowManager;

    .line 98
    .line 99
    iput-object v13, v11, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 100
    .line 101
    iget v12, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    .line 103
    or-int/lit16 v12, v12, 0x100

    .line 104
    .line 105
    and-int/lit16 v12, v12, -0x201

    .line 106
    .line 107
    iput v12, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    .line 109
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    const/16 v14, 0x1f

    .line 114
    .line 115
    new-array v14, v14, [B

    .line 116
    .line 117
    fill-array-data v14, :array_124

    .line 118
    .line 119
    .line 120
    new-array v15, v8, [B

    .line 121
    .line 122
    fill-array-data v15, :array_138

    .line 123
    .line 124
    .line 125
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    const/high16 v15, -0x80000000

    .line 130
    .line 131
    invoke-virtual {v12, v14, v15}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-ne v12, v15, :cond_a2

    .line 136
    .line 137
    invoke-virtual {v11}, Ls1/u0;->o()Landroid/graphics/Rect;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 142
    .line 143
    invoke-virtual {v11, v8}, Ls1/u0;->e(I)I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    add-int/2addr v14, v12

    .line 148
    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 149
    .line 150
    invoke-virtual {v11}, Ls1/u0;->o()Landroid/graphics/Rect;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 155
    .line 156
    invoke-virtual {v11, v8}, Ls1/u0;->e(I)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    add-int/2addr v14, v12

    .line 161
    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 162
    .line 163
    :cond_a2
    invoke-virtual {v11}, Ls1/u0;->h()V

    .line 164
    .line 165
    .line 166
    :cond_a5
    instance-of v11, v6, Ls1/n;

    .line 167
    .line 168
    if-eqz v11, :cond_b4

    .line 169
    .line 170
    move-object v12, v6

    .line 171
    check-cast v12, Ls1/n;

    .line 172
    .line 173
    iget-object v13, v0, Lcom/example/navistart/AllWidgetServices;->c:Landroid/view/WindowManager;

    .line 174
    .line 175
    iget-object v14, v9, Le0/u1;->c:Landroid/view/WindowManager$LayoutParams;

    .line 176
    .line 177
    iput-object v13, v12, Ls1/n;->j:Landroid/view/WindowManager;

    .line 178
    .line 179
    iput-object v14, v12, Ls1/n;->k:Landroid/view/WindowManager$LayoutParams;

    .line 180
    .line 181
    :cond_b4
    if-eqz v11, :cond_c0

    .line 182
    .line 183
    move-object v5, v6

    .line 184
    check-cast v5, Ls1/n;

    .line 185
    .line 186
    new-instance v10, Le0/d;

    .line 187
    .line 188
    invoke-direct {v10, v5, v3}, Le0/d;-><init>(Ls1/n;I)V

    .line 189
    .line 190
    .line 191
    :goto_be
    move-object v5, v10

    .line 192
    goto :goto_cb

    .line 193
    :cond_c0
    if-eqz v10, :cond_cb

    .line 194
    .line 195
    move-object v5, v6

    .line 196
    check-cast v5, Ls1/u0;

    .line 197
    .line 198
    new-instance v10, Le0/e;

    .line 199
    .line 200
    invoke-direct {v10, v5, v3}, Le0/e;-><init>(Ls1/u0;I)V

    .line 201
    .line 202
    .line 203
    goto :goto_be

    .line 204
    :cond_cb
    :goto_cb
    iget-object v10, v0, Lcom/example/navistart/AllWidgetServices;->c:Landroid/view/WindowManager;

    .line 205
    .line 206
    invoke-virtual {v9, v6, v10, v5}, Le0/u1;->a(Landroid/view/View;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9}, Le0/u1;->d()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v6, v7}, Lcom/example/navistart/AllWidgetServices;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_d9
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto/16 :goto_c

    .line 221
    .line 222
    :cond_dd
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_ed

    .line 227
    .line 228
    iget-object v1, v0, Lcom/example/navistart/AllWidgetServices;->d:Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_ec

    .line 235
    .line 236
    goto :goto_ed

    .line 237
    :cond_ec
    throw v5

    .line 238
    :cond_ed
    :goto_ed
    invoke-static {v0}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_fd

    .line 243
    .line 244
    iget-object v1, v0, Lcom/example/navistart/AllWidgetServices;->d:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_fc

    .line 251
    .line 252
    goto :goto_fd

    .line 253
    :cond_fc
    throw v5

    .line 254
    :cond_fd
    :goto_fd
    sput-object v0, Lcom/example/navistart/MainActivity;->i1:Lcom/example/navistart/AllWidgetServices;

    .line 255
    .line 256
    sget-object v1, Le0/h;->h:Le0/h;

    .line 257
    .line 258
    sget-boolean v2, Lcom/example/navistart/AllWidgetServices;->h:Z

    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/example/navistart/AllWidgetServices;->e(Le0/h;Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/example/navistart/AllWidgetServices;->a()V

    .line 264
    .line 265
    .line 266
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    return v1

    .line 271
    :array_10e
    .array-data 1
        0x24t
        0x79t
        0x33t
        0x21t
        -0x50t
        -0x6at
        -0x6ct
        0x5t
        0x11t
        0x46t
        0x3at
        0x4t
        -0x51t
        -0x65t
        -0x70t
        0x5t
        0x16t
        0x4at
    .end array-data

    .line 272
    .line 273
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
    nop

    .line 285
    :array_11c
    .array-data 1
        0x65t
        0x15t
        0x5ft
        0x76t
        -0x27t
        -0xet
        -0xdt
        0x60t
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_124
    .array-data 1
        -0xdt
        -0x2dt
        0x28t
        0x4et
        0x5ct
        0x4at
        0x6at
        -0x7ct
        -0x3at
        -0x14t
        0x21t
        0x6bt
        0x43t
        0x47t
        0x6et
        -0x7ct
        -0x3ft
        -0x20t
        0x17t
        0x70t
        0x5bt
        0x49t
        0x61t
        -0x7ct
        -0x1bt
        -0x2at
        0x2at
        0x7dt
        0x5at
        0x59t
        0x55t
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
    .line 311
    .line 312
    .line 313
    :array_138
    .array-data 1
        -0x4et
        -0x41t
        0x44t
        0x19t
        0x35t
        0x2et
        0xdt
        -0x1ft
    .end array-data
.end method
