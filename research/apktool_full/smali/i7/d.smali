.class public final synthetic Li7/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li7/g;

.field public final synthetic c:Li7/x;

.field public final synthetic d:D


# direct methods
.method public synthetic constructor <init>(Li7/g;Li7/x;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li7/d;->b:Li7/g;

    .line 5
    .line 6
    iput-object p2, p0, Li7/d;->c:Li7/x;

    .line 7
    .line 8
    iput-wide p3, p0, Li7/d;->d:D

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Li7/d;->b:Li7/g;

    .line 2
    .line 3
    iget-object v1, v0, Li7/g;->d:Lcom/example/navistart/LocServ;

    .line 4
    .line 5
    iget-object v2, v0, Li7/g;->k:Li7/w;

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 15
    .line 16
    iget-object v4, p0, Li7/d;->c:Li7/x;

    .line 17
    .line 18
    iget-wide v5, p0, Li7/d;->d:D

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget v7, v4, Li7/x;->e:I

    .line 23
    .line 24
    invoke-virtual {v2, v7}, Lcom/woha/atir/CameraInfoView;->setSpeedLimit(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 28
    .line 29
    invoke-virtual {v4}, Li7/x;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v2, v7}, Lcom/woha/atir/CameraInfoView;->setTypeCamera(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 37
    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    double-to-int v8, v5

    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const v8, 0x7f130220

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v2, v7}, Lcom/woha/atir/CameraInfoView;->setDistance(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 65
    .line 66
    iget v7, v4, Li7/x;->d:I

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Lcom/woha/atir/CameraInfoView;->setCameraImageResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v2, v0, Li7/g;->j:Lcom/woha/atir/CameraInfoView;

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lv1/d;->c()Li7/s;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Li7/x;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    iget v4, v4, Li7/x;->e:I

    .line 95
    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v8, 0x2

    .line 100
    new-array v9, v8, [B

    .line 101
    .line 102
    fill-array-data v9, :array_0

    .line 103
    .line 104
    .line 105
    new-array v10, v3, [B

    .line 106
    .line 107
    fill-array-data v10, :array_1

    .line 108
    .line 109
    .line 110
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const v9, 0x7f130333

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    new-array v9, v8, [B

    .line 128
    .line 129
    fill-array-data v9, :array_2

    .line 130
    .line 131
    .line 132
    new-array v10, v3, [B

    .line 133
    .line 134
    fill-array-data v10, :array_3

    .line 135
    .line 136
    .line 137
    invoke-static {v9, v10, v7, v4}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 138
    .line 139
    .line 140
    const v9, 0x7f1301d3

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v10, " "

    .line 151
    .line 152
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const v10, 0x7f130357

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    new-array v8, v8, [B

    .line 166
    .line 167
    fill-array-data v8, :array_4

    .line 168
    .line 169
    .line 170
    new-array v3, v3, [B

    .line 171
    .line 172
    fill-array-data v3, :array_5

    .line 173
    .line 174
    .line 175
    invoke-static {v8, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    double-to-int v3, v5

    .line 183
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iget-object v2, v2, Li7/s;->a:Landroidx/lifecycle/MutableLiveData;

    .line 191
    .line 192
    invoke-virtual {v2, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/example/navistart/cores/HUDMassageObj;

    .line 196
    .line 197
    invoke-direct {v2}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 198
    .line 199
    .line 200
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 201
    .line 202
    iput-object v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 203
    .line 204
    sget-object v5, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 205
    .line 206
    iput-object v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 207
    .line 208
    sget-object v5, Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;->GENARADAR:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 209
    .line 210
    iput-object v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 211
    .line 212
    const/16 v5, 0xe

    .line 213
    .line 214
    iput v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 215
    .line 216
    mul-int/lit16 v5, v4, 0x3e8

    .line 217
    .line 218
    iput v5, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 219
    .line 220
    iput v3, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iput-object v1, v2, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v2, v4}, Lcom/example/navistart/cores/HUDMassageObj;->setspeedlimit(I)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lh0/b;->i()Le0/a0;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1, v2}, Le0/a0;->e(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 254
    .line 255
    .line 256
    iget-boolean v1, v0, Li7/g;->a:Z

    .line 257
    .line 258
    if-eqz v1, :cond_2

    .line 259
    .line 260
    iget-object v1, v0, Li7/g;->g:Landroid/os/Handler;

    .line 261
    .line 262
    new-instance v2, Li7/e;

    .line 263
    .line 264
    const/4 v3, 0x3

    .line 265
    invoke-direct {v2, v0, v3}, Li7/e;-><init>(Li7/g;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    .line 270
    .line 271
    :cond_2
    return-void

    .line 272
    nop

    .line 273
    :array_0
    .array-data 1
        -0x48t
        0x4dt
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    nop

    .line 279
    :array_1
    .array-data 1
        -0x7et
        0x6dt
        -0xat
        0x3ft
        0x58t
        0x60t
        0x68t
        -0x22t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_2
    .array-data 1
        -0x2at
        -0x78t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    nop

    .line 293
    :array_3
    .array-data 1
        -0x14t
        -0x58t
        0x62t
        -0x69t
        0x3bt
        -0x4t
        -0x5dt
        -0x7et
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_4
    .array-data 1
        0x73t
        0x57t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    nop

    .line 307
    :array_5
    .array-data 1
        0x49t
        0x77t
        0x7t
        -0x61t
        0x7ft
        -0x46t
        0x7et
        0x6ct
    .end array-data
.end method
