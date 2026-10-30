.class public Lu1/d;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0c0115

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
    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f09046f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/Switch;

    .line 12
    .line 13
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    new-array v3, v2, [B

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v1, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Le0/s0;

    .line 44
    .line 45
    const/16 v1, 0x9

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    .line 52
    .line 53
    const p2, 0x7f09046d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroid/widget/Switch;

    .line 61
    .line 62
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/16 v1, 0x16

    .line 67
    .line 68
    new-array v1, v1, [B

    .line 69
    .line 70
    fill-array-data v1, :array_2

    .line 71
    .line 72
    .line 73
    new-array v4, v2, [B

    .line 74
    .line 75
    fill-array-data v4, :array_3

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v4}, Lj1/v;->c()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v0, v1, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lm0/z1;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-direct {v0, v1}, Lm0/z1;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    .line 108
    .line 109
    const p2, 0x7f0900ef

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Landroid/widget/Button;

    .line 117
    .line 118
    const v0, 0x7f0900ee

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/Button;

    .line 126
    .line 127
    new-instance v4, Le0/o1;

    .line 128
    .line 129
    const/4 v5, 0x3

    .line 130
    invoke-direct {v4, v5}, Le0/o1;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    new-instance p2, Le0/o1;

    .line 137
    .line 138
    const/4 v4, 0x4

    .line 139
    invoke-direct {p2, v4}, Le0/o1;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    const p2, 0x7f0901d8

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Landroid/widget/EditText;

    .line 153
    .line 154
    const v0, 0x7f090129

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/widget/Button;

    .line 162
    .line 163
    new-instance v4, Lu1/b;

    .line 164
    .line 165
    invoke-direct {v4, p0, p2, v3}, Lu1/b;-><init>(Lu1/d;Landroid/widget/EditText;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    const p2, 0x7f0901d7

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Landroid/widget/EditText;

    .line 179
    .line 180
    const v0, 0x7f09011d

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/widget/Button;

    .line 188
    .line 189
    new-instance v4, Lu1/b;

    .line 190
    .line 191
    invoke-direct {v4, p0, p2, v1}, Lu1/b;-><init>(Lu1/d;Landroid/widget/EditText;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    const p2, 0x7f090045

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Landroid/widget/Button;

    .line 205
    .line 206
    new-instance v0, Lu1/a;

    .line 207
    .line 208
    const/4 v4, 0x2

    .line 209
    invoke-direct {v0, p0, v4}, Lu1/a;-><init>(Lu1/d;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    const p2, 0x7f090132

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    check-cast p2, Landroid/widget/Button;

    .line 223
    .line 224
    new-instance v0, Le0/o1;

    .line 225
    .line 226
    const/4 v4, 0x5

    .line 227
    invoke-direct {v0, v4}, Le0/o1;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    const p2, 0x7f090470

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    check-cast p2, Landroid/widget/EditText;

    .line 241
    .line 242
    new-instance v0, Lk0/b;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    new-array v4, v1, [Landroid/text/InputFilter;

    .line 248
    .line 249
    aput-object v0, v4, v3

    .line 250
    .line 251
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    const/16 v4, 0x19

    .line 259
    .line 260
    new-array v4, v4, [B

    .line 261
    .line 262
    fill-array-data v4, :array_4

    .line 263
    .line 264
    .line 265
    new-array v2, v2, [B

    .line 266
    .line 267
    fill-array-data v2, :array_5

    .line 268
    .line 269
    .line 270
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v0, v2, v1}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Lu1/c;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 291
    .line 292
    .line 293
    const p2, 0x7f090133

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Landroid/widget/Button;

    .line 301
    .line 302
    new-instance v0, Lu1/a;

    .line 303
    .line 304
    invoke-direct {v0, p0, v5}, Lu1/a;-><init>(Lu1/d;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    const p2, 0x7f090134

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Landroid/widget/Button;

    .line 318
    .line 319
    new-instance v0, Lu1/a;

    .line 320
    .line 321
    invoke-direct {v0, p0, v3}, Lu1/a;-><init>(Lu1/d;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    const p2, 0x7f090150

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Landroid/widget/Button;

    .line 335
    .line 336
    new-instance p2, Lu1/a;

    .line 337
    .line 338
    invoke-direct {p2, p0, v1}, Lu1/a;-><init>(Lu1/d;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :array_0
    .array-data 1
        -0x28t
        -0x48t
        0x25t
        -0x20t
        0x16t
        0x70t
        0x3ft
        -0xct
        -0x3ct
        -0x52t
        0x2at
        -0x20t
        0x7t
        0x73t
        0x3ft
        -0x3bt
    .end array-data

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
    :array_1
    .array-data 1
        -0x55t
        -0x38t
        0x4ct
        -0x41t
        0x77t
        0x1ct
        0x53t
        -0x55t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_2
    .array-data 1
        -0x14t
        0x49t
        0x7et
        -0x38t
        0x53t
        0x61t
        -0x40t
        -0x24t
        -0x14t
        0x49t
        0x7et
        -0x2at
        0x4bt
        0x61t
        -0x3dt
        -0xft
        -0x35t
        0x6dt
        0x6dt
        -0x2bt
        0x5ft
        0x47t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    nop

    .line 381
    :array_3
    .array-data 1
        -0x61t
        0x3dt
        0x1ft
        -0x46t
        0x27t
        0x3et
        -0x77t
        -0x4et
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_4
    .array-data 1
        -0x72t
        -0x55t
        -0x1t
        0xbt
        0x78t
        0xat
        -0x71t
        -0x61t
        -0x54t
        -0x44t
        -0x1t
        0x7t
        0x6bt
        0x76t
        -0x55t
        -0x77t
        -0x59t
        -0x59t
        -0xct
        0x31t
        0x76t
        0x2dt
        -0x68t
        -0x61t
        -0x5at
    .end array-data

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
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    nop

    .line 407
    :array_5
    .array-data 1
        -0x3dt
        -0x32t
        -0x65t
        0x62t
        0x19t
        0x58t
        -0x16t
        -0x4t
    .end array-data
.end method
