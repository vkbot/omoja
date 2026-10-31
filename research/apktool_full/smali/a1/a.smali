.class public final synthetic La1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, La1/a;->b:I

    iput-object p2, p0, La1/a;->c:Ljava/lang/Object;

    iput-object p3, p0, La1/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/navistart/MyA11yService;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/16 p1, 0x18

    .line 2
    .line 3
    iput p1, p0, La1/a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, La1/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, La1/a;->d:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method private final a()V
    .locals 7

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/APInAct;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v2, Lcom/example/navistart/APInAct;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lv1/d;->b()Lv1/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const v4, 0x7f1301a9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lv1/a;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lv1/d;->b()Lv1/a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lv1/a;->b:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const v2, 0x7f1301a6

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/example/navistart/APInAct;->s()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_0

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/example/navistart/APInAct;->s()Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    new-instance v2, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const/4 v4, 0x0

    .line 91
    move v5, v4

    .line 92
    :goto_0
    if-ge v5, v3, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    check-cast v6, Landroid/net/Uri;

    .line 101
    .line 102
    invoke-virtual {v0, v6}, Lcom/example/navistart/APInAct;->t(Landroid/net/Uri;)Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    sget-object v1, Lcom/example/navistart/APInAct;->f:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/16 v3, 0x16

    .line 124
    .line 125
    new-array v3, v3, [B

    .line 126
    .line 127
    fill-array-data v3, :array_0

    .line 128
    .line 129
    .line 130
    const/16 v5, 0x8

    .line 131
    .line 132
    new-array v5, v5, [B

    .line 133
    .line 134
    fill-array-data v5, :array_1

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v5}, Lj1/v;->c()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-virtual {v1, v3, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    new-instance v1, Landroid/os/Handler;

    .line 159
    .line 160
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    .line 166
    .line 167
    new-instance v3, Le0/b;

    .line 168
    .line 169
    invoke-direct {v3, v0, v4}, Le0/b;-><init>(Lcom/example/navistart/APInAct;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-interface {v1, v2}, Lcom/example/navistart/cores/InterC;->ip(Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_2
    invoke-virtual {v0, v2}, Lcom/example/navistart/APInAct;->u(Ljava/util/ArrayList;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_3
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lv1/d;->b()Lv1/a;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lv1/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :catch_0
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lv1/d;->b()Lv1/a;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const v2, 0x7f1301a5

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v1, v0}, Lv1/a;->a(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_4
    :goto_1
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lv1/d;->b()Lv1/a;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v1, v0}, Lv1/a;->a(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    nop

    .line 255
    :array_0
    .array-data 1
        0x28t
        -0x51t
        0x31t
        -0x17t
        -0xat
        0x22t
        0x79t
        -0x5ct
        0x28t
        -0x51t
        0x31t
        -0x9t
        -0x12t
        0x22t
        0x7at
        -0x77t
        0xft
        -0x75t
        0x22t
        -0xct
        -0x6t
        0x4t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
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
    nop

    .line 271
    :array_1
    .array-data 1
        0x5bt
        -0x25t
        0x50t
        -0x65t
        -0x7et
        0x7dt
        0x30t
        -0x36t
    .end array-data
.end method

.method private final b()V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/example/navistart/LocServ;

    .line 6
    .line 7
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/location/Location;

    .line 10
    .line 11
    sget-object v3, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 12
    .line 13
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v4, 0x1a

    .line 18
    .line 19
    new-array v4, v4, [B

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    const/16 v5, 0x8

    .line 25
    .line 26
    new-array v6, v5, [B

    .line 27
    .line 28
    fill-array-data v6, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v3, v4, v6}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const v4, 0x40666666    # 3.6f

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    mul-float/2addr v3, v4

    .line 50
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Lv1/d;->d()Lv1/c;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    float-to-int v3, v3

    .line 59
    iget-object v7, v7, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v7, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    iput-wide v7, v0, Lcom/example/navistart/LocServ;->f:J

    .line 73
    .line 74
    sput-object v2, Lcom/woha/pogoda/WeatherService;->g:Landroid/location/Location;

    .line 75
    .line 76
    sget-object v3, Lcom/woha/pogoda/WeatherService;->k:Landroid/location/Location;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    sget-object v3, Lcom/woha/pogoda/WeatherService;->k:Landroid/location/Location;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    .line 96
    .line 97
    .line 98
    move-result-wide v14

    .line 99
    invoke-static/range {v8 .. v15}, La/a;->b(DDDD)D

    .line 100
    .line 101
    .line 102
    move-result-wide v8

    .line 103
    const-wide v10, 0x40cd4c0000000000L    # 15000.0

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    cmpl-double v3, v8, v10

    .line 109
    .line 110
    if-lez v3, :cond_4

    .line 111
    .line 112
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/16 v8, 0x14

    .line 117
    .line 118
    new-array v8, v8, [B

    .line 119
    .line 120
    fill-array-data v8, :array_2

    .line 121
    .line 122
    .line 123
    new-array v9, v5, [B

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
    invoke-virtual {v3, v8, v6}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_2

    .line 137
    .line 138
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->b()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    sget-object v8, Ln0/f;->f:Ln0/f;

    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_2

    .line 153
    .line 154
    sget-object v3, Lcom/woha/pogoda/WeatherService;->g:Landroid/location/Location;

    .line 155
    .line 156
    if-nez v3, :cond_1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    .line 160
    .line 161
    .line 162
    move-result-wide v8

    .line 163
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    invoke-static {v8, v9, v10, v11, v7}, Lcom/woha/pogoda/WeatherService;->d(DDLandroidx/fragment/app/h;)Z

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_0
    sput-object v2, Lcom/woha/pogoda/WeatherService;->k:Landroid/location/Location;

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    sput-object v2, Lcom/woha/pogoda/WeatherService;->k:Landroid/location/Location;

    .line 174
    .line 175
    :cond_4
    :goto_1
    sget-object v3, Lcom/example/navistart/LocServ;->n:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_38

    .line 182
    .line 183
    iget-object v3, v0, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 184
    .line 185
    if-eqz v3, :cond_38

    .line 186
    .line 187
    iget v0, v0, Lcom/example/navistart/LocServ;->e:F

    .line 188
    .line 189
    iget-object v8, v3, Li7/m;->e:Li7/g;

    .line 190
    .line 191
    iget-object v9, v8, Li7/g;->g:Landroid/os/Handler;

    .line 192
    .line 193
    new-instance v10, Li7/f;

    .line 194
    .line 195
    invoke-direct {v10, v8, v0, v6}, Li7/f;-><init>(Ljava/lang/Object;FI)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .line 200
    .line 201
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lh0/b;->p()Lk1/a;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    if-eqz v8, :cond_8

    .line 209
    .line 210
    iget v8, v8, Lk1/a;->a:I

    .line 211
    .line 212
    packed-switch v8, :pswitch_data_0

    .line 213
    .line 214
    .line 215
    sget-object v8, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 216
    .line 217
    if-eqz v8, :cond_5

    .line 218
    .line 219
    invoke-interface {v8, v0}, Lv0/h;->e(F)V

    .line 220
    .line 221
    .line 222
    :cond_5
    sget-object v8, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 223
    .line 224
    if-eqz v8, :cond_8

    .line 225
    .line 226
    invoke-interface {v8, v0}, Lv0/h;->e(F)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :pswitch_0
    sget-object v8, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 231
    .line 232
    if-eqz v8, :cond_6

    .line 233
    .line 234
    invoke-interface {v8, v0}, Lv0/h;->e(F)V

    .line 235
    .line 236
    .line 237
    :cond_6
    sget-object v8, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 238
    .line 239
    if-eqz v8, :cond_8

    .line 240
    .line 241
    invoke-interface {v8, v0}, Lv0/h;->e(F)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_1
    sget-object v8, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 246
    .line 247
    if-eqz v8, :cond_7

    .line 248
    .line 249
    invoke-interface {v8, v0}, Lv0/h;->e(F)V

    .line 250
    .line 251
    .line 252
    :cond_7
    sget-object v8, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 253
    .line 254
    if-eqz v8, :cond_8

    .line 255
    .line 256
    invoke-interface {v8, v0}, Lv0/h;->e(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    :catch_0
    :cond_8
    :goto_2
    :pswitch_2
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 264
    .line 265
    cmpg-float v0, v0, v8

    .line 266
    .line 267
    if-gez v0, :cond_38

    .line 268
    .line 269
    iget-object v0, v3, Li7/m;->f:Li7/i;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    .line 275
    .line 276
    .line 277
    iget-object v0, v3, Li7/m;->f:Li7/i;

    .line 278
    .line 279
    iget-object v0, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    const/4 v9, 0x4

    .line 286
    if-lt v8, v9, :cond_9

    .line 287
    .line 288
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    const/4 v9, 0x2

    .line 299
    const/4 v10, 0x1

    .line 300
    const-wide/16 v11, 0x0

    .line 301
    .line 302
    if-le v8, v10, :cond_c

    .line 303
    .line 304
    if-eqz v0, :cond_b

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    if-lt v8, v9, :cond_b

    .line 311
    .line 312
    move v8, v6

    .line 313
    move-wide v13, v11

    .line 314
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    sub-int/2addr v15, v10

    .line 319
    if-ge v8, v15, :cond_a

    .line 320
    .line 321
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v15

    .line 325
    check-cast v15, Landroid/location/Location;

    .line 326
    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 328
    .line 329
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v16

    .line 333
    check-cast v16, Landroid/location/Location;

    .line 334
    .line 335
    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    .line 336
    .line 337
    .line 338
    move-result-wide v17

    .line 339
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    .line 340
    .line 341
    .line 342
    move-result-wide v17

    .line 343
    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    .line 344
    .line 345
    .line 346
    move-result-wide v19

    .line 347
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    .line 348
    .line 349
    .line 350
    move-result-wide v19

    .line 351
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLatitude()D

    .line 352
    .line 353
    .line 354
    move-result-wide v21

    .line 355
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    .line 356
    .line 357
    .line 358
    move-result-wide v21

    .line 359
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    .line 360
    .line 361
    .line 362
    move-result-wide v15

    .line 363
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    .line 364
    .line 365
    .line 366
    move-result-wide v15

    .line 367
    sub-double v15, v15, v19

    .line 368
    .line 369
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 370
    .line 371
    .line 372
    move-result-wide v19

    .line 373
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    .line 374
    .line 375
    .line 376
    move-result-wide v23

    .line 377
    mul-double v23, v23, v19

    .line 378
    .line 379
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    .line 380
    .line 381
    .line 382
    move-result-wide v19

    .line 383
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    .line 384
    .line 385
    .line 386
    move-result-wide v25

    .line 387
    mul-double v25, v25, v19

    .line 388
    .line 389
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    .line 390
    .line 391
    .line 392
    move-result-wide v17

    .line 393
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    .line 394
    .line 395
    .line 396
    move-result-wide v19

    .line 397
    mul-double v19, v19, v17

    .line 398
    .line 399
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 400
    .line 401
    .line 402
    move-result-wide v15

    .line 403
    mul-double v15, v15, v19

    .line 404
    .line 405
    sub-double v25, v25, v15

    .line 406
    .line 407
    add-double v13, v25, v13

    .line 408
    .line 409
    add-double v11, v11, v23

    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_a
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 413
    .line 414
    .line 415
    move-result-wide v11

    .line 416
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    .line 417
    .line 418
    .line 419
    move-result-wide v11

    .line 420
    const-wide v13, 0x4076800000000000L    # 360.0

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    add-double/2addr v11, v13

    .line 426
    rem-double/2addr v11, v13

    .line 427
    goto :goto_4

    .line 428
    :cond_b
    const/16 v0, 0x68

    .line 429
    .line 430
    new-array v0, v0, [B

    .line 431
    .line 432
    fill-array-data v0, :array_4

    .line 433
    .line 434
    .line 435
    new-array v2, v5, [B

    .line 436
    .line 437
    fill-array-data v2, :array_5

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_c
    :goto_4
    iput-wide v11, v3, Li7/m;->d:D

    .line 449
    .line 450
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const/16 v8, 0x12

    .line 455
    .line 456
    new-array v8, v8, [B

    .line 457
    .line 458
    fill-array-data v8, :array_6

    .line 459
    .line 460
    .line 461
    new-array v11, v5, [B

    .line 462
    .line 463
    fill-array-data v11, :array_7

    .line 464
    .line 465
    .line 466
    invoke-static {v8, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    const-wide/16 v11, 0x0

    .line 471
    .line 472
    invoke-virtual {v0, v8, v11, v12}, Lu0/a;->loadLong(Ljava/lang/String;J)J

    .line 473
    .line 474
    .line 475
    move-result-wide v11

    .line 476
    new-instance v0, Ljava/util/Date;

    .line 477
    .line 478
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 482
    .line 483
    .line 484
    move-result-wide v13

    .line 485
    const-wide/32 v15, 0x240c8400

    .line 486
    .line 487
    .line 488
    sub-long/2addr v13, v15

    .line 489
    sget-object v0, Li7/j;->f:Ljava/lang/Boolean;

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_d

    .line 496
    .line 497
    iget-object v0, v3, Li7/m;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 498
    .line 499
    new-instance v8, Li7/l;

    .line 500
    .line 501
    invoke-direct {v8, v11, v12, v13, v14}, Li7/l;-><init>(JJ)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 505
    .line 506
    .line 507
    :cond_d
    invoke-static {}, Li7/m;->a()Ljava/lang/Boolean;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_e

    .line 516
    .line 517
    cmp-long v0, v11, v13

    .line 518
    .line 519
    if-gtz v0, :cond_e

    .line 520
    .line 521
    iget-object v0, v3, Li7/m;->h:Le0/h1;

    .line 522
    .line 523
    if-eqz v0, :cond_e

    .line 524
    .line 525
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 530
    .line 531
    if-eq v0, v8, :cond_e

    .line 532
    .line 533
    new-instance v0, Le0/h1;

    .line 534
    .line 535
    invoke-direct {v0, v3}, Le0/h1;-><init>(Li7/m;)V

    .line 536
    .line 537
    .line 538
    iput-object v0, v3, Li7/m;->h:Le0/h1;

    .line 539
    .line 540
    invoke-static {}, Li7/m;->a()Ljava/lang/Boolean;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-eqz v0, :cond_e

    .line 549
    .line 550
    iget-object v0, v3, Li7/m;->h:Le0/h1;

    .line 551
    .line 552
    filled-new-array {v2}, [Landroid/location/Location;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    invoke-virtual {v0, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 557
    .line 558
    .line 559
    :cond_e
    invoke-static {}, Li7/m;->a()Ljava/lang/Boolean;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_1c

    .line 568
    .line 569
    iget-object v0, v3, Li7/m;->g:Li7/j;

    .line 570
    .line 571
    iget v8, v3, Li7/m;->b:I

    .line 572
    .line 573
    int-to-double v11, v8

    .line 574
    sget-object v8, Li7/j;->h:Ljava/util/ArrayList;

    .line 575
    .line 576
    sget-object v13, Li7/j;->g:Landroid/location/Location;

    .line 577
    .line 578
    if-nez v13, :cond_f

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    sput-object v2, Li7/j;->g:Landroid/location/Location;

    .line 584
    .line 585
    :cond_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 586
    .line 587
    .line 588
    move-result-object v13

    .line 589
    new-instance v14, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    .line 595
    .line 596
    .line 597
    move-result-wide v15

    .line 598
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    .line 599
    .line 600
    .line 601
    move-result-wide v17

    .line 602
    sget-object v19, Li7/j;->g:Landroid/location/Location;

    .line 603
    .line 604
    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    .line 605
    .line 606
    .line 607
    move-result-wide v19

    .line 608
    sget-object v21, Li7/j;->g:Landroid/location/Location;

    .line 609
    .line 610
    invoke-virtual/range {v21 .. v21}, Landroid/location/Location;->getLongitude()D

    .line 611
    .line 612
    .line 613
    move-result-wide v21

    .line 614
    invoke-static/range {v15 .. v22}, La/a;->b(DDDD)D

    .line 615
    .line 616
    .line 617
    move-result-wide v15

    .line 618
    move/from16 v17, v4

    .line 619
    .line 620
    iget v4, v0, Li7/j;->d:I

    .line 621
    .line 622
    int-to-double v9, v4

    .line 623
    cmpl-double v4, v15, v9

    .line 624
    .line 625
    if-gtz v4, :cond_11

    .line 626
    .line 627
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    if-nez v4, :cond_10

    .line 632
    .line 633
    goto :goto_5

    .line 634
    :cond_10
    move-object/from16 v30, v2

    .line 635
    .line 636
    move-object/from16 v31, v3

    .line 637
    .line 638
    move/from16 v26, v6

    .line 639
    .line 640
    move-object/from16 v28, v7

    .line 641
    .line 642
    move-wide/from16 v24, v11

    .line 643
    .line 644
    move-object v0, v14

    .line 645
    goto/16 :goto_b

    .line 646
    .line 647
    :cond_11
    :goto_5
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    .line 648
    .line 649
    .line 650
    move-result-wide v20

    .line 651
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    .line 652
    .line 653
    .line 654
    move-result-wide v22

    .line 655
    const/16 v4, 0x19

    .line 656
    .line 657
    new-array v4, v4, [B

    .line 658
    .line 659
    fill-array-data v4, :array_8

    .line 660
    .line 661
    .line 662
    new-array v10, v5, [B

    .line 663
    .line 664
    fill-array-data v10, :array_9

    .line 665
    .line 666
    .line 667
    invoke-static {v4, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    invoke-virtual {v13, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 676
    .line 677
    .line 678
    move-result v10

    .line 679
    if-eqz v10, :cond_19

    .line 680
    .line 681
    :goto_6
    const/4 v10, 0x1

    .line 682
    new-array v10, v10, [B

    .line 683
    .line 684
    const/16 v13, 0x10

    .line 685
    .line 686
    aput-byte v13, v10, v6

    .line 687
    .line 688
    new-array v13, v5, [B

    .line 689
    .line 690
    fill-array-data v13, :array_a

    .line 691
    .line 692
    .line 693
    invoke-static {v10, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v10

    .line 697
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    move-result v10

    .line 701
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getDouble(I)D

    .line 702
    .line 703
    .line 704
    move-result-wide v24

    .line 705
    const/4 v10, 0x1

    .line 706
    new-array v10, v10, [B

    .line 707
    .line 708
    const/16 v13, -0x4e

    .line 709
    .line 710
    aput-byte v13, v10, v6

    .line 711
    .line 712
    new-array v13, v5, [B

    .line 713
    .line 714
    fill-array-data v13, :array_b

    .line 715
    .line 716
    .line 717
    invoke-static {v10, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    move-result v10

    .line 725
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getDouble(I)D

    .line 726
    .line 727
    .line 728
    move-result-wide v26

    .line 729
    invoke-static/range {v20 .. v27}, La/a;->b(DDDD)D

    .line 730
    .line 731
    .line 732
    move-result-wide v15

    .line 733
    move-object v13, v7

    .line 734
    move-wide/from16 v40, v26

    .line 735
    .line 736
    move/from16 v26, v6

    .line 737
    .line 738
    move-wide/from16 v6, v24

    .line 739
    .line 740
    move-wide/from16 v24, v11

    .line 741
    .line 742
    move-wide/from16 v10, v40

    .line 743
    .line 744
    iget v12, v0, Li7/j;->c:I

    .line 745
    .line 746
    move-object/from16 v28, v13

    .line 747
    .line 748
    move-object/from16 v27, v14

    .line 749
    .line 750
    int-to-double v13, v12

    .line 751
    cmpg-double v12, v15, v13

    .line 752
    .line 753
    if-gtz v12, :cond_17

    .line 754
    .line 755
    new-instance v12, Li7/x;

    .line 756
    .line 757
    const/4 v13, 0x3

    .line 758
    new-array v13, v13, [B

    .line 759
    .line 760
    fill-array-data v13, :array_c

    .line 761
    .line 762
    .line 763
    new-array v14, v5, [B

    .line 764
    .line 765
    fill-array-data v14, :array_d

    .line 766
    .line 767
    .line 768
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v13

    .line 772
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    move-result v13

    .line 776
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 777
    .line 778
    .line 779
    move-result v13

    .line 780
    const/4 v14, 0x4

    .line 781
    new-array v14, v14, [B

    .line 782
    .line 783
    fill-array-data v14, :array_e

    .line 784
    .line 785
    .line 786
    new-array v15, v5, [B

    .line 787
    .line 788
    fill-array-data v15, :array_f

    .line 789
    .line 790
    .line 791
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v14

    .line 795
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move-result v14

    .line 799
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 800
    .line 801
    .line 802
    move-result v14

    .line 803
    const/4 v15, 0x5

    .line 804
    new-array v15, v15, [B

    .line 805
    .line 806
    fill-array-data v15, :array_10

    .line 807
    .line 808
    .line 809
    new-array v9, v5, [B

    .line 810
    .line 811
    fill-array-data v9, :array_11

    .line 812
    .line 813
    .line 814
    invoke-static {v15, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 819
    .line 820
    .line 821
    move-result v9

    .line 822
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 823
    .line 824
    .line 825
    move-result v9

    .line 826
    const/4 v15, 0x7

    .line 827
    new-array v15, v15, [B

    .line 828
    .line 829
    fill-array-data v15, :array_12

    .line 830
    .line 831
    .line 832
    move-object/from16 v29, v0

    .line 833
    .line 834
    new-array v0, v5, [B

    .line 835
    .line 836
    fill-array-data v0, :array_13

    .line 837
    .line 838
    .line 839
    invoke-static {v15, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    const/16 v15, 0x9

    .line 852
    .line 853
    new-array v15, v15, [B

    .line 854
    .line 855
    fill-array-data v15, :array_14

    .line 856
    .line 857
    .line 858
    new-array v1, v5, [B

    .line 859
    .line 860
    fill-array-data v1, :array_15

    .line 861
    .line 862
    .line 863
    invoke-static {v15, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    new-array v15, v5, [B

    .line 876
    .line 877
    fill-array-data v15, :array_16

    .line 878
    .line 879
    .line 880
    move-object/from16 v30, v2

    .line 881
    .line 882
    new-array v2, v5, [B

    .line 883
    .line 884
    fill-array-data v2, :array_17

    .line 885
    .line 886
    .line 887
    invoke-static {v15, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    move-result v2

    .line 895
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    const/4 v15, 0x5

    .line 900
    new-array v15, v15, [B

    .line 901
    .line 902
    fill-array-data v15, :array_18

    .line 903
    .line 904
    .line 905
    move-object/from16 v31, v3

    .line 906
    .line 907
    new-array v3, v5, [B

    .line 908
    .line 909
    fill-array-data v3, :array_19

    .line 910
    .line 911
    .line 912
    invoke-static {v15, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 921
    .line 922
    .line 923
    move-result v3

    .line 924
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 925
    .line 926
    .line 927
    iput v13, v12, Li7/x;->a:I

    .line 928
    .line 929
    iput-wide v6, v12, Li7/x;->b:D

    .line 930
    .line 931
    iput-wide v10, v12, Li7/x;->c:D

    .line 932
    .line 933
    iput v14, v12, Li7/x;->d:I

    .line 934
    .line 935
    iput v9, v12, Li7/x;->e:I

    .line 936
    .line 937
    iput v0, v12, Li7/x;->f:I

    .line 938
    .line 939
    iput v1, v12, Li7/x;->g:I

    .line 940
    .line 941
    iput v2, v12, Li7/x;->h:I

    .line 942
    .line 943
    iput v3, v12, Li7/x;->i:I

    .line 944
    .line 945
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    const/16 v1, 0xe

    .line 950
    .line 951
    new-array v1, v1, [B

    .line 952
    .line 953
    fill-array-data v1, :array_1a

    .line 954
    .line 955
    .line 956
    new-array v2, v5, [B

    .line 957
    .line 958
    fill-array-data v2, :array_1b

    .line 959
    .line 960
    .line 961
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    const/4 v2, 0x1

    .line 966
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    const/16 v3, 0x12

    .line 975
    .line 976
    new-array v3, v3, [B

    .line 977
    .line 978
    fill-array-data v3, :array_1c

    .line 979
    .line 980
    .line 981
    new-array v6, v5, [B

    .line 982
    .line 983
    fill-array-data v6, :array_1d

    .line 984
    .line 985
    .line 986
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    invoke-virtual {v1, v3, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    const/16 v6, 0x13

    .line 999
    .line 1000
    new-array v7, v6, [B

    .line 1001
    .line 1002
    fill-array-data v7, :array_1e

    .line 1003
    .line 1004
    .line 1005
    new-array v6, v5, [B

    .line 1006
    .line 1007
    fill-array-data v6, :array_1f

    .line 1008
    .line 1009
    .line 1010
    invoke-static {v7, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    invoke-virtual {v3, v6, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    if-eqz v0, :cond_12

    .line 1019
    .line 1020
    if-eq v14, v2, :cond_14

    .line 1021
    .line 1022
    :cond_12
    if-eqz v1, :cond_13

    .line 1023
    .line 1024
    const/4 v0, 0x3

    .line 1025
    if-eq v14, v0, :cond_14

    .line 1026
    .line 1027
    :cond_13
    if-eqz v3, :cond_15

    .line 1028
    .line 1029
    const/16 v0, 0xb

    .line 1030
    .line 1031
    if-ne v14, v0, :cond_15

    .line 1032
    .line 1033
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1034
    .line 1035
    goto :goto_7

    .line 1036
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1037
    .line 1038
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    if-eqz v0, :cond_16

    .line 1043
    .line 1044
    move-object/from16 v0, v27

    .line 1045
    .line 1046
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    goto :goto_9

    .line 1050
    :cond_16
    :goto_8
    move-object/from16 v0, v27

    .line 1051
    .line 1052
    goto :goto_9

    .line 1053
    :cond_17
    move-object/from16 v29, v0

    .line 1054
    .line 1055
    move-object/from16 v30, v2

    .line 1056
    .line 1057
    move-object/from16 v31, v3

    .line 1058
    .line 1059
    goto :goto_8

    .line 1060
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    if-nez v1, :cond_18

    .line 1065
    .line 1066
    goto :goto_a

    .line 1067
    :cond_18
    move-object/from16 v1, p0

    .line 1068
    .line 1069
    move-object v14, v0

    .line 1070
    move-wide/from16 v11, v24

    .line 1071
    .line 1072
    move/from16 v6, v26

    .line 1073
    .line 1074
    move-object/from16 v7, v28

    .line 1075
    .line 1076
    move-object/from16 v0, v29

    .line 1077
    .line 1078
    move-object/from16 v2, v30

    .line 1079
    .line 1080
    move-object/from16 v3, v31

    .line 1081
    .line 1082
    goto/16 :goto_6

    .line 1083
    .line 1084
    :cond_19
    move-object/from16 v30, v2

    .line 1085
    .line 1086
    move-object/from16 v31, v3

    .line 1087
    .line 1088
    move/from16 v26, v6

    .line 1089
    .line 1090
    move-object/from16 v28, v7

    .line 1091
    .line 1092
    move-wide/from16 v24, v11

    .line 1093
    .line 1094
    move-object v0, v14

    .line 1095
    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1099
    .line 1100
    .line 1101
    sput-object v30, Li7/j;->g:Landroid/location/Location;

    .line 1102
    .line 1103
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1107
    .line 1108
    .line 1109
    move-result v1

    .line 1110
    move/from16 v10, v26

    .line 1111
    .line 1112
    :cond_1a
    :goto_c
    if-ge v10, v1, :cond_1b

    .line 1113
    .line 1114
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    add-int/lit8 v10, v10, 0x1

    .line 1119
    .line 1120
    check-cast v2, Li7/x;

    .line 1121
    .line 1122
    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLatitude()D

    .line 1123
    .line 1124
    .line 1125
    move-result-wide v32

    .line 1126
    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getLongitude()D

    .line 1127
    .line 1128
    .line 1129
    move-result-wide v34

    .line 1130
    iget-wide v3, v2, Li7/x;->b:D

    .line 1131
    .line 1132
    iget-wide v6, v2, Li7/x;->c:D

    .line 1133
    .line 1134
    move-wide/from16 v36, v3

    .line 1135
    .line 1136
    move-wide/from16 v38, v6

    .line 1137
    .line 1138
    invoke-static/range {v32 .. v39}, La/a;->b(DDDD)D

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v3

    .line 1142
    cmpg-double v3, v3, v24

    .line 1143
    .line 1144
    if-gtz v3, :cond_1a

    .line 1145
    .line 1146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    goto :goto_c

    .line 1150
    :cond_1b
    sput-object v0, Li7/m;->k:Ljava/util/ArrayList;

    .line 1151
    .line 1152
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 1153
    .line 1154
    new-array v1, v5, [B

    .line 1155
    .line 1156
    fill-array-data v1, :array_20

    .line 1157
    .line 1158
    .line 1159
    new-array v2, v5, [B

    .line 1160
    .line 1161
    fill-array-data v2, :array_21

    .line 1162
    .line 1163
    .line 1164
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v1

    .line 1168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1173
    .line 1174
    .line 1175
    new-instance v1, Ljava/util/Date;

    .line 1176
    .line 1177
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v1

    .line 1188
    invoke-virtual {v1}, Lv1/d;->c()Li7/s;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1195
    .line 1196
    .line 1197
    const/16 v6, 0x13

    .line 1198
    .line 1199
    new-array v3, v6, [B

    .line 1200
    .line 1201
    fill-array-data v3, :array_22

    .line 1202
    .line 1203
    .line 1204
    new-array v4, v5, [B

    .line 1205
    .line 1206
    fill-array-data v4, :array_23

    .line 1207
    .line 1208
    .line 1209
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v3

    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    sget-object v3, Li7/m;->k:Ljava/util/ArrayList;

    .line 1217
    .line 1218
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1219
    .line 1220
    .line 1221
    move-result v3

    .line 1222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    const/16 v3, 0x12

    .line 1226
    .line 1227
    new-array v3, v3, [B

    .line 1228
    .line 1229
    fill-array-data v3, :array_24

    .line 1230
    .line 1231
    .line 1232
    new-array v4, v5, [B

    .line 1233
    .line 1234
    fill-array-data v4, :array_25

    .line 1235
    .line 1236
    .line 1237
    invoke-static {v3, v4, v2, v0}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    iget-object v1, v1, Li7/s;->d:Landroidx/lifecycle/MutableLiveData;

    .line 1242
    .line 1243
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1244
    .line 1245
    .line 1246
    goto :goto_d

    .line 1247
    :cond_1c
    move-object/from16 v30, v2

    .line 1248
    .line 1249
    move-object/from16 v31, v3

    .line 1250
    .line 1251
    move/from16 v17, v4

    .line 1252
    .line 1253
    move/from16 v26, v6

    .line 1254
    .line 1255
    move-object/from16 v28, v7

    .line 1256
    .line 1257
    :goto_d
    invoke-virtual/range {v30 .. v30}, Landroid/location/Location;->getSpeed()F

    .line 1258
    .line 1259
    .line 1260
    move-result v0

    .line 1261
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1262
    .line 1263
    cmpl-float v0, v0, v1

    .line 1264
    .line 1265
    if-lez v0, :cond_1d

    .line 1266
    .line 1267
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Lv1/d;->c()Li7/s;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    new-instance v1, Li7/n;

    .line 1276
    .line 1277
    move-object/from16 v2, v31

    .line 1278
    .line 1279
    iget-wide v3, v2, Li7/m;->d:D

    .line 1280
    .line 1281
    double-to-float v3, v3

    .line 1282
    sget-object v4, Li7/m;->k:Ljava/util/ArrayList;

    .line 1283
    .line 1284
    iget v5, v2, Li7/m;->b:I

    .line 1285
    .line 1286
    int-to-double v5, v5

    .line 1287
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1288
    .line 1289
    .line 1290
    move-object/from16 v7, v30

    .line 1291
    .line 1292
    iput-object v7, v1, Li7/n;->a:Landroid/location/Location;

    .line 1293
    .line 1294
    iput v3, v1, Li7/n;->b:F

    .line 1295
    .line 1296
    iput-object v4, v1, Li7/n;->c:Ljava/util/List;

    .line 1297
    .line 1298
    iput-wide v5, v1, Li7/n;->d:D

    .line 1299
    .line 1300
    iget-object v0, v0, Li7/s;->e:Landroidx/lifecycle/MutableLiveData;

    .line 1301
    .line 1302
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1303
    .line 1304
    .line 1305
    goto :goto_e

    .line 1306
    :cond_1d
    move-object/from16 v7, v30

    .line 1307
    .line 1308
    move-object/from16 v2, v31

    .line 1309
    .line 1310
    :goto_e
    sget-object v0, Li7/m;->k:Ljava/util/ArrayList;

    .line 1311
    .line 1312
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1313
    .line 1314
    .line 1315
    move-result v1

    .line 1316
    move/from16 v10, v26

    .line 1317
    .line 1318
    :goto_f
    if-ge v10, v1, :cond_29

    .line 1319
    .line 1320
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    add-int/lit8 v6, v10, 0x1

    .line 1325
    .line 1326
    check-cast v5, Li7/x;

    .line 1327
    .line 1328
    iget-object v8, v2, Li7/m;->f:Li7/i;

    .line 1329
    .line 1330
    iget-wide v9, v2, Li7/m;->d:D

    .line 1331
    .line 1332
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    .line 1336
    .line 1337
    .line 1338
    move-result-wide v29

    .line 1339
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    .line 1340
    .line 1341
    .line 1342
    move-result-wide v31

    .line 1343
    iget-wide v11, v5, Li7/x;->b:D

    .line 1344
    .line 1345
    iget-wide v13, v5, Li7/x;->c:D

    .line 1346
    .line 1347
    invoke-virtual {v7}, Landroid/location/Location;->getSpeed()F

    .line 1348
    .line 1349
    .line 1350
    move-result v8

    .line 1351
    mul-float v8, v8, v17

    .line 1352
    .line 1353
    float-to-int v8, v8

    .line 1354
    const/16 v15, 0x1e

    .line 1355
    .line 1356
    if-ge v8, v15, :cond_1e

    .line 1357
    .line 1358
    move-object/from16 v16, v0

    .line 1359
    .line 1360
    move/from16 v22, v1

    .line 1361
    .line 1362
    :goto_10
    move/from16 v8, v26

    .line 1363
    .line 1364
    :goto_11
    const/4 v9, 0x2

    .line 1365
    goto/16 :goto_17

    .line 1366
    .line 1367
    :cond_1e
    iget v15, v5, Li7/x;->g:I

    .line 1368
    .line 1369
    int-to-double v3, v15

    .line 1370
    iget v15, v5, Li7/x;->f:I

    .line 1371
    .line 1372
    move-object/from16 v16, v0

    .line 1373
    .line 1374
    iget v0, v5, Li7/x;->i:I

    .line 1375
    .line 1376
    move/from16 v22, v1

    .line 1377
    .line 1378
    int-to-double v0, v0

    .line 1379
    move-wide/from16 v23, v0

    .line 1380
    .line 1381
    iget v0, v5, Li7/x;->h:I

    .line 1382
    .line 1383
    int-to-double v0, v0

    .line 1384
    move-wide/from16 v33, v0

    .line 1385
    .line 1386
    const/16 v0, 0x5a

    .line 1387
    .line 1388
    if-ge v8, v0, :cond_1f

    .line 1389
    .line 1390
    const/16 v0, 0xc8

    .line 1391
    .line 1392
    goto :goto_12

    .line 1393
    :cond_1f
    const/16 v0, 0x96

    .line 1394
    .line 1395
    :goto_12
    int-to-double v0, v0

    .line 1396
    add-double v0, v0, v33

    .line 1397
    .line 1398
    move-wide/from16 v38, v0

    .line 1399
    .line 1400
    const/4 v8, 0x1

    .line 1401
    new-array v0, v8, [F

    .line 1402
    .line 1403
    move-object/from16 v37, v0

    .line 1404
    .line 1405
    move-wide/from16 v33, v11

    .line 1406
    .line 1407
    move-wide/from16 v35, v13

    .line 1408
    .line 1409
    invoke-static/range {v29 .. v37}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 1410
    .line 1411
    .line 1412
    aget v0, v37, v26

    .line 1413
    .line 1414
    float-to-double v0, v0

    .line 1415
    cmpl-double v0, v0, v38

    .line 1416
    .line 1417
    if-lez v0, :cond_20

    .line 1418
    .line 1419
    goto :goto_10

    .line 1420
    :cond_20
    if-nez v15, :cond_21

    .line 1421
    .line 1422
    const/4 v8, 0x1

    .line 1423
    goto :goto_11

    .line 1424
    :cond_21
    move-wide/from16 v40, v33

    .line 1425
    .line 1426
    move-wide/from16 v33, v29

    .line 1427
    .line 1428
    move-wide/from16 v29, v40

    .line 1429
    .line 1430
    move-wide/from16 v40, v35

    .line 1431
    .line 1432
    move-wide/from16 v35, v31

    .line 1433
    .line 1434
    move-wide/from16 v31, v40

    .line 1435
    .line 1436
    invoke-static/range {v29 .. v36}, Li7/i;->c(DDDD)D

    .line 1437
    .line 1438
    .line 1439
    move-result-wide v0

    .line 1440
    move-wide/from16 v40, v33

    .line 1441
    .line 1442
    move-wide/from16 v33, v29

    .line 1443
    .line 1444
    move-wide/from16 v29, v40

    .line 1445
    .line 1446
    move-wide/from16 v40, v35

    .line 1447
    .line 1448
    move-wide/from16 v35, v31

    .line 1449
    .line 1450
    move-wide/from16 v31, v40

    .line 1451
    .line 1452
    invoke-static {v0, v1, v3, v4}, Li7/i;->a(DD)D

    .line 1453
    .line 1454
    .line 1455
    move-result-wide v0

    .line 1456
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 1457
    .line 1458
    div-double v3, v23, v3

    .line 1459
    .line 1460
    cmpg-double v0, v0, v3

    .line 1461
    .line 1462
    if-gtz v0, :cond_26

    .line 1463
    .line 1464
    invoke-static/range {v29 .. v36}, Li7/i;->c(DDDD)D

    .line 1465
    .line 1466
    .line 1467
    move-result-wide v0

    .line 1468
    invoke-static {v9, v10, v0, v1}, Li7/i;->a(DD)D

    .line 1469
    .line 1470
    .line 1471
    move-result-wide v0

    .line 1472
    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 1473
    .line 1474
    cmpg-double v8, v0, v3

    .line 1475
    .line 1476
    if-gtz v8, :cond_22

    .line 1477
    .line 1478
    const/4 v8, 0x1

    .line 1479
    :goto_13
    const/4 v9, 0x1

    .line 1480
    goto :goto_14

    .line 1481
    :cond_22
    move/from16 v8, v26

    .line 1482
    .line 1483
    goto :goto_13

    .line 1484
    :goto_14
    if-ne v15, v9, :cond_23

    .line 1485
    .line 1486
    goto :goto_11

    .line 1487
    :cond_23
    const/4 v9, 0x2

    .line 1488
    if-ne v15, v9, :cond_24

    .line 1489
    .line 1490
    if-nez v8, :cond_25

    .line 1491
    .line 1492
    const-wide v10, 0x4066800000000000L    # 180.0

    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    invoke-static {v0, v1, v10, v11}, Li7/i;->a(DD)D

    .line 1498
    .line 1499
    .line 1500
    move-result-wide v0

    .line 1501
    cmpg-double v0, v0, v3

    .line 1502
    .line 1503
    if-gtz v0, :cond_24

    .line 1504
    .line 1505
    goto :goto_16

    .line 1506
    :cond_24
    :goto_15
    move/from16 v8, v26

    .line 1507
    .line 1508
    goto :goto_17

    .line 1509
    :cond_25
    :goto_16
    const/4 v8, 0x1

    .line 1510
    goto :goto_17

    .line 1511
    :cond_26
    const/4 v9, 0x2

    .line 1512
    goto :goto_15

    .line 1513
    :goto_17
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    .line 1514
    .line 1515
    .line 1516
    move-result-wide v29

    .line 1517
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    .line 1518
    .line 1519
    .line 1520
    move-result-wide v31

    .line 1521
    iget-wide v0, v5, Li7/x;->b:D

    .line 1522
    .line 1523
    iget-wide v3, v5, Li7/x;->c:D

    .line 1524
    .line 1525
    move-wide/from16 v33, v0

    .line 1526
    .line 1527
    move-wide/from16 v35, v3

    .line 1528
    .line 1529
    invoke-static/range {v29 .. v36}, La/a;->b(DDDD)D

    .line 1530
    .line 1531
    .line 1532
    iget-object v0, v2, Li7/m;->c:Ljava/util/WeakHashMap;

    .line 1533
    .line 1534
    iget v1, v5, Li7/x;->a:I

    .line 1535
    .line 1536
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v1

    .line 1540
    new-instance v3, Ljava/util/ArrayDeque;

    .line 1541
    .line 1542
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 1543
    .line 1544
    .line 1545
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v0

    .line 1549
    check-cast v0, Ljava/util/Deque;

    .line 1550
    .line 1551
    :try_start_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v1

    .line 1555
    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1556
    .line 1557
    .line 1558
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 1559
    .line 1560
    .line 1561
    move-result v1

    .line 1562
    const/16 v3, 0xa

    .line 1563
    .line 1564
    if-le v1, v3, :cond_27

    .line 1565
    .line 1566
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    :cond_27
    iget-object v1, v2, Li7/m;->c:Ljava/util/WeakHashMap;

    .line 1570
    .line 1571
    iget v3, v5, Li7/x;->a:I

    .line 1572
    .line 1573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v3

    .line 1577
    invoke-virtual {v1, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v0

    .line 1584
    new-instance v1, Li7/k;

    .line 1585
    .line 1586
    move/from16 v10, v26

    .line 1587
    .line 1588
    invoke-direct {v1, v10}, Li7/k;-><init>(I)V

    .line 1589
    .line 1590
    .line 1591
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    .line 1596
    .line 1597
    .line 1598
    move-result-wide v0

    .line 1599
    const-wide/16 v3, 0x4

    .line 1600
    .line 1601
    cmp-long v0, v0, v3

    .line 1602
    .line 1603
    if-ltz v0, :cond_28

    .line 1604
    .line 1605
    invoke-static {}, Li7/m;->a()Ljava/lang/Boolean;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v0

    .line 1609
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    if-eqz v0, :cond_28

    .line 1614
    .line 1615
    new-instance v0, Li7/a;

    .line 1616
    .line 1617
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1618
    .line 1619
    .line 1620
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    iput-wide v3, v0, Li7/a;->b:D

    .line 1626
    .line 1627
    iput-object v5, v0, Li7/a;->a:Li7/x;

    .line 1628
    .line 1629
    iget-object v1, v2, Li7/m;->e:Li7/g;

    .line 1630
    .line 1631
    invoke-virtual {v1, v0}, Li7/g;->b(Li7/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1632
    .line 1633
    .line 1634
    :catch_1
    :cond_28
    move v10, v6

    .line 1635
    move-object/from16 v0, v16

    .line 1636
    .line 1637
    move/from16 v1, v22

    .line 1638
    .line 1639
    const/16 v26, 0x0

    .line 1640
    .line 1641
    goto/16 :goto_f

    .line 1642
    .line 1643
    :cond_29
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 1644
    .line 1645
    .line 1646
    move-result v0

    .line 1647
    if-eqz v0, :cond_2b

    .line 1648
    .line 1649
    iget-object v0, v2, Li7/m;->i:Ljava/lang/Boolean;

    .line 1650
    .line 1651
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1652
    .line 1653
    .line 1654
    move-result v0

    .line 1655
    if-nez v0, :cond_2a

    .line 1656
    .line 1657
    goto :goto_18

    .line 1658
    :cond_2a
    throw v28

    .line 1659
    :cond_2b
    :goto_18
    iget-object v0, v2, Li7/m;->a:Lcom/example/navistart/LocServ;

    .line 1660
    .line 1661
    invoke-static {v0}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 1662
    .line 1663
    .line 1664
    move-result v0

    .line 1665
    if-eqz v0, :cond_2d

    .line 1666
    .line 1667
    iget-object v0, v2, Li7/m;->i:Ljava/lang/Boolean;

    .line 1668
    .line 1669
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    if-nez v0, :cond_2c

    .line 1674
    .line 1675
    goto :goto_19

    .line 1676
    :cond_2c
    throw v28

    .line 1677
    :cond_2d
    :goto_19
    iget-object v4, v2, Li7/m;->e:Li7/g;

    .line 1678
    .line 1679
    iget-object v0, v2, Li7/m;->f:Li7/i;

    .line 1680
    .line 1681
    iget-object v0, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 1682
    .line 1683
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1684
    .line 1685
    .line 1686
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1687
    .line 1688
    .line 1689
    move-result v1

    .line 1690
    const/16 v19, 0x1

    .line 1691
    .line 1692
    add-int/lit8 v1, v1, -0x1

    .line 1693
    .line 1694
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v1

    .line 1698
    check-cast v1, Landroid/location/Location;

    .line 1699
    .line 1700
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 1701
    .line 1702
    .line 1703
    move-result-wide v5

    .line 1704
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 1705
    .line 1706
    .line 1707
    move-result-wide v7

    .line 1708
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    .line 1709
    .line 1710
    .line 1711
    move-result v1

    .line 1712
    float-to-double v1, v1

    .line 1713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1714
    .line 1715
    .line 1716
    move-result-wide v11

    .line 1717
    iput-wide v11, v4, Li7/g;->n:J

    .line 1718
    .line 1719
    iget-object v9, v4, Li7/g;->e:Ljava/lang/Object;

    .line 1720
    .line 1721
    monitor-enter v9

    .line 1722
    :try_start_2
    iget-object v3, v4, Li7/g;->f:Ljava/util/LinkedList;

    .line 1723
    .line 1724
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v3

    .line 1728
    if-eqz v3, :cond_33

    .line 1729
    .line 1730
    invoke-static {}, Li7/g;->a()Ljava/lang/Boolean;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v3

    .line 1734
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v3

    .line 1738
    if-eqz v3, :cond_33

    .line 1739
    .line 1740
    iget-boolean v0, v4, Li7/g;->l:Z

    .line 1741
    .line 1742
    if-eqz v0, :cond_2e

    .line 1743
    .line 1744
    invoke-virtual {v4}, Li7/g;->c()V

    .line 1745
    .line 1746
    .line 1747
    const/4 v10, 0x0

    .line 1748
    iput-boolean v10, v4, Li7/g;->l:Z

    .line 1749
    .line 1750
    goto :goto_1a

    .line 1751
    :catchall_0
    move-exception v0

    .line 1752
    goto/16 :goto_1e

    .line 1753
    .line 1754
    :cond_2e
    :goto_1a
    invoke-virtual {v4}, Li7/g;->g()V

    .line 1755
    .line 1756
    .line 1757
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 1758
    .line 1759
    .line 1760
    move-result v0

    .line 1761
    if-eqz v0, :cond_30

    .line 1762
    .line 1763
    iget-object v0, v4, Li7/g;->i:Ljava/lang/Boolean;

    .line 1764
    .line 1765
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1766
    .line 1767
    .line 1768
    move-result v0

    .line 1769
    if-nez v0, :cond_2f

    .line 1770
    .line 1771
    goto :goto_1b

    .line 1772
    :cond_2f
    throw v28

    .line 1773
    :cond_30
    :goto_1b
    iget-object v0, v4, Li7/g;->d:Lcom/example/navistart/LocServ;

    .line 1774
    .line 1775
    invoke-static {v0}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 1776
    .line 1777
    .line 1778
    move-result v0

    .line 1779
    if-eqz v0, :cond_32

    .line 1780
    .line 1781
    iget-object v0, v4, Li7/g;->i:Ljava/lang/Boolean;

    .line 1782
    .line 1783
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1784
    .line 1785
    .line 1786
    move-result v0

    .line 1787
    if-nez v0, :cond_31

    .line 1788
    .line 1789
    goto :goto_1c

    .line 1790
    :cond_31
    throw v28

    .line 1791
    :cond_32
    :goto_1c
    monitor-exit v9

    .line 1792
    goto/16 :goto_1f

    .line 1793
    .line 1794
    :cond_33
    const/4 v3, 0x1

    .line 1795
    iput-boolean v3, v4, Li7/g;->l:Z

    .line 1796
    .line 1797
    new-instance v10, Ljava/util/ArrayList;

    .line 1798
    .line 1799
    iget-object v11, v4, Li7/g;->f:Ljava/util/LinkedList;

    .line 1800
    .line 1801
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1802
    .line 1803
    .line 1804
    new-instance v3, Li7/b;

    .line 1805
    .line 1806
    invoke-direct/range {v3 .. v8}, Li7/b;-><init>(Li7/g;DD)V

    .line 1807
    .line 1808
    .line 1809
    invoke-static {v3}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v3

    .line 1813
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v11}, Ljava/util/LinkedList;->clear()V

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1820
    .line 1821
    .line 1822
    iget-object v3, v4, Li7/g;->f:Ljava/util/LinkedList;

    .line 1823
    .line 1824
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v3

    .line 1828
    check-cast v3, Li7/a;

    .line 1829
    .line 1830
    if-eqz v3, :cond_36

    .line 1831
    .line 1832
    invoke-static {}, Li7/g;->a()Ljava/lang/Boolean;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v10

    .line 1836
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1837
    .line 1838
    .line 1839
    move-result v10

    .line 1840
    if-eqz v10, :cond_36

    .line 1841
    .line 1842
    iget-object v10, v3, Li7/a;->a:Li7/x;

    .line 1843
    .line 1844
    iget-wide v11, v10, Li7/x;->b:D

    .line 1845
    .line 1846
    iget-wide v13, v10, Li7/x;->c:D

    .line 1847
    .line 1848
    move-wide v15, v11

    .line 1849
    move-wide/from16 v17, v13

    .line 1850
    .line 1851
    move-wide v11, v5

    .line 1852
    move-wide v13, v7

    .line 1853
    invoke-static/range {v11 .. v18}, La/a;->b(DDDD)D

    .line 1854
    .line 1855
    .line 1856
    move-result-wide v12

    .line 1857
    move-object/from16 v16, v0

    .line 1858
    .line 1859
    move-wide v14, v1

    .line 1860
    move-object v11, v3

    .line 1861
    invoke-static/range {v11 .. v16}, Li7/g;->f(Li7/a;DDLjava/util/ArrayList;)Z

    .line 1862
    .line 1863
    .line 1864
    move-result v0

    .line 1865
    if-eqz v0, :cond_34

    .line 1866
    .line 1867
    iget-object v0, v4, Li7/g;->f:Ljava/util/LinkedList;

    .line 1868
    .line 1869
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    goto :goto_1d

    .line 1873
    :cond_34
    iget-wide v0, v11, Li7/a;->b:D

    .line 1874
    .line 1875
    const-wide v20, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    cmpg-double v2, v0, v20

    .line 1881
    .line 1882
    if-gez v2, :cond_35

    .line 1883
    .line 1884
    cmpl-double v0, v12, v0

    .line 1885
    .line 1886
    if-eqz v0, :cond_35

    .line 1887
    .line 1888
    iget-object v0, v11, Li7/a;->a:Li7/x;

    .line 1889
    .line 1890
    iget-object v1, v4, Li7/g;->g:Landroid/os/Handler;

    .line 1891
    .line 1892
    new-instance v2, Li7/d;

    .line 1893
    .line 1894
    invoke-direct {v2, v4, v0, v12, v13}, Li7/d;-><init>(Li7/g;Li7/x;D)V

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1898
    .line 1899
    .line 1900
    :cond_35
    iput-wide v12, v11, Li7/a;->b:D

    .line 1901
    .line 1902
    :cond_36
    :goto_1d
    iget-object v0, v4, Li7/g;->f:Ljava/util/LinkedList;

    .line 1903
    .line 1904
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1905
    .line 1906
    .line 1907
    move-result v0

    .line 1908
    if-eqz v0, :cond_37

    .line 1909
    .line 1910
    invoke-virtual {v4}, Li7/g;->c()V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v4}, Li7/g;->g()V

    .line 1914
    .line 1915
    .line 1916
    :cond_37
    monitor-exit v9

    .line 1917
    goto :goto_1f

    .line 1918
    :goto_1e
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1919
    throw v0

    .line 1920
    :cond_38
    :goto_1f
    return-void

    .line 1921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    :array_0
    .array-data 1
        0x50t
        -0x78t
        -0x1at
        0x1ct
        -0x64t
        -0x4dt
        -0x78t
        0x48t
        0x71t
        -0x64t
        -0x3et
        0x1at
        -0x74t
        -0x68t
        -0x4ct
        0x4ct
        0x77t
        -0x74t
        -0x16t
        0x17t
        -0x61t
        -0x7et
        -0x48t
        0x6et
        0x53t
        -0x55t
    .end array-data

    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    nop

    .line 1955
    :array_1
    .array-data 1
        0x3t
        -0x8t
        -0x7dt
        0x79t
        -0x8t
        -0xft
        -0x19t
        0x29t
    .end array-data

    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    :array_2
    .array-data 1
        0x6et
        -0x58t
        -0x15t
        -0x33t
        -0xat
        -0x18t
        -0x7dt
        0x39t
        0x7ct
        -0x80t
        -0x3dt
        -0x2ct
        -0x3t
        -0x18t
        -0x4dt
        0x32t
        0x73t
        -0x50t
        -0x2et
        -0x25t
    .end array-data

    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    :array_3
    .array-data 1
        0x1dt
        -0x21t
        -0x4ct
        -0x43t
        -0x67t
        -0x71t
        -0x14t
        0x5dt
    .end array-data

    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    :array_4
    .array-data 1
        0x1dt
        0x2ct
        0xat
        -0x8t
        0x3ct
        0x7t
        -0x75t
        0x5ct
        0x4dt
        0x68t
        0x6at
        -0x6et
        0x6ct
        0x59t
        0x2ct
        0x5dt
        0x78t
        0x69t
        0x58t
        -0x6dt
        0x5dt
        -0x58t
        0x7bt
        0x30t
        0x1dt
        0x8t
        0xat
        -0x4t
        0x3ct
        0x8t
        0x7bt
        0x3dt
        0x1dt
        0xat
        0xat
        -0x8t
        0x3dt
        0x3dt
        0x7bt
        0x30t
        0x1dt
        0x0t
        0xbt
        -0x34t
        -0x33t
        0x59t
        0x29t
        0x5ct
        0x4dt
        0x68t
        0x6ft
        -0x6dt
        0x5ct
        0x59t
        0x28t
        0x5dt
        0x78t
        0x69t
        0x58t
        -0x6et
        0x6ct
        0x59t
        0x24t
        -0x53t
        0x1dt
        0x2t
        0xat
        -0xdt
        0x3dt
        0x32t
        -0x75t
        0x5dt
        0x71t
        0x68t
        0x62t
        -0x6dt
        0x50t
        0x58t
        0x13t
        0x5dt
        0x71t
        0x69t
        0x59t
        -0x6dt
        0x51t
        -0x58t
        0x7bt
        0x39t
        0x1dt
        0xat
        0xat
        -0xat
        -0x33t
        0x59t
        0x29t
        0x5dt
        0x73t
        0x69t
        0x5dt
        -0x6dt
        0x57t
        0x58t
        0x13t
        -0x5dt
    .end array-data

    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    :array_5
    .array-data 1
        -0x33t
        -0x48t
        -0x26t
        0x43t
        -0x13t
        -0x78t
        -0x55t
        -0x73t
    .end array-data

    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    :array_6
    .array-data 1
        -0x2t
        0xct
        0x72t
        0x70t
        0x5et
        0x42t
        -0x2at
        0x50t
        -0x32t
        0x8t
        0x47t
        0x63t
        0x6at
        0x56t
        -0x2dt
        0x43t
        -0x2t
        0x2ft
    .end array-data

    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    nop

    .line 2063
    :array_7
    .array-data 1
        -0x46t
        0x6dt
        0x6t
        0x11t
        0xbt
        0x32t
        -0x4et
        0x31t
    .end array-data

    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    :array_8
    .array-data 1
        -0x1at
        0x60t
        0x68t
        -0x6ft
        0x62t
        0xbt
        -0x4ct
        0x75t
        -0x6bt
        0x63t
        0x76t
        -0x65t
        0x6ct
        0x7ft
        -0x40t
        0x2dt
        -0x2ct
        0x43t
        0x42t
        -0x43t
        0x42t
        0x1bt
        -0xbt
        0x2bt
        -0x2ct
    .end array-data

    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    nop

    .line 2089
    :array_9
    .array-data 1
        -0x4bt
        0x25t
        0x24t
        -0x2ct
        0x21t
        0x5ft
        -0x6ct
        0x5ft
    .end array-data

    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    :array_a
    .array-data 1
        0x49t
        0x43t
        0x67t
        0x0t
        -0x3dt
        0x6at
        0x34t
        -0x3ct
    .end array-data

    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    :array_b
    .array-data 1
        -0x16t
        -0x8t
        0x3et
        -0x4bt
        -0x39t
        -0x4at
        -0x5t
        0x7t
    .end array-data

    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    :array_c
    .array-data 1
        -0x3at
        0x72t
        0x3dt
    .end array-data

    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    :array_d
    .array-data 1
        -0x71t
        0x36t
        0x65t
        -0x47t
        0x5dt
        -0x40t
        -0x40t
        0x1ft
    .end array-data

    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    :array_e
    .array-data 1
        0x44t
        -0x1ct
        -0x18t
        0x16t
    .end array-data

    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    :array_f
    .array-data 1
        0x10t
        -0x43t
        -0x48t
        0x53t
        -0x10t
        -0x29t
        -0xat
        -0x39t
    .end array-data

    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    :array_10
    .array-data 1
        0x10t
        0x38t
        0x2t
        -0x7t
        -0x74t
    .end array-data

    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    nop

    .line 2149
    :array_11
    .array-data 1
        0x43t
        0x68t
        0x47t
        -0x44t
        -0x38t
        0x4dt
        0x4ct
        0x5et
    .end array-data

    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    :array_12
    .array-data 1
        -0x1at
        0x73t
        0x5ct
        -0x61t
        0x4dt
        -0x1bt
        0x21t
    .end array-data

    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    :array_13
    .array-data 1
        -0x5et
        0x3at
        0xet
        -0x35t
        0x14t
        -0x4bt
        0x64t
        0x44t
    .end array-data

    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    :array_14
    .array-data 1
        -0x41t
        -0x5dt
        0x23t
        -0x8t
        -0x76t
        0x25t
        -0x47t
        -0x25t
        -0x4bt
    .end array-data

    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    nop

    .line 2183
    :array_15
    .array-data 1
        -0x5t
        -0x16t
        0x71t
        -0x43t
        -0x37t
        0x71t
        -0x10t
        -0x6ct
    .end array-data

    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    :array_16
    .array-data 1
        -0x6ct
        -0x33t
        0xft
        0x26t
        0x47t
        -0x6dt
        0x31t
        -0x47t
    .end array-data

    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    :array_17
    .array-data 1
        -0x30t
        -0x7ct
        0x5ct
        0x72t
        0x6t
        -0x23t
        0x72t
        -0x4t
    .end array-data

    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    :array_18
    .array-data 1
        -0x31t
        0x26t
        0x59t
        -0x27t
        -0x33t
    .end array-data

    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    nop

    .line 2215
    :array_19
    .array-data 1
        -0x72t
        0x68t
        0x1et
        -0x6bt
        -0x78t
        -0x46t
        -0x27t
        -0x7ct
    .end array-data

    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    :array_1a
    .array-data 1
        0xet
        0xdt
        -0x31t
        0x28t
        0x42t
        0x4ct
        -0x7bt
        -0x29t
        0x18t
        0x1et
        -0x3ft
        0x2ft
        0x49t
        0x4bt
    .end array-data

    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    nop

    .line 2235
    :array_1b
    .array-data 1
        0x5dt
        0x5dt
        -0x76t
        0x6dt
        0x6t
        0x13t
        -0x3at
        -0x61t
    .end array-data

    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    :array_1c
    .array-data 1
        -0x1at
        -0xct
        -0x3at
        0x3dt
        -0x6ct
        -0x22t
        0x3ft
        -0x7dt
        -0x20t
        -0x12t
        -0x3ft
        0x2at
        -0x63t
        -0x2ct
        0x33t
        -0x77t
        -0x5t
        -0x17t
    .end array-data

    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    nop

    .line 2257
    :array_1d
    .array-data 1
        -0x4ct
        -0x4ft
        -0x7et
        0x62t
        -0x28t
        -0x69t
        0x78t
        -0x35t
    .end array-data

    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    :array_1e
    .array-data 1
        0x9t
        -0x4ft
        0x54t
        0x72t
        0x2ft
        0x6dt
        -0x23t
        0x4bt
        0x18t
        -0x46t
        0x4ft
        0x74t
        0x34t
        0x7ct
        -0x34t
        0x49t
        0x1bt
        -0x45t
        0x48t
    .end array-data

    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    :array_1f
    .array-data 1
        0x59t
        -0xct
        0x10t
        0x37t
        0x7ct
        0x39t
        -0x71t
        0x2t
    .end array-data

    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    :array_20
    .array-data 1
        0x11t
        0x45t
        -0x51t
        0x20t
        -0x40t
        0xdt
        0x40t
        -0x43t
    .end array-data

    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    :array_21
    .array-data 1
        0x59t
        0xdt
        -0x6bt
        0x4dt
        -0x53t
        0x37t
        0x33t
        -0x32t
    .end array-data

    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    :array_22
    .array-data 1
        -0x10t
        -0x58t
        -0x51t
        -0x30t
        0x20t
        -0x1bt
        0x49t
        -0x4et
        -0xft
        -0x44t
        -0x51t
        -0x2at
        0x20t
        -0x1dt
        0x48t
        -0x71t
        -0x10t
        -0x7ft
        0x5ft
    .end array-data

    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    :array_23
    .array-data 1
        0x20t
        0x3ft
        0x7ft
        0x60t
        -0x10t
        0x56t
        -0x68t
        0x32t
    .end array-data

    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    .line 2324
    .line 2325
    :array_24
    .array-data 1
        -0x78t
        0x18t
        0x61t
        -0x16t
        0x7at
        0x4at
        0x7bt
        -0x26t
        0x1dt
        0x18t
        0x65t
        -0x15t
        0x49t
        0x4bt
        0x4ft
        -0x26t
        0x1at
        -0x18t
    .end array-data

    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    .line 2335
    .line 2336
    .line 2337
    .line 2338
    nop

    .line 2339
    :array_25
    .array-data 1
        -0x58t
        -0x38t
        -0x21t
        0x3at
        -0x35t
        -0x65t
        -0xft
        0xat
    .end array-data
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le0/u1;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 8
    .line 9
    iget-object v0, v0, Le0/u1;->j:Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final d()V
    .locals 5

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le0/x1;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/media/MediaMetadata;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    new-array v4, v3, [B

    .line 21
    .line 22
    fill-array-data v4, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const/16 v2, 0x1a

    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_2

    .line 40
    .line 41
    .line 42
    new-array v4, v3, [B

    .line 43
    .line 44
    fill-array-data v4, :array_3

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_0
    if-nez v2, :cond_2

    .line 56
    .line 57
    const/16 v2, 0x23

    .line 58
    .line 59
    new-array v2, v2, [B

    .line 60
    .line 61
    fill-array-data v2, :array_4

    .line 62
    .line 63
    .line 64
    new-array v3, v3, [B

    .line 65
    .line 66
    fill-array-data v3, :array_5

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v2, 0x0

    .line 79
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 80
    .line 81
    iput-object v2, v0, Le0/x1;->e:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    :cond_3
    return-void

    .line 84
    nop

    .line 85
    :array_0
    .array-data 1
        0x67t
        0x4ct
        -0x17t
        -0x45t
        0x7et
        -0x59t
        -0x57t
        0x75t
        0x6bt
        0x47t
        -0x17t
        -0x60t
        0x70t
        -0x20t
        -0x60t
        0x3et
        0x72t
        0x43t
        -0x17t
        -0x58t
        0x65t
        -0x51t
        -0x1dt
        0x1at
        0x4at
        0x60t
        -0x28t
        -0x7ct
        0x4et
        -0x71t
        -0x61t
        0xft
    .end array-data

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
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 1
        0x6t
        0x22t
        -0x73t
        -0x37t
        0x11t
        -0x32t
        -0x33t
        0x5bt
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_2
    .array-data 1
        0x18t
        0x13t
        -0x4bt
        -0x5dt
        -0x29t
        -0x11t
        0x58t
        0x1at
        0x14t
        0x18t
        -0x4bt
        -0x48t
        -0x27t
        -0x58t
        0x51t
        0x51t
        0xdt
        0x1ct
        -0x4bt
        -0x50t
        -0x34t
        -0x19t
        0x12t
        0x75t
        0x2bt
        0x29t
    .end array-data

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
    .line 130
    nop

    .line 131
    :array_3
    .array-data 1
        0x79t
        0x7dt
        -0x2ft
        -0x2ft
        -0x48t
        -0x7at
        0x3ct
        0x34t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_4
    .array-data 1
        0x39t
        0x6dt
        0x6ft
        0x38t
        -0x67t
        0x5et
        -0x68t
        -0x34t
        0x35t
        0x66t
        0x6ft
        0x23t
        -0x69t
        0x19t
        -0x6ft
        -0x79t
        0x2ct
        0x62t
        0x6ft
        0x2bt
        -0x7et
        0x56t
        -0x2et
        -0x5at
        0x11t
        0x50t
        0x5bt
        0x6t
        -0x49t
        0x6et
        -0x5dt
        -0x55t
        0x1bt
        0x4ct
        0x45t
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
    :array_5
    .array-data 1
        0x58t
        0x3t
        0xbt
        0x4at
        -0xat
        0x37t
        -0x4t
        -0x1et
    .end array-data
.end method

.method private final e()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le0/x1;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/media/session/MediaController;

    .line 8
    .line 9
    iget-boolean v2, v0, Le0/x1;->o:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Le0/x1;->o:Z

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Le0/x1;->d(Landroid/media/session/MediaController;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Le0/x1;->o:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final f()V
    .locals 15

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le0/x1;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/media/session/PlaybackState;

    .line 8
    .line 9
    iget-object v2, v0, Le0/x1;->l:Le0/v;

    .line 10
    .line 11
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 12
    .line 13
    .line 14
    if-eqz v1, :cond_c

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v3, v4, :cond_b

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    if-eq v3, v5, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    sget-object v3, Ln0/g;->b:Ln0/g;

    .line 29
    .line 30
    iput-object v3, v0, Le0/x1;->a:Ln0/g;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Le0/x1;->f:Ljava/lang/Long;

    .line 41
    .line 42
    iget-object v1, v0, Le0/x1;->h:Landroid/media/AudioManager;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v1, :cond_a

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v6, Le0/m;->j:[B

    .line 61
    .line 62
    sget-object v7, Le0/p3;->a:[Ljava/lang/String;

    .line 63
    .line 64
    const-string v7, ""

    .line 65
    .line 66
    invoke-static {v6, v5, v7, v1}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 67
    .line 68
    .line 69
    const/16 v5, 0x9

    .line 70
    .line 71
    new-array v5, v5, [B

    .line 72
    .line 73
    fill-array-data v5, :array_0

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v1}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 77
    .line 78
    .line 79
    sget-object v5, Le0/x1;->q:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1, v5}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    sget-object v6, Le0/m;->f:[B

    .line 90
    .line 91
    invoke-static {v6, v5, v7, v1}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v5, 0x0

    .line 96
    const/16 v8, 0x8

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-wide v9, 0x7fffffffffffffffL

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    invoke-static {v9, v10, v1}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    new-instance v1, Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    new-instance v13, Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V

    .line 133
    .line 134
    .line 135
    sget-object v6, Le0/m;->g:[B

    .line 136
    .line 137
    invoke-static {v6, v12, v13}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    new-array v12, v3, [B

    .line 142
    .line 143
    const/16 v13, -0x7b

    .line 144
    .line 145
    aput-byte v13, v12, v5

    .line 146
    .line 147
    new-array v13, v8, [B

    .line 148
    .line 149
    fill-array-data v13, :array_1

    .line 150
    .line 151
    .line 152
    invoke-static {v12, v13, v11, v6, v5}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v11

    .line 163
    cmp-long v1, v9, v11

    .line 164
    .line 165
    if-gez v1, :cond_1

    .line 166
    .line 167
    move v1, v3

    .line 168
    goto :goto_0

    .line 169
    :cond_1
    move v1, v5

    .line 170
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    goto :goto_1

    .line 175
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 176
    .line 177
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    :try_start_0
    invoke-virtual {v0}, Le0/x1;->a()Landroid/media/session/MediaController;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    new-array v9, v4, [B

    .line 204
    .line 205
    fill-array-data v9, :array_2

    .line 206
    .line 207
    .line 208
    new-array v10, v8, [B

    .line 209
    .line 210
    fill-array-data v10, :array_3

    .line 211
    .line 212
    .line 213
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    move v11, v5

    .line 222
    move-object v9, v7

    .line 223
    move-object v10, v9

    .line 224
    :goto_2
    array-length v12, v6

    .line 225
    sub-int/2addr v12, v3

    .line 226
    if-ge v11, v12, :cond_6

    .line 227
    .line 228
    const/4 v12, 0x4

    .line 229
    if-nez v11, :cond_3

    .line 230
    .line 231
    new-array v13, v12, [B

    .line 232
    .line 233
    fill-array-data v13, :array_4

    .line 234
    .line 235
    .line 236
    new-array v14, v8, [B

    .line 237
    .line 238
    fill-array-data v14, :array_5

    .line 239
    .line 240
    .line 241
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    aget-object v14, v6, v5

    .line 246
    .line 247
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v13

    .line 251
    if-nez v13, :cond_3

    .line 252
    .line 253
    aget-object v7, v6, v5

    .line 254
    .line 255
    :cond_3
    if-ne v11, v3, :cond_4

    .line 256
    .line 257
    new-array v13, v12, [B

    .line 258
    .line 259
    fill-array-data v13, :array_6

    .line 260
    .line 261
    .line 262
    new-array v14, v8, [B

    .line 263
    .line 264
    fill-array-data v14, :array_7

    .line 265
    .line 266
    .line 267
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    aget-object v14, v6, v3

    .line 272
    .line 273
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    if-nez v13, :cond_4

    .line 278
    .line 279
    aget-object v9, v6, v3

    .line 280
    .line 281
    :cond_4
    if-ne v11, v4, :cond_5

    .line 282
    .line 283
    new-array v12, v12, [B

    .line 284
    .line 285
    fill-array-data v12, :array_8

    .line 286
    .line 287
    .line 288
    new-array v13, v8, [B

    .line 289
    .line 290
    fill-array-data v13, :array_9

    .line 291
    .line 292
    .line 293
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    aget-object v13, v6, v4

    .line 298
    .line 299
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v12

    .line 303
    if-nez v12, :cond_5

    .line 304
    .line 305
    aget-object v10, v6, v4

    .line 306
    .line 307
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_6
    const/16 v4, 0x20

    .line 311
    .line 312
    new-array v4, v4, [B

    .line 313
    .line 314
    fill-array-data v4, :array_a

    .line 315
    .line 316
    .line 317
    new-array v5, v8, [B

    .line 318
    .line 319
    fill-array-data v5, :array_b

    .line 320
    .line 321
    .line 322
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    if-nez v4, :cond_7

    .line 331
    .line 332
    const/16 v4, 0x1a

    .line 333
    .line 334
    new-array v4, v4, [B

    .line 335
    .line 336
    fill-array-data v4, :array_c

    .line 337
    .line 338
    .line 339
    new-array v5, v8, [B

    .line 340
    .line 341
    fill-array-data v5, :array_d

    .line 342
    .line 343
    .line 344
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    :cond_7
    if-nez v4, :cond_8

    .line 353
    .line 354
    const/16 v4, 0x23

    .line 355
    .line 356
    new-array v4, v4, [B

    .line 357
    .line 358
    fill-array-data v4, :array_e

    .line 359
    .line 360
    .line 361
    new-array v5, v8, [B

    .line 362
    .line 363
    fill-array-data v5, :array_f

    .line 364
    .line 365
    .line 366
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    :cond_8
    const/16 v5, 0x1f

    .line 375
    .line 376
    new-array v5, v5, [B

    .line 377
    .line 378
    fill-array-data v5, :array_10

    .line 379
    .line 380
    .line 381
    new-array v6, v8, [B

    .line 382
    .line 383
    fill-array-data v6, :array_11

    .line 384
    .line 385
    .line 386
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 391
    .line 392
    .line 393
    move-result-wide v5

    .line 394
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iput-object v1, v0, Le0/x1;->g:Ljava/lang/Long;

    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_9
    const/4 v4, 0x0

    .line 402
    move-object v9, v7

    .line 403
    move-object v10, v9

    .line 404
    :goto_3
    iput-object v7, v0, Le0/x1;->b:Ljava/lang/String;

    .line 405
    .line 406
    iput-object v9, v0, Le0/x1;->c:Ljava/lang/String;

    .line 407
    .line 408
    iput-object v10, v0, Le0/x1;->d:Ljava/lang/String;

    .line 409
    .line 410
    iput-object v4, v0, Le0/x1;->e:Landroid/graphics/Bitmap;

    .line 411
    .line 412
    invoke-static {v7, v9, v10, v4}, Le0/x1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 413
    .line 414
    .line 415
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Lv1/d;->d()Lv1/c;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    new-instance v4, Ls0/a;

    .line 424
    .line 425
    iget-object v5, v0, Le0/x1;->a:Ln0/g;

    .line 426
    .line 427
    iget-object v6, v0, Le0/x1;->b:Ljava/lang/String;

    .line 428
    .line 429
    iget-object v7, v0, Le0/x1;->c:Ljava/lang/String;

    .line 430
    .line 431
    iget-object v8, v0, Le0/x1;->d:Ljava/lang/String;

    .line 432
    .line 433
    iget-object v9, v0, Le0/x1;->e:Landroid/graphics/Bitmap;

    .line 434
    .line 435
    iget-object v10, v0, Le0/x1;->f:Ljava/lang/Long;

    .line 436
    .line 437
    iget-object v11, v0, Le0/x1;->g:Ljava/lang/Long;

    .line 438
    .line 439
    invoke-direct/range {v4 .. v11}, Ls0/a;-><init>(Ln0/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 440
    .line 441
    .line 442
    iget-object v1, v1, Lv1/c;->f:Landroidx/lifecycle/MutableLiveData;

    .line 443
    .line 444
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .line 446
    .line 447
    :catch_0
    :cond_a
    iget-object v1, v0, Le0/x1;->f:Ljava/lang/Long;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 450
    .line 451
    .line 452
    move-result-wide v4

    .line 453
    const-wide/32 v6, 0x7fffffff

    .line 454
    .line 455
    .line 456
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 457
    .line 458
    .line 459
    move-result-wide v4

    .line 460
    const-wide/32 v8, -0x80000000

    .line 461
    .line 462
    .line 463
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 464
    .line 465
    .line 466
    move-result-wide v4

    .line 467
    long-to-int v1, v4

    .line 468
    iget-object v4, v0, Le0/x1;->g:Ljava/lang/Long;

    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 475
    .line 476
    .line 477
    move-result-wide v4

    .line 478
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 479
    .line 480
    .line 481
    move-result-wide v4

    .line 482
    long-to-int v4, v4

    .line 483
    new-instance v5, Le0/w1;

    .line 484
    .line 485
    invoke-direct {v5, v1, v4}, Le0/w1;-><init>(II)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v5}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 489
    .line 490
    .line 491
    new-instance v1, Le0/v0;

    .line 492
    .line 493
    invoke-direct {v1, v3}, Le0/v0;-><init>(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v1}, Le0/v;->execute(Ljava/lang/Runnable;)V

    .line 497
    .line 498
    .line 499
    goto :goto_4

    .line 500
    :cond_b
    sget-object v1, Ln0/g;->c:Ln0/g;

    .line 501
    .line 502
    iput-object v1, v0, Le0/x1;->a:Ln0/g;

    .line 503
    .line 504
    :cond_c
    :goto_4
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lv1/d;->d()Lv1/c;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    new-instance v2, Ls0/a;

    .line 513
    .line 514
    iget-object v3, v0, Le0/x1;->a:Ln0/g;

    .line 515
    .line 516
    iget-object v4, v0, Le0/x1;->b:Ljava/lang/String;

    .line 517
    .line 518
    iget-object v5, v0, Le0/x1;->c:Ljava/lang/String;

    .line 519
    .line 520
    iget-object v6, v0, Le0/x1;->d:Ljava/lang/String;

    .line 521
    .line 522
    iget-object v7, v0, Le0/x1;->e:Landroid/graphics/Bitmap;

    .line 523
    .line 524
    iget-object v8, v0, Le0/x1;->f:Ljava/lang/Long;

    .line 525
    .line 526
    iget-object v9, v0, Le0/x1;->g:Ljava/lang/Long;

    .line 527
    .line 528
    invoke-direct/range {v2 .. v9}, Ls0/a;-><init>(Ln0/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 529
    .line 530
    .line 531
    iget-object v0, v1, Lv1/c;->f:Landroidx/lifecycle/MutableLiveData;

    .line 532
    .line 533
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
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

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    nop

    .line 547
    :array_1
    .array-data 1
        -0x4bt
        -0x3et
        0x5bt
        -0x2et
        -0xat
        -0x53t
        -0x3t
        -0x3t
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_2
    .array-data 1
        -0x78t
        0x47t
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    nop

    .line 561
    :array_3
    .array-data 1
        -0x5ct
        0x67t
        -0x6at
        0x45t
        -0x67t
        -0x7dt
        0x6at
        -0x29t
    .end array-data

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_4
    .array-data 1
        -0x54t
        -0x3bt
        0x61t
        -0x55t
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_5
    .array-data 1
        -0x3et
        -0x50t
        0xdt
        -0x39t
        0x74t
        -0x7dt
        0x5et
        0x7t
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_6
    .array-data 1
        0x50t
        0x4dt
        0xet
        0x49t
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :array_7
    .array-data 1
        0x3et
        0x38t
        0x62t
        0x25t
        0x57t
        -0x58t
        -0x2at
        -0x62t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_8
    .array-data 1
        -0xft
        -0xet
        0x43t
        -0x43t
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_9
    .array-data 1
        -0x61t
        -0x79t
        0x2ft
        -0x2ft
        0x4ft
        -0x45t
        -0x39t
        -0x73t
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_a
    .array-data 1
        -0x32t
        -0x3et
        0x22t
        -0x3dt
        0x31t
        -0x20t
        -0x41t
        0x6bt
        -0x3et
        -0x37t
        0x22t
        -0x28t
        0x3ft
        -0x59t
        -0x4at
        0x20t
        -0x25t
        -0x33t
        0x22t
        -0x30t
        0x2at
        -0x18t
        -0xbt
        0x4t
        -0x1dt
        -0x12t
        0x13t
        -0x4t
        0x1t
        -0x38t
        -0x77t
        0x11t
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_b
    .array-data 1
        -0x51t
        -0x54t
        0x46t
        -0x4ft
        0x5et
        -0x77t
        -0x25t
        0x45t
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :array_c
    .array-data 1
        0x53t
        0x72t
        -0x9t
        -0x78t
        0x4t
        -0x24t
        -0x29t
        -0x7bt
        0x5ft
        0x79t
        -0x9t
        -0x6dt
        0xat
        -0x65t
        -0x22t
        -0x32t
        0x46t
        0x7dt
        -0x9t
        -0x65t
        0x1ft
        -0x2ct
        -0x63t
        -0x16t
        0x60t
        0x48t
    .end array-data

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
    nop

    .line 657
    :array_d
    .array-data 1
        0x32t
        0x1ct
        -0x6dt
        -0x6t
        0x6bt
        -0x4bt
        -0x4dt
        -0x55t
    .end array-data

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_e
    .array-data 1
        -0x76t
        0x53t
        0x7ft
        0x1et
        0x4ct
        -0xft
        0x3ct
        0x2ct
        -0x7at
        0x58t
        0x7ft
        0x5t
        0x42t
        -0x4at
        0x35t
        0x67t
        -0x61t
        0x5ct
        0x7ft
        0xdt
        0x57t
        -0x7t
        0x76t
        0x46t
        -0x5et
        0x6et
        0x4bt
        0x20t
        0x62t
        -0x3ft
        0x7t
        0x4bt
        -0x58t
        0x72t
        0x55t
    .end array-data

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
    .line 685
    .line 686
    .line 687
    :array_f
    .array-data 1
        -0x15t
        0x3dt
        0x1bt
        0x6ct
        0x23t
        -0x68t
        0x58t
        0x2t
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    :array_10
    .array-data 1
        -0x47t
        0xat
        -0x13t
        -0x76t
        0x11t
        0x76t
        0x23t
        0x32t
        -0x4bt
        0x1t
        -0x13t
        -0x6ft
        0x1ft
        0x31t
        0x2at
        0x79t
        -0x54t
        0x5t
        -0x13t
        -0x67t
        0xat
        0x7et
        0x69t
        0x58t
        -0x73t
        0x36t
        -0x38t
        -0x54t
        0x37t
        0x50t
        0x9t
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
    :array_11
    .array-data 1
        -0x28t
        0x64t
        -0x77t
        -0x8t
        0x7et
        0x1ft
        0x47t
        0x1ct
    .end array-data
.end method

.method private final g()V
    .locals 4

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Lcom/example/navistart/MyA11yService;->c:Lcom/example/navistart/MyA11yService;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
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
    new-array v3, v3, [B

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/example/navistart/MyA11yService;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 1
        -0x68t
        0x7et
        -0x41t
        0x46t
        0x78t
        0x45t
        -0x17t
        -0x4at
        -0x2dt
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
    nop

    .line 55
    :array_1
    .array-data 1
        -0x48t
        0x17t
        -0x25t
        0x19t
        0x1bt
        0x29t
        -0x80t
        -0x2bt
    .end array-data
.end method

.method private final h()V
    .locals 4

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x6

    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    new-array v3, v2, [B

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v0, v3}, Lcom/example/navistart/MyCarReceiver;->d(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x9

    .line 41
    .line 42
    new-array v0, v0, [B

    .line 43
    .line 44
    fill-array-data v0, :array_2

    .line 45
    .line 46
    .line 47
    new-array v2, v2, [B

    .line 48
    .line 49
    fill-array-data v2, :array_3

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 1
        -0x8t
        0x4at
        0x59t
        -0x9t
        0x6t
        -0x17t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :array_1
    .array-data 1
        -0x59t
        0x1et
        0x10t
        -0x46t
        0x43t
        -0x45t
        -0x4bt
        -0x11t
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
        -0x38t
        0x27t
        0x63t
        -0x19t
        -0x43t
        -0x3et
        0x4t
        -0x34t
        -0x2ft
    .end array-data

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
    :array_3
    .array-data 1
        -0x69t
        0x53t
        0xat
        -0x76t
        -0x28t
        -0x63t
        0x4bt
        -0x76t
    .end array-data
.end method

.method private final i()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La1/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/example/navistart/NLService;

    .line 6
    .line 7
    iget-object v2, v0, La1/a;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 10
    .line 11
    sget-object v3, Lcom/example/navistart/NLService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v4, :cond_10

    .line 21
    .line 22
    iget-object v4, v1, Lcom/example/navistart/NLService;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v4}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_f

    .line 29
    .line 30
    iget-object v4, v1, Lcom/example/navistart/NLService;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_f

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-static {v1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x17

    .line 52
    .line 53
    new-array v6, v6, [B

    .line 54
    .line 55
    fill-array-data v6, :array_0

    .line 56
    .line 57
    .line 58
    const/16 v7, 0x8

    .line 59
    .line 60
    new-array v8, v7, [B

    .line 61
    .line 62
    fill-array-data v8, :array_1

    .line 63
    .line 64
    .line 65
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/4 v8, 0x2

    .line 74
    const/4 v9, -0x1

    .line 75
    const/4 v10, 0x1

    .line 76
    const/4 v11, 0x0

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lcom/example/navistart/NLService;->a()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    invoke-static {v1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const/16 v12, 0x14

    .line 97
    .line 98
    new-array v12, v12, [B

    .line 99
    .line 100
    fill-array-data v12, :array_2

    .line 101
    .line 102
    .line 103
    new-array v13, v7, [B

    .line 104
    .line 105
    fill-array-data v13, :array_3

    .line 106
    .line 107
    .line 108
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-virtual {v6, v12, v11}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_1

    .line 117
    .line 118
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const/16 v12, 0x17

    .line 123
    .line 124
    new-array v12, v12, [B

    .line 125
    .line 126
    fill-array-data v12, :array_4

    .line 127
    .line 128
    .line 129
    new-array v13, v7, [B

    .line 130
    .line 131
    fill-array-data v13, :array_5

    .line 132
    .line 133
    .line 134
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-static {}, Ln0/f;->values()[Ln0/f;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    aget-object v13, v13, v11

    .line 143
    .line 144
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    invoke-virtual {v6, v12, v13}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    sget-object v12, Ln0/f;->f:Ln0/f;

    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_1

    .line 163
    .line 164
    new-instance v6, Le0/l3;

    .line 165
    .line 166
    iget-object v12, v1, Lcom/example/navistart/NLService;->b:Landroid/content/Context;

    .line 167
    .line 168
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v12, v6, Le0/l3;->a:Landroid/content/Context;

    .line 172
    .line 173
    iput-object v4, v6, Le0/l3;->b:Ljava/lang/String;

    .line 174
    .line 175
    :try_start_0
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    const/16 v13, 0x1c

    .line 180
    .line 181
    new-array v13, v13, [B

    .line 182
    .line 183
    fill-array-data v13, :array_6

    .line 184
    .line 185
    .line 186
    new-array v14, v7, [B

    .line 187
    .line 188
    fill-array-data v14, :array_7

    .line 189
    .line 190
    .line 191
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-virtual {v6, v12, v13}, Le0/l3;->a(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    new-array v13, v10, [B

    .line 200
    .line 201
    const/16 v14, 0x23

    .line 202
    .line 203
    aput-byte v14, v13, v11

    .line 204
    .line 205
    new-array v14, v7, [B

    .line 206
    .line 207
    fill-array-data v14, :array_8

    .line 208
    .line 209
    .line 210
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    array-length v13, v12

    .line 219
    if-le v13, v10, :cond_0

    .line 220
    .line 221
    aget-object v12, v12, v10

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :catch_0
    move-object v12, v3

    .line 225
    goto :goto_1

    .line 226
    :cond_0
    aget-object v12, v12, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    const/16 v13, 0x1f

    .line 233
    .line 234
    new-array v13, v13, [B

    .line 235
    .line 236
    fill-array-data v13, :array_9

    .line 237
    .line 238
    .line 239
    new-array v14, v7, [B

    .line 240
    .line 241
    fill-array-data v14, :array_a

    .line 242
    .line 243
    .line 244
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-virtual {v6, v2, v13}, Le0/l3;->a(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    new-array v6, v8, [B

    .line 253
    .line 254
    fill-array-data v6, :array_b

    .line 255
    .line 256
    .line 257
    new-array v13, v7, [B

    .line 258
    .line 259
    fill-array-data v13, :array_c

    .line 260
    .line 261
    .line 262
    invoke-static {v6, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    goto :goto_2

    .line 271
    :catch_1
    :goto_1
    move-object v2, v3

    .line 272
    :goto_2
    new-instance v6, Lk7/b;

    .line 273
    .line 274
    invoke-direct {v6, v12, v2, v3, v9}, Lk7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    invoke-static {v6}, Lcom/woha/pogoda/WeatherService;->g(Lk7/b;)V

    .line 278
    .line 279
    .line 280
    :cond_1
    invoke-static {v1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    const/4 v3, 0x7

    .line 288
    new-array v3, v3, [B

    .line 289
    .line 290
    fill-array-data v3, :array_d

    .line 291
    .line 292
    .line 293
    new-array v6, v7, [B

    .line 294
    .line 295
    fill-array-data v6, :array_e

    .line 296
    .line 297
    .line 298
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3, v10}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    const/16 v6, 0xb

    .line 311
    .line 312
    new-array v6, v6, [B

    .line 313
    .line 314
    fill-array-data v6, :array_f

    .line 315
    .line 316
    .line 317
    new-array v12, v7, [B

    .line 318
    .line 319
    fill-array-data v12, :array_10

    .line 320
    .line 321
    .line 322
    invoke-static {v6, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-virtual {v3, v6, v11}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    const/16 v12, 0x10

    .line 335
    .line 336
    new-array v13, v12, [B

    .line 337
    .line 338
    fill-array-data v13, :array_11

    .line 339
    .line 340
    .line 341
    new-array v14, v7, [B

    .line 342
    .line 343
    fill-array-data v14, :array_12

    .line 344
    .line 345
    .line 346
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    invoke-virtual {v6, v13, v10}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    const/16 v13, 0x14

    .line 355
    .line 356
    new-array v13, v13, [B

    .line 357
    .line 358
    fill-array-data v13, :array_13

    .line 359
    .line 360
    .line 361
    new-array v14, v7, [B

    .line 362
    .line 363
    fill-array-data v14, :array_14

    .line 364
    .line 365
    .line 366
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    if-eqz v13, :cond_e

    .line 375
    .line 376
    if-eqz v2, :cond_e

    .line 377
    .line 378
    invoke-static {}, Lcom/example/navistart/NLService;->a()Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_e

    .line 387
    .line 388
    const/16 v2, 0xd

    .line 389
    .line 390
    new-array v13, v2, [B

    .line 391
    .line 392
    fill-array-data v13, :array_15

    .line 393
    .line 394
    .line 395
    new-array v14, v7, [B

    .line 396
    .line 397
    fill-array-data v14, :array_16

    .line 398
    .line 399
    .line 400
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    invoke-virtual {v5, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    const/16 v14, 0xe

    .line 413
    .line 414
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v15

    .line 418
    const/16 v9, 0xf

    .line 419
    .line 420
    const/16 v10, 0xc

    .line 421
    .line 422
    const/16 v8, 0xa

    .line 423
    .line 424
    if-eqz v3, :cond_5

    .line 425
    .line 426
    invoke-static {v1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 427
    .line 428
    .line 429
    new-array v3, v14, [B

    .line 430
    .line 431
    fill-array-data v3, :array_17

    .line 432
    .line 433
    .line 434
    new-array v11, v7, [B

    .line 435
    .line 436
    fill-array-data v11, :array_18

    .line 437
    .line 438
    .line 439
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-nez v3, :cond_6

    .line 448
    .line 449
    new-array v3, v8, [B

    .line 450
    .line 451
    fill-array-data v3, :array_19

    .line 452
    .line 453
    .line 454
    new-array v11, v7, [B

    .line 455
    .line 456
    fill-array-data v11, :array_1a

    .line 457
    .line 458
    .line 459
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    if-nez v3, :cond_6

    .line 468
    .line 469
    new-array v3, v12, [B

    .line 470
    .line 471
    fill-array-data v3, :array_1b

    .line 472
    .line 473
    .line 474
    new-array v11, v7, [B

    .line 475
    .line 476
    fill-array-data v11, :array_1c

    .line 477
    .line 478
    .line 479
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-nez v3, :cond_6

    .line 488
    .line 489
    new-array v3, v10, [B

    .line 490
    .line 491
    fill-array-data v3, :array_1d

    .line 492
    .line 493
    .line 494
    new-array v11, v7, [B

    .line 495
    .line 496
    fill-array-data v11, :array_1e

    .line 497
    .line 498
    .line 499
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-nez v3, :cond_6

    .line 508
    .line 509
    new-array v3, v10, [B

    .line 510
    .line 511
    fill-array-data v3, :array_1f

    .line 512
    .line 513
    .line 514
    new-array v11, v7, [B

    .line 515
    .line 516
    fill-array-data v11, :array_20

    .line 517
    .line 518
    .line 519
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    if-nez v3, :cond_6

    .line 528
    .line 529
    new-array v3, v10, [B

    .line 530
    .line 531
    fill-array-data v3, :array_21

    .line 532
    .line 533
    .line 534
    new-array v11, v7, [B

    .line 535
    .line 536
    fill-array-data v11, :array_22

    .line 537
    .line 538
    .line 539
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-nez v3, :cond_6

    .line 548
    .line 549
    new-array v3, v9, [B

    .line 550
    .line 551
    fill-array-data v3, :array_23

    .line 552
    .line 553
    .line 554
    new-array v11, v7, [B

    .line 555
    .line 556
    fill-array-data v11, :array_24

    .line 557
    .line 558
    .line 559
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    if-nez v3, :cond_6

    .line 568
    .line 569
    new-array v3, v14, [B

    .line 570
    .line 571
    fill-array-data v3, :array_25

    .line 572
    .line 573
    .line 574
    new-array v11, v7, [B

    .line 575
    .line 576
    fill-array-data v11, :array_26

    .line 577
    .line 578
    .line 579
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    if-nez v3, :cond_6

    .line 588
    .line 589
    new-array v3, v9, [B

    .line 590
    .line 591
    fill-array-data v3, :array_27

    .line 592
    .line 593
    .line 594
    new-array v11, v7, [B

    .line 595
    .line 596
    fill-array-data v11, :array_28

    .line 597
    .line 598
    .line 599
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-eqz v3, :cond_2

    .line 608
    .line 609
    goto/16 :goto_4

    .line 610
    .line 611
    :cond_2
    new-array v3, v14, [B

    .line 612
    .line 613
    fill-array-data v3, :array_29

    .line 614
    .line 615
    .line 616
    new-array v11, v7, [B

    .line 617
    .line 618
    fill-array-data v11, :array_2a

    .line 619
    .line 620
    .line 621
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    if-nez v3, :cond_4

    .line 630
    .line 631
    const/16 v3, 0x12

    .line 632
    .line 633
    new-array v3, v3, [B

    .line 634
    .line 635
    fill-array-data v3, :array_2b

    .line 636
    .line 637
    .line 638
    new-array v11, v7, [B

    .line 639
    .line 640
    fill-array-data v11, :array_2c

    .line 641
    .line 642
    .line 643
    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-nez v3, :cond_4

    .line 652
    .line 653
    new-array v2, v2, [B

    .line 654
    .line 655
    fill-array-data v2, :array_2d

    .line 656
    .line 657
    .line 658
    new-array v3, v7, [B

    .line 659
    .line 660
    fill-array-data v3, :array_2e

    .line 661
    .line 662
    .line 663
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    if-nez v2, :cond_4

    .line 672
    .line 673
    new-array v2, v14, [B

    .line 674
    .line 675
    fill-array-data v2, :array_2f

    .line 676
    .line 677
    .line 678
    new-array v3, v7, [B

    .line 679
    .line 680
    fill-array-data v3, :array_30

    .line 681
    .line 682
    .line 683
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    if-nez v2, :cond_4

    .line 692
    .line 693
    new-array v2, v14, [B

    .line 694
    .line 695
    fill-array-data v2, :array_31

    .line 696
    .line 697
    .line 698
    new-array v3, v7, [B

    .line 699
    .line 700
    fill-array-data v3, :array_32

    .line 701
    .line 702
    .line 703
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    if-nez v2, :cond_4

    .line 712
    .line 713
    new-array v2, v14, [B

    .line 714
    .line 715
    fill-array-data v2, :array_33

    .line 716
    .line 717
    .line 718
    new-array v3, v7, [B

    .line 719
    .line 720
    fill-array-data v3, :array_34

    .line 721
    .line 722
    .line 723
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    if-nez v2, :cond_4

    .line 732
    .line 733
    new-array v2, v10, [B

    .line 734
    .line 735
    fill-array-data v2, :array_35

    .line 736
    .line 737
    .line 738
    new-array v3, v7, [B

    .line 739
    .line 740
    fill-array-data v3, :array_36

    .line 741
    .line 742
    .line 743
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    if-nez v2, :cond_4

    .line 752
    .line 753
    const/16 v2, 0x11

    .line 754
    .line 755
    new-array v2, v2, [B

    .line 756
    .line 757
    fill-array-data v2, :array_37

    .line 758
    .line 759
    .line 760
    new-array v3, v7, [B

    .line 761
    .line 762
    fill-array-data v3, :array_38

    .line 763
    .line 764
    .line 765
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    if-nez v2, :cond_4

    .line 774
    .line 775
    new-array v2, v9, [B

    .line 776
    .line 777
    fill-array-data v2, :array_39

    .line 778
    .line 779
    .line 780
    new-array v3, v7, [B

    .line 781
    .line 782
    fill-array-data v3, :array_3a

    .line 783
    .line 784
    .line 785
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-nez v2, :cond_4

    .line 794
    .line 795
    new-array v2, v10, [B

    .line 796
    .line 797
    fill-array-data v2, :array_3b

    .line 798
    .line 799
    .line 800
    new-array v3, v7, [B

    .line 801
    .line 802
    fill-array-data v3, :array_3c

    .line 803
    .line 804
    .line 805
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    if-nez v2, :cond_4

    .line 814
    .line 815
    new-array v2, v12, [B

    .line 816
    .line 817
    fill-array-data v2, :array_3d

    .line 818
    .line 819
    .line 820
    new-array v3, v7, [B

    .line 821
    .line 822
    fill-array-data v3, :array_3e

    .line 823
    .line 824
    .line 825
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    if-nez v2, :cond_4

    .line 834
    .line 835
    const/16 v2, 0x11

    .line 836
    .line 837
    new-array v2, v2, [B

    .line 838
    .line 839
    fill-array-data v2, :array_3f

    .line 840
    .line 841
    .line 842
    new-array v3, v7, [B

    .line 843
    .line 844
    fill-array-data v3, :array_40

    .line 845
    .line 846
    .line 847
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_3

    .line 856
    .line 857
    goto :goto_3

    .line 858
    :cond_3
    new-array v2, v8, [B

    .line 859
    .line 860
    fill-array-data v2, :array_41

    .line 861
    .line 862
    .line 863
    new-array v3, v7, [B

    .line 864
    .line 865
    fill-array-data v3, :array_42

    .line 866
    .line 867
    .line 868
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    if-eqz v2, :cond_7

    .line 877
    .line 878
    goto/16 :goto_4

    .line 879
    .line 880
    :cond_4
    :goto_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 881
    .line 882
    .line 883
    move-result-object v13

    .line 884
    goto/16 :goto_5

    .line 885
    .line 886
    :cond_5
    new-array v2, v14, [B

    .line 887
    .line 888
    fill-array-data v2, :array_43

    .line 889
    .line 890
    .line 891
    new-array v3, v7, [B

    .line 892
    .line 893
    fill-array-data v3, :array_44

    .line 894
    .line 895
    .line 896
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    if-nez v2, :cond_6

    .line 905
    .line 906
    new-array v2, v8, [B

    .line 907
    .line 908
    fill-array-data v2, :array_45

    .line 909
    .line 910
    .line 911
    new-array v3, v7, [B

    .line 912
    .line 913
    fill-array-data v3, :array_46

    .line 914
    .line 915
    .line 916
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 921
    .line 922
    .line 923
    move-result v2

    .line 924
    if-nez v2, :cond_6

    .line 925
    .line 926
    new-array v2, v12, [B

    .line 927
    .line 928
    fill-array-data v2, :array_47

    .line 929
    .line 930
    .line 931
    new-array v3, v7, [B

    .line 932
    .line 933
    fill-array-data v3, :array_48

    .line 934
    .line 935
    .line 936
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 941
    .line 942
    .line 943
    move-result v2

    .line 944
    if-nez v2, :cond_6

    .line 945
    .line 946
    new-array v2, v10, [B

    .line 947
    .line 948
    fill-array-data v2, :array_49

    .line 949
    .line 950
    .line 951
    new-array v3, v7, [B

    .line 952
    .line 953
    fill-array-data v3, :array_4a

    .line 954
    .line 955
    .line 956
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    if-nez v2, :cond_6

    .line 965
    .line 966
    new-array v2, v10, [B

    .line 967
    .line 968
    fill-array-data v2, :array_4b

    .line 969
    .line 970
    .line 971
    new-array v3, v7, [B

    .line 972
    .line 973
    fill-array-data v3, :array_4c

    .line 974
    .line 975
    .line 976
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 981
    .line 982
    .line 983
    move-result v2

    .line 984
    if-nez v2, :cond_6

    .line 985
    .line 986
    new-array v2, v10, [B

    .line 987
    .line 988
    fill-array-data v2, :array_4d

    .line 989
    .line 990
    .line 991
    new-array v3, v7, [B

    .line 992
    .line 993
    fill-array-data v3, :array_4e

    .line 994
    .line 995
    .line 996
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-nez v2, :cond_6

    .line 1005
    .line 1006
    new-array v2, v9, [B

    .line 1007
    .line 1008
    fill-array-data v2, :array_4f

    .line 1009
    .line 1010
    .line 1011
    new-array v3, v7, [B

    .line 1012
    .line 1013
    fill-array-data v3, :array_50

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    if-nez v2, :cond_6

    .line 1025
    .line 1026
    new-array v2, v14, [B

    .line 1027
    .line 1028
    fill-array-data v2, :array_51

    .line 1029
    .line 1030
    .line 1031
    new-array v3, v7, [B

    .line 1032
    .line 1033
    fill-array-data v3, :array_52

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v2

    .line 1044
    if-nez v2, :cond_6

    .line 1045
    .line 1046
    new-array v2, v9, [B

    .line 1047
    .line 1048
    fill-array-data v2, :array_53

    .line 1049
    .line 1050
    .line 1051
    new-array v3, v7, [B

    .line 1052
    .line 1053
    fill-array-data v3, :array_54

    .line 1054
    .line 1055
    .line 1056
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v2

    .line 1064
    if-eqz v2, :cond_7

    .line 1065
    .line 1066
    :cond_6
    :goto_4
    move-object v13, v15

    .line 1067
    :cond_7
    :goto_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1068
    .line 1069
    .line 1070
    move-result v2

    .line 1071
    if-lez v2, :cond_e

    .line 1072
    .line 1073
    iput-object v4, v1, Lcom/example/navistart/NLService;->c:Ljava/lang/String;

    .line 1074
    .line 1075
    const-string v3, " "

    .line 1076
    .line 1077
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v3

    .line 1081
    const/4 v4, 0x0

    .line 1082
    new-array v8, v4, [Ljava/lang/String;

    .line 1083
    .line 1084
    move-object v9, v8

    .line 1085
    const/4 v4, 0x0

    .line 1086
    const/4 v8, 0x0

    .line 1087
    :goto_6
    array-length v10, v3

    .line 1088
    if-ge v4, v10, :cond_c

    .line 1089
    .line 1090
    aget-object v10, v3, v4

    .line 1091
    .line 1092
    const/4 v11, 0x4

    .line 1093
    new-array v11, v11, [B

    .line 1094
    .line 1095
    fill-array-data v11, :array_55

    .line 1096
    .line 1097
    .line 1098
    new-array v12, v7, [B

    .line 1099
    .line 1100
    fill-array-data v12, :array_56

    .line 1101
    .line 1102
    .line 1103
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v11

    .line 1107
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v10

    .line 1111
    if-nez v10, :cond_9

    .line 1112
    .line 1113
    aget-object v10, v3, v4

    .line 1114
    .line 1115
    const/4 v11, 0x2

    .line 1116
    new-array v12, v11, [B

    .line 1117
    .line 1118
    fill-array-data v12, :array_57

    .line 1119
    .line 1120
    .line 1121
    new-array v13, v7, [B

    .line 1122
    .line 1123
    fill-array-data v13, :array_58

    .line 1124
    .line 1125
    .line 1126
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v12

    .line 1130
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v10

    .line 1134
    if-eqz v10, :cond_8

    .line 1135
    .line 1136
    goto :goto_7

    .line 1137
    :cond_8
    const/16 v16, 0x0

    .line 1138
    .line 1139
    goto :goto_9

    .line 1140
    :cond_9
    const/4 v11, 0x2

    .line 1141
    :goto_7
    aget-object v8, v3, v4

    .line 1142
    .line 1143
    new-array v10, v11, [B

    .line 1144
    .line 1145
    fill-array-data v10, :array_59

    .line 1146
    .line 1147
    .line 1148
    new-array v12, v7, [B

    .line 1149
    .line 1150
    fill-array-data v12, :array_5a

    .line 1151
    .line 1152
    .line 1153
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v10

    .line 1157
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v8

    .line 1161
    if-eqz v8, :cond_a

    .line 1162
    .line 1163
    aget-object v8, v3, v4

    .line 1164
    .line 1165
    new-array v9, v11, [B

    .line 1166
    .line 1167
    fill-array-data v9, :array_5b

    .line 1168
    .line 1169
    .line 1170
    new-array v10, v7, [B

    .line 1171
    .line 1172
    fill-array-data v10, :array_5c

    .line 1173
    .line 1174
    .line 1175
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v9

    .line 1179
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v9

    .line 1183
    const/16 v16, 0x0

    .line 1184
    .line 1185
    goto :goto_8

    .line 1186
    :cond_a
    aget-object v8, v3, v4

    .line 1187
    .line 1188
    const/4 v10, 0x1

    .line 1189
    new-array v12, v10, [B

    .line 1190
    .line 1191
    const/16 v13, -0x7a

    .line 1192
    .line 1193
    const/16 v16, 0x0

    .line 1194
    .line 1195
    aput-byte v13, v12, v16

    .line 1196
    .line 1197
    new-array v13, v7, [B

    .line 1198
    .line 1199
    fill-array-data v13, :array_5d

    .line 1200
    .line 1201
    .line 1202
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v12

    .line 1206
    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v8

    .line 1210
    if-eqz v8, :cond_b

    .line 1211
    .line 1212
    aget-object v8, v3, v4

    .line 1213
    .line 1214
    new-array v9, v10, [B

    .line 1215
    .line 1216
    const/4 v10, -0x8

    .line 1217
    aput-byte v10, v9, v16

    .line 1218
    .line 1219
    new-array v10, v7, [B

    .line 1220
    .line 1221
    fill-array-data v10, :array_5e

    .line 1222
    .line 1223
    .line 1224
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v9

    .line 1228
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v9

    .line 1232
    :cond_b
    :goto_8
    aget-object v8, v9, v16

    .line 1233
    .line 1234
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v8

    .line 1238
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1239
    .line 1240
    .line 1241
    move-result v8

    .line 1242
    mul-int/lit16 v8, v8, 0x3e8

    .line 1243
    .line 1244
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 1245
    .line 1246
    goto/16 :goto_6

    .line 1247
    .line 1248
    :cond_c
    if-eqz v6, :cond_d

    .line 1249
    .line 1250
    sget-object v3, Le0/n3;->d:Ljava/lang/String;

    .line 1251
    .line 1252
    :cond_d
    invoke-static {v1}, Le0/d0;->d(Landroid/content/Context;)V

    .line 1253
    .line 1254
    .line 1255
    new-instance v3, Lcom/example/navistart/cores/HUDMassageObj;

    .line 1256
    .line 1257
    invoke-direct {v3}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 1258
    .line 1259
    .line 1260
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1261
    .line 1262
    iput-object v4, v3, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 1263
    .line 1264
    sget-object v4, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 1265
    .line 1266
    iput-object v4, v3, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 1267
    .line 1268
    sget-object v4, Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;->STRELKA:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 1269
    .line 1270
    iput-object v4, v3, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 1271
    .line 1272
    iput v2, v3, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 1273
    .line 1274
    :try_start_2
    div-int/lit16 v2, v8, 0x3e8

    .line 1275
    .line 1276
    invoke-virtual {v3, v2}, Lcom/example/navistart/cores/HUDMassageObj;->setspeedlimit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1277
    .line 1278
    .line 1279
    :catch_2
    iput v8, v3, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 1280
    .line 1281
    iput-object v5, v3, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 1282
    .line 1283
    :try_start_3
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 1284
    .line 1285
    .line 1286
    invoke-static {}, Lh0/b;->i()Le0/a0;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    invoke-virtual {v2, v3}, Le0/a0;->e(Lcom/example/navistart/cores/HUDMassageObj;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1291
    .line 1292
    .line 1293
    :catch_3
    iget-object v1, v1, Lcom/example/navistart/NLService;->d:Ljava/lang/String;

    .line 1294
    .line 1295
    const/4 v2, -0x1

    .line 1296
    invoke-static {v2, v1}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    new-instance v2, Le0/z;

    .line 1301
    .line 1302
    const/4 v10, 0x1

    .line 1303
    invoke-direct {v2, v3, v10}, Le0/z;-><init>(Lcom/example/navistart/cores/HUDMassageObj;I)V

    .line 1304
    .line 1305
    .line 1306
    const-wide/16 v3, 0x7d0

    .line 1307
    .line 1308
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1309
    .line 1310
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1311
    .line 1312
    .line 1313
    :cond_e
    return-void

    .line 1314
    :cond_f
    throw v5

    .line 1315
    :cond_10
    throw v5

    .line 1316
    nop

    .line 1317
    :array_0
    .array-data 1
        -0x34t
        -0x31t
        0x52t
        -0x55t
        -0x5et
        -0x5et
        0x8t
        0x4et
        -0x3at
        -0x6ct
        0xbt
        -0x49t
        -0x5et
        -0x48t
        0x4t
        0x4et
        -0x34t
        -0x36t
        0x10t
        -0x59t
        -0x5ct
        -0x5bt
        0x2t
    .end array-data

    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    :array_1
    .array-data 1
        -0x42t
        -0x46t
        0x7ct
        -0x2et
        -0x3dt
        -0x34t
        0x6ct
        0x2bt
    .end array-data

    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    :array_2
    .array-data 1
        0xat
        0x6bt
        0x50t
        -0x38t
        -0x5bt
        -0x5at
        -0xct
        -0x3ft
        0x18t
        0x43t
        0x78t
        -0x2ft
        -0x52t
        -0x5at
        -0x3ct
        -0x36t
        0x17t
        0x73t
        0x69t
        -0x22t
    .end array-data

    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    :array_3
    .array-data 1
        0x79t
        0x1ct
        0xft
        -0x48t
        -0x36t
        -0x3ft
        -0x65t
        -0x5bt
    .end array-data

    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    :array_4
    .array-data 1
        0x3dt
        -0x3ft
        0x37t
        -0x80t
        0x69t
        -0x35t
        0xdt
        0x73t
        0x3et
        -0x22t
        0x39t
        -0x7ft
        0x63t
        -0x31t
        0x20t
        0x5bt
        0x27t
        -0x2bt
        0x39t
        -0x4ft
        0x77t
        -0x24t
        0x10t
    .end array-data

    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    :array_5
    .array-data 1
        0x4et
        -0x4ft
        0x5et
        -0x12t
        0x7t
        -0x52t
        0x7ft
        0x2ct
    .end array-data

    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    :array_6
    .array-data 1
        0x2bt
        0xbt
        0x6ft
        0x64t
        -0x3et
        0x18t
        -0x18t
        -0x57t
        0x31t
        0xdt
        0x74t
        0x63t
        -0x5t
        0x6t
        -0x1et
        -0x54t
        0x22t
        0x1t
        0x6ft
        0x52t
        -0x38t
        0x1et
        -0x18t
        -0x57t
        0x31t
        0xdt
        0x74t
        0x63t
    .end array-data

    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    :array_7
    .array-data 1
        0x45t
        0x64t
        0x1bt
        0xdt
        -0x5ct
        0x71t
        -0x75t
        -0x38t
    .end array-data

    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    :array_8
    .array-data 1
        0xft
        -0x69t
        0x5t
        -0x12t
        0x31t
        -0x30t
        0x62t
        -0x47t
    .end array-data

    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    :array_9
    .array-data 1
        0x41t
        0x10t
        0x74t
        -0x7bt
        0x2et
        0x3dt
        0x28t
        0x4dt
        0x5bt
        0x16t
        0x6ft
        -0x7et
        0x17t
        0x23t
        0x22t
        0x48t
        0x48t
        0x1at
        0x74t
        -0x4dt
        0x3ct
        0x31t
        0x26t
        0x5ct
        0x4at
        0xdt
        0x61t
        -0x68t
        0x3dt
        0x26t
        0x2et
    .end array-data

    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    :array_a
    .array-data 1
        0x2ft
        0x7ft
        0x0t
        -0x14t
        0x48t
        0x54t
        0x4bt
        0x2ct
    .end array-data

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    :array_b
    .array-data 1
        0x12t
        -0xat
    .end array-data

    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    nop

    .line 1455
    :array_c
    .array-data 1
        -0x30t
        0x46t
        0x72t
        0xat
        0x67t
        -0x58t
        0x2et
        -0x7dt
    .end array-data

    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    :array_d
    .array-data 1
        0x72t
        0x60t
        -0x60t
        -0x62t
        0x18t
        -0x7at
        0x68t
    .end array-data

    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    :array_e
    .array-data 1
        0x1t
        0x14t
        -0x2et
        -0x5t
        0x74t
        -0x13t
        0x9t
        -0x1at
    .end array-data

    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    :array_f
    .array-data 1
        0x7et
        -0xat
        -0x57t
        0x7et
        -0x53t
        0x13t
        0x16t
        -0x72t
        0x6ct
        -0x12t
        -0x49t
    .end array-data

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    :array_10
    .array-data 1
        0xdt
        -0x7et
        -0x25t
        0x1bt
        -0x3ft
        0x78t
        0x77t
        -0x2ft
    .end array-data

    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    :array_11
    .array-data 1
        -0x37t
        0xat
        0x53t
        0x2at
        -0x4at
        0x4t
        -0x66t
        0x4at
        -0x29t
        0x1ft
        0x4ft
        0x10t
        -0x49t
        0x1dt
        -0x71t
        0x67t
    .end array-data

    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    :array_12
    .array-data 1
        -0x46t
        0x7et
        0x21t
        0x75t
        -0x3et
        0x6bt
        -0x16t
        0x15t
    .end array-data

    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    :array_13
    .array-data 1
        -0x7bt
        0x4bt
        0x6bt
        -0xft
        -0x7ct
        -0x43t
        0x64t
        -0x5dt
        -0x73t
        0xat
        0x55t
        -0x55t
        -0x61t
        -0x52t
        0x67t
        -0x5ct
        -0x79t
        0x63t
        0x56t
        -0x74t
    .end array-data

    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    :array_14
    .array-data 1
        -0x1at
        0x24t
        0x6t
        -0x21t
        -0x13t
        -0x35t
        0xbt
        -0x31t
    .end array-data

    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    :array_15
    .array-data 1
        0x4ct
        -0x62t
        -0x50t
        -0x69t
        0x38t
        -0x16t
        0x2dt
        -0x15t
        0x59t
        -0x67t
        -0x60t
        -0x77t
        0x32t
    .end array-data

    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    nop

    .line 1551
    :array_16
    .array-data 1
        0x2dt
        -0x10t
        -0x2ct
        -0x1bt
        0x57t
        -0x7dt
        0x49t
        -0x3bt
    .end array-data

    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    :array_17
    .array-data 1
        0x73t
        -0x6t
        -0x47t
        -0x5et
        -0x26t
        0x0t
        0x1dt
        -0x53t
        0x73t
        -0x40t
        -0x47t
        -0x66t
        -0x26t
        0x30t
    .end array-data

    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    nop

    .line 1571
    :array_18
    .array-data 1
        -0x5dt
        0x5bt
        0x69t
        0x0t
        0xat
        -0x60t
        -0x33t
        0x38t
    .end array-data

    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    :array_19
    .array-data 1
        0x1ct
        -0x61t
        -0xct
        -0x53t
        0xft
        -0x3ft
        -0x4et
        -0xbt
        0x1ct
        -0x6bt
    .end array-data

    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    nop

    .line 1589
    :array_1a
    .array-data 1
        -0x34t
        0x3t
        0x24t
        0xet
        -0x21t
        0x5at
        0x62t
        0x5at
    .end array-data

    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    :array_1b
    .array-data 1
        0x77t
        0x4ct
        0x73t
        0x5et
        0x79t
        -0x43t
        0x4et
        0x8t
        0x77t
        0x76t
        0x73t
        0x5et
        0x79t
        -0x45t
        0x4et
        0x6t
    .end array-data

    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    :array_1c
    .array-data 1
        -0x59t
        -0x2at
        -0x5dt
        -0x40t
        -0x57t
        0x20t
        -0x62t
        -0x56t
    .end array-data

    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    :array_1d
    .array-data 1
        0x21t
        -0x6ft
        0x42t
        0x34t
        -0x67t
        0x2ct
        0x60t
        -0x42t
        0x21t
        -0x51t
        0x42t
        0x3at
    .end array-data

    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    :array_1e
    .array-data 1
        -0xft
        0xet
        -0x6et
        -0x56t
        0x49t
        -0x49t
        -0x50t
        0x20t
    .end array-data

    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    :array_1f
    .array-data 1
        -0x4ct
        -0x6et
        -0x6et
        0x49t
        -0x1at
        -0x8t
        0x35t
        0x4at
        -0x4ct
        -0x58t
        -0x6et
        0x49t
    .end array-data

    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    :array_20
    .array-data 1
        0x64t
        0x8t
        0x42t
        -0x27t
        0x36t
        0x64t
        -0x1bt
        -0x21t
    .end array-data

    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    :array_21
    .array-data 1
        -0x44t
        0x5ft
        0x54t
        0x22t
        -0x72t
        0x10t
        -0x35t
        -0x5bt
        -0x44t
        0x5ct
        0x54t
        0x22t
    .end array-data

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    :array_22
    .array-data 1
        0x6ct
        -0x38t
        -0x7ct
        -0x4et
        0x5et
        -0x4ft
        0x1bt
        0x35t
    .end array-data

    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    :array_23
    .array-data 1
        0x1t
        -0x80t
        -0x23t
        0x7at
        -0x4dt
        0x26t
        0x71t
        0xet
        -0xft
        -0x31t
        -0x67t
        0x34t
        -0x4t
        0x57t
        0x0t
    .end array-data

    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    :array_24
    .array-data 1
        -0x2ft
        0x1ft
        0xdt
        -0x1ct
        0x63t
        -0x79t
        -0x5ft
        -0x54t
    .end array-data

    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    :array_25
    .array-data 1
        -0x40t
        0x2ct
        0xct
        0x60t
        0x3et
        0x0t
        0x1t
        0x6dt
        -0x40t
        0x2dt
        0xct
        0x59t
        0x3et
        0xat
    .end array-data

    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    nop

    .line 1703
    :array_26
    .array-data 1
        0x10t
        -0x71t
        -0x24t
        -0x39t
        -0x12t
        -0x70t
        -0x2ft
        -0x34t
    .end array-data

    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    :array_27
    .array-data 1
        0x17t
        0x67t
        0x53t
        -0x18t
        -0x70t
        -0x49t
        0x1at
        -0x5ft
        -0x19t
        0x16t
        0x18t
        -0x66t
        -0x28t
        -0x7t
        0x57t
    .end array-data

    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    :array_28
    .array-data 1
        -0x39t
        -0x3at
        -0x7dt
        0x4at
        0x40t
        0x29t
        -0x36t
        0x3et
    .end array-data

    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    :array_29
    .array-data 1
        0x5ft
        0x15t
        -0x34t
        0x43t
        -0x1at
        -0x14t
        -0x21t
        -0x2at
        0x5ft
        0x1ft
        -0x34t
        0x41t
        -0x1at
        -0x28t
    .end array-data

    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    nop

    .line 1743
    :array_2a
    .array-data 1
        -0x71t
        -0x76t
        0x1ct
        -0x2at
        0x36t
        0x4ct
        0xft
        0x43t
    .end array-data

    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    :array_2b
    .array-data 1
        0x7at
        0x5t
        0x52t
        0x29t
        -0xft
        -0x6at
        -0x41t
        -0x55t
        0x7at
        0x0t
        0x52t
        0x1ct
        -0xft
        -0x49t
        -0x41t
        -0x61t
        0x7at
        0x38t
    .end array-data

    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    nop

    .line 1765
    :array_2c
    .array-data 1
        -0x56t
        -0x66t
        -0x7et
        -0x44t
        0x21t
        0x36t
        0x6ft
        0x3et
    .end array-data

    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    :array_2d
    .array-data 1
        -0x64t
        -0x3bt
        0x10t
        0x5dt
        0x14t
        0x3et
        -0x7at
        -0x17t
        -0x64t
        -0x36t
        0x10t
        0x55t
        -0x16t
    .end array-data

    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    nop

    .line 1785
    :array_2e
    .array-data 1
        0x4ct
        0x58t
        -0x40t
        -0x38t
        -0x3ct
        -0x62t
        0x56t
        0x77t
    .end array-data

    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    :array_2f
    .array-data 1
        -0x4et
        -0x3ct
        -0x49t
        -0x6et
        -0x15t
        0x70t
        0x74t
        0x6ft
        -0x4et
        -0x2t
        -0x49t
        -0x67t
        -0x15t
        0x44t
    .end array-data

    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    nop

    .line 1805
    :array_30
    .array-data 1
        0x62t
        0x5bt
        0x67t
        0x7t
        0x3bt
        -0x30t
        -0x5ct
        -0x6t
    .end array-data

    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    :array_31
    .array-data 1
        0x77t
        -0x4dt
        0x78t
        -0x68t
        0x7at
        -0x5at
        0x51t
        -0x7ct
        0x77t
        -0x74t
        0x78t
        -0x68t
        0x7at
        -0x6at
    .end array-data

    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    nop

    .line 1825
    :array_32
    .array-data 1
        -0x59t
        0x2ct
        -0x58t
        0x6t
        -0x56t
        0x34t
        -0x7ft
        0x1at
    .end array-data

    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    :array_33
    .array-data 1
        0x76t
        0x75t
        -0x40t
        0x70t
        0x10t
        -0x21t
        0x27t
        -0x19t
        0x76t
        0x42t
        -0x40t
        0x75t
        0x10t
        -0x12t
    .end array-data

    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    nop

    .line 1845
    :array_34
    .array-data 1
        -0x5at
        -0x29t
        0x10t
        -0x12t
        -0x40t
        0x42t
        -0x9t
        0x7at
    .end array-data

    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    :array_35
    .array-data 1
        -0x5at
        0x75t
        -0x2ft
        -0x4t
        0x77t
        -0x53t
        0x2bt
        -0x6t
        -0x5at
        0x76t
        -0x2ft
        -0x3t
    .end array-data

    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    :array_36
    .array-data 1
        0x76t
        -0x15t
        0x1t
        0x63t
        -0x59t
        0x3dt
        -0x5t
        0x5bt
    .end array-data

    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    :array_37
    .array-data 1
        0x40t
        -0x73t
        -0x5ct
        0x6et
        0x6ct
        0x55t
        -0x48t
        0x6et
        0xft
        -0x40t
        -0x29t
        0x2et
        0x21t
        0x24t
        0xct
        0x6et
        0x32t
    .end array-data

    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    nop

    .line 1885
    :array_38
    .array-data 1
        -0x70t
        0x10t
        0x74t
        -0x2t
        -0x44t
        -0xct
        -0x6at
        -0x42t
    .end array-data

    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    :array_39
    .array-data 1
        -0x27t
        0x50t
        0x2bt
        0x2et
        -0x20t
        0x61t
        0x7ct
        -0x29t
        -0x62t
        0x1et
        0x6bt
        0x5ft
        -0x51t
        0x13t
        -0xet
    .end array-data

    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    :array_3a
    .array-data 1
        0x9t
        -0x32t
        -0x5t
        -0x71t
        0x30t
        -0x3dt
        0x52t
        0x7t
    .end array-data

    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    :array_3b
    .array-data 1
        -0x38t
        0x79t
        0x5ct
        0xet
        -0x17t
        0x3ft
        0x3ct
        0x28t
        -0x38t
        0x7bt
        0x5ct
        0xbt
    .end array-data

    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    :array_3c
    .array-data 1
        0x18t
        -0x1at
        -0x74t
        -0x6bt
        0x39t
        -0x51t
        -0x14t
        -0x76t
    .end array-data

    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    :array_3d
    .array-data 1
        0x19t
        -0x73t
        -0x69t
        0x3t
        0x17t
        -0x31t
        0x58t
        -0x9t
        0x53t
        -0x31t
        -0x27t
        0x46t
        0x5at
        -0x42t
        -0x2ct
        0x9t
    .end array-data

    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    :array_3e
    .array-data 1
        -0x37t
        0x1ft
        0x47t
        -0x6at
        -0x39t
        0x6et
        0x76t
        0x27t
    .end array-data

    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    :array_3f
    .array-data 1
        0x2at
        -0x5et
        0x22t
        0xbt
        0x2dt
        -0x38t
        -0xct
        -0x41t
        0x2at
        -0x62t
        -0x2et
        0x45t
        0x60t
        0x7bt
        -0xct
        -0x4bt
        -0x2ct
    .end array-data

    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    nop

    .line 1965
    :array_40
    .array-data 1
        -0x6t
        0x38t
        -0xet
        -0x6bt
        -0x3t
        0x55t
        0x24t
        0x2at
    .end array-data

    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    :array_41
    .array-data 1
        -0x23t
        -0x2et
        -0x45t
        0x4ft
        0x61t
        0x20t
        0x2dt
        0x24t
        -0x23t
        -0x22t
    .end array-data

    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    nop

    .line 1983
    :array_42
    .array-data 1
        0xdt
        0x76t
        0x6bt
        -0x29t
        -0x4ft
        -0x43t
        -0x3t
        -0x44t
    .end array-data

    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    :array_43
    .array-data 1
        -0x6at
        -0x55t
        0x2t
        -0x76t
        0x22t
        -0x80t
        0x7at
        -0x4et
        -0x6at
        -0x6ft
        0x2t
        -0x4et
        0x22t
        -0x50t
    .end array-data

    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    nop

    .line 2003
    :array_44
    .array-data 1
        0x46t
        0xat
        -0x2et
        0x28t
        -0xet
        0x20t
        -0x56t
        0x27t
    .end array-data

    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    :array_45
    .array-data 1
        -0x4dt
        -0x5at
        0x63t
        0x55t
        -0x72t
        0x44t
        0x52t
        0x66t
        -0x4dt
        -0x56t
    .end array-data

    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    nop

    .line 2021
    :array_46
    .array-data 1
        0x63t
        0x2t
        -0x4dt
        -0x33t
        0x5et
        -0x27t
        -0x7et
        -0x2t
    .end array-data

    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    :array_47
    .array-data 1
        0x42t
        -0x55t
        -0x1t
        -0x1ct
        -0x4at
        0x77t
        0x53t
        -0xat
        0x42t
        -0x6ft
        -0x1t
        -0x1ct
        -0x4at
        0x71t
        0x53t
        -0x8t
    .end array-data

    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    :array_48
    .array-data 1
        -0x6et
        0x31t
        0x2ft
        0x7at
        0x66t
        -0x16t
        -0x7dt
        0x54t
    .end array-data

    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    :array_49
    .array-data 1
        0xdt
        -0x59t
        -0x48t
        0x35t
        -0x7dt
        -0x2dt
        -0x6et
        0x14t
        0xdt
        -0x67t
        -0x48t
        0x3bt
    .end array-data

    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :array_4a
    .array-data 1
        -0x23t
        0x38t
        0x68t
        -0x55t
        0x53t
        0x48t
        0x42t
        -0x76t
    .end array-data

    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    :array_4b
    .array-data 1
        0x56t
        0x38t
        -0x4t
        0x4ft
        0x11t
        0xat
        0x31t
        0x3at
        0x56t
        0x2t
        -0x4t
        0x4ft
    .end array-data

    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    :array_4c
    .array-data 1
        -0x7at
        -0x5et
        0x2ct
        -0x21t
        -0x3ft
        -0x6at
        -0x1ft
        -0x51t
    .end array-data

    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    :array_4d
    .array-data 1
        -0x67t
        0x6ct
        -0x47t
        -0x34t
        0x42t
        0x76t
        -0x3et
        -0x7ct
        -0x67t
        0x6ft
        -0x47t
        -0x34t
    .end array-data

    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    :array_4e
    .array-data 1
        0x49t
        -0x5t
        0x69t
        0x5ct
        -0x6et
        -0x29t
        0x12t
        0x14t
    .end array-data

    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    :array_4f
    .array-data 1
        -0x64t
        0x75t
        -0x5bt
        -0x68t
        -0x4dt
        -0x4bt
        0x11t
        -0x48t
        0x6ct
        0x3at
        -0x1ft
        -0x2at
        -0x4t
        -0x3ct
        0x60t
    .end array-data

    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    :array_50
    .array-data 1
        0x4ct
        -0x16t
        0x75t
        0x6t
        0x63t
        0x14t
        -0x3ft
        0x1at
    .end array-data

    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    :array_51
    .array-data 1
        -0x1bt
        -0x46t
        -0x25t
        0x56t
        -0x7t
        0x40t
        0x6ft
        -0x43t
        -0x1bt
        -0x45t
        -0x25t
        0x6ft
        -0x7t
        0x4at
    .end array-data

    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    nop

    .line 2135
    :array_52
    .array-data 1
        0x35t
        0x19t
        0xbt
        -0xft
        0x29t
        -0x30t
        -0x41t
        0x1ct
    .end array-data

    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    :array_53
    .array-data 1
        -0x26t
        -0x44t
        0x6ct
        -0x38t
        0x24t
        0x53t
        0x67t
        0x71t
        0x2at
        -0x33t
        0x27t
        -0x46t
        0x6ct
        0x1dt
        0x2at
    .end array-data

    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    :array_54
    .array-data 1
        0xat
        0x1dt
        -0x44t
        0x6at
        -0xct
        -0x33t
        -0x49t
        -0x12t
    .end array-data

    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    :array_55
    .array-data 1
        -0x28t
        -0x6ct
        -0x35t
        -0x5dt
    .end array-data

    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    :array_56
    .array-data 1
        0x8t
        0x2et
        0x1bt
        0x1ft
        -0x27t
        -0x3at
        -0x6ct
        0x1ft
    .end array-data

    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    :array_57
    .array-data 1
        -0x60t
        -0x7ft
    .end array-data

    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    nop

    .line 2183
    :array_58
    .array-data 1
        -0x35t
        -0x14t
        -0x61t
        0x64t
        0x73t
        -0x5ct
        0x3et
        -0xft
    .end array-data

    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    :array_59
    .array-data 1
        -0x68t
        -0x39t
    .end array-data

    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    nop

    .line 2197
    :array_5a
    .array-data 1
        0x48t
        0x7dt
        0x70t
        0x3dt
        0x5t
        -0x16t
        -0x67t
        -0x66t
    .end array-data

    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    :array_5b
    .array-data 1
        -0x2dt
        0x12t
    .end array-data

    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    nop

    .line 2211
    :array_5c
    .array-data 1
        0x3t
        -0x58t
        -0x2bt
        0x7ct
        -0x6dt
        -0x22t
        0x4ft
        -0x5at
    .end array-data

    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    :array_5d
    .array-data 1
        -0x13t
        0x6bt
        0x55t
        -0x1bt
        0x11t
        -0x3ft
        0x4ft
        -0x59t
    .end array-data

    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    :array_5e
    .array-data 1
        -0x6dt
        -0xct
        -0x44t
        -0x4dt
        0x51t
        -0x12t
        0x0t
        0x68t
    .end array-data
.end method

.method private final j()V
    .locals 6

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/NLService;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/example/navistart/NLService;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iput-object v3, v0, Lcom/example/navistart/NLService;->c:Ljava/lang/String;

    .line 19
    .line 20
    sget-object v0, Le0/n3;->d:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/example/navistart/cores/HUDMassageObj;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    iput-object v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 30
    .line 31
    sget-object v2, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 32
    .line 33
    iput-object v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 34
    .line 35
    sget-object v2, Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;->STRELKA:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 36
    .line 37
    iput-object v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    iput v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    iput v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 44
    .line 45
    const-string v2, " "

    .line 46
    .line 47
    iput-object v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lh0/b;->i()Le0/a0;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v0}, Le0/a0;->e(Lcom/example/navistart/cores/HUDMassageObj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :cond_0
    const/16 v0, 0x14

    .line 60
    .line 61
    new-array v2, v0, [B

    .line 62
    .line 63
    fill-array-data v2, :array_0

    .line 64
    .line 65
    .line 66
    const/16 v4, 0x8

    .line 67
    .line 68
    new-array v5, v4, [B

    .line 69
    .line 70
    fill-array-data v5, :array_1

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    new-array v0, v0, [B

    .line 84
    .line 85
    fill-array-data v0, :array_2

    .line 86
    .line 87
    .line 88
    new-array v2, v4, [B

    .line 89
    .line 90
    fill-array-data v2, :array_3

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :cond_1
    :try_start_1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lh0/b;->k()Le0/x1;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    :catch_1
    :cond_2
    return-void

    .line 138
    nop

    .line 139
    :array_0
    .array-data 1
        -0x38t
        -0x5ft
        0x7at
        -0x22t
        -0x29t
        0x3ft
        -0x71t
        -0x12t
        -0x3et
        -0x6t
        0x2dt
        -0x3at
        -0x28t
        0x35t
        -0x72t
        -0xdt
        -0x29t
        -0x4bt
        0x24t
        -0x2ct
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
    :array_1
    .array-data 1
        -0x46t
        -0x2ct
        0x54t
        -0x59t
        -0x4at
        0x51t
        -0x15t
        -0x75t
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 1
        -0x47t
        -0x44t
        -0x5ft
        0x3ft
        0x5bt
        0x18t
        -0x6t
        -0x1dt
        -0x4dt
        -0x19t
        -0xat
        0x27t
        0x54t
        0x12t
        -0x5t
        -0x2t
        -0x5bt
        -0x58t
        -0x7t
        0x2ft
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
    :array_3
    .array-data 1
        -0x35t
        -0x37t
        -0x71t
        0x46t
        0x3at
        0x76t
        -0x62t
        -0x7at
    .end array-data
.end method

.method private final k()V
    .locals 13

    .line 1
    iget-object v0, p0, La1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/Notik;

    .line 4
    .line 5
    iget-object v1, p0, La1/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lru/transfer/MessageData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/example/navistart/Notik;->c:Lb1/m;

    .line 10
    .line 11
    iget-object v2, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    sget-object v5, Le0/m;->j:[B

    .line 25
    .line 26
    sget-object v6, Le0/p3;->a:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v6, ""

    .line 29
    .line 30
    invoke-static {v5, v4, v6, v3}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 31
    .line 32
    .line 33
    const/16 v4, 0x9

    .line 34
    .line 35
    new-array v4, v4, [B

    .line 36
    .line 37
    fill-array-data v4, :array_0

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v3}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Le0/x1;->q:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v3, v4}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sget-object v5, Le0/m;->f:[B

    .line 54
    .line 55
    invoke-static {v5, v4, v6, v3}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-wide v7, 0x7fffffffffffffffL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static {v7, v8, v3}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    new-instance v3, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    new-instance v11, Ljava/lang/String;

    .line 91
    .line 92
    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([B)V

    .line 93
    .line 94
    .line 95
    sget-object v5, Le0/m;->g:[B

    .line 96
    .line 97
    invoke-static {v5, v10, v11}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    new-array v10, v4, [B

    .line 102
    .line 103
    const/16 v11, 0x17

    .line 104
    .line 105
    aput-byte v11, v10, v6

    .line 106
    .line 107
    const/16 v11, 0x8

    .line 108
    .line 109
    new-array v11, v11, [B

    .line 110
    .line 111
    fill-array-data v11, :array_1

    .line 112
    .line 113
    .line 114
    invoke-static {v10, v11, v9, v5, v6}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    cmp-long v3, v7, v9

    .line 126
    .line 127
    if-gez v3, :cond_0

    .line 128
    .line 129
    move v3, v4

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    move v3, v6

    .line 132
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    .line 139
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 146
    .line 147
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-interface {v3}, Lj1/v;->b()Lz0/a;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v3}, Lz0/a;->m()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    const/16 v11, 0x228

    .line 163
    .line 164
    const/4 v12, -0x3

    .line 165
    const/4 v8, -0x2

    .line 166
    const/4 v9, -0x2

    .line 167
    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 168
    .line 169
    .line 170
    const/16 v3, 0x31

    .line 171
    .line 172
    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 173
    .line 174
    const/16 v3, 0x32

    .line 175
    .line 176
    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 177
    .line 178
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-interface {v3}, Lj1/v;->b()Lz0/a;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v3, v2, v7}, Lz0/a;->f(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager;

    .line 190
    .line 191
    .line 192
    :cond_2
    new-instance v3, Lg0/e;

    .line 193
    .line 194
    iget-object v5, v0, Lb1/m;->c:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v5, Lcom/example/navistart/Notik;

    .line 197
    .line 198
    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    iput-object v7, v3, Lg0/e;->h:Landroid/view/ViewPropertyAnimator;

    .line 206
    .line 207
    const v7, 0x7f0c00b2

    .line 208
    .line 209
    .line 210
    invoke-static {v5, v7, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    const v5, 0x7f0902e8

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Landroid/widget/TextView;

    .line 221
    .line 222
    iput-object v5, v3, Lg0/e;->b:Landroid/widget/TextView;

    .line 223
    .line 224
    const v5, 0x7f090579

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Landroid/widget/TextView;

    .line 232
    .line 233
    iput-object v5, v3, Lg0/e;->c:Landroid/widget/TextView;

    .line 234
    .line 235
    const v5, 0x7f0900c2

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Landroid/widget/ImageView;

    .line 243
    .line 244
    iput-object v5, v3, Lg0/e;->d:Landroid/widget/ImageView;

    .line 245
    .line 246
    const v5, 0x7f09003c

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    check-cast v5, Landroid/widget/LinearLayout;

    .line 254
    .line 255
    iput-object v5, v3, Lg0/e;->f:Landroid/widget/LinearLayout;

    .line 256
    .line 257
    const v5, 0x7f090398

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Landroid/widget/Button;

    .line 265
    .line 266
    iput-object v5, v3, Lg0/e;->e:Landroid/widget/Button;

    .line 267
    .line 268
    iget-object v5, v3, Lg0/e;->b:Landroid/widget/TextView;

    .line 269
    .line 270
    if-eqz v5, :cond_4

    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    if-nez v7, :cond_3

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 292
    .line 293
    int-to-float v7, v7

    .line 294
    const v8, 0x3f4ccccd    # 0.8f

    .line 295
    .line 296
    .line 297
    mul-float/2addr v8, v7

    .line 298
    float-to-int v7, v8

    .line 299
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 300
    .line 301
    .line 302
    :cond_4
    :goto_2
    invoke-virtual {v3, v0}, Lg0/e;->setMessageBubbleViewListener(Lg0/d;)V

    .line 303
    .line 304
    .line 305
    iput-object v1, v3, Lg0/e;->g:Lru/transfer/MessageData;

    .line 306
    .line 307
    invoke-virtual {v1}, Lru/transfer/MessageData;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    iget-object v7, v3, Lg0/e;->d:Landroid/widget/ImageView;

    .line 312
    .line 313
    if-eqz v5, :cond_5

    .line 314
    .line 315
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_5
    const v5, 0x7f070153

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    .line 324
    .line 325
    :goto_3
    iget-object v5, v3, Lg0/e;->c:Landroid/widget/TextView;

    .line 326
    .line 327
    invoke-virtual {v1}, Lru/transfer/MessageData;->getSender()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    iget-object v5, v3, Lg0/e;->b:Landroid/widget/TextView;

    .line 335
    .line 336
    invoke-virtual {v1}, Lru/transfer/MessageData;->getMessage()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Lru/transfer/MessageData;->gethasReply()Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-eqz v5, :cond_6

    .line 348
    .line 349
    iget-object v5, v3, Lg0/e;->f:Landroid/widget/LinearLayout;

    .line 350
    .line 351
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    iget-object v5, v3, Lg0/e;->e:Landroid/widget/Button;

    .line 355
    .line 356
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object v5, v3, Lg0/e;->e:Landroid/widget/Button;

    .line 360
    .line 361
    new-instance v7, Landroidx/navigation/ui/a;

    .line 362
    .line 363
    const/4 v8, 0x6

    .line 364
    invoke-direct {v7, v8, v3, v1}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    :cond_6
    new-instance v1, Landroidx/navigation/ui/a;

    .line 371
    .line 372
    const/4 v5, 0x5

    .line 373
    invoke-direct {v1, v5, v0, v3}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .line 378
    .line 379
    const/4 v1, 0x4

    .line 380
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    .line 385
    .line 386
    new-instance v1, Lf5/j;

    .line 387
    .line 388
    invoke-direct {v1, v4, v3}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 392
    .line 393
    .line 394
    iget-object v1, v0, Lb1/m;->f:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Landroid/os/Handler;

    .line 397
    .line 398
    new-instance v2, Lg0/b;

    .line 399
    .line 400
    invoke-direct {v2, v0, v3, v6}, Lg0/b;-><init>(Lb1/m;Lg0/e;I)V

    .line 401
    .line 402
    .line 403
    const-wide/16 v3, 0x2710

    .line 404
    .line 405
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
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

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    nop

    .line 419
    :array_1
    .array-data 1
        0x27t
        -0x51t
        0x45t
        0xat
        0x79t
        0x4bt
        -0x7at
        0x4ft
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, La1/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0xb

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/16 v6, 0x8

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Le0/g2;

    .line 18
    .line 19
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, v0, Le0/g2;->b:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    invoke-direct {v1}, La1/a;->k()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    invoke-direct {v1}, La1/a;->j()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_2
    invoke-direct {v1}, La1/a;->i()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    invoke-direct {v1}, La1/a;->h()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_4
    invoke-direct {v1}, La1/a;->g()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_5
    invoke-direct {v1}, La1/a;->f()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_6
    invoke-direct {v1}, La1/a;->e()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_7
    invoke-direct {v1}, La1/a;->d()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_8
    invoke-direct {v1}, La1/a;->c()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_9
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Le0/u1;

    .line 68
    .line 69
    iget-object v4, v1, La1/a;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Landroid/view/View;

    .line 72
    .line 73
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    iput-object v7, v0, Le0/u1;->g:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    iput v7, v0, Le0/u1;->k:F

    .line 82
    .line 83
    new-array v2, v2, [B

    .line 84
    .line 85
    fill-array-data v2, :array_0

    .line 86
    .line 87
    .line 88
    new-array v6, v6, [B

    .line 89
    .line 90
    fill-array-data v6, :array_1

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget v6, v0, Le0/u1;->k:F

    .line 98
    .line 99
    const/4 v7, 0x3

    .line 100
    new-array v7, v7, [F

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    aput v8, v7, v3

    .line 104
    .line 105
    aput v6, v7, v5

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    const/4 v5, 0x2

    .line 109
    aput v3, v7, v5

    .line 110
    .line 111
    invoke-static {v4, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, v0, Le0/u1;->j:Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    const/16 v3, 0x5dc

    .line 118
    .line 119
    int-to-long v3, v3

    .line 120
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    .line 122
    .line 123
    iget-object v2, v0, Le0/u1;->j:Landroid/animation/ObjectAnimator;

    .line 124
    .line 125
    const/4 v3, -0x1

    .line 126
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 127
    .line 128
    .line 129
    iget-object v2, v0, Le0/u1;->j:Landroid/animation/ObjectAnimator;

    .line 130
    .line 131
    const/4 v3, 0x2

    .line 132
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Le0/u1;->j:Landroid/animation/ObjectAnimator;

    .line 136
    .line 137
    iget-object v3, v0, Le0/u1;->q:Landroid/os/Handler;

    .line 138
    .line 139
    new-instance v4, La1/a;

    .line 140
    .line 141
    const/16 v5, 0x14

    .line 142
    .line 143
    invoke-direct {v4, v5, v0, v2}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_a
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lcom/example/navistart/ModernMainActivity;

    .line 153
    .line 154
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayout;

    .line 157
    .line 158
    sget-object v3, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/example/navistart/ModernMainActivity;->Z(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_b
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Le0/k1;

    .line 167
    .line 168
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Landroidx/appcompat/app/AlertDialog;

    .line 171
    .line 172
    iget-object v0, v0, Le0/k1;->b:Lcom/example/navistart/MainActivity;

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-nez v3, :cond_0

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    .line 192
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 193
    .line 194
    .line 195
    :cond_0
    return-void

    .line 196
    :pswitch_c
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lcom/example/navistart/MainActivity;

    .line 199
    .line 200
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Landroid/graphics/ColorMatrixColorFilter;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/example/navistart/MainActivity;->X0:Landroid/widget/ImageView;

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_d
    invoke-direct {v1}, La1/a;->b()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :pswitch_e
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v0, Lcom/example/navistart/APInAct;

    .line 217
    .line 218
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Ljava/lang/String;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/example/navistart/APInAct;->b:Landroid/widget/TextView;

    .line 223
    .line 224
    if-eqz v0, :cond_1

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    :cond_1
    return-void

    .line 230
    :pswitch_f
    invoke-direct {v1}, La1/a;->a()V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_10
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Ljava/lang/String;

    .line 237
    .line 238
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v2, Landroidx/fragment/app/strictmode/Violation;

    .line 241
    .line 242
    invoke-static {v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->a(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :pswitch_11
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 249
    .line 250
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v2, Landroidx/fragment/app/strictmode/Violation;

    .line 253
    .line 254
    invoke-static {v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->b(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_12
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lr5/c;

    .line 261
    .line 262
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v2, Lb7/a;

    .line 265
    .line 266
    iget-object v4, v2, Lb7/a;->a:Lz5/m;

    .line 267
    .line 268
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 269
    .line 270
    move-object v6, v0

    .line 271
    check-cast v6, Lb7/j;

    .line 272
    .line 273
    iget-object v7, v6, Lb7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 274
    .line 275
    iget-boolean v0, v6, Lb7/j;->d:Z

    .line 276
    .line 277
    if-eqz v0, :cond_3

    .line 278
    .line 279
    iget-object v0, v2, Lb7/a;->b:Lb7/v;

    .line 280
    .line 281
    iget-object v2, v0, Lb7/v;->a:Lb7/s;

    .line 282
    .line 283
    iget v8, v0, Lb7/v;->c:I

    .line 284
    .line 285
    new-instance v9, Landroid/graphics/Rect;

    .line 286
    .line 287
    iget v10, v2, Lb7/s;->a:I

    .line 288
    .line 289
    iget v11, v2, Lb7/s;->b:I

    .line 290
    .line 291
    invoke-direct {v9, v3, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    .line 293
    .line 294
    new-instance v12, Landroid/graphics/YuvImage;

    .line 295
    .line 296
    iget-object v13, v2, Lb7/s;->c:[B

    .line 297
    .line 298
    iget v14, v0, Lb7/v;->b:I

    .line 299
    .line 300
    iget v15, v2, Lb7/s;->a:I

    .line 301
    .line 302
    iget v0, v2, Lb7/s;->b:I

    .line 303
    .line 304
    const/16 v17, 0x0

    .line 305
    .line 306
    move/from16 v16, v0

    .line 307
    .line 308
    invoke-direct/range {v12 .. v17}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    .line 315
    .line 316
    const/16 v2, 0x5a

    .line 317
    .line 318
    invoke-virtual {v12, v9, v2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 326
    .line 327
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 328
    .line 329
    .line 330
    const/4 v9, 0x2

    .line 331
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 332
    .line 333
    array-length v9, v0

    .line 334
    invoke-static {v0, v3, v9, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    if-eqz v8, :cond_2

    .line 339
    .line 340
    new-instance v15, Landroid/graphics/Matrix;

    .line 341
    .line 342
    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    .line 344
    .line 345
    int-to-float v0, v8

    .line 346
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 354
    .line 355
    .line 356
    move-result v14

    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    const/4 v11, 0x0

    .line 360
    const/4 v12, 0x0

    .line 361
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    :cond_2
    :try_start_0
    const-string v0, "barcodeimage"

    .line 366
    .line 367
    const-string v2, ".jpg"

    .line 368
    .line 369
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-static {v0, v2, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    new-instance v2, Ljava/io/FileOutputStream;

    .line 378
    .line 379
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 380
    .line 381
    .line 382
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 383
    .line 384
    const/16 v9, 0x64

    .line 385
    .line 386
    invoke-virtual {v10, v8, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v8, "Unable to create temporary file and store bitmap! "

    .line 401
    .line 402
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    const-string v2, "j"

    .line 413
    .line 414
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    :cond_3
    const/4 v0, 0x0

    .line 418
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 419
    .line 420
    const-string v8, "com.google.zxing.client.android.SCAN"

    .line 421
    .line 422
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const/high16 v8, 0x80000

    .line 426
    .line 427
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    .line 429
    .line 430
    const-string v8, "SCAN_RESULT"

    .line 431
    .line 432
    iget-object v9, v4, Lz5/m;->a:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    .line 436
    .line 437
    iget-object v8, v4, Lz5/m;->d:Lz5/a;

    .line 438
    .line 439
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    const-string v9, "SCAN_RESULT_FORMAT"

    .line 444
    .line 445
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    .line 447
    .line 448
    iget-object v8, v4, Lz5/m;->b:[B

    .line 449
    .line 450
    if-eqz v8, :cond_4

    .line 451
    .line 452
    array-length v9, v8

    .line 453
    if-lez v9, :cond_4

    .line 454
    .line 455
    const-string v9, "SCAN_RESULT_BYTES"

    .line 456
    .line 457
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 458
    .line 459
    .line 460
    :cond_4
    iget-object v4, v4, Lz5/m;->e:Ljava/util/Map;

    .line 461
    .line 462
    if-eqz v4, :cond_8

    .line 463
    .line 464
    sget-object v8, Lz5/n;->h:Lz5/n;

    .line 465
    .line 466
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    if-eqz v9, :cond_5

    .line 471
    .line 472
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    const-string v9, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 481
    .line 482
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    .line 484
    .line 485
    :cond_5
    sget-object v8, Lz5/n;->b:Lz5/n;

    .line 486
    .line 487
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    check-cast v8, Ljava/lang/Number;

    .line 492
    .line 493
    if-eqz v8, :cond_6

    .line 494
    .line 495
    const-string v9, "SCAN_RESULT_ORIENTATION"

    .line 496
    .line 497
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 498
    .line 499
    .line 500
    move-result v8

    .line 501
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    .line 503
    .line 504
    :cond_6
    sget-object v8, Lz5/n;->d:Lz5/n;

    .line 505
    .line 506
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    check-cast v8, Ljava/lang/String;

    .line 511
    .line 512
    if-eqz v8, :cond_7

    .line 513
    .line 514
    const-string v9, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 515
    .line 516
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    .line 518
    .line 519
    :cond_7
    sget-object v8, Lz5/n;->c:Lz5/n;

    .line 520
    .line 521
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    check-cast v4, Ljava/lang/Iterable;

    .line 526
    .line 527
    if-eqz v4, :cond_8

    .line 528
    .line 529
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 534
    .line 535
    .line 536
    move-result v8

    .line 537
    if-eqz v8, :cond_8

    .line 538
    .line 539
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    check-cast v8, [B

    .line 544
    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v10, "SCAN_RESULT_BYTE_SEGMENTS_"

    .line 548
    .line 549
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 560
    .line 561
    .line 562
    add-int/2addr v3, v5

    .line 563
    goto :goto_1

    .line 564
    :cond_8
    if-eqz v0, :cond_9

    .line 565
    .line 566
    const-string v3, "SCAN_RESULT_IMAGE_PATH"

    .line 567
    .line 568
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    .line 570
    .line 571
    :cond_9
    const/4 v0, -0x1

    .line 572
    invoke-virtual {v7, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v6}, Lb7/j;->a()V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_13
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v0, Lb1/r;

    .line 582
    .line 583
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v2, Ljava/lang/String;

    .line 586
    .line 587
    :try_start_1
    iget-object v0, v0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 588
    .line 589
    if-eqz v0, :cond_a

    .line 590
    .line 591
    const/4 v3, 0x0

    .line 592
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    .line 594
    .line 595
    :catch_1
    :cond_a
    return-void

    .line 596
    :pswitch_14
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v0, Lb1/r;

    .line 599
    .line 600
    iget-object v4, v1, La1/a;->d:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v4, Ls0/a;

    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    iget-object v7, v4, Ls0/a;->e:Landroid/graphics/Bitmap;

    .line 608
    .line 609
    new-instance v8, Lorg/json/JSONObject;

    .line 610
    .line 611
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 612
    .line 613
    .line 614
    :try_start_2
    new-array v9, v6, [B

    .line 615
    .line 616
    fill-array-data v9, :array_2

    .line 617
    .line 618
    .line 619
    new-array v10, v6, [B

    .line 620
    .line 621
    fill-array-data v10, :array_3

    .line 622
    .line 623
    .line 624
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    iget-object v10, v4, Ls0/a;->a:Ln0/g;

    .line 629
    .line 630
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v10

    .line 634
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    .line 636
    .line 637
    new-array v9, v6, [B

    .line 638
    .line 639
    fill-array-data v9, :array_4

    .line 640
    .line 641
    .line 642
    new-array v10, v6, [B

    .line 643
    .line 644
    fill-array-data v10, :array_5

    .line 645
    .line 646
    .line 647
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    iget-object v10, v4, Ls0/a;->b:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    .line 655
    .line 656
    const/16 v9, 0xa

    .line 657
    .line 658
    new-array v9, v9, [B

    .line 659
    .line 660
    fill-array-data v9, :array_6

    .line 661
    .line 662
    .line 663
    new-array v10, v6, [B

    .line 664
    .line 665
    fill-array-data v10, :array_7

    .line 666
    .line 667
    .line 668
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v9

    .line 672
    iget-object v10, v4, Ls0/a;->c:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    .line 676
    .line 677
    const/16 v9, 0x9

    .line 678
    .line 679
    new-array v10, v9, [B

    .line 680
    .line 681
    fill-array-data v10, :array_8

    .line 682
    .line 683
    .line 684
    new-array v11, v6, [B

    .line 685
    .line 686
    fill-array-data v11, :array_9

    .line 687
    .line 688
    .line 689
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v10

    .line 693
    iget-object v11, v4, Ls0/a;->d:Ljava/lang/String;

    .line 694
    .line 695
    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    .line 697
    .line 698
    const/16 v10, 0x10

    .line 699
    .line 700
    if-eqz v7, :cond_c

    .line 701
    .line 702
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getGenerationId()I

    .line 703
    .line 704
    .line 705
    move-result v11

    .line 706
    iget-boolean v12, v0, Lb1/r;->r:Z

    .line 707
    .line 708
    if-eqz v12, :cond_b

    .line 709
    .line 710
    iget v12, v0, Lb1/r;->q:I

    .line 711
    .line 712
    if-eq v11, v12, :cond_d

    .line 713
    .line 714
    :cond_b
    new-array v10, v10, [B

    .line 715
    .line 716
    fill-array-data v10, :array_a

    .line 717
    .line 718
    .line 719
    new-array v12, v6, [B

    .line 720
    .line 721
    fill-array-data v12, :array_b

    .line 722
    .line 723
    .line 724
    invoke-static {v10, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v10

    .line 728
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 729
    .line 730
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 731
    .line 732
    .line 733
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 734
    .line 735
    const/16 v14, 0x1e

    .line 736
    .line 737
    invoke-virtual {v7, v13, v14, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 738
    .line 739
    .line 740
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    invoke-static {v7, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    .line 750
    .line 751
    iput v11, v0, Lb1/r;->q:I

    .line 752
    .line 753
    iput-boolean v5, v0, Lb1/r;->r:Z

    .line 754
    .line 755
    goto :goto_2

    .line 756
    :cond_c
    iget-boolean v5, v0, Lb1/r;->r:Z

    .line 757
    .line 758
    if-eqz v5, :cond_d

    .line 759
    .line 760
    new-array v5, v10, [B

    .line 761
    .line 762
    fill-array-data v5, :array_c

    .line 763
    .line 764
    .line 765
    new-array v7, v6, [B

    .line 766
    .line 767
    fill-array-data v7, :array_d

    .line 768
    .line 769
    .line 770
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    const-string v7, ""

    .line 775
    .line 776
    invoke-virtual {v8, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    .line 778
    .line 779
    const/high16 v5, -0x80000000

    .line 780
    .line 781
    iput v5, v0, Lb1/r;->q:I

    .line 782
    .line 783
    iput-boolean v3, v0, Lb1/r;->r:Z

    .line 784
    .line 785
    :cond_d
    :goto_2
    new-array v3, v2, [B

    .line 786
    .line 787
    fill-array-data v3, :array_e

    .line 788
    .line 789
    .line 790
    new-array v5, v6, [B

    .line 791
    .line 792
    fill-array-data v5, :array_f

    .line 793
    .line 794
    .line 795
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    iget-object v5, v4, Ls0/a;->f:Ljava/lang/Long;

    .line 800
    .line 801
    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    .line 803
    .line 804
    new-array v2, v2, [B

    .line 805
    .line 806
    fill-array-data v2, :array_10

    .line 807
    .line 808
    .line 809
    new-array v3, v6, [B

    .line 810
    .line 811
    fill-array-data v3, :array_11

    .line 812
    .line 813
    .line 814
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    iget-object v3, v4, Ls0/a;->g:Ljava/lang/Long;

    .line 819
    .line 820
    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    .line 822
    .line 823
    new-array v2, v9, [B

    .line 824
    .line 825
    fill-array-data v2, :array_12

    .line 826
    .line 827
    .line 828
    new-array v3, v6, [B

    .line 829
    .line 830
    fill-array-data v3, :array_13

    .line 831
    .line 832
    .line 833
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    invoke-virtual {v0, v2, v3}, Lb1/r;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 842
    .line 843
    .line 844
    :catch_2
    return-void

    .line 845
    :pswitch_15
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 846
    .line 847
    move-object v7, v0

    .line 848
    check-cast v7, Lb1/l;

    .line 849
    .line 850
    iget-object v0, v1, La1/a;->d:Ljava/lang/Object;

    .line 851
    .line 852
    move-object v8, v0

    .line 853
    check-cast v8, Ljava/lang/String;

    .line 854
    .line 855
    iget-object v2, v7, Lb1/l;->e:Ljava/util/Set;

    .line 856
    .line 857
    :try_start_3
    invoke-virtual {v7}, Lb1/l;->v()Lorg/json/JSONArray;

    .line 858
    .line 859
    .line 860
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 861
    const/4 v0, 0x7

    .line 862
    :try_start_4
    new-array v0, v0, [B

    .line 863
    .line 864
    fill-array-data v0, :array_14

    .line 865
    .line 866
    .line 867
    new-array v10, v6, [B

    .line 868
    .line 869
    fill-array-data v10, :array_15

    .line 870
    .line 871
    .line 872
    invoke-static {v0, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v7, v8, v0, v9}, Lb1/l;->K(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 877
    .line 878
    .line 879
    move-object v14, v9

    .line 880
    goto :goto_5

    .line 881
    :catch_3
    move-exception v0

    .line 882
    :goto_3
    move-object v14, v9

    .line 883
    goto :goto_4

    .line 884
    :catch_4
    move-exception v0

    .line 885
    const/4 v9, 0x0

    .line 886
    goto :goto_3

    .line 887
    :goto_4
    const/4 v9, 0x7

    .line 888
    new-array v9, v9, [B

    .line 889
    .line 890
    fill-array-data v9, :array_16

    .line 891
    .line 892
    .line 893
    new-array v10, v6, [B

    .line 894
    .line 895
    fill-array-data v10, :array_17

    .line 896
    .line 897
    .line 898
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v9

    .line 902
    new-instance v10, Lorg/json/JSONArray;

    .line 903
    .line 904
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 905
    .line 906
    .line 907
    const/4 v12, 0x1

    .line 908
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v13

    .line 912
    const/4 v11, 0x0

    .line 913
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V

    .line 914
    .line 915
    .line 916
    :goto_5
    const/4 v15, 0x4

    .line 917
    :try_start_5
    new-array v0, v15, [B

    .line 918
    .line 919
    fill-array-data v0, :array_18

    .line 920
    .line 921
    .line 922
    new-array v9, v6, [B

    .line 923
    .line 924
    fill-array-data v9, :array_19

    .line 925
    .line 926
    .line 927
    invoke-static {v0, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-static {v3}, Lb1/l;->A(Z)Lorg/json/JSONArray;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    invoke-virtual {v7, v8, v0, v3}, Lb1/l;->K(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 936
    .line 937
    .line 938
    goto :goto_6

    .line 939
    :catch_5
    move-exception v0

    .line 940
    new-array v3, v15, [B

    .line 941
    .line 942
    fill-array-data v3, :array_1a

    .line 943
    .line 944
    .line 945
    new-array v9, v6, [B

    .line 946
    .line 947
    fill-array-data v9, :array_1b

    .line 948
    .line 949
    .line 950
    invoke-static {v3, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v9

    .line 954
    new-instance v10, Lorg/json/JSONArray;

    .line 955
    .line 956
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 957
    .line 958
    .line 959
    const/4 v12, 0x1

    .line 960
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v13

    .line 964
    const/4 v11, 0x0

    .line 965
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V

    .line 966
    .line 967
    .line 968
    :goto_6
    const/4 v0, 0x6

    .line 969
    :try_start_6
    new-array v0, v0, [B

    .line 970
    .line 971
    fill-array-data v0, :array_1c

    .line 972
    .line 973
    .line 974
    new-array v3, v6, [B

    .line 975
    .line 976
    fill-array-data v3, :array_1d

    .line 977
    .line 978
    .line 979
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-virtual {v7}, Lb1/l;->x()Lorg/json/JSONArray;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    invoke-virtual {v7, v8, v0, v3}, Lb1/l;->K(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 988
    .line 989
    .line 990
    goto :goto_7

    .line 991
    :catch_6
    move-exception v0

    .line 992
    const/4 v3, 0x6

    .line 993
    new-array v3, v3, [B

    .line 994
    .line 995
    fill-array-data v3, :array_1e

    .line 996
    .line 997
    .line 998
    new-array v9, v6, [B

    .line 999
    .line 1000
    fill-array-data v9, :array_1f

    .line 1001
    .line 1002
    .line 1003
    invoke-static {v3, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v9

    .line 1007
    new-instance v10, Lorg/json/JSONArray;

    .line 1008
    .line 1009
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1010
    .line 1011
    .line 1012
    const/4 v12, 0x1

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v13

    .line 1017
    const/4 v11, 0x0

    .line 1018
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    :goto_7
    if-eqz v14, :cond_e

    .line 1022
    .line 1023
    :try_start_7
    new-array v0, v4, [B

    .line 1024
    .line 1025
    fill-array-data v0, :array_20

    .line 1026
    .line 1027
    .line 1028
    new-array v3, v6, [B

    .line 1029
    .line 1030
    fill-array-data v3, :array_21

    .line 1031
    .line 1032
    .line 1033
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    invoke-static {v14}, Lb1/l;->w(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-virtual {v7, v8, v0, v3}, Lb1/l;->K(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1042
    .line 1043
    .line 1044
    goto :goto_8

    .line 1045
    :catch_7
    move-exception v0

    .line 1046
    new-array v3, v4, [B

    .line 1047
    .line 1048
    fill-array-data v3, :array_22

    .line 1049
    .line 1050
    .line 1051
    new-array v4, v6, [B

    .line 1052
    .line 1053
    fill-array-data v4, :array_23

    .line 1054
    .line 1055
    .line 1056
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v9

    .line 1060
    new-instance v10, Lorg/json/JSONArray;

    .line 1061
    .line 1062
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    const/4 v12, 0x1

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v13

    .line 1070
    const/4 v11, 0x0

    .line 1071
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    :cond_e
    :goto_8
    :try_start_8
    new-array v0, v6, [B

    .line 1075
    .line 1076
    fill-array-data v0, :array_24

    .line 1077
    .line 1078
    .line 1079
    new-array v3, v6, [B

    .line 1080
    .line 1081
    fill-array-data v3, :array_25

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-static {v5}, Lb1/l;->A(Z)Lorg/json/JSONArray;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    invoke-virtual {v7, v8, v0, v3}, Lb1/l;->K(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1093
    .line 1094
    .line 1095
    new-array v0, v15, [B

    .line 1096
    .line 1097
    fill-array-data v0, :array_26

    .line 1098
    .line 1099
    .line 1100
    new-array v3, v6, [B

    .line 1101
    .line 1102
    fill-array-data v3, :array_27

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v9

    .line 1109
    new-instance v10, Lorg/json/JSONArray;

    .line 1110
    .line 1111
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    :goto_9
    const/4 v12, 0x1

    .line 1115
    const/4 v13, 0x0

    .line 1116
    const/4 v11, 0x0

    .line 1117
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    goto :goto_a

    .line 1124
    :catchall_0
    move-exception v0

    .line 1125
    goto :goto_b

    .line 1126
    :catch_8
    move-exception v0

    .line 1127
    :try_start_9
    new-array v3, v6, [B

    .line 1128
    .line 1129
    fill-array-data v3, :array_28

    .line 1130
    .line 1131
    .line 1132
    new-array v4, v6, [B

    .line 1133
    .line 1134
    fill-array-data v4, :array_29

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v9

    .line 1141
    new-instance v10, Lorg/json/JSONArray;

    .line 1142
    .line 1143
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v13

    .line 1150
    const/4 v11, 0x0

    .line 1151
    const/4 v12, 0x1

    .line 1152
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1153
    .line 1154
    .line 1155
    new-array v0, v15, [B

    .line 1156
    .line 1157
    fill-array-data v0, :array_2a

    .line 1158
    .line 1159
    .line 1160
    new-array v3, v6, [B

    .line 1161
    .line 1162
    fill-array-data v3, :array_2b

    .line 1163
    .line 1164
    .line 1165
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v9

    .line 1169
    new-instance v10, Lorg/json/JSONArray;

    .line 1170
    .line 1171
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_9

    .line 1175
    :goto_a
    return-void

    .line 1176
    :goto_b
    new-array v3, v15, [B

    .line 1177
    .line 1178
    fill-array-data v3, :array_2c

    .line 1179
    .line 1180
    .line 1181
    new-array v4, v6, [B

    .line 1182
    .line 1183
    fill-array-data v4, :array_2d

    .line 1184
    .line 1185
    .line 1186
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v9

    .line 1190
    new-instance v10, Lorg/json/JSONArray;

    .line 1191
    .line 1192
    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1193
    .line 1194
    .line 1195
    const/4 v12, 0x1

    .line 1196
    const/4 v13, 0x0

    .line 1197
    const/4 v11, 0x0

    .line 1198
    invoke-virtual/range {v7 .. v13}, Lb1/l;->L(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ZZLjava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1202
    .line 1203
    .line 1204
    throw v0

    .line 1205
    :pswitch_16
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1206
    .line 1207
    move-object v2, v0

    .line 1208
    check-cast v2, Lb1/f;

    .line 1209
    .line 1210
    iget-object v0, v1, La1/a;->d:Ljava/lang/Object;

    .line 1211
    .line 1212
    check-cast v0, Landroid/os/IBinder;

    .line 1213
    .line 1214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v7

    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v8

    .line 1222
    :try_start_a
    sget-object v9, Lb1/f;->v:Ljava/lang/String;

    .line 1223
    .line 1224
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-interface {v0, v5, v7, v8, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1231
    if-nez v0, :cond_f

    .line 1232
    .line 1233
    :goto_c
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1237
    .line 1238
    .line 1239
    :goto_d
    iget-object v0, v2, Lb1/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1240
    .line 1241
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_12

    .line 1245
    .line 1246
    :cond_f
    :try_start_b
    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    .line 1250
    .line 1251
    .line 1252
    move-result-object v5

    .line 1253
    invoke-virtual {v8}, Landroid/os/Parcel;->readLong()J

    .line 1254
    .line 1255
    .line 1256
    move-result-wide v9

    .line 1257
    if-eqz v5, :cond_10

    .line 1258
    .line 1259
    array-length v0, v5

    .line 1260
    if-nez v0, :cond_11

    .line 1261
    .line 1262
    :cond_10
    move-object/from16 v16, v7

    .line 1263
    .line 1264
    goto/16 :goto_10

    .line 1265
    .line 1266
    :cond_11
    iget-wide v11, v2, Lb1/f;->i:J

    .line 1267
    .line 1268
    cmp-long v0, v9, v11

    .line 1269
    .line 1270
    if-nez v0, :cond_12

    .line 1271
    .line 1272
    goto :goto_c

    .line 1273
    :cond_12
    iput-object v5, v2, Lb1/f;->h:[B

    .line 1274
    .line 1275
    iput-wide v9, v2, Lb1/f;->i:J

    .line 1276
    .line 1277
    iget-wide v11, v2, Lb1/f;->k:J

    .line 1278
    .line 1279
    const-wide/16 v13, 0x1

    .line 1280
    .line 1281
    add-long/2addr v11, v13

    .line 1282
    iput-wide v11, v2, Lb1/f;->k:J

    .line 1283
    .line 1284
    const-wide/16 v13, 0xa

    .line 1285
    .line 1286
    rem-long v13, v11, v13
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1287
    .line 1288
    move-object/from16 v16, v7

    .line 1289
    .line 1290
    const-wide/16 v6, 0x0

    .line 1291
    .line 1292
    cmp-long v0, v13, v6

    .line 1293
    .line 1294
    if-nez v0, :cond_13

    .line 1295
    .line 1296
    :try_start_c
    new-array v0, v4, [B

    .line 1297
    .line 1298
    fill-array-data v0, :array_2e

    .line 1299
    .line 1300
    .line 1301
    const/16 v15, 0x8

    .line 1302
    .line 1303
    new-array v4, v15, [B

    .line 1304
    .line 1305
    fill-array-data v4, :array_2f

    .line 1306
    .line 1307
    .line 1308
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    .line 1316
    .line 1317
    const/16 v13, 0xd

    .line 1318
    .line 1319
    new-array v13, v13, [B

    .line 1320
    .line 1321
    fill-array-data v13, :array_30

    .line 1322
    .line 1323
    .line 1324
    const/16 v15, 0x8

    .line 1325
    .line 1326
    new-array v14, v15, [B

    .line 1327
    .line 1328
    fill-array-data v14, :array_31

    .line 1329
    .line 1330
    .line 1331
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v13

    .line 1335
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    const/4 v11, 0x7

    .line 1342
    new-array v11, v11, [B

    .line 1343
    .line 1344
    fill-array-data v11, :array_32

    .line 1345
    .line 1346
    .line 1347
    const/16 v15, 0x8

    .line 1348
    .line 1349
    new-array v12, v15, [B

    .line 1350
    .line 1351
    fill-array-data v12, :array_33

    .line 1352
    .line 1353
    .line 1354
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v11

    .line 1358
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1362
    .line 1363
    .line 1364
    move-result-wide v11

    .line 1365
    sub-long/2addr v11, v9

    .line 1366
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 1367
    .line 1368
    .line 1369
    move-result-wide v6

    .line 1370
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    .line 1373
    const/4 v6, 0x7

    .line 1374
    new-array v6, v6, [B

    .line 1375
    .line 1376
    fill-array-data v6, :array_34

    .line 1377
    .line 1378
    .line 1379
    const/16 v15, 0x8

    .line 1380
    .line 1381
    new-array v7, v15, [B

    .line 1382
    .line 1383
    fill-array-data v7, :array_35

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v6

    .line 1390
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    array-length v6, v5

    .line 1394
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v4

    .line 1401
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .line 1403
    .line 1404
    goto :goto_e

    .line 1405
    :catchall_1
    move-exception v0

    .line 1406
    goto :goto_13

    .line 1407
    :catch_9
    move-exception v0

    .line 1408
    goto :goto_11

    .line 1409
    :cond_13
    :goto_e
    iget-object v0, v2, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1410
    .line 1411
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v4

    .line 1415
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1416
    .line 1417
    .line 1418
    move-result v0

    .line 1419
    if-eqz v0, :cond_14

    .line 1420
    .line 1421
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v0

    .line 1425
    check-cast v0, Lb1/e;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1426
    .line 1427
    :try_start_d
    check-cast v0, Lb1/r;

    .line 1428
    .line 1429
    invoke-virtual {v0, v5, v9, v10}, Lb1/r;->k([BJ)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1430
    .line 1431
    .line 1432
    goto :goto_f

    .line 1433
    :catch_a
    move-exception v0

    .line 1434
    :try_start_e
    sget-object v6, Lb1/f;->s:Ljava/lang/String;

    .line 1435
    .line 1436
    const/16 v7, 0x20

    .line 1437
    .line 1438
    new-array v7, v7, [B

    .line 1439
    .line 1440
    fill-array-data v7, :array_36

    .line 1441
    .line 1442
    .line 1443
    const/16 v15, 0x8

    .line 1444
    .line 1445
    new-array v11, v15, [B

    .line 1446
    .line 1447
    fill-array-data v11, :array_37

    .line 1448
    .line 1449
    .line 1450
    invoke-static {v7, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v7

    .line 1454
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1455
    .line 1456
    .line 1457
    goto :goto_f

    .line 1458
    :catchall_2
    move-exception v0

    .line 1459
    move-object/from16 v16, v7

    .line 1460
    .line 1461
    goto :goto_13

    .line 1462
    :catch_b
    move-exception v0

    .line 1463
    move-object/from16 v16, v7

    .line 1464
    .line 1465
    goto :goto_11

    .line 1466
    :cond_14
    :goto_10
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 1470
    .line 1471
    .line 1472
    goto/16 :goto_d

    .line 1473
    .line 1474
    :goto_11
    :try_start_f
    sget-object v4, Lb1/f;->s:Ljava/lang/String;

    .line 1475
    .line 1476
    const/16 v5, 0x1d

    .line 1477
    .line 1478
    new-array v5, v5, [B

    .line 1479
    .line 1480
    fill-array-data v5, :array_38

    .line 1481
    .line 1482
    .line 1483
    const/16 v15, 0x8

    .line 1484
    .line 1485
    new-array v6, v15, [B

    .line 1486
    .line 1487
    fill-array-data v6, :array_39

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v5

    .line 1494
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1495
    .line 1496
    .line 1497
    goto :goto_10

    .line 1498
    :goto_12
    return-void

    .line 1499
    :goto_13
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 1503
    .line 1504
    .line 1505
    iget-object v2, v2, Lb1/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1506
    .line 1507
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1508
    .line 1509
    .line 1510
    throw v0

    .line 1511
    :pswitch_17
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1512
    .line 1513
    check-cast v0, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 1514
    .line 1515
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 1516
    .line 1517
    check-cast v2, Landroidx/window/layout/WindowLayoutInfo;

    .line 1518
    .line 1519
    invoke-static {v0, v2}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->a(Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 1520
    .line 1521
    .line 1522
    return-void

    .line 1523
    :pswitch_18
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1524
    .line 1525
    check-cast v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    .line 1526
    .line 1527
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v2, Ljava/util/ArrayList;

    .line 1530
    .line 1531
    invoke-static {v0, v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->a(Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;Ljava/util/ArrayList;)V

    .line 1532
    .line 1533
    .line 1534
    return-void

    .line 1535
    :pswitch_19
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1536
    .line 1537
    check-cast v0, Landroidx/lifecycle/DispatchQueue;

    .line 1538
    .line 1539
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 1540
    .line 1541
    check-cast v2, Ljava/lang/Runnable;

    .line 1542
    .line 1543
    invoke-static {v0, v2}, Landroidx/lifecycle/DispatchQueue;->a(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    .line 1544
    .line 1545
    .line 1546
    return-void

    .line 1547
    :pswitch_1a
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1548
    .line 1549
    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 1550
    .line 1551
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 1552
    .line 1553
    check-cast v2, Landroid/graphics/Typeface;

    .line 1554
    .line 1555
    invoke-static {v0, v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    .line 1556
    .line 1557
    .line 1558
    return-void

    .line 1559
    :pswitch_1b
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1560
    .line 1561
    check-cast v0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 1562
    .line 1563
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 1564
    .line 1565
    check-cast v2, [Landroid/view/View;

    .line 1566
    .line 1567
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    .line 1568
    .line 1569
    .line 1570
    return-void

    .line 1571
    :pswitch_1c
    iget-object v0, v1, La1/a;->c:Ljava/lang/Object;

    .line 1572
    .line 1573
    check-cast v0, Landroid/view/WindowManager;

    .line 1574
    .line 1575
    iget-object v2, v1, La1/a;->d:Ljava/lang/Object;

    .line 1576
    .line 1577
    check-cast v2, Landroid/view/View;

    .line 1578
    .line 1579
    :try_start_10
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 1580
    .line 1581
    .line 1582
    :catch_c
    return-void

    .line 1583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    :array_0
    .array-data 1
        -0x21t
        0x67t
        0x70t
        -0x21t
        0x4ct
    .end array-data

    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    nop

    .line 1653
    :array_1
    .array-data 1
        -0x42t
        0xbt
        0x0t
        -0x49t
        0x2dt
        -0x72t
        -0x5ct
        -0x4ft
    .end array-data

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    :array_2
    .array-data 1
        -0x1bt
        -0x34t
        -0x31t
        0x18t
        0x78t
        0x7bt
        0x42t
        0x57t
    .end array-data

    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    :array_3
    .array-data 1
        -0x4bt
        -0x60t
        -0x52t
        0x61t
        0x2bt
        0xft
        0x23t
        0x23t
    .end array-data

    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    :array_4
    .array-data 1
        -0x65t
        -0x40t
        0x6ft
        0x27t
        -0x2bt
        0x5ft
        -0x2dt
        0x25t
    .end array-data

    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    :array_5
    .array-data 1
        -0x38t
        -0x51t
        0x1t
        0x40t
        -0x65t
        0x3et
        -0x42t
        0x40t
    .end array-data

    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    :array_6
    .array-data 1
        0x49t
        0x3t
        0x39t
        -0x46t
        -0xbt
        0xdt
        -0x46t
        -0x6bt
        0x69t
        0x18t
    .end array-data

    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    nop

    .line 1703
    :array_7
    .array-data 1
        0x1at
        0x6ct
        0x57t
        -0x23t
        -0x4ct
        0x7ft
        -0x32t
        -0x4t
    .end array-data

    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    :array_8
    .array-data 1
        -0x9t
        0x18t
        -0x5at
        -0x3et
        0x10t
        0x27t
        0x21t
        -0x4dt
        -0x37t
    .end array-data

    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    nop

    .line 1721
    :array_9
    .array-data 1
        -0x5ct
        0x77t
        -0x38t
        -0x5bt
        0x51t
        0x4bt
        0x43t
        -0x3at
    .end array-data

    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    :array_a
    .array-data 1
        -0x26t
        -0x53t
        0x22t
        -0x4bt
        -0x64t
        0x78t
        0x63t
        0x6ft
        -0x1ct
        -0x6et
        0x25t
        -0x4ft
        -0x57t
        0x61t
        0x73t
        0x7ft
    .end array-data

    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    :array_b
    .array-data 1
        -0x77t
        -0x3et
        0x4ct
        -0x2et
        -0x23t
        0x14t
        0x1t
        0x1at
    .end array-data

    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    :array_c
    .array-data 1
        0x2ct
        0x5dt
        -0x3et
        0x77t
        -0x2ft
        -0x75t
        0x32t
        -0x67t
        0x12t
        0x62t
        -0x3bt
        0x73t
        -0x1ct
        -0x6et
        0x22t
        -0x77t
    .end array-data

    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    :array_d
    .array-data 1
        0x7ft
        0x32t
        -0x54t
        0x10t
        -0x70t
        -0x19t
        0x50t
        -0x14t
    .end array-data

    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    :array_e
    .array-data 1
        0x57t
        -0x26t
        0x6t
        0x32t
        0x28t
    .end array-data

    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    nop

    .line 1777
    :array_f
    .array-data 1
        0x3t
        -0x58t
        0x76t
        0x5dt
        0x5bt
        -0x7ft
        0x5t
        -0x1ft
    .end array-data

    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    :array_10
    .array-data 1
        0x30t
        0x1t
        -0x33t
        0xbt
        -0x4bt
    .end array-data

    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    nop

    .line 1793
    :array_11
    .array-data 1
        0x64t
        0x73t
        -0x57t
        0x7et
        -0x39t
        0x7ft
        0x3ft
        0x7at
    .end array-data

    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    :array_12
    .array-data 1
        -0xet
        -0x75t
        -0x42t
        0x46t
        0x14t
        -0x36t
        -0x8t
        0xft
        -0x10t
    .end array-data

    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    nop

    .line 1811
    :array_13
    .array-data 1
        -0x61t
        -0x2t
        -0x33t
        0x2ft
        0x77t
        -0x7dt
        -0x6at
        0x69t
    .end array-data

    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    :array_14
    .array-data 1
        -0x54t
        -0x76t
        -0x7ft
        0x3et
        0x63t
        -0x1dt
        -0x5ft
    .end array-data

    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    :array_15
    .array-data 1
        -0x33t
        -0x17t
        -0xbt
        0x57t
        0xct
        -0x73t
        -0x2et
        -0x5ct
    .end array-data

    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    :array_16
    .array-data 1
        0x3bt
        0x6bt
        0x9t
        -0x5at
        -0x56t
        -0x7dt
        0x2dt
    .end array-data

    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    :array_17
    .array-data 1
        0x5at
        0x8t
        0x7dt
        -0x31t
        -0x3bt
        -0x13t
        0x5et
        -0x28t
    .end array-data

    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    :array_18
    .array-data 1
        -0x69t
        0x19t
        0x2ct
        -0x1dt
    .end array-data

    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    :array_19
    .array-data 1
        -0xat
        0x69t
        0x5ct
        -0x70t
        -0x73t
        -0x54t
        -0x16t
        -0x6at
    .end array-data

    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    :array_1a
    .array-data 1
        0x10t
        -0x4ct
        0x3et
        0x9t
    .end array-data

    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    :array_1b
    .array-data 1
        0x71t
        -0x3ct
        0x4et
        0x7at
        0x68t
        0x59t
        -0x3et
        0x13t
    .end array-data

    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    :array_1c
    .array-data 1
        0x1dt
        0x4at
        -0x1at
        -0x4ct
        0x6ct
        0x4ct
    .end array-data

    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    nop

    .line 1887
    :array_1d
    .array-data 1
        0x6et
        0x3at
        -0x76t
        -0x23t
        0x18t
        0x3ft
        0xft
        -0x61t
    .end array-data

    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    :array_1e
    .array-data 1
        -0x53t
        0x14t
        0x65t
        0x12t
        0x25t
        0x7at
    .end array-data

    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    nop

    .line 1903
    :array_1f
    .array-data 1
        -0x22t
        0x64t
        0x9t
        0x7bt
        0x51t
        0x9t
        0xet
        -0x65t
    .end array-data

    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    :array_20
    .array-data 1
        -0x42t
        -0x19t
        -0x52t
        -0x8t
        0x4dt
        0x66t
        0x47t
        0x46t
        -0x50t
        -0x16t
        -0x57t
    .end array-data

    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    :array_21
    .array-data 1
        -0x21t
        -0x7ct
        -0x26t
        -0x6ft
        0x22t
        0x8t
        0xet
        0x25t
    .end array-data

    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    :array_22
    .array-data 1
        -0x5at
        -0x13t
        -0x35t
        0x44t
        0x7ct
        -0x38t
        -0x62t
        0x47t
        -0x58t
        -0x20t
        -0x34t
    .end array-data

    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    :array_23
    .array-data 1
        -0x39t
        -0x72t
        -0x41t
        0x2dt
        0x13t
        -0x5at
        -0x29t
        0x24t
    .end array-data

    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    :array_24
    .array-data 1
        -0x77t
        -0x29t
        0x13t
        0x51t
        -0x10t
        -0x48t
        -0x12t
        -0x38t
    .end array-data

    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    :array_25
    .array-data 1
        -0x18t
        -0x59t
        0x63t
        0x18t
        -0x6dt
        -0x29t
        -0x80t
        -0x45t
    .end array-data

    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    :array_26
    .array-data 1
        -0x6dt
        -0xet
        -0x2ct
        -0x6at
    .end array-data

    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    :array_27
    .array-data 1
        -0x9t
        -0x63t
        -0x46t
        -0xdt
        -0x18t
        -0xft
        0x41t
        0x1t
    .end array-data

    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    :array_28
    .array-data 1
        0x72t
        -0x25t
        0x50t
        -0x1ft
        0x70t
        -0x24t
        -0x7ft
        0x64t
    .end array-data

    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    :array_29
    .array-data 1
        0x13t
        -0x55t
        0x20t
        -0x58t
        0x13t
        -0x4dt
        -0x11t
        0x17t
    .end array-data

    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    :array_2a
    .array-data 1
        -0x37t
        -0x59t
        0x42t
        0x10t
    .end array-data

    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    :array_2b
    .array-data 1
        -0x53t
        -0x38t
        0x2ct
        0x75t
        -0x50t
        -0x60t
        0x1ct
        -0x6bt
    .end array-data

    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    :array_2c
    .array-data 1
        0xbt
        0xbt
        -0x61t
        0x4dt
    .end array-data

    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    :array_2d
    .array-data 1
        0x6ft
        0x64t
        -0xft
        0x28t
        -0x6at
        0x1dt
        -0x23t
        0xft
    .end array-data

    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    :array_2e
    .array-data 1
        0x33t
        -0x19t
        -0x36t
        0x13t
        0x76t
        -0x3dt
        0xft
        0x3t
        0x1bt
        -0x4t
        -0x3et
    .end array-data

    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    :array_2f
    .array-data 1
        0x7et
        -0x72t
        -0x5ct
        0x7at
        0x3bt
        -0x5et
        0x7ft
        0x53t
    .end array-data

    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    :array_30
    .array-data 1
        -0x65t
        -0x30t
        -0x73t
        -0x15t
        -0x17t
        0x3bt
        -0x66t
        -0x64t
        -0x75t
        -0x28t
        -0x72t
        -0x16t
        -0x4ft
    .end array-data

    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    nop

    .line 2051
    :array_31
    .array-data 1
        -0x7t
        -0x47t
        -0x1dt
        -0x71t
        -0x74t
        0x49t
        -0x46t
        -0x6t
    .end array-data

    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :array_32
    .array-data 1
        0x32t
        -0x7t
        -0x9t
        0x72t
        0x2ct
        0x7bt
        -0x56t
    .end array-data

    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    :array_33
    .array-data 1
        0x12t
        -0x68t
        -0x70t
        0x17t
        0x61t
        0x8t
        -0x69t
        -0x11t
    .end array-data

    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    :array_34
    .array-data 1
        0x69t
        0x2at
        -0x42t
        -0x5dt
        0x15t
        -0x5t
        0x1t
    .end array-data

    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    :array_35
    .array-data 1
        0x49t
        0x48t
        -0x39t
        -0x29t
        0x70t
        -0x78t
        0x3ct
        0x2bt
    .end array-data

    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    :array_36
    .array-data 1
        -0x1ct
        -0x9t
        0x3at
        0x1t
        0x7et
        0x1bt
        0x16t
        0x36t
        -0x77t
        -0xet
        0x3dt
        0x1bt
        0x27t
        0x13t
        0x19t
        0x23t
        -0x25t
        -0x42t
        0x26t
        0xdt
        0x39t
        0x13t
        0x14t
        0x32t
        -0x34t
        -0x6t
        0x74t
        0xet
        0x21t
        0x17t
        0x1at
        0x23t
    .end array-data

    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    :array_37
    .array-data 1
        -0x57t
        -0x62t
        0x54t
        0x68t
        0x53t
        0x76t
        0x77t
        0x46t
    .end array-data

    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    :array_38
    .array-data 1
        0xat
        -0x61t
        0x28t
        -0x51t
        0x1bt
        -0x72t
        -0x42t
        0x37t
        0x30t
        -0x2ft
        0x3bt
        -0x58t
        0x16t
        -0x71t
        -0x42t
        0x2et
        0x36t
        -0x61t
        0x20t
        -0x20t
        0x1at
        -0x76t
        -0x12t
        0x63t
        0x39t
        -0x7dt
        0x28t
        -0x60t
        0x12t
    .end array-data

    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    nop

    .line 2139
    :array_39
    .array-data 1
        0x5ft
        -0xft
        0x49t
        -0x33t
        0x77t
        -0x15t
        -0x62t
        0x43t
    .end array-data
.end method
