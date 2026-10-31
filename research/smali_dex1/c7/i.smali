.class public final Lc7/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic m:I


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:Landroid/hardware/Camera$CameraInfo;

.field public c:Lc7/b;

.field public d:Ld6/a;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Lc7/j;

.field public h:Lc7/l;

.field public i:Lb7/u;

.field public j:Lb7/u;

.field public k:I

.field public final l:Lc7/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lc7/j;

    .line 5
    .line 6
    invoke-direct {p1}, Lc7/j;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc7/i;->g:Lc7/j;

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lc7/i;->k:I

    .line 13
    .line 14
    new-instance p1, Lc7/h;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lc7/h;-><init>(Lc7/i;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lc7/i;->l:Lc7/h;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 5

    .line 1
    iget-object v0, p0, Lc7/i;->h:Lc7/l;

    .line 2
    .line 3
    iget v0, v0, Lc7/l;->b:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_19

    .line 8
    .line 9
    if-eq v0, v1, :cond_17

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_14

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_11

    .line 16
    .line 17
    goto :goto_19

    .line 18
    :cond_11
    const/16 v2, 0x10e

    .line 19
    .line 20
    goto :goto_19

    .line 21
    :cond_14
    const/16 v2, 0xb4

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/16 v2, 0x5a

    .line 25
    .line 26
    :cond_19
    :goto_19
    iget-object v0, p0, Lc7/i;->b:Landroid/hardware/Camera$CameraInfo;

    .line 27
    .line 28
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 29
    .line 30
    if-ne v3, v1, :cond_29

    .line 31
    .line 32
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    rem-int/lit16 v0, v0, 0x168

    .line 36
    .line 37
    rsub-int v0, v0, 0x168

    .line 38
    .line 39
    rem-int/lit16 v0, v0, 0x168

    .line 40
    .line 41
    goto :goto_30

    .line 42
    :cond_29
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 43
    .line 44
    sub-int/2addr v0, v2

    .line 45
    add-int/lit16 v0, v0, 0x168

    .line 46
    .line 47
    rem-int/lit16 v0, v0, 0x168

    .line 48
    .line 49
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Camera Display Orientation: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "i"

    .line 64
    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v0
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_49

    .line 4
    .line 5
    const-string v0, "i"

    .line 6
    .line 7
    :try_start_6
    invoke-virtual {p0}, Lc7/i;->a()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lc7/i;->k:I

    .line 12
    .line 13
    iget-object v2, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 16
    .line 17
    .line 18
    goto :goto_17

    .line 19
    :catch_12
    const-string v1, "Failed to set rotation."

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_17
    const/4 v1, 0x0

    .line 25
    :try_start_18
    invoke-virtual {p0, v1}, Lc7/i;->c(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 26
    .line 27
    .line 28
    goto :goto_26

    .line 29
    :catch_1c
    const/4 v1, 0x1

    .line 30
    :try_start_1d
    invoke-virtual {p0, v1}, Lc7/i;->c(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    .line 31
    .line 32
    .line 33
    goto :goto_26

    .line 34
    :catch_21
    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_26
    iget-object v0, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_37

    .line 50
    .line 51
    iget-object v0, p0, Lc7/i;->i:Lb7/u;

    .line 52
    .line 53
    iput-object v0, p0, Lc7/i;->j:Lb7/u;

    .line 54
    .line 55
    goto :goto_42

    .line 56
    :cond_37
    new-instance v1, Lb7/u;

    .line 57
    .line 58
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 59
    .line 60
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 61
    .line 62
    invoke-direct {v1, v2, v0}, Lb7/u;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lc7/i;->j:Lb7/u;

    .line 66
    .line 67
    :goto_42
    iget-object v0, p0, Lc7/i;->l:Lc7/h;

    .line 68
    .line 69
    iget-object v1, p0, Lc7/i;->j:Lb7/u;

    .line 70
    .line 71
    iput-object v1, v0, Lc7/h;->b:Lb7/u;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_49
    const-string v0, "Camera not open"

    .line 75
    .line 76
    invoke-static {v0}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final c(Z)V
    .registers 12

    .line 1
    iget-object v0, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lc7/i;->f:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_11

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lc7/i;->f:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_14

    .line 18
    :cond_11
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    const-string v1, "i"

    .line 22
    .line 23
    if-nez v0, :cond_1e

    .line 24
    .line 25
    const-string p1, "Device error: no camera parameters are available. Proceeding without configuration."

    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Initial camera parameters: "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_3a

    .line 53
    .line 54
    const-string v2, "In camera config safe mode -- most settings will not be honored"

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_3a
    iget-object v2, p0, Lc7/i;->g:Lc7/j;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget v2, Lc7/c;->a:I

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "auto"

    .line 71
    .line 72
    filled-new-array {v3}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "focus mode"

    .line 77
    .line 78
    invoke-static {v4, v2, v3}, Lc7/c;->a(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez p1, :cond_61

    .line 83
    .line 84
    if-nez v3, :cond_61

    .line 85
    .line 86
    const-string v3, "edof"

    .line 87
    .line 88
    const-string v5, "macro"

    .line 89
    .line 90
    filled-new-array {v5, v3}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v4, v2, v3}, Lc7/c;->a(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_61
    const-string v2, "CameraConfiguration"

    .line 99
    .line 100
    if-eqz v3, :cond_7c

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_79

    .line 111
    .line 112
    const-string v4, "Focus mode already set to "

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_7c

    .line 122
    :cond_79
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    :goto_7c
    const/4 v3, 0x0

    .line 126
    if-nez p1, :cond_91

    .line 127
    .line 128
    invoke-static {v0, v3}, Lc7/c;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lc7/i;->g:Lc7/j;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lc7/i;->g:Lc7/j;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lc7/i;->g:Lc7/j;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    :cond_91
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v4, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    if-nez p1, :cond_af

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_cc

    .line 162
    .line 163
    iget v5, p1, Landroid/hardware/Camera$Size;->width:I

    .line 164
    .line 165
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 166
    .line 167
    new-instance v6, Lb7/u;

    .line 168
    .line 169
    invoke-direct {v6, v5, p1}, Lb7/u;-><init>(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_cc

    .line 176
    :cond_af
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_cc

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Landroid/hardware/Camera$Size;

    .line 191
    .line 192
    new-instance v6, Lb7/u;

    .line 193
    .line 194
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 195
    .line 196
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    .line 197
    .line 198
    invoke-direct {v6, v7, v5}, Lb7/u;-><init>(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_b3

    .line 205
    :cond_cc
    :goto_cc
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    const/4 v5, 0x1

    .line 210
    const/4 v6, 0x0

    .line 211
    if-nez p1, :cond_d7

    .line 212
    .line 213
    iput-object v6, p0, Lc7/i;->i:Lb7/u;

    .line 214
    .line 215
    goto :goto_13e

    .line 216
    :cond_d7
    iget-object p1, p0, Lc7/i;->h:Lc7/l;

    .line 217
    .line 218
    iget v7, p0, Lc7/i;->k:I

    .line 219
    .line 220
    const/4 v8, -0x1

    .line 221
    if-eq v7, v8, :cond_222

    .line 222
    .line 223
    rem-int/lit16 v7, v7, 0xb4

    .line 224
    .line 225
    if-eqz v7, :cond_e4

    .line 226
    .line 227
    move v7, v5

    .line 228
    goto :goto_e5

    .line 229
    :cond_e4
    move v7, v3

    .line 230
    :goto_e5
    iget-object v8, p1, Lc7/l;->c:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v8, Lb7/u;

    .line 233
    .line 234
    if-nez v8, :cond_ed

    .line 235
    .line 236
    move-object v8, v6

    .line 237
    goto :goto_f9

    .line 238
    :cond_ed
    if-eqz v7, :cond_f9

    .line 239
    .line 240
    new-instance v7, Lb7/u;

    .line 241
    .line 242
    iget v9, v8, Lb7/u;->c:I

    .line 243
    .line 244
    iget v8, v8, Lb7/u;->b:I

    .line 245
    .line 246
    invoke-direct {v7, v9, v8}, Lb7/u;-><init>(II)V

    .line 247
    .line 248
    .line 249
    move-object v8, v7

    .line 250
    :cond_f9
    :goto_f9
    iget-object p1, p1, Lc7/l;->d:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p1, Lc7/n;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    if-nez v8, :cond_103

    .line 258
    .line 259
    goto :goto_10b

    .line 260
    :cond_103
    new-instance v7, Lc7/m;

    .line 261
    .line 262
    invoke-direct {v7, p1, v8}, Lc7/m;-><init>(Lc7/n;Lb7/u;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    .line 267
    .line 268
    :goto_10b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v7, "Viewfinder size: "

    .line 271
    .line 272
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    const-string v7, "n"

    .line 283
    .line 284
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v8, "Preview in order of preference: "

    .line 290
    .line 291
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Lb7/u;

    .line 309
    .line 310
    iput-object p1, p0, Lc7/i;->i:Lb7/u;

    .line 311
    .line 312
    iget v4, p1, Lb7/u;->b:I

    .line 313
    .line 314
    iget p1, p1, Lb7/u;->c:I

    .line 315
    .line 316
    invoke-virtual {v0, v4, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 317
    .line 318
    .line 319
    :goto_13e
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 320
    .line 321
    const-string v4, "glass-1"

    .line 322
    .line 323
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_207

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v7, "Supported FPS ranges: "

    .line 336
    .line 337
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    if-eqz p1, :cond_190

    .line 341
    .line 342
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_15c

    .line 347
    .line 348
    goto :goto_190

    .line 349
    :cond_15c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v8, "["

    .line 352
    .line 353
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    :cond_167
    :goto_167
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    if-eqz v9, :cond_186

    .line 365
    .line 366
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    check-cast v9, [I

    .line 371
    .line 372
    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    if-eqz v9, :cond_167

    .line 384
    .line 385
    const-string v9, ", "

    .line 386
    .line 387
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    goto :goto_167

    .line 391
    :cond_186
    const/16 v8, 0x5d

    .line 392
    .line 393
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    goto :goto_192

    .line 401
    :cond_190
    :goto_190
    const-string v7, "[]"

    .line 402
    .line 403
    :goto_192
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    if-eqz p1, :cond_207

    .line 414
    .line 415
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-nez v4, :cond_207

    .line 420
    .line 421
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    :cond_1a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_1c1

    .line 430
    .line 431
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, [I

    .line 436
    .line 437
    aget v7, v4, v3

    .line 438
    .line 439
    aget v8, v4, v5

    .line 440
    .line 441
    const/16 v9, 0x2710

    .line 442
    .line 443
    if-lt v7, v9, :cond_1a8

    .line 444
    .line 445
    const/16 v7, 0x4e20

    .line 446
    .line 447
    if-gt v8, v7, :cond_1a8

    .line 448
    .line 449
    move-object v6, v4

    .line 450
    :cond_1c1
    if-nez v6, :cond_1c9

    .line 451
    .line 452
    const-string p1, "No suitable FPS range?"

    .line 453
    .line 454
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    goto :goto_207

    .line 458
    :cond_1c9
    const/4 p1, 0x2

    .line 459
    new-array p1, p1, [I

    .line 460
    .line 461
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 462
    .line 463
    .line 464
    invoke-static {p1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    if-eqz p1, :cond_1eb

    .line 469
    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    const-string v3, "FPS range already set to "

    .line 473
    .line 474
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    goto :goto_207

    .line 492
    :cond_1eb
    new-instance p1, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string v4, "Setting FPS range to "

    .line 495
    .line 496
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    aget p1, v6, v3

    .line 514
    .line 515
    aget v2, v6, v5

    .line 516
    .line 517
    invoke-virtual {v0, p1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 518
    .line 519
    .line 520
    :cond_207
    :goto_207
    new-instance p1, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v2, "Final camera parameters: "

    .line 523
    .line 524
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    iget-object p1, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 542
    .line 543
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :cond_222
    const-string p1, "Rotation not calculated yet. Call configure() first."

    .line 548
    .line 549
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    return-void
.end method

.method public final d(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_54

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_23

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_23

    .line 17
    .line 18
    const-string v2, "on"

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_21

    .line 25
    .line 26
    const-string v2, "torch"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_23

    .line 33
    .line 34
    :cond_21
    const/4 v0, 0x1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v1

    .line 37
    :goto_24
    if-eq p1, v0, :cond_54

    .line 38
    .line 39
    iget-object v0, p0, Lc7/i;->c:Lc7/b;

    .line 40
    .line 41
    if-eqz v0, :cond_30

    .line 42
    .line 43
    invoke-virtual {v0}, Lc7/b;->c()V

    .line 44
    .line 45
    .line 46
    goto :goto_30

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    goto :goto_4d

    .line 49
    :cond_30
    :goto_30
    iget-object v0, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, p1}, Lc7/c;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lc7/i;->g:Lc7/j;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lc7/i;->c:Lc7/b;

    .line 69
    .line 70
    if-eqz p1, :cond_54

    .line 71
    .line 72
    iput-boolean v1, p1, Lc7/b;->a:Z

    .line 73
    .line 74
    invoke-virtual {p1}, Lc7/b;->b()V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4c} :catch_2e

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_4d
    const-string v0, "i"

    .line 79
    .line 80
    const-string v1, "Failed to set torch"

    .line 81
    .line 82
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_54
    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_2e

    .line 4
    .line 5
    iget-boolean v1, p0, Lc7/i;->e:Z

    .line 6
    .line 7
    if-nez v1, :cond_2e

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lc7/i;->e:Z

    .line 14
    .line 15
    new-instance v0, Lc7/b;

    .line 16
    .line 17
    iget-object v1, p0, Lc7/i;->a:Landroid/hardware/Camera;

    .line 18
    .line 19
    iget-object v2, p0, Lc7/i;->g:Lc7/j;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lc7/b;-><init>(Landroid/hardware/Camera;Lc7/j;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lc7/i;->c:Lc7/b;

    .line 25
    .line 26
    new-instance v0, Ld6/a;

    .line 27
    .line 28
    iget-object v1, p0, Lc7/i;->g:Lc7/j;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p0, v0, Ld6/a;->a:Lc7/i;

    .line 34
    .line 35
    new-instance v2, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Ld6/a;->b:Landroid/os/Handler;

    .line 41
    .line 42
    iput-object v0, p0, Lc7/i;->d:Ld6/a;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-void
.end method
