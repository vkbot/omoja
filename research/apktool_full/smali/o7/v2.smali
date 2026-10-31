.class public final synthetic Lo7/v2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/i0;


# instance fields
.field public final synthetic a:Lo7/a3;

.field public final synthetic b:Ln7/t;


# direct methods
.method public synthetic constructor <init>(Lo7/a3;Ln7/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/v2;->a:Lo7/a3;

    .line 5
    .line 6
    iput-object p2, p0, Lo7/v2;->b:Ln7/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ln7/k;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lo7/v2;->a:Lo7/a3;

    .line 2
    .line 3
    iget-object v1, v0, Lo7/a3;->f:Ln7/e;

    .line 4
    .line 5
    iget-object v2, p1, Ln7/k;->a:Ln7/j;

    .line 6
    .line 7
    iget-object v3, v0, Lo7/a3;->g:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v4, p0, Lo7/v2;->b:Ln7/t;

    .line 10
    .line 11
    invoke-virtual {v4}, Ln7/t;->b()Ln7/r;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v5, v5, Ln7/r;->a:Ljava/util/List;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Ljava/net/SocketAddress;

    .line 23
    .line 24
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lo7/z2;

    .line 29
    .line 30
    if-eqz v5, :cond_13

    .line 31
    .line 32
    iget-object v7, v5, Lo7/z2;->a:Ln7/t;

    .line 33
    .line 34
    if-eq v7, v4, :cond_0

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    sget-object v8, Ln7/j;->f:Ln7/j;

    .line 39
    .line 40
    if-ne v2, v8, :cond_1

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    sget-object v8, Ln7/j;->e:Ln7/j;

    .line 45
    .line 46
    if-ne v2, v8, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Ln7/e;->y()V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {v5, v2}, Lo7/z2;->a(Lo7/z2;Ln7/j;)V

    .line 52
    .line 53
    .line 54
    iget-object v9, v0, Lo7/a3;->l:Ln7/j;

    .line 55
    .line 56
    sget-object v10, Ln7/j;->b:Ln7/j;

    .line 57
    .line 58
    sget-object v11, Ln7/j;->d:Ln7/j;

    .line 59
    .line 60
    if-eq v9, v11, :cond_3

    .line 61
    .line 62
    iget-object v9, v0, Lo7/a3;->m:Ln7/j;

    .line 63
    .line 64
    if-ne v9, v11, :cond_5

    .line 65
    .line 66
    :cond_3
    if-ne v2, v10, :cond_4

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_4
    if-ne v2, v8, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Lo7/a3;->e()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_12

    .line 81
    .line 82
    const/4 v10, 0x1

    .line 83
    if-eq v9, v10, :cond_f

    .line 84
    .line 85
    const/4 v5, 0x2

    .line 86
    if-eq v9, v5, :cond_7

    .line 87
    .line 88
    const/4 p1, 0x3

    .line 89
    if-ne v9, p1, :cond_6

    .line 90
    .line 91
    iget-object p1, v0, Lo7/a3;->h:Lo7/h1;

    .line 92
    .line 93
    iput v6, p1, Lo7/h1;->b:I

    .line 94
    .line 95
    iput v6, p1, Lo7/h1;->c:I

    .line 96
    .line 97
    iput-object v8, v0, Lo7/a3;->l:Ln7/j;

    .line 98
    .line 99
    new-instance p1, Lo7/y2;

    .line 100
    .line 101
    invoke-direct {p1, v0, v0}, Lo7/y2;-><init>(Lo7/a3;Lo7/a3;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v8, p1}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    const-string p1, "Unsupported state:"

    .line 109
    .line 110
    invoke-static {v2, p1}, Landroidx/navigation/b;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_7
    iget-object v2, v0, Lo7/a3;->h:Lo7/h1;

    .line 115
    .line 116
    invoke-virtual {v2}, Lo7/h1;->c()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    iget-object v2, v0, Lo7/a3;->h:Lo7/h1;

    .line 123
    .line 124
    invoke-virtual {v2}, Lo7/h1;->a()Ljava/net/SocketAddress;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lo7/z2;

    .line 133
    .line 134
    iget-object v2, v2, Lo7/z2;->a:Ln7/t;

    .line 135
    .line 136
    if-ne v2, v4, :cond_8

    .line 137
    .line 138
    iget-object v2, v0, Lo7/a3;->h:Lo7/h1;

    .line 139
    .line 140
    invoke-virtual {v2}, Lo7/h1;->b()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    invoke-virtual {v0}, Lo7/a3;->g()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lo7/a3;->e()V

    .line 150
    .line 151
    .line 152
    :cond_8
    iget-object v2, v0, Lo7/a3;->h:Lo7/h1;

    .line 153
    .line 154
    if-eqz v2, :cond_13

    .line 155
    .line 156
    invoke-virtual {v2}, Lo7/h1;->c()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_13

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iget-object v4, v0, Lo7/a3;->h:Lo7/h1;

    .line 167
    .line 168
    iget-object v4, v4, Lo7/h1;->a:Ljava/util/List;

    .line 169
    .line 170
    if-eqz v4, :cond_9

    .line 171
    .line 172
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    goto :goto_0

    .line 177
    :cond_9
    move v4, v6

    .line 178
    :goto_0
    if-ge v2, v4, :cond_a

    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :cond_a
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_c

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Lo7/z2;

    .line 201
    .line 202
    iget-boolean v3, v3, Lo7/z2;->d:Z

    .line 203
    .line 204
    if-nez v3, :cond_b

    .line 205
    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :cond_c
    iput-object v11, v0, Lo7/a3;->l:Ln7/j;

    .line 209
    .line 210
    new-instance v2, Lo7/x2;

    .line 211
    .line 212
    iget-object p1, p1, Ln7/k;->b:Ln7/f1;

    .line 213
    .line 214
    invoke-static {p1}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-direct {v2, p1}, Lo7/x2;-><init>(Ln7/f0;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v11, v2}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 222
    .line 223
    .line 224
    iget p1, v0, Lo7/a3;->i:I

    .line 225
    .line 226
    add-int/2addr p1, v10

    .line 227
    iput p1, v0, Lo7/a3;->i:I

    .line 228
    .line 229
    iget-object v2, v0, Lo7/a3;->h:Lo7/h1;

    .line 230
    .line 231
    iget-object v2, v2, Lo7/h1;->a:Ljava/util/List;

    .line 232
    .line 233
    if-eqz v2, :cond_d

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    goto :goto_1

    .line 240
    :cond_d
    move v2, v6

    .line 241
    :goto_1
    if-ge p1, v2, :cond_e

    .line 242
    .line 243
    iget-boolean p1, v0, Lo7/a3;->j:Z

    .line 244
    .line 245
    if-eqz p1, :cond_13

    .line 246
    .line 247
    :cond_e
    iput-boolean v6, v0, Lo7/a3;->j:Z

    .line 248
    .line 249
    iput v6, v0, Lo7/a3;->i:I

    .line 250
    .line 251
    invoke-virtual {v1}, Ln7/e;->y()V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_f
    invoke-virtual {v0}, Lo7/a3;->g()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    :cond_10
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_11

    .line 271
    .line 272
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Lo7/z2;

    .line 277
    .line 278
    iget-object v2, v1, Lo7/z2;->a:Ln7/t;

    .line 279
    .line 280
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_10

    .line 285
    .line 286
    iget-object v1, v1, Lo7/z2;->a:Ln7/t;

    .line 287
    .line 288
    invoke-virtual {v1}, Ln7/t;->n()V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_11
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 293
    .line 294
    .line 295
    sget-object p1, Ln7/j;->c:Ln7/j;

    .line 296
    .line 297
    invoke-static {v5, p1}, Lo7/z2;->a(Lo7/z2;Ln7/j;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Ln7/t;->b()Ln7/r;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v1, v1, Ln7/r;->a:Ljava/util/List;

    .line 305
    .line 306
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Ljava/net/SocketAddress;

    .line 311
    .line 312
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lo7/a3;->h:Lo7/h1;

    .line 316
    .line 317
    invoke-virtual {v4}, Ln7/t;->b()Ln7/r;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Ljava/net/SocketAddress;

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Lo7/h1;->e(Ljava/net/SocketAddress;)Z

    .line 330
    .line 331
    .line 332
    iput-object p1, v0, Lo7/a3;->l:Ln7/j;

    .line 333
    .line 334
    invoke-virtual {v0, v5}, Lo7/a3;->j(Lo7/z2;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_12
    iput-object v10, v0, Lo7/a3;->l:Ln7/j;

    .line 339
    .line 340
    new-instance p1, Lo7/x2;

    .line 341
    .line 342
    sget-object v1, Ln7/f0;->e:Ln7/f0;

    .line 343
    .line 344
    invoke-direct {p1, v1}, Lo7/x2;-><init>(Ln7/f0;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v10, p1}, Lo7/a3;->i(Ln7/j;Ln7/h0;)V

    .line 348
    .line 349
    .line 350
    :cond_13
    :goto_3
    return-void
.end method
