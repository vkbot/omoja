.class public final Lf5/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;
.implements Lf2/b;


# instance fields
.field public final synthetic b:I

.field public final c:Lt8/a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lt8/a;I)V
    .registers 4

    .line 1
    iput p3, p0, Lf5/m;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lf5/m;->c:Lt8/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lt8/a;I)V
    .registers 3

    .line 9
    iput p2, p0, Lf5/m;->b:I

    iput-object p1, p0, Lf5/m;->c:Lt8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Lf5/m;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_1a2

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 8
    .line 9
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "com.google.android.datatransport.events"

    .line 16
    .line 17
    sget v2, Lk2/j;->e:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v3, Lk2/j;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1, v2}, Lk2/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :pswitch_20
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 34
    .line 35
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    .line 47
    if-eqz v0, :cond_32

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    goto :goto_35

    .line 51
    :cond_32
    invoke-static {v2}, Ln0/b;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_35
    return-object v1

    .line 55
    :pswitch_36
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 56
    .line 57
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/Application;

    .line 62
    .line 63
    new-instance v1, Lf5/y;

    .line 64
    .line 65
    const-string v2, "rate_limit_store_file"

    .line 66
    .line 67
    invoke-direct {v1, v0, v2}, Lf5/y;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :pswitch_46
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 72
    .line 73
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/app/Application;

    .line 78
    .line 79
    new-instance v1, Lf5/y;

    .line 80
    .line 81
    const-string v2, "fiam_impressions_store_file"

    .line 82
    .line 83
    invoke-direct {v1, v0, v2}, Lf5/y;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_56
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 88
    .line 89
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/app/Application;

    .line 94
    .line 95
    new-instance v1, Lf5/y;

    .line 96
    .line 97
    const-string v2, "fiam_eligible_campaigns_cache_file"

    .line 98
    .line 99
    invoke-direct {v1, v0, v2}, Lf5/y;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :pswitch_66
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 104
    .line 105
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/String;

    .line 110
    .line 111
    sget-object v2, Ln7/p0;->c:Ljava/util/logging/Logger;

    .line 112
    .line 113
    const-class v2, Ln7/p0;

    .line 114
    .line 115
    monitor-enter v2

    .line 116
    :try_start_73
    sget-object v3, Ln7/p0;->d:Ln7/p0;

    .line 117
    .line 118
    if-nez v3, :cond_ed

    .line 119
    .line 120
    const-class v3, Ln7/n0;

    .line 121
    .line 122
    invoke-static {}, Ln7/p0;->a()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const-class v5, Ln7/n0;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    new-instance v6, Ln7/h;

    .line 133
    .line 134
    const/4 v7, 0x7

    .line 135
    invoke-direct {v6, v7}, Ln7/h;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v4, v5, v6}, Ln7/t;->h(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Ln7/h;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v4, Ln7/p0;

    .line 143
    .line 144
    invoke-direct {v4}, Ln7/p0;-><init>()V

    .line 145
    .line 146
    .line 147
    sput-object v4, Ln7/p0;->d:Ln7/p0;

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    :goto_98
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_cc

    .line 158
    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ln7/n0;

    .line 164
    .line 165
    sget-object v5, Ln7/p0;->c:Ljava/util/logging/Logger;

    .line 166
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v7, "Service loader found "

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v5, Ln7/p0;->d:Ln7/p0;

    .line 188
    .line 189
    monitor-enter v5
    :try_end_bd
    .catchall {:try_start_73 .. :try_end_bd} :catchall_ca

    .line 190
    :try_start_bd
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    iget-object v6, v5, Ln7/p0;->a:Ljava/util/LinkedHashSet;

    .line 194
    .line 195
    invoke-virtual {v6, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_c7

    .line 196
    .line 197
    .line 198
    :try_start_c5
    monitor-exit v5
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_ca

    .line 199
    goto :goto_98

    .line 200
    :catchall_c7
    move-exception v0

    .line 201
    :try_start_c8
    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    .line 202
    :try_start_c9
    throw v0

    .line 203
    :catchall_ca
    move-exception v0

    .line 204
    goto :goto_11c

    .line 205
    :cond_cc
    sget-object v3, Ln7/p0;->d:Ln7/p0;

    .line 206
    .line 207
    monitor-enter v3
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_ca

    .line 208
    :try_start_cf
    new-instance v4, Ljava/util/ArrayList;

    .line 209
    .line 210
    iget-object v5, v3, Ln7/p0;->a:Ljava/util/LinkedHashSet;

    .line 211
    .line 212
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 213
    .line 214
    .line 215
    new-instance v5, Ln7/o0;

    .line 216
    .line 217
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-static {v5}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iput-object v4, v3, Ln7/p0;->b:Ljava/util/List;
    :try_end_e8
    .catchall {:try_start_cf .. :try_end_e8} :catchall_ea

    .line 232
    .line 233
    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_ca

    .line 234
    goto :goto_ed

    .line 235
    :catchall_ea
    move-exception v0

    .line 236
    :try_start_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    .line 237
    :try_start_ec
    throw v0

    .line 238
    :cond_ed
    :goto_ed
    sget-object v3, Ln7/p0;->d:Ln7/p0;
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_ca

    .line 239
    .line 240
    monitor-exit v2

    .line 241
    monitor-enter v3

    .line 242
    :try_start_f1
    iget-object v2, v3, Ln7/p0;->b:Ljava/util/List;
    :try_end_f3
    .catchall {:try_start_f1 .. :try_end_f3} :catchall_119

    .line 243
    .line 244
    monitor-exit v3

    .line 245
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_fb

    .line 250
    .line 251
    goto :goto_102

    .line 252
    :cond_fb
    const/4 v1, 0x0

    .line 253
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Ln7/n0;

    .line 258
    .line 259
    :goto_102
    if-eqz v1, :cond_110

    .line 260
    .line 261
    new-instance v1, Lp7/h;

    .line 262
    .line 263
    invoke-direct {v1, v0}, Lp7/h;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, v1, Lp7/h;->b:Lo7/g2;

    .line 267
    .line 268
    invoke-virtual {v0}, Lo7/g2;->E()Ln7/m0;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    return-object v0

    .line 273
    :cond_110
    new-instance v0, La8/a;

    .line 274
    .line 275
    const-string v1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    .line 276
    .line 277
    const/4 v2, 0x2

    .line 278
    invoke-direct {v0, v1, v2}, La8/a;-><init>(Ljava/lang/String;I)V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :catchall_119
    move-exception v0

    .line 283
    :try_start_11a
    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    .line 284
    throw v0

    .line 285
    :goto_11c
    :try_start_11c
    monitor-exit v2
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_ca

    .line 286
    throw v0

    .line 287
    :pswitch_11e
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 288
    .line 289
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Landroid/app/Application;

    .line 294
    .line 295
    new-instance v1, Lf5/k;

    .line 296
    .line 297
    invoke-direct {v1}, Lf5/k;-><init>()V

    .line 298
    .line 299
    .line 300
    iget-object v2, v1, Lf5/k;->f:Ls8/b;

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    new-instance v3, Lh8/l;

    .line 306
    .line 307
    const/4 v4, 0x3

    .line 308
    invoke-direct {v3, v4, v2}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    sget v2, Lx7/b;->b:I

    .line 312
    .line 313
    const-string v4, "bufferSize"

    .line 314
    .line 315
    invoke-static {v2, v4}, Ld8/b;->b(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v4, Lh8/l0;

    .line 319
    .line 320
    invoke-direct {v4, v3, v2}, Lh8/l0;-><init>(Lh8/l;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Lx7/b;->c()Lh8/p0;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lh8/p0;->f()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 331
    .line 332
    .line 333
    return-object v2

    .line 334
    :pswitch_14d
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 335
    .line 336
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 341
    .line 342
    new-instance v1, Lf5/h;

    .line 343
    .line 344
    invoke-direct {v1, v0}, Lf5/h;-><init>(Ljava/util/concurrent/Executor;)V

    .line 345
    .line 346
    .line 347
    return-object v1

    .line 348
    :pswitch_15b
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 349
    .line 350
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Lf5/b0;

    .line 355
    .line 356
    new-instance v1, Lf5/b;

    .line 357
    .line 358
    invoke-direct {v1, v0}, Lf5/b;-><init>(Lf5/b0;)V

    .line 359
    .line 360
    .line 361
    return-object v1

    .line 362
    :pswitch_169
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 363
    .line 364
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Lf5/b;

    .line 369
    .line 370
    iget-object v0, v0, Lf5/b;->b:Lh8/p0;

    .line 371
    .line 372
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    return-object v0

    .line 376
    :pswitch_177
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 377
    .line 378
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Landroid/app/Application;

    .line 383
    .line 384
    new-instance v1, Lf5/z;

    .line 385
    .line 386
    invoke-direct {v1, v0}, Lf5/z;-><init>(Landroid/app/Application;)V

    .line 387
    .line 388
    .line 389
    return-object v1

    .line 390
    :pswitch_185
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 391
    .line 392
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Lf5/y;

    .line 397
    .line 398
    new-instance v1, Lf5/o;

    .line 399
    .line 400
    invoke-direct {v1, v0}, Lf5/o;-><init>(Lf5/y;)V

    .line 401
    .line 402
    .line 403
    return-object v1

    .line 404
    :pswitch_193
    iget-object v0, p0, Lf5/m;->c:Lt8/a;

    .line 405
    .line 406
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Ly5/j;

    .line 411
    .line 412
    new-instance v1, Lf5/l;

    .line 413
    .line 414
    invoke-direct {v1, v0}, Lf5/l;-><init>(Ly5/j;)V

    .line 415
    .line 416
    .line 417
    return-object v1

    .line 418
    nop

    .line 419
    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_193
        :pswitch_185
        :pswitch_177
        :pswitch_169
        :pswitch_15b
        :pswitch_14d
        :pswitch_11e
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_36
        :pswitch_20
    .end packed-switch
.end method
