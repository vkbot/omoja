.class public final synthetic Lw0/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/y;


# direct methods
.method public synthetic constructor <init>(Lw0/y;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/f;->b:Lw0/y;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onModeChanged(I)V
    .locals 8

    .line 1
    iget v0, p0, Lw0/f;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x7

    .line 7
    const/16 v5, 0x9

    .line 8
    .line 9
    const/16 v6, 0x8

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lw0/f;->b:Lw0/y;

    .line 15
    .line 16
    check-cast v0, Lw0/x;

    .line 17
    .line 18
    iget-boolean v7, v0, Lw0/x;->o:Z

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-array v5, v5, [B

    .line 24
    .line 25
    fill-array-data v5, :array_0

    .line 26
    .line 27
    .line 28
    new-array v7, v6, [B

    .line 29
    .line 30
    fill-array-data v7, :array_1

    .line 31
    .line 32
    .line 33
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    new-array v4, v4, [B

    .line 43
    .line 44
    fill-array-data v4, :array_2

    .line 45
    .line 46
    .line 47
    new-array v6, v6, [B

    .line 48
    .line 49
    fill-array-data v6, :array_3

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    if-eq p1, v3, :cond_2

    .line 70
    .line 71
    if-ne p1, v2, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-boolean p1, v0, Lw0/x;->K:Z

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lw0/x;->c()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lw0/x;->b()V

    .line 83
    .line 84
    .line 85
    iput-boolean v1, v0, Lw0/x;->K:Z

    .line 86
    .line 87
    :cond_3
    :goto_1
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lw0/f;->b:Lw0/y;

    .line 89
    .line 90
    check-cast v0, Lw0/o;

    .line 91
    .line 92
    new-array v5, v5, [B

    .line 93
    .line 94
    fill-array-data v5, :array_4

    .line 95
    .line 96
    .line 97
    new-array v7, v6, [B

    .line 98
    .line 99
    fill-array-data v7, :array_5

    .line 100
    .line 101
    .line 102
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    new-array v4, v4, [B

    .line 112
    .line 113
    fill-array-data v4, :array_6

    .line 114
    .line 115
    .line 116
    new-array v6, v6, [B

    .line 117
    .line 118
    fill-array-data v6, :array_7

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    if-eq p1, v3, :cond_5

    .line 139
    .line 140
    if-ne p1, v2, :cond_4

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    iget-boolean p1, v0, Lw0/o;->s:Z

    .line 144
    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v0}, Lw0/o;->c()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lw0/o;->b()V

    .line 152
    .line 153
    .line 154
    iput-boolean v1, v0, Lw0/o;->s:Z

    .line 155
    .line 156
    :cond_6
    :goto_3
    return-void

    .line 157
    :pswitch_1
    iget-object v0, p0, Lw0/f;->b:Lw0/y;

    .line 158
    .line 159
    check-cast v0, Lw0/g;

    .line 160
    .line 161
    new-array v5, v5, [B

    .line 162
    .line 163
    fill-array-data v5, :array_8

    .line 164
    .line 165
    .line 166
    new-array v7, v6, [B

    .line 167
    .line 168
    fill-array-data v7, :array_9

    .line 169
    .line 170
    .line 171
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    new-array v4, v4, [B

    .line 181
    .line 182
    fill-array-data v4, :array_a

    .line 183
    .line 184
    .line 185
    new-array v6, v6, [B

    .line 186
    .line 187
    fill-array-data v6, :array_b

    .line 188
    .line 189
    .line 190
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    if-eq p1, v3, :cond_8

    .line 208
    .line 209
    if-ne p1, v2, :cond_7

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_7
    iget-boolean p1, v0, Lw0/g;->h:Z

    .line 213
    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    invoke-virtual {v0}, Lw0/g;->c()V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_8
    :goto_4
    invoke-virtual {v0}, Lw0/g;->b()V

    .line 221
    .line 222
    .line 223
    iput-boolean v1, v0, Lw0/g;->h:Z

    .line 224
    .line 225
    :cond_9
    :goto_5
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_0
    .array-data 1
        -0x52t
        0xdt
        0x4bt
        -0x14t
        -0x5t
        -0xbt
        0x5dt
        0x33t
        -0x76t
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
    nop

    .line 245
    :array_1
    .array-data 1
        -0x11t
        0x78t
        0x2ft
        -0x7bt
        -0x6ct
        -0x48t
        0x32t
        0x57t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_2
    .array-data 1
        0x3bt
        -0x32t
        -0x37t
        0x49t
        -0x20t
        -0x52t
        0x59t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_3
    .array-data 1
        0x56t
        -0x5ft
        -0x53t
        0x2ct
        -0x40t
        -0x6dt
        0x79t
        -0x27t
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_4
    .array-data 1
        0x16t
        -0x7at
        -0x15t
        -0x17t
        0x6bt
        -0x76t
        -0x38t
        0x18t
        0x32t
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
    nop

    .line 279
    :array_5
    .array-data 1
        0x57t
        -0xdt
        -0x71t
        -0x80t
        0x4t
        -0x39t
        -0x59t
        0x7ct
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_6
    .array-data 1
        -0x2bt
        -0x7at
        -0x36t
        -0x53t
        -0x6bt
        -0x5at
        0x8t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_7
    .array-data 1
        -0x48t
        -0x17t
        -0x52t
        -0x38t
        -0x4bt
        -0x65t
        0x28t
        0x49t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_8
    .array-data 1
        -0x70t
        0x5ft
        -0x62t
        0x23t
        -0xft
        -0x20t
        0x6at
        -0x3t
        -0x4ct
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    nop

    .line 313
    :array_9
    .array-data 1
        -0x2ft
        0x2at
        -0x6t
        0x4at
        -0x62t
        -0x53t
        0x5t
        -0x67t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_a
    .array-data 1
        -0x5dt
        0x18t
        -0x5at
        0x68t
        0x15t
        0x61t
        -0x4ft
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_b
    .array-data 1
        -0x32t
        0x77t
        -0x3et
        0xdt
        0x35t
        0x5ct
        -0x6ft
        0x15t
    .end array-data
.end method
