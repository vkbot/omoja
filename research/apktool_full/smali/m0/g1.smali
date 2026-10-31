.class public final Lm0/g1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroidx/fragment/app/h;

.field public final b:Ljava/util/List;

.field public final synthetic c:Lm0/i1;


# direct methods
.method public constructor <init>(Lm0/i1;Ljava/util/ArrayList;Landroidx/fragment/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/g1;->c:Lm0/i1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lm0/g1;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lm0/g1;->a:Landroidx/fragment/app/h;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/g1;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1
    check-cast p1, Lm0/f1;

    .line 2
    .line 3
    iget-object v0, p0, Lm0/g1;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lm0/h1;

    .line 10
    .line 11
    iget-object v0, p1, Lm0/f1;->b:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p1, Lm0/f1;->d:Landroid/widget/Button;

    .line 14
    .line 15
    iget-object v2, p2, Lm0/h1;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p2, Lm0/h1;->b:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iget-object v2, p2, Lm0/h1;->c:Ljava/lang/String;

    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lm0/f1;->c:Landroid/widget/TextView;

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    new-array v3, v2, [B

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    new-array v4, v2, [B

    .line 48
    .line 49
    fill-array-data v4, :array_1

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p0, Lm0/g1;->c:Lm0/i1;

    .line 57
    .line 58
    iget-object v5, v4, Lm0/i1;->g:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v5, 0x2

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v6, p2, Lm0/h1;->e:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-array v5, v5, [B

    .line 78
    .line 79
    fill-array-data v5, :array_2

    .line 80
    .line 81
    .line 82
    new-array v6, v2, [B

    .line 83
    .line 84
    fill-array-data v6, :array_3

    .line 85
    .line 86
    .line 87
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v5, p2, Lm0/h1;->f:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v6, p2, Lm0/h1;->d:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    new-array v6, v5, [B

    .line 115
    .line 116
    fill-array-data v6, :array_4

    .line 117
    .line 118
    .line 119
    new-array v7, v2, [B

    .line 120
    .line 121
    fill-array-data v7, :array_5

    .line 122
    .line 123
    .line 124
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v6, p2, Lm0/h1;->e:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-array v5, v5, [B

    .line 137
    .line 138
    fill-array-data v5, :array_6

    .line 139
    .line 140
    .line 141
    new-array v6, v2, [B

    .line 142
    .line 143
    fill-array-data v6, :array_7

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v5, p2, Lm0/h1;->f:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v4}, Lcom/bumptech/glide/b;->c(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/p;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v3, p2, Lm0/h1;->g:Ljava/lang/String;

    .line 170
    .line 171
    if-nez v3, :cond_3

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    goto :goto_3

    .line 175
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v5, Lcom/bumptech/glide/l;

    .line 183
    .line 184
    iget-object v6, v0, Lcom/bumptech/glide/p;->b:Lcom/bumptech/glide/b;

    .line 185
    .line 186
    iget-object v7, v0, Lcom/bumptech/glide/p;->c:Landroid/content/Context;

    .line 187
    .line 188
    const-class v8, Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    invoke-direct {v5, v6, v0, v8, v7}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/p;Ljava/lang/Class;Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/l;->z(Ljava/lang/Object;)Lcom/bumptech/glide/l;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    sget-object v3, Lq/o;->b:Lq/o;

    .line 201
    .line 202
    new-instance v3, Lq/i;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ly/a;->r(Lq/i;)Ly/a;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lcom/bumptech/glide/l;

    .line 212
    .line 213
    const v3, 0x7f070122

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ly/a;->j(I)Ly/a;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcom/bumptech/glide/l;

    .line 221
    .line 222
    invoke-virtual {v0, v3}, Ly/a;->e(I)Ly/a;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/bumptech/glide/l;

    .line 227
    .line 228
    iget-object v3, p1, Lm0/f1;->a:Landroid/widget/ImageView;

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/l;->x(Landroid/widget/ImageView;)V

    .line 231
    .line 232
    .line 233
    iget-boolean v0, p2, Lm0/h1;->i:Z

    .line 234
    .line 235
    if-eqz v0, :cond_4

    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    .line 240
    .line 241
    iget-object p2, p2, Lm0/h1;->j:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_4
    const/4 p2, 0x1

    .line 248
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 249
    .line 250
    .line 251
    new-array p2, v2, [B

    .line 252
    .line 253
    fill-array-data p2, :array_8

    .line 254
    .line 255
    .line 256
    new-array v0, v2, [B

    .line 257
    .line 258
    fill-array-data v0, :array_9

    .line 259
    .line 260
    .line 261
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    iget-object v0, v4, Lm0/i1;->g:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_5

    .line 272
    .line 273
    const/16 p2, 0x14

    .line 274
    .line 275
    new-array p2, p2, [B

    .line 276
    .line 277
    fill-array-data p2, :array_a

    .line 278
    .line 279
    .line 280
    new-array v0, v2, [B

    .line 281
    .line 282
    fill-array-data v0, :array_b

    .line 283
    .line 284
    .line 285
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    goto :goto_4

    .line 290
    :cond_5
    const p2, 0x7f13013a

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    :goto_4
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    :goto_5
    new-instance p2, Landroidx/navigation/ui/a;

    .line 301
    .line 302
    const/16 v0, 0xb

    .line 303
    .line 304
    invoke-direct {p2, v0, p0, p1}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :array_0
    .array-data 1
        0x3et
        0x41t
        -0x43t
        -0x5bt
        -0x2at
        0x7bt
        -0x4t
        -0x3bt
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_1
    .array-data 1
        0x52t
        0x20t
        -0x38t
        -0x35t
        -0x4bt
        0x13t
        -0x67t
        -0x49t
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_2
    .array-data 1
        0xbt
        -0x5dt
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    nop

    .line 333
    :array_3
    .array-data 1
        0x27t
        -0x7dt
        0x1dt
        -0xct
        -0x38t
        0x6t
        0x6et
        -0x14t
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_4
    .array-data 1
        0x76t
        -0x32t
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    nop

    .line 347
    :array_5
    .array-data 1
        0x5at
        -0x12t
        -0x60t
        0x38t
        0x16t
        -0x6bt
        -0x6at
        -0x4ft
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_6
    .array-data 1
        0x3et
        -0x2et
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    nop

    .line 361
    :array_7
    .array-data 1
        0x12t
        -0xet
        0x55t
        -0xbt
        -0x7ft
        0x59t
        -0x15t
        -0x5et
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_8
    .array-data 1
        -0x43t
        -0x41t
        -0x23t
        0x1t
        0x2et
        0xdt
        0xft
        0x5bt
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_9
    .array-data 1
        -0x2ft
        -0x22t
        -0x58t
        0x6ft
        0x4dt
        0x65t
        0x6at
        0x29t
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_a
    .array-data 1
        0x6et
        -0x44t
        -0x80t
        -0x78t
        0x57t
        -0xbt
        -0x73t
        0x4ct
        0x6et
        -0x5et
        -0x7ft
        -0x49t
        0x56t
        -0x3bt
        -0x73t
        0x44t
        0x6ft
        -0x63t
        -0x80t
        -0x7bt
    .end array-data

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
    :array_b
    .array-data 1
        -0x42t
        0x1ft
        0x51t
        0x9t
        -0x7at
        0x77t
        0x5dt
        -0x4t
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0c007d

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lm0/f1;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lm0/f1;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method
