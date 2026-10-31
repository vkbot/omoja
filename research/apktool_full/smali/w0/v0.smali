.class public Lw0/v0;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lw0/q0;

.field public d:Ljava/util/ArrayList;

.field public e:Landroid/widget/EditText;

.field public f:Z

.field public g:Landroid/widget/Spinner;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/RadioGroup;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/TextView;

.field public final m:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lw0/v0;->m:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    const p3, 0x7f0c0070

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0901d4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/EditText;

    .line 17
    .line 18
    iput-object p2, p0, Lw0/v0;->e:Landroid/widget/EditText;

    .line 19
    .line 20
    const p2, 0x7f09046e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/widget/Switch;

    .line 28
    .line 29
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/16 v1, 0x12

    .line 34
    .line 35
    new-array v1, v1, [B

    .line 36
    .line 37
    fill-array-data v1, :array_0

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    new-array v3, v2, [B

    .line 43
    .line 44
    fill-array-data v3, :array_1

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p3, v1, v0}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    iput-boolean p3, p0, Lw0/v0;->f:Z

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lw0/v0;->e:Landroid/widget/EditText;

    .line 61
    .line 62
    iget-boolean v1, p0, Lw0/v0;->f:Z

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    xor-int/2addr v1, v3

    .line 66
    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    new-instance p3, Le0/s0;

    .line 70
    .line 71
    const/16 v1, 0xa

    .line 72
    .line 73
    invoke-direct {p3, v1, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    .line 78
    .line 79
    const p2, 0x7f0903ec

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    iput-object p2, p0, Lw0/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lw0/v0;->e:Landroid/widget/EditText;

    .line 103
    .line 104
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lj0/c;->f()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    sget-object p3, Lj0/c;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p2, p3}, Lj0/c;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iput-object p2, p0, Lw0/v0;->d:Ljava/util/ArrayList;

    .line 135
    .line 136
    new-instance p2, Lw0/q0;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    iget-object v1, p0, Lw0/v0;->d:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {p2, p3, v1}, Lw0/q0;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    .line 145
    .line 146
    .line 147
    iput-object p2, p0, Lw0/v0;->c:Lw0/q0;

    .line 148
    .line 149
    iget-object p3, p0, Lw0/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .line 151
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    .line 153
    .line 154
    const p2, 0x7f090104

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    new-instance p3, Lw0/t0;

    .line 162
    .line 163
    invoke-direct {p3, p0, v0}, Lw0/t0;-><init>(Lw0/v0;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    const p2, 0x7f09010d

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    new-instance p3, Lw0/t0;

    .line 177
    .line 178
    invoke-direct {p3, p0, v3}, Lw0/t0;-><init>(Lw0/v0;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    const p2, 0x7f0903cc

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    check-cast p2, Landroid/widget/RadioGroup;

    .line 192
    .line 193
    iput-object p2, p0, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 194
    .line 195
    const p2, 0x7f090105

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Landroid/widget/Button;

    .line 203
    .line 204
    iput-object p2, p0, Lw0/v0;->k:Landroid/widget/Button;

    .line 205
    .line 206
    const p2, 0x7f090562

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Landroid/widget/TextView;

    .line 214
    .line 215
    iput-object p2, p0, Lw0/v0;->l:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-static {p2}, Lw0/a;->f(Landroid/content/Context;)Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    invoke-static {}, Lw0/a0;->d()Lw0/z;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    iget-object v1, p0, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 230
    .line 231
    if-eqz p2, :cond_0

    .line 232
    .line 233
    sget-object v3, Lw0/z;->d:Lw0/z;

    .line 234
    .line 235
    if-ne p3, v3, :cond_0

    .line 236
    .line 237
    const p2, 0x7f0903ce

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_0
    if-eqz p2, :cond_1

    .line 242
    .line 243
    sget-object p2, Lw0/z;->c:Lw0/z;

    .line 244
    .line 245
    if-ne p3, p2, :cond_1

    .line 246
    .line 247
    const p2, 0x7f0903cd

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_1
    const p2, 0x7f0903cf

    .line 252
    .line 253
    .line 254
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lw0/v0;->u()V

    .line 258
    .line 259
    .line 260
    iget-object p2, p0, Lw0/v0;->k:Landroid/widget/Button;

    .line 261
    .line 262
    new-instance p3, Lw0/t0;

    .line 263
    .line 264
    const/4 v1, 0x2

    .line 265
    invoke-direct {p3, p0, v1}, Lw0/t0;-><init>(Lw0/v0;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    const p2, 0x7f090490

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    check-cast p2, Landroid/widget/Spinner;

    .line 279
    .line 280
    iput-object p2, p0, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 281
    .line 282
    const p2, 0x7f090106

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Landroid/widget/Button;

    .line 290
    .line 291
    iput-object p2, p0, Lw0/v0;->h:Landroid/widget/Button;

    .line 292
    .line 293
    const p2, 0x7f090563

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Landroid/widget/TextView;

    .line 301
    .line 302
    iput-object p2, p0, Lw0/v0;->i:Landroid/widget/TextView;

    .line 303
    .line 304
    invoke-static {}, Lw0/k1;->values()[Lw0/k1;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    array-length p3, p2

    .line 309
    new-array p3, p3, [Ljava/lang/String;

    .line 310
    .line 311
    :goto_1
    array-length v1, p2

    .line 312
    if-ge v0, v1, :cond_2

    .line 313
    .line 314
    aget-object v1, p2, v0

    .line 315
    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    iget v1, v1, Lw0/k1;->b:I

    .line 321
    .line 322
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    aput-object v1, p3, v0

    .line 327
    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_2
    new-instance p2, Landroid/widget/ArrayAdapter;

    .line 332
    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const v1, 0x1090008

    .line 338
    .line 339
    .line 340
    invoke-direct {p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    const p3, 0x1090009

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 347
    .line 348
    .line 349
    iget-object p3, p0, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 350
    .line 351
    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    const/16 p3, 0x13

    .line 359
    .line 360
    new-array p3, p3, [B

    .line 361
    .line 362
    fill-array-data p3, :array_2

    .line 363
    .line 364
    .line 365
    new-array v0, v2, [B

    .line 366
    .line 367
    fill-array-data v0, :array_3

    .line 368
    .line 369
    .line 370
    invoke-static {p3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p3

    .line 374
    sget-object v0, Lw0/k1;->e:Lw0/k1;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {p2, p3, v0}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    :try_start_0
    iget-object p3, p0, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 385
    .line 386
    invoke-static {p2}, Lw0/k1;->valueOf(Ljava/lang/String;)Lw0/k1;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 391
    .line 392
    .line 393
    move-result p2

    .line 394
    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .line 396
    .line 397
    goto :goto_2

    .line 398
    :catch_0
    iget-object p2, p0, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 399
    .line 400
    sget-object p3, Lw0/k1;->e:Lw0/k1;

    .line 401
    .line 402
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 403
    .line 404
    .line 405
    move-result p3

    .line 406
    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 407
    .line 408
    .line 409
    :goto_2
    iget-object p2, p0, Lw0/v0;->h:Landroid/widget/Button;

    .line 410
    .line 411
    new-instance p3, Lw0/t0;

    .line 412
    .line 413
    const/4 v0, 0x3

    .line 414
    invoke-direct {p3, p0, v0}, Lw0/t0;-><init>(Lw0/v0;I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    .line 419
    .line 420
    return-object p1

    .line 421
    :array_0
    .array-data 1
        -0x52t
        0x2et
        0x17t
        0x4et
        0x55t
        -0x74t
        0x52t
        -0x50t
        -0x55t
        0x3ft
        0xat
        0x74t
        0x6bt
        -0x6ct
        0x51t
        -0x7at
        -0x72t
        0x9t
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    nop

    .line 435
    :array_1
    .array-data 1
        -0x23t
        0x5et
        0x7et
        0x11t
        0x34t
        -0x19t
        0x26t
        -0x27t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_2
    .array-data 1
        0x50t
        -0x67t
        -0x4t
        0x5et
        -0x34t
        -0x7et
        0xat
        0x53t
        0x41t
        -0x7dt
        -0x12t
        0x52t
        -0xat
        -0x4ft
        0x6t
        0x52t
        0x42t
        -0x6dt
        -0x1dt
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_3
    .array-data 1
        0x26t
        -0xat
        -0x71t
        0x35t
        -0x6dt
        -0x12t
        0x6bt
        0x3dt
    .end array-data
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/v0;->m:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lw0/v0;->k:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lw0/a;->f(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lw0/a0;->d()Lw0/z;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lw0/z;->d:Lw0/z;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lw0/v0;->l:Landroid/widget/TextView;

    .line 20
    .line 21
    const v1, 0x7f1304aa

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Lw0/a0;->d()Lw0/z;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lw0/z;->c:Lw0/z;

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lw0/v0;->l:Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const v0, 0x7f1304a5

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const v0, 0x7f1304a6

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const v0, 0x7f1304af

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
