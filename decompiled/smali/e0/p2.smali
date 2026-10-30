.class public final Le0/p2;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x5

    .line 2
    new-array p1, p1, [B

    .line 3
    .line 4
    fill-array-data p1, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const v2, -0x3184210e

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x7

    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    const v2, 0x2237d4

    .line 37
    .line 38
    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    const v2, 0x72bd4b92

    .line 42
    .line 43
    .line 44
    if-eq v1, v2, :cond_1

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    new-array v1, v3, [B

    .line 49
    .line 50
    fill-array-data v1, :array_2

    .line 51
    .line 52
    .line 53
    new-array v2, v0, [B

    .line 54
    .line 55
    fill-array-data v2, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    const/16 p1, 0xf

    .line 69
    .line 70
    new-array p1, p1, [B

    .line 71
    .line 72
    fill-array-data p1, :array_4

    .line 73
    .line 74
    .line 75
    new-array v1, v0, [B

    .line 76
    .line 77
    fill-array-data v1, :array_5

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x1c

    .line 94
    .line 95
    new-array v1, v1, [B

    .line 96
    .line 97
    fill-array-data v1, :array_6

    .line 98
    .line 99
    .line 100
    new-array v0, v0, [B

    .line 101
    .line 102
    fill-array-data v0, :array_7

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    const/4 p2, 0x4

    .line 124
    new-array p2, p2, [B

    .line 125
    .line 126
    fill-array-data p2, :array_8

    .line 127
    .line 128
    .line 129
    new-array v1, v0, [B

    .line 130
    .line 131
    fill-array-data v1, :array_9

    .line 132
    .line 133
    .line 134
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    const/16 p1, 0x17

    .line 145
    .line 146
    new-array p1, p1, [B

    .line 147
    .line 148
    fill-array-data p1, :array_a

    .line 149
    .line 150
    .line 151
    new-array p2, v0, [B

    .line 152
    .line 153
    fill-array-data p2, :array_b

    .line 154
    .line 155
    .line 156
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_3
    new-array p2, v3, [B

    .line 165
    .line 166
    fill-array-data p2, :array_c

    .line 167
    .line 168
    .line 169
    new-array v1, v0, [B

    .line 170
    .line 171
    fill-array-data v1, :array_d

    .line 172
    .line 173
    .line 174
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_4

    .line 183
    .line 184
    const/16 p1, 0x1a

    .line 185
    .line 186
    new-array p1, p1, [B

    .line 187
    .line 188
    fill-array-data p1, :array_e

    .line 189
    .line 190
    .line 191
    new-array p2, v0, [B

    .line 192
    .line 193
    fill-array-data p2, :array_f

    .line 194
    .line 195
    .line 196
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_0
    return-void

    .line 204
    nop

    .line 205
    :array_0
    .array-data 1
        0x17t
        0x1at
        -0x34t
        -0x51t
        -0x74t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    nop

    .line 213
    :array_1
    .array-data 1
        0x64t
        0x6et
        -0x53t
        -0x25t
        -0x17t
        0x63t
        0x52t
        0x66t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_2
    .array-data 1
        -0x4ct
        0x78t
        0x79t
        0x76t
        -0x51t
        0x3bt
        -0x70t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_3
    .array-data 1
        -0x1at
        0x31t
        0x37t
        0x31t
        -0x1at
        0x75t
        -0x29t
        0x10t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_4
    .array-data 1
        0x30t
        -0x2at
        0x27t
        0x4et
        0x22t
        -0xft
        -0x51t
        -0x3t
        0x6t
        -0x2at
        0x31t
        0x4ct
        0x2dt
        -0x3t
        -0x4dt
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_5
    .array-data 1
        0x59t
        -0x48t
        0x44t
        0x21t
        0x4ft
        -0x68t
        -0x3ft
        -0x66t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_6
    .array-data 1
        0x63t
        -0x5t
        -0x11t
        0x57t
        -0x4at
        -0x3bt
        0x45t
        0x41t
        0x19t
        0x62t
        0x13t
        -0x3ft
        0x7at
        0x5bt
        -0x44t
        -0x4ft
        -0x7bt
        0x63t
        0x2et
        -0x3ft
        0x76t
        0x5bt
        -0x46t
        -0x4ft
        -0x78t
        -0x65t
        -0x65t
        0x30t
    .end array-data

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
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_7
    .array-data 1
        0x31t
        -0x4et
        -0x5ft
        0x10t
        -0x1t
        -0x75t
        0x2t
        0x61t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_8
    .array-data 1
        0x4dt
        0x2dt
        -0x5ct
        0x33t
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_9
    .array-data 1
        0x4t
        0x69t
        -0x18t
        0x76t
        -0x44t
        0x2ct
        -0x50t
        0x45t
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_a
    .array-data 1
        0x12t
        0x31t
        0x44t
        -0x54t
        -0x23t
        -0x1dt
        0x78t
        0x74t
        -0x75t
        -0x39t
        -0x28t
        0x57t
        0x2dt
        0x7at
        0x79t
        0x4bt
        -0x75t
        -0x3ft
        -0x28t
        0x54t
        0x2dt
        0x75t
        -0x80t
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
    .line 310
    .line 311
    .line 312
    .line 313
    :array_b
    .array-data 1
        0x5bt
        0x75t
        0x8t
        -0x17t
        -0x3t
        -0x35t
        -0x57t
        -0xbt
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_c
    .array-data 1
        0x68t
        0x26t
        0x7bt
        0x0t
        0x5et
        -0x5dt
        -0x1ct
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_d
    .array-data 1
        0x27t
        0x60t
        0x3dt
        0x48t
        0x11t
        -0x14t
        -0x51t
        -0x22t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_e
    .array-data 1
        0x28t
        -0x28t
        0x50t
        0x76t
        0x5ct
        0x20t
        -0x39t
        -0x3bt
        0x4ft
        0x4ft
        -0x6at
        -0x12t
        -0x5dt
        -0x41t
        0x3bt
        0x35t
        -0x2ct
        0x4et
        -0x58t
        -0x12t
        -0x5ft
        -0x41t
        0x32t
        0x34t
        -0x19t
        -0x49t
    .end array-data

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
    nop

    .line 355
    :array_f
    .array-data 1
        0x67t
        -0x62t
        0x16t
        0x3et
        0x13t
        0x6ft
        -0x74t
        -0x1bt
    .end array-data
.end method
