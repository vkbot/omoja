.class public final Lm0/m2;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final b:Ljava/security/SecureRandom;

.field public final c:Landroid/os/Handler;

.field public final d:Lcom/bumptech/glide/m;

.field public e:Lcom/google/android/material/materialswitch/MaterialSwitch;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/Spinner;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_14

    .line 6
    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    fill-array-data v0, :array_1c

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lm0/m2;->m:Ljava/lang/String;

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_14
    .array-data 1
        -0x1bt
        0x2dt
        -0x58t
        0x49t
        -0x76t
        -0x59t
        -0x6ct
        0x47t
    .end array-data

    :array_1c
    .array-data 1
        -0x80t
        0x40t
        -0x36t
        0x2ct
        -0x12t
        -0x3dt
        -0xft
        0x23t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/m2;->b:Ljava/security/SecureRandom;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lm0/m2;->c:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/bumptech/glide/m;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lm0/m2;->d:Lcom/bumptech/glide/m;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p3, :cond_16

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    sget-object v2, Lm0/m2;->m:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_16

    .line 20
    .line 21
    move p3, v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p3, v1

    .line 24
    :goto_17
    if-eqz p3, :cond_1d

    .line 25
    .line 26
    const v2, 0x7f0c006c

    .line 27
    .line 28
    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    const v2, 0x7f0c006b

    .line 31
    .line 32
    .line 33
    :goto_20
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const p2, 0x7f09058b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 45
    .line 46
    iput-object p2, p0, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 47
    .line 48
    const p2, 0x7f09058f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/widget/EditText;

    .line 56
    .line 57
    iput-object p2, p0, Lm0/m2;->f:Landroid/widget/EditText;

    .line 58
    .line 59
    const p2, 0x7f09058d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/widget/Spinner;

    .line 67
    .line 68
    iput-object p2, p0, Lm0/m2;->g:Landroid/widget/Spinner;

    .line 69
    .line 70
    const p2, 0x7f090596

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/widget/EditText;

    .line 78
    .line 79
    iput-object p2, p0, Lm0/m2;->h:Landroid/widget/EditText;

    .line 80
    .line 81
    const p2, 0x7f090593

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lm0/m2;->i:Landroid/view/View;

    .line 89
    .line 90
    const p2, 0x7f090594

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object p2, p0, Lm0/m2;->j:Landroid/widget/TextView;

    .line 100
    .line 101
    iget-object p2, p0, Lm0/m2;->h:Landroid/widget/EditText;

    .line 102
    .line 103
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 104
    .line 105
    const/16 v3, 0x9

    .line 106
    .line 107
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-array v3, v0, [Landroid/text/InputFilter;

    .line 111
    .line 112
    aput-object v2, v3, v1

    .line 113
    .line 114
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 115
    .line 116
    .line 117
    const p2, 0x7f09058c

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    const/16 v2, 0x8

    .line 125
    .line 126
    if-eqz p3, :cond_81

    .line 127
    .line 128
    move p3, v2

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move p3, v1

    .line 131
    :goto_82
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    new-instance p3, Lm0/l2;

    .line 135
    .line 136
    invoke-direct {p3, p0, v1}, Lm0/l2;-><init>(Lm0/m2;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    const p2, 0x7f090590

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Landroid/widget/ImageView;

    .line 150
    .line 151
    const p3, 0x7f13027c

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    const/16 v3, 0x168

    .line 159
    .line 160
    invoke-static {v3, p3}, Le3/d;->h(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    if-eqz p3, :cond_a8

    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    .line 168
    .line 169
    :cond_a8
    iget-object p2, p0, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-static {p3}, Ly0/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    sget-object v3, Ly0/m;->b:Ljava/lang/String;

    .line 180
    .line 181
    invoke-interface {p3, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lm0/m2;->f:Landroid/widget/EditText;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-static {p3}, Ly0/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    sget-object v3, Ly0/m;->c:Ljava/lang/String;

    .line 199
    .line 200
    const-string v4, ""

    .line 201
    .line 202
    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    invoke-static {p3}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p0, Lm0/m2;->h:Landroid/widget/EditText;

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-static {p3}, Ly0/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    iget-object p2, p0, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 227
    .line 228
    new-instance p3, Le0/s0;

    .line 229
    .line 230
    const/4 v3, 0x6

    .line 231
    invoke-direct {p3, v3, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    .line 236
    .line 237
    iget-object p2, p0, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    iget-object p3, p0, Lm0/m2;->f:Landroid/widget/EditText;

    .line 244
    .line 245
    if-nez p2, :cond_f8

    .line 246
    .line 247
    move p2, v1

    .line 248
    goto :goto_f9

    .line 249
    :cond_f8
    move p2, v2

    .line 250
    :goto_f9
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    new-instance p2, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    const p3, 0x7f1303f8

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    invoke-static {p3}, Ly0/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    sget-object v3, Ly0/m;->e:Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p3

    .line 282
    invoke-static {p3}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_12e

    .line 295
    .line 296
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :cond_12e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    if-eqz v3, :cond_18a

    .line 308
    .line 309
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    const/16 v5, 0x1f

    .line 312
    .line 313
    if-lt v4, v5, :cond_154

    .line 314
    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    const/16 v5, 0x24

    .line 320
    .line 321
    new-array v5, v5, [B

    .line 322
    .line 323
    fill-array-data v5, :array_210

    .line 324
    .line 325
    .line 326
    new-array v2, v2, [B

    .line 327
    .line 328
    fill-array-data v2, :array_226

    .line 329
    .line 330
    .line 331
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v4, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-nez v2, :cond_18a

    .line 340
    .line 341
    :cond_154
    :try_start_154
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    :cond_15c
    :goto_15c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_18a

    .line 354
    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 360
    .line 361
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    if-eqz v3, :cond_15c

    .line 366
    .line 367
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-nez v4, :cond_15c

    .line 376
    .line 377
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-nez v4, :cond_15c

    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_189
    .catch Ljava/lang/SecurityException; {:try_start_154 .. :try_end_189} :catch_18a

    .line 392
    .line 393
    .line 394
    goto :goto_15c

    .line 395
    :catch_18a
    :cond_18a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    const/4 v3, 0x2

    .line 400
    if-le v2, v3, :cond_19e

    .line 401
    .line 402
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 411
    .line 412
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 413
    .line 414
    .line 415
    :cond_19e
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 416
    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    const v5, 0x7f0c0110

    .line 422
    .line 423
    .line 424
    invoke-direct {v2, v4, v5, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 425
    .line 426
    .line 427
    const v4, 0x7f0c0109

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 431
    .line 432
    .line 433
    iget-object v4, p0, Lm0/m2;->g:Landroid/widget/Spinner;

    .line 434
    .line 435
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    iget-object p3, p0, Lm0/m2;->g:Landroid/widget/Spinner;

    .line 443
    .line 444
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 445
    .line 446
    .line 447
    move-result p2

    .line 448
    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 449
    .line 450
    .line 451
    const p2, 0x7f090592

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    check-cast p2, Landroid/widget/Button;

    .line 459
    .line 460
    iput-object p2, p0, Lm0/m2;->k:Landroid/widget/Button;

    .line 461
    .line 462
    const p2, 0x7f090595

    .line 463
    .line 464
    .line 465
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    check-cast p2, Landroid/widget/Button;

    .line 470
    .line 471
    iput-object p2, p0, Lm0/m2;->l:Landroid/widget/Button;

    .line 472
    .line 473
    invoke-virtual {p0}, Lm0/m2;->t()V

    .line 474
    .line 475
    .line 476
    iget-object p2, p0, Lm0/m2;->k:Landroid/widget/Button;

    .line 477
    .line 478
    new-instance p3, Lm0/l2;

    .line 479
    .line 480
    invoke-direct {p3, p0, v0}, Lm0/l2;-><init>(Lm0/m2;I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    iget-object p2, p0, Lm0/m2;->l:Landroid/widget/Button;

    .line 487
    .line 488
    new-instance p3, Lm0/l2;

    .line 489
    .line 490
    invoke-direct {p3, p0, v3}, Lm0/l2;-><init>(Lm0/m2;I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    .line 495
    .line 496
    const p2, 0x7f09058e

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object p2

    .line 503
    new-instance p3, Lm0/l2;

    .line 504
    .line 505
    const/4 v0, 0x3

    .line 506
    invoke-direct {p3, p0, v0}, Lm0/l2;-><init>(Lm0/m2;I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    .line 511
    .line 512
    const p2, 0x7f090591

    .line 513
    .line 514
    .line 515
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object p2

    .line 519
    new-instance p3, Lm0/l2;

    .line 520
    .line 521
    const/4 v0, 0x4

    .line 522
    invoke-direct {p3, p0, v0}, Lm0/l2;-><init>(Lm0/m2;I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    return-object p1

    .line 529
    :array_210
    .array-data 1
        0x42t
        0x6ft
        0x19t
        -0x12t
        -0x33t
        0x74t
        0x69t
        0x6dt
        0x53t
        0x64t
        0xft
        -0xft
        -0x35t
        0x6et
        0x7et
        0x2at
        0x4ct
        0x6ft
        0x53t
        -0x22t
        -0x12t
        0x48t
        0x48t
        0x17t
        0x6ct
        0x4et
        0x29t
        -0x2ct
        -0x3t
        0x5et
        0x42t
        0xdt
        0x6dt
        0x44t
        0x3et
        -0x38t
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    :array_226
    .array-data 1
        0x23t
        0x1t
        0x7dt
        -0x64t
        -0x5et
        0x1dt
        0xdt
        0x43t
    .end array-data
.end method

.method public final onPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/m2;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lm0/m2;->d:Lcom/bumptech/glide/m;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm0/m2;->d:Lcom/bumptech/glide/m;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->run()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()V
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/m2;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_61

    .line 4
    .line 5
    iget-object v0, p0, Lm0/m2;->i:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    goto :goto_61

    .line 10
    :cond_9
    sget-object v0, Ly0/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Lcom/example/navistart/Transport/TransportService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_34

    .line 25
    .line 26
    iget-object v1, p0, Lm0/m2;->j:Landroid/widget/TextView;

    .line 27
    .line 28
    sget-object v2, Lcom/example/navistart/Transport/TransportService;->y:Ljava/lang/String;

    .line 29
    .line 30
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f1303f6

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lm0/m2;->i:Landroid/view/View;

    .line 45
    .line 46
    const v2, 0x7f070181

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_55

    .line 53
    :cond_34
    iget-object v1, p0, Lm0/m2;->j:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v0, :cond_47

    .line 56
    .line 57
    const v2, 0x7f13040a

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lm0/m2;->i:Landroid/view/View;

    .line 64
    .line 65
    const v2, 0x7f070182

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_55

    .line 72
    :cond_47
    const v2, 0x7f1303fe

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lm0/m2;->i:Landroid/view/View;

    .line 79
    .line 80
    const v2, 0x7f070180

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    .line 85
    .line 86
    :goto_55
    iget-object v1, p0, Lm0/m2;->k:Landroid/widget/Button;

    .line 87
    .line 88
    xor-int/lit8 v2, v0, 0x1

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lm0/m2;->l:Landroid/widget/Button;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    .line 97
    .line 98
    :cond_61
    :goto_61
    return-void
.end method
