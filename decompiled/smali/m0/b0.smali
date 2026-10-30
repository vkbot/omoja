.class public final synthetic Lm0/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/e0;


# direct methods
.method public synthetic constructor <init>(Lm0/e0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/b0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/b0;->c:Lm0/e0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lm0/b0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lm0/b0;->c:Lm0/e0;

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p1, Lm0/e0;->A:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Lm0/e0;->z()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of p1, p1, Ll0/a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ll0/a;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget-object p1, v1, Lm0/e0;->v:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, v1, Lm0/e0;->n:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v0, v1, Lm0/e0;->m:Lm0/q1;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-nez p1, :cond_2

    .line 46
    .line 47
    const-string p1, ""

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object p1, v1, Lm0/e0;->h:Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    const/16 v0, 0x2d

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    fill-array-data v0, :array_0

    .line 69
    .line 70
    .line 71
    new-array v1, v2, [B

    .line 72
    .line 73
    fill-array-data v1, :array_1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, v1, Lm0/e0;->n:Ljava/util/ArrayList;

    .line 85
    .line 86
    new-instance v2, Lw0/o0;

    .line 87
    .line 88
    sget-object v3, Ln0/d;->e:Ln0/d;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Lj0/e;->c(Ln0/d;Landroid/content/Context;)Lj0/e;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x1

    .line 99
    invoke-direct {v2, p1, v3, v4, v4}, Lw0/o0;-><init>(Ljava/lang/String;Lj0/e;ZZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object p1, v1, Lm0/e0;->m:Lm0/q1;

    .line 106
    .line 107
    iget-object v0, v1, Lm0/e0;->n:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    sub-int/2addr v0, v4

    .line 114
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lm0/e0;->z()V

    .line 118
    .line 119
    .line 120
    iget-object p1, v1, Lm0/e0;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    if-nez p1, :cond_4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    new-instance v0, Lc7/e;

    .line 126
    .line 127
    const/4 v2, 0x7

    .line 128
    invoke-direct {v0, v1, v4, v2}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_1
    return-void

    .line 135
    :pswitch_1
    iput-boolean v0, v1, Lm0/e0;->y:Z

    .line 136
    .line 137
    invoke-virtual {v1}, Lm0/e0;->F()V

    .line 138
    .line 139
    .line 140
    const/16 p1, 0x9

    .line 141
    .line 142
    new-array p1, p1, [B

    .line 143
    .line 144
    fill-array-data p1, :array_2

    .line 145
    .line 146
    .line 147
    new-array v2, v2, [B

    .line 148
    .line 149
    fill-array-data v2, :array_3

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v1, p1, v0}, Lm0/e0;->B(Ljava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_2
    const/4 p1, 0x1

    .line 161
    iput-boolean p1, v1, Lm0/e0;->y:Z

    .line 162
    .line 163
    const/16 v3, 0x1d

    .line 164
    .line 165
    new-array v3, v3, [B

    .line 166
    .line 167
    fill-array-data v3, :array_4

    .line 168
    .line 169
    .line 170
    new-array v4, v2, [B

    .line 171
    .line 172
    fill-array-data v4, :array_5

    .line 173
    .line 174
    .line 175
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const/16 v4, 0x45

    .line 180
    .line 181
    new-array v4, v4, [B

    .line 182
    .line 183
    fill-array-data v4, :array_6

    .line 184
    .line 185
    .line 186
    new-array v5, v2, [B

    .line 187
    .line 188
    fill-array-data v5, :array_7

    .line 189
    .line 190
    .line 191
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v1}, Lm0/e0;->v()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual {v1, v3, v4, v5}, Lm0/e0;->C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    .line 201
    .line 202
    const/16 v3, 0xa

    .line 203
    .line 204
    new-array v3, v3, [B

    .line 205
    .line 206
    fill-array-data v3, :array_8

    .line 207
    .line 208
    .line 209
    new-array v2, v2, [B

    .line 210
    .line 211
    fill-array-data v2, :array_9

    .line 212
    .line 213
    .line 214
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2, p1}, Lm0/e0;->B(Ljava/lang/String;Z)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lm0/e0;->F()V

    .line 222
    .line 223
    .line 224
    iput v0, v1, Lm0/e0;->r:I

    .line 225
    .line 226
    new-instance p1, Lm0/c0;

    .line 227
    .line 228
    invoke-direct {p1, v1, v0}, Lm0/c0;-><init>(Lm0/e0;I)V

    .line 229
    .line 230
    .line 231
    iput-object p1, v1, Lm0/e0;->p:Lm0/c0;

    .line 232
    .line 233
    iget-object v0, v1, Lm0/e0;->o:Landroid/os/Handler;

    .line 234
    .line 235
    const-wide/16 v1, 0x5dc

    .line 236
    .line 237
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_0
    .array-data 1
        0x2bt
        0x69t
        0x3et
        -0x37t
        -0x3et
        -0x53t
        -0x74t
        -0x13t
        0x2bt
        0x4ct
        0x3ft
        -0x5t
        -0x3et
        -0x52t
        0x7ct
        -0x7ft
        0x41t
        0x24t
        0x53t
        -0x57t
        -0x54t
        -0x35t
        -0x1dt
        -0x7ft
        0x41t
        0x25t
        0x6dt
        0x59t
        -0x3et
        -0x5at
        -0x74t
        -0x1ft
        -0x25t
        0x24t
        0x51t
        -0x57t
        -0x5et
        -0x35t
        -0x1ft
        -0x7ft
        0x4et
        0x24t
        0x55t
        -0x57t
        -0x56t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
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
    :array_1
    .array-data 1
        -0x5t
        -0xct
        -0x12t
        0x79t
        0x12t
        0x1bt
        0x5ct
        0x51t
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
        -0x25t
        0x1bt
        0x5dt
        -0x30t
        0x3at
        -0xct
        -0x36t
        0x5ct
        -0x25t
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    nop

    .line 297
    :array_3
    .array-data 1
        -0x55t
        0x7at
        0x34t
        -0x5et
        0x65t
        -0x79t
        -0x42t
        0x33t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_4
    .array-data 1
        0x18t
        -0x6ct
        -0x73t
        -0x77t
        0x7bt
        -0xbt
        -0x6bt
        0x46t
        -0x18t
        -0x23t
        -0x24t
        -0x13t
        0x15t
        -0x70t
        -0x5t
        0x15t
        0x48t
        -0x23t
        -0x2et
        -0x13t
        0x1dt
        -0x70t
        -0xft
        0x14t
        0x75t
        -0x24t
        -0x1bt
        -0x13t
        0x1et
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    nop

    .line 325
    :array_5
    .array-data 1
        -0x38t
        0xct
        0x5dt
        0x3dt
        -0x55t
        0x40t
        0x44t
        -0x3ct
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_6
    .array-data 1
        -0x6at
        0x49t
        -0x32t
        -0x15t
        0x3ft
        0x70t
        -0x50t
        -0x9t
        -0x69t
        0x5ct
        -0x32t
        -0x17t
        0x3et
        0x49t
        -0x4ft
        -0x34t
        0x66t
        0xat
        -0x62t
        -0x7ft
        0x5at
        0x1bt
        -0x29t
        -0x57t
        -0x2t
        0xbt
        -0x5et
        0x71t
        0x3et
        0x4at
        -0x4ft
        -0x39t
        -0x6at
        0x64t
        -0x31t
        -0x2ft
        0x3et
        0x44t
        -0x4ft
        -0x31t
        -0x6at
        0x6et
        -0x32t
        -0x14t
        0x3ft
        0x73t
        -0x50t
        -0xat
        0x66t
        0xbt
        -0x5dt
        -0x7ft
        0x5ft
        -0x15t
        -0x4ft
        -0x3dt
        -0x6at
        0x66t
        -0x32t
        -0x11t
        0x3ft
        0x74t
        -0x4ft
        -0x3dt
        -0x6at
        0x6bt
        -0x31t
        -0x2ct
        -0x3ft
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
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
    .line 355
    .line 356
    .line 357
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
    nop

    .line 373
    :array_7
    .array-data 1
        0x46t
        -0x25t
        0x1et
        0x51t
        -0x11t
        -0x35t
        0x61t
        0x79t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_8
    .array-data 1
        0x4ct
        0x2ft
        0x79t
        -0x23t
        -0x60t
        -0x6at
        0x76t
        -0x9t
        0x4et
        0x3at
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
    nop

    .line 391
    :array_9
    .array-data 1
        0x3ct
        0x4et
        0x10t
        -0x51t
        -0x1t
        -0x1bt
        0x2t
        -0x6at
    .end array-data
.end method
