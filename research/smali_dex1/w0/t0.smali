.class public final synthetic Lw0/t0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/v0;


# direct methods
.method public synthetic constructor <init>(Lw0/v0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lw0/t0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/t0;->c:Lw0/v0;

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
    iget p1, p0, Lw0/t0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lw0/t0;->c:Lw0/v0;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_12e

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {}, Lw0/k1;->values()[Lw0/k1;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-ltz p1, :cond_1a

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-ge p1, v3, :cond_1a

    .line 23
    .line 24
    aget-object p1, v2, p1

    .line 25
    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    if-nez p1, :cond_1e

    .line 29
    .line 30
    goto :goto_50

    .line 31
    :cond_1e
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, v1, Lw0/v0;->h:Landroid/widget/Button;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v1, Lw0/v0;->i:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v4, 0x7f1304d2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v1, Lw0/v0;->m:Ljava/util/concurrent/ExecutorService;

    .line 70
    .line 71
    new-instance v3, Lb1/n;

    .line 72
    .line 73
    const/16 v4, 0xf

    .line 74
    .line 75
    invoke-direct {v3, v1, v2, p1, v4}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    :goto_50
    return-void

    .line 82
    :pswitch_51
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v2, v1, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const v3, 0x7f0903cf

    .line 97
    .line 98
    .line 99
    if-ne v2, v3, :cond_6d

    .line 100
    .line 101
    sget-object v0, Lw0/z;->b:Lw0/z;

    .line 102
    .line 103
    invoke-static {p1, v0}, Lw0/a0;->h(Landroid/content/Context;Lw0/z;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lw0/v0;->u()V

    .line 107
    .line 108
    .line 109
    goto :goto_ad

    .line 110
    :cond_6d
    iget-object v2, v1, Lw0/v0;->j:Landroid/widget/RadioGroup;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const v3, 0x7f0903ce

    .line 117
    .line 118
    .line 119
    if-ne v2, v3, :cond_7b

    .line 120
    .line 121
    sget-object v2, Lw0/z;->d:Lw0/z;

    .line 122
    .line 123
    goto :goto_7d

    .line 124
    :cond_7b
    sget-object v2, Lw0/z;->c:Lw0/z;

    .line 125
    .line 126
    :goto_7d
    invoke-static {p1}, Lw0/a;->f(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_8a

    .line 131
    .line 132
    invoke-static {p1, v2}, Lw0/a0;->h(Landroid/content/Context;Lw0/z;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lw0/v0;->u()V

    .line 136
    .line 137
    .line 138
    goto :goto_ad

    .line 139
    :cond_8a
    invoke-virtual {v1, v0}, Lw0/v0;->t(Z)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v1, Lw0/v0;->l:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const v4, 0x7f1304ad

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v1, Lw0/v0;->m:Ljava/util/concurrent/ExecutorService;

    .line 163
    .line 164
    new-instance v3, Lb1/n;

    .line 165
    .line 166
    const/16 v4, 0x10

    .line 167
    .line 168
    invoke-direct {v3, v1, p1, v2, v4}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    :goto_ad
    return-void

    .line 175
    :pswitch_ae
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v0, v1, Lw0/v0;->e:Landroid/widget/EditText;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    sget-object v2, Lj0/c;->d:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p1, v2, v0}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 205
    .line 206
    .line 207
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iget-object v0, v1, Lw0/v0;->d:Ljava/util/ArrayList;

    .line 212
    .line 213
    sget-object v2, Lj0/c;->e:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v0}, Lj0/c;->l(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const/16 v0, 0x12

    .line 226
    .line 227
    new-array v0, v0, [B

    .line 228
    .line 229
    fill-array-data v0, :array_138

    .line 230
    .line 231
    .line 232
    const/16 v2, 0x8

    .line 233
    .line 234
    new-array v2, v2, [B

    .line 235
    .line 236
    fill-array-data v2, :array_146

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-boolean v2, v1, Lw0/v0;->f:Z

    .line 244
    .line 245
    invoke-virtual {p1, v0, v2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {p1}, Lcom/example/navistart/Si;->a(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, Ll0/a;

    .line 260
    .line 261
    if-eqz p1, :cond_109

    .line 262
    .line 263
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 264
    .line 265
    .line 266
    :cond_109
    return-void

    .line 267
    :pswitch_10a
    iget-object p1, v1, Lw0/v0;->d:Ljava/util/ArrayList;

    .line 268
    .line 269
    new-instance v0, Lw0/o0;

    .line 270
    .line 271
    sget-object v2, Ln0/d;->e:Ln0/d;

    .line 272
    .line 273
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-static {v2, v3}, Lj0/e;->c(Ln0/d;Landroid/content/Context;)Lj0/e;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const-string v3, ""

    .line 282
    .line 283
    const/4 v4, 0x1

    .line 284
    invoke-direct {v0, v3, v2, v4, v4}, Lw0/o0;-><init>(Ljava/lang/String;Lj0/e;ZZ)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    iget-object p1, v1, Lw0/v0;->c:Lw0/q0;

    .line 291
    .line 292
    iget-object v0, v1, Lw0/v0;->d:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    sub-int/2addr v0, v4

    .line 299
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_10a
        :pswitch_ae
        :pswitch_51
    .end packed-switch

    .line 304
    .line 305
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
        0x1dt
        -0x49t
        -0x46t
        0x75t
        -0x7bt
        0x62t
        -0x71t
        0x13t
        0x18t
        -0x5at
        -0x59t
        0x4ft
        -0x45t
        0x7at
        -0x74t
        0x25t
        0x3dt
        -0x70t
    .end array-data

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
    .line 325
    .line 326
    nop

    .line 327
    :array_146
    .array-data 1
        0x6et
        -0x39t
        -0x2dt
        0x2at
        -0x1ct
        0x9t
        -0x5t
        0x7at
    .end array-data
.end method
