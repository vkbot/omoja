.class public abstract Lo7/m1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lo7/m1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/m1;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lw5/a;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lw5/a;->f0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "unexpected end of JSON"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Lcom/bumptech/glide/g;->c(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    const-string v3, "Bad token: "

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_131

    .line 24
    .line 25
    if-eq v0, v1, :cond_fb

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    if-eq v0, v1, :cond_f6

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    const/4 v5, 0x0

    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    if-eq v0, v1, :cond_42

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    if-eq v0, v1, :cond_39

    .line 38
    .line 39
    if-ne v0, v6, :cond_2c

    .line 40
    .line 41
    invoke-virtual {p0}, Lw5/a;->l0()V

    .line 42
    .line 43
    .line 44
    return-object v5

    .line 45
    :cond_2c
    invoke-virtual {p0, v4}, Lw5/a;->e0(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    :cond_39
    invoke-virtual {p0}, Lw5/a;->i0()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_42
    iget v0, p0, Lw5/a;->i:I

    .line 68
    .line 69
    if-nez v0, :cond_4a

    .line 70
    .line 71
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :cond_4a
    const/16 v1, 0xf

    .line 76
    .line 77
    if-ne v0, v1, :cond_5f

    .line 78
    .line 79
    iput v4, p0, Lw5/a;->i:I

    .line 80
    .line 81
    iget-object v0, p0, Lw5/a;->p:[I

    .line 82
    .line 83
    iget v1, p0, Lw5/a;->n:I

    .line 84
    .line 85
    sub-int/2addr v1, v2

    .line 86
    aget v3, v0, v1

    .line 87
    .line 88
    add-int/2addr v3, v2

    .line 89
    aput v3, v0, v1

    .line 90
    .line 91
    iget-wide v0, p0, Lw5/a;->j:J

    .line 92
    .line 93
    long-to-double v0, v0

    .line 94
    goto/16 :goto_f1

    .line 95
    .line 96
    :cond_5f
    const/16 v1, 0x10

    .line 97
    .line 98
    const/16 v3, 0xb

    .line 99
    .line 100
    if-ne v0, v1, :cond_7a

    .line 101
    .line 102
    new-instance v0, Ljava/lang/String;

    .line 103
    .line 104
    iget-object v1, p0, Lw5/a;->d:[C

    .line 105
    .line 106
    iget v6, p0, Lw5/a;->e:I

    .line 107
    .line 108
    iget v7, p0, Lw5/a;->k:I

    .line 109
    .line 110
    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lw5/a;->l:Ljava/lang/String;

    .line 114
    .line 115
    iget v0, p0, Lw5/a;->e:I

    .line 116
    .line 117
    iget v1, p0, Lw5/a;->k:I

    .line 118
    .line 119
    add-int/2addr v0, v1

    .line 120
    iput v0, p0, Lw5/a;->e:I

    .line 121
    .line 122
    goto :goto_af

    .line 123
    :cond_7a
    if-eq v0, v6, :cond_a2

    .line 124
    .line 125
    const/16 v1, 0x9

    .line 126
    .line 127
    if-ne v0, v1, :cond_81

    .line 128
    .line 129
    goto :goto_a2

    .line 130
    :cond_81
    const/16 v1, 0xa

    .line 131
    .line 132
    if-ne v0, v1, :cond_8c

    .line 133
    .line 134
    invoke-virtual {p0}, Lw5/a;->o0()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lw5/a;->l:Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_af

    .line 141
    :cond_8c
    if-ne v0, v3, :cond_8f

    .line 142
    .line 143
    goto :goto_af

    .line 144
    :cond_8f
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    const-string v1, "Expected a double but was "

    .line 157
    .line 158
    invoke-static {v0, v1, p0}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    const/4 p0, 0x0

    .line 162
    return-object p0

    .line 163
    :cond_a2
    :goto_a2
    if-ne v0, v6, :cond_a7

    .line 164
    .line 165
    const/16 v0, 0x27

    .line 166
    .line 167
    goto :goto_a9

    .line 168
    :cond_a7
    const/16 v0, 0x22

    .line 169
    .line 170
    :goto_a9
    invoke-virtual {p0, v0}, Lw5/a;->m0(C)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lw5/a;->l:Ljava/lang/String;

    .line 175
    .line 176
    :goto_af
    iput v3, p0, Lw5/a;->i:I

    .line 177
    .line 178
    iget-object v0, p0, Lw5/a;->l:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    iget-boolean v3, p0, Lw5/a;->c:Z

    .line 185
    .line 186
    if-nez v3, :cond_e3

    .line 187
    .line 188
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_c8

    .line 193
    .line 194
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_c8

    .line 199
    .line 200
    goto :goto_e3

    .line 201
    :cond_c8
    new-instance v2, Lw5/c;

    .line 202
    .line 203
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v4, "JSON forbids NaN and infinities: "

    .line 210
    .line 211
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v2

    .line 228
    :cond_e3
    :goto_e3
    iput-object v5, p0, Lw5/a;->l:Ljava/lang/String;

    .line 229
    .line 230
    iput v4, p0, Lw5/a;->i:I

    .line 231
    .line 232
    iget-object v3, p0, Lw5/a;->p:[I

    .line 233
    .line 234
    iget p0, p0, Lw5/a;->n:I

    .line 235
    .line 236
    sub-int/2addr p0, v2

    .line 237
    aget v4, v3, p0

    .line 238
    .line 239
    add-int/2addr v4, v2

    .line 240
    aput v4, v3, p0

    .line 241
    .line 242
    :goto_f1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0

    .line 247
    :cond_f6
    invoke-virtual {p0}, Lw5/a;->n0()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0

    .line 252
    :cond_fb
    invoke-virtual {p0}, Lw5/a;->c()V

    .line 253
    .line 254
    .line 255
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 258
    .line 259
    .line 260
    :goto_103
    invoke-virtual {p0}, Lw5/a;->f0()Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_115

    .line 265
    .line 266
    invoke-virtual {p0}, Lw5/a;->j0()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {p0}, Lo7/m1;->a(Lw5/a;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    goto :goto_103

    .line 278
    :cond_115
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    const/4 v5, 0x4

    .line 283
    if-ne v1, v5, :cond_11d

    .line 284
    .line 285
    goto :goto_11e

    .line 286
    :cond_11d
    move v2, v4

    .line 287
    :goto_11e
    invoke-virtual {p0, v4}, Lw5/a;->e0(Z)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v2, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lw5/a;->c0()V

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :cond_131
    invoke-virtual {p0}, Lw5/a;->b()V

    .line 307
    .line 308
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .line 313
    .line 314
    :goto_139
    invoke-virtual {p0}, Lw5/a;->f0()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_147

    .line 319
    .line 320
    invoke-static {p0}, Lo7/m1;->a(Lw5/a;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_139

    .line 328
    :cond_147
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-ne v5, v1, :cond_14e

    .line 333
    .line 334
    goto :goto_14f

    .line 335
    :cond_14e
    move v2, v4

    .line 336
    :goto_14f
    invoke-virtual {p0, v4}, Lw5/a;->e0(Z)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-static {v2, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Lw5/a;->V()V

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    return-object p0
.end method
