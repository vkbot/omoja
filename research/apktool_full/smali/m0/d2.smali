.class public final synthetic Lm0/d2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/e2;


# direct methods
.method public synthetic constructor <init>(Lm0/e2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/d2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/d2;->c:Lm0/e2;

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
    .locals 5

    .line 1
    iget p1, p0, Lm0/d2;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lm0/d2;->c:Lm0/e2;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lm0/e2;->j:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lm0/i1;->x([Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-class v1, Lm0/i1;

    .line 40
    .line 41
    invoke-static {p1, v1, v0}, Lcom/example/navistart/W;->u(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    iget-object p1, v0, Lm0/e2;->g:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v2, v0, Lm0/e2;->b:Landroid/widget/Spinner;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-lt v2, v3, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lm0/e2;->u(Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v2, Lm0/o0;->c:Ljava/lang/String;

    .line 80
    .line 81
    const/16 v2, 0xf

    .line 82
    .line 83
    new-array v2, v2, [B

    .line 84
    .line 85
    fill-array-data v2, :array_2

    .line 86
    .line 87
    .line 88
    new-array v1, v1, [B

    .line 89
    .line 90
    fill-array-data v1, :array_3

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v3, Lm0/o0;->c:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lm0/o0;->d:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-class p1, Lm0/o0;

    .line 113
    .line 114
    invoke-static {v0, p1, v2}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_0
    return-void

    .line 118
    :pswitch_1
    iget-object p1, v0, Lm0/e2;->g:Ljava/util/ArrayList;

    .line 119
    .line 120
    iget-object v1, v0, Lm0/e2;->b:Landroid/widget/Spinner;

    .line 121
    .line 122
    if-nez v1, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-ltz v1, :cond_6

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-lt v1, v2, :cond_4

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Ljava/lang/String;

    .line 143
    .line 144
    sget-object v1, Lm0/e2;->l:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    const v2, 0x7f130133

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const v2, 0x7f130132

    .line 170
    .line 171
    .line 172
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const/high16 v2, 0x1040000

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v2, Le0/e0;

    .line 192
    .line 193
    const/4 v3, 0x5

    .line 194
    invoke-direct {v2, v3, v0, p1}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    const p1, 0x7f13012f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 205
    .line 206
    .line 207
    :cond_6
    :goto_1
    return-void

    .line 208
    :pswitch_2
    sget-object p1, Lm0/e2;->j:Ljava/lang/String;

    .line 209
    .line 210
    new-instance p1, Landroid/content/Intent;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const-class v3, Lcom/woha/appmanag/FilePickerActivity;

    .line 217
    .line 218
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .line 220
    .line 221
    const/16 v2, 0xe

    .line 222
    .line 223
    new-array v2, v2, [B

    .line 224
    .line 225
    fill-array-data v2, :array_4

    .line 226
    .line 227
    .line 228
    new-array v3, v1, [B

    .line 229
    .line 230
    fill-array-data v3, :array_5

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    const/4 v3, 0x4

    .line 238
    new-array v3, v3, [B

    .line 239
    .line 240
    fill-array-data v3, :array_6

    .line 241
    .line 242
    .line 243
    new-array v4, v1, [B

    .line 244
    .line 245
    fill-array-data v4, :array_7

    .line 246
    .line 247
    .line 248
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    const/16 v2, 0x18

    .line 256
    .line 257
    new-array v2, v2, [B

    .line 258
    .line 259
    fill-array-data v2, :array_8

    .line 260
    .line 261
    .line 262
    new-array v1, v1, [B

    .line 263
    .line 264
    fill-array-data v1, :array_9

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    const/16 v1, 0x65

    .line 276
    .line 277
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :array_0
    .array-data 1
        -0x1dt
        -0x2ft
        0x61t
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_1
    .array-data 1
        -0x75t
        -0x5ct
        0x5t
        -0x58t
        0x5dt
        -0x3ft
        0x38t
        -0x9t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_2
    .array-data 1
        0x3et
        0x13t
        0x6ft
        0x24t
        0x3at
        0x4bt
        -0x7ct
        -0x5ft
        0x19t
        0xft
        0x5bt
        0x35t
        0x10t
        0x4et
        -0x4et
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
    :array_3
    .array-data 1
        0x73t
        0x6at
        0x38t
        0x41t
        0x58t
        0x1bt
        -0xat
        -0x32t
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_4
    .array-data 1
        -0x2at
        -0xbt
        -0x12t
        0x4t
        -0x37t
        -0x50t
        0x65t
        0xct
        -0x2bt
        -0xet
        -0xft
        0x8t
        -0x7t
        -0x45t
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    nop

    .line 337
    :array_5
    .array-data 1
        -0x50t
        -0x64t
        -0x7et
        0x61t
        -0x6at
        -0x2bt
        0x1dt
        0x78t
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_6
    .array-data 1
        -0x65t
        -0x37t
        -0x68t
        -0x74t
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_7
    .array-data 1
        -0x4bt
        -0x4dt
        -0xft
        -0x4t
        -0x5at
        -0x50t
        -0x5dt
        0x10t
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_8
    .array-data 1
        0x0t
        0x67t
        0x3ct
        -0x4bt
        -0x1ct
        -0x29t
        -0x5ct
        -0x2ft
        0x3t
        0x60t
        0x23t
        -0x47t
        -0x2ct
        -0x24t
        -0x7dt
        -0x38t
        0x9t
        0x6at
        0x35t
        -0x71t
        -0x38t
        -0x29t
        -0x4et
        -0x3ft
    .end array-data

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
    .line 373
    .line 374
    .line 375
    :array_9
    .array-data 1
        0x66t
        0xet
        0x50t
        -0x30t
        -0x45t
        -0x4et
        -0x24t
        -0x5bt
    .end array-data
.end method
