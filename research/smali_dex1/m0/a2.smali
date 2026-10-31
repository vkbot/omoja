.class public final synthetic Lm0/a2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/c2;


# direct methods
.method public synthetic constructor <init>(Lm0/c2;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm0/a2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/a2;->c:Lm0/c2;

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
    .registers 7

    .line 1
    iget p1, p0, Lm0/a2;->b:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lm0/a2;->c:Lm0/c2;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_10a

    .line 9
    .line 10
    .line 11
    sget-object p1, Lm0/c2;->i:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_114

    .line 21
    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_11c

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lm0/i1;->x([Ljava/lang/String;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-class v1, Lm0/i1;

    .line 41
    .line 42
    invoke-static {p1, v1, v0}, Lcom/example/navistart/W;->u(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2d
    iget-object p1, v2, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v0, v2, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ltz v0, :cond_67

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-lt v0, v1, :cond_3e

    .line 61
    .line 62
    goto :goto_67

    .line 63
    :cond_3e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Lm0/c2;->u(Ljava/lang/String;)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_4b

    .line 74
    .line 75
    goto :goto_67

    .line 76
    :cond_4b
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Lm0/c2;->j:Ljava/lang/String;

    .line 81
    .line 82
    sget-object v2, Lm0/o0;->c:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v2, Landroid/os/Bundle;

    .line 85
    .line 86
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object v3, Lm0/o0;->c:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lm0/o0;->d:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-class p1, Lm0/o0;

    .line 100
    .line 101
    invoke-static {v0, p1, v2}, Lcom/example/navistart/W;->t(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    return-void

    .line 105
    :pswitch_68
    iget-object p1, v2, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 106
    .line 107
    iget-object v1, v2, Lm0/c2;->b:Landroid/widget/Spinner;

    .line 108
    .line 109
    if-nez v1, :cond_6f

    .line 110
    .line 111
    goto :goto_c0

    .line 112
    :cond_6f
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ltz v1, :cond_c0

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-lt v1, v3, :cond_7c

    .line 123
    .line 124
    goto :goto_c0

    .line 125
    :cond_7c
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Ljava/lang/String;

    .line 130
    .line 131
    sget-object v1, Lm0/c2;->k:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_8b

    .line 138
    .line 139
    goto :goto_c0

    .line 140
    :cond_8b
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 141
    .line 142
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    const v3, 0x7f130133

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const v3, 0x7f130132

    .line 157
    .line 158
    .line 159
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const/high16 v3, 0x1040000

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    new-instance v3, Le0/e0;

    .line 179
    .line 180
    invoke-direct {v3, v0, v2, p1}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    const p1, 0x7f13012f

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 191
    .line 192
    .line 193
    :cond_c0
    :goto_c0
    return-void

    .line 194
    :pswitch_c1
    sget-object p1, Lm0/c2;->i:Ljava/lang/String;

    .line 195
    .line 196
    new-instance p1, Landroid/content/Intent;

    .line 197
    .line 198
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-class v4, Lcom/woha/appmanag/FilePickerActivity;

    .line 203
    .line 204
    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .line 206
    .line 207
    const/16 v3, 0xe

    .line 208
    .line 209
    new-array v3, v3, [B

    .line 210
    .line 211
    fill-array-data v3, :array_124

    .line 212
    .line 213
    .line 214
    new-array v4, v1, [B

    .line 215
    .line 216
    fill-array-data v4, :array_130

    .line 217
    .line 218
    .line 219
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    new-array v0, v0, [B

    .line 224
    .line 225
    fill-array-data v0, :array_138

    .line 226
    .line 227
    .line 228
    new-array v4, v1, [B

    .line 229
    .line 230
    fill-array-data v4, :array_13e

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    const/16 v0, 0x18

    .line 241
    .line 242
    new-array v0, v0, [B

    .line 243
    .line 244
    fill-array-data v0, :array_146

    .line 245
    .line 246
    .line 247
    new-array v1, v1, [B

    .line 248
    .line 249
    fill-array-data v1, :array_156

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/4 v1, 0x1

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    const/16 v0, 0x65

    .line 261
    .line 262
    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    nop

    .line 267
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_68
        :pswitch_2d
    .end packed-switch

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
    :array_114
    .array-data 1
        0x63t
        -0x3ct
        0x60t
        0x48t
        0x3dt
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    nop

    .line 285
    :array_11c
    .array-data 1
        0x1t
        -0x55t
        0x1t
        0x3at
        0x59t
        -0x27t
        0x5bt
        0x2bt
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_124
    .array-data 1
        -0x7dt
        -0x2dt
        -0x45t
        -0x35t
        0x23t
        0x48t
        -0x6ct
        -0x5dt
        -0x80t
        -0x2ct
        -0x5ct
        -0x39t
        0x13t
        0x43t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    nop

    .line 305
    :array_130
    .array-data 1
        -0x1bt
        -0x46t
        -0x29t
        -0x52t
        0x7ct
        0x2dt
        -0x14t
        -0x29t
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_138
    .array-data 1
        -0xat
        0x56t
        0x73t
        -0x20t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_13e
    .array-data 1
        -0x28t
        0x2ct
        0x1at
        -0x70t
        -0x19t
        0x71t
        -0x75t
        -0x3ft
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_146
    .array-data 1
        -0x5ct
        -0x3ct
        0x7ct
        -0x5bt
        0x18t
        -0x55t
        0x5bt
        -0x25t
        -0x59t
        -0x3dt
        0x63t
        -0x57t
        0x28t
        -0x60t
        0x7ct
        -0x3et
        -0x53t
        -0x37t
        0x75t
        -0x61t
        0x34t
        -0x55t
        0x4dt
        -0x35t
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
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
    :array_156
    .array-data 1
        -0x3et
        -0x53t
        0x10t
        -0x40t
        0x47t
        -0x32t
        0x23t
        -0x51t
    .end array-data
.end method
