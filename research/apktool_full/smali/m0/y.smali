.class public Lm0/y;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0c0059

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
    const p2, 0x7f09015e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/Button;

    .line 17
    .line 18
    const p3, 0x7f090160

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p3, p0, Lm0/y;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    const p3, 0x7f090161

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object p3, p0, Lm0/y;->c:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const p3, 0x7f090163

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p3, p0, Lm0/y;->d:Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance p3, Landroidx/navigation/c;

    .line 52
    .line 53
    const/16 v0, 0xe

    .line 54
    .line 55
    invoke-direct {p3, v0, p0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lm0/y;->v()V

    .line 62
    .line 63
    .line 64
    return-object p1
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm0/y;->v()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final t(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    mul-float/2addr p1, v0

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final u()Landroid/app/admin/DevicePolicyManager;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 1
        -0x26t
        0x3at
        0x60t
        0x2dt
        0x44t
        0x6bt
        0x79t
        0x31t
        -0x2ft
        0x33t
        0x7ft
        0x27t
        0x5et
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    nop

    .line 43
    :array_1
    .array-data 1
        -0x42t
        0x5ft
        0x16t
        0x44t
        0x27t
        0xet
        0x26t
        0x41t
    .end array-data
.end method

.method public final v()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Le0/m;->j(Landroid/content/Context;)Le0/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Lm0/y;->b:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-boolean v3, v1, Le0/s;->a:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const v4, 0x7f130113

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v4, 0x7f130114

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, Le0/s;->f:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v4, v0, Lm0/y;->d:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Lm0/x;->values()[Lm0/x;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    array-length v1, v1

    .line 46
    iget-object v4, v0, Lm0/y;->d:Landroid/widget/TextView;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    const v1, 0x7f130112

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    iget-object v1, v0, Lm0/y;->d:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lm0/y;->u()Landroid/app/admin/DevicePolicyManager;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-instance v5, Landroid/content/ComponentName;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-class v7, Lcom/example/navistart/DPups;

    .line 83
    .line 84
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    iget-object v6, v0, Lm0/y;->c:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lm0/x;->values()[Lm0/x;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    array-length v7, v6

    .line 97
    const/4 v8, 0x0

    .line 98
    move v9, v8

    .line 99
    move v10, v9

    .line 100
    :goto_2
    if-ge v9, v7, :cond_e

    .line 101
    .line 102
    aget-object v11, v6, v9

    .line 103
    .line 104
    iget-object v12, v11, Lm0/x;->b:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v13, v11, Lm0/x;->b:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    const/4 v14, 0x0

    .line 113
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    invoke-virtual {v15, v12, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :catch_0
    if-eqz v4, :cond_4

    .line 122
    .line 123
    :try_start_1
    invoke-virtual {v4, v5, v12}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    goto :goto_3

    .line 132
    :catch_1
    :cond_4
    move-object v12, v14

    .line 133
    :goto_3
    if-eqz v12, :cond_d

    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-eqz v12, :cond_d

    .line 140
    .line 141
    :goto_4
    iget-object v10, v0, Lm0/y;->c:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    :try_start_2
    invoke-virtual {v4, v5, v12}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    :catch_2
    :cond_5
    new-instance v12, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    const/4 v15, 0x1

    .line 163
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    .line 165
    .line 166
    const v15, 0x7f05037f

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    .line 175
    .line 176
    const/16 v15, 0xc

    .line 177
    .line 178
    invoke-virtual {v0, v15}, Lm0/y;->t(I)I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    move/from16 v16, v3

    .line 183
    .line 184
    const/16 v3, 0xa

    .line 185
    .line 186
    move-object/from16 v17, v4

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Lm0/y;->t(I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-virtual {v0, v15}, Lm0/y;->t(I)I

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    move-object/from16 v18, v5

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Lm0/y;->t(I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-virtual {v12, v8, v4, v15, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    .line 204
    .line 205
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .line 207
    const/4 v5, -0x1

    .line 208
    const/4 v8, -0x2

    .line 209
    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lm0/y;->t(I)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/4 v15, 0x0

    .line 217
    invoke-virtual {v4, v15, v15, v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v12, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    new-instance v3, Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    iget-object v4, v11, Lm0/x;->c:Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v4, :cond_6

    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    if-eqz v15, :cond_7

    .line 241
    .line 242
    :cond_6
    move-object v4, v13

    .line 243
    :cond_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    const v4, 0x7f050381

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    const/high16 v15, 0x41800000    # 16.0f

    .line 257
    .line 258
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    const/4 v5, 0x1

    .line 266
    invoke-virtual {v3, v15, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    new-instance v3, Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    const v13, 0x7f050382

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v13}, Landroid/content/Context;->getColor(I)I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    .line 293
    .line 294
    const/high16 v13, 0x41500000    # 13.0f

    .line 295
    .line 296
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 303
    .line 304
    .line 305
    new-instance v3, Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    const v13, 0x7f13011c

    .line 311
    .line 312
    .line 313
    if-nez v14, :cond_8

    .line 314
    .line 315
    const v15, 0x7f13011b

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    invoke-virtual {v0, v13, v15}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    goto :goto_6

    .line 331
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 332
    .line 333
    .line 334
    move-result v15

    .line 335
    if-eqz v15, :cond_9

    .line 336
    .line 337
    const v15, 0x7f130118

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_9
    const v15, 0x7f130119

    .line 342
    .line 343
    .line 344
    :goto_5
    invoke-virtual {v0, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v15

    .line 348
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v15

    .line 352
    invoke-virtual {v0, v13, v15}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v13

    .line 356
    :goto_6
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    .line 365
    .line 366
    const/high16 v4, 0x41600000    # 14.0f

    .line 367
    .line 368
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    .line 370
    .line 371
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 372
    .line 373
    const/4 v13, -0x1

    .line 374
    invoke-direct {v4, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 375
    .line 376
    .line 377
    const/4 v8, 0x6

    .line 378
    invoke-virtual {v0, v8}, Lm0/y;->t(I)I

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    const/4 v15, 0x0

    .line 383
    invoke-virtual {v4, v15, v8, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 390
    .line 391
    .line 392
    new-instance v3, Landroid/widget/Button;

    .line 393
    .line 394
    invoke-direct {v3, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 395
    .line 396
    .line 397
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .line 399
    const/16 v8, 0x38

    .line 400
    .line 401
    invoke-virtual {v0, v8}, Lm0/y;->t(I)I

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    invoke-direct {v4, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 406
    .line 407
    .line 408
    const/16 v8, 0x8

    .line 409
    .line 410
    invoke-virtual {v0, v8}, Lm0/y;->t(I)I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    invoke-virtual {v4, v15, v8, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    .line 419
    .line 420
    if-eqz v16, :cond_a

    .line 421
    .line 422
    if-eqz v14, :cond_a

    .line 423
    .line 424
    move v4, v5

    .line 425
    goto :goto_7

    .line 426
    :cond_a
    move v4, v15

    .line 427
    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 428
    .line 429
    .line 430
    if-eqz v4, :cond_b

    .line 431
    .line 432
    const/high16 v4, 0x3f800000    # 1.0f

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_b
    const v4, 0x3f0ccccd    # 0.55f

    .line 436
    .line 437
    .line 438
    :goto_8
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 439
    .line 440
    .line 441
    if-eqz v14, :cond_c

    .line 442
    .line 443
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_c

    .line 448
    .line 449
    const v4, 0x7f13010e

    .line 450
    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_c
    const v4, 0x7f13010c

    .line 454
    .line 455
    .line 456
    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 457
    .line 458
    .line 459
    new-instance v4, Le0/n0;

    .line 460
    .line 461
    const/4 v8, 0x2

    .line 462
    invoke-direct {v4, v0, v11, v14, v8}, Le0/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    move v10, v5

    .line 475
    goto :goto_a

    .line 476
    :cond_d
    move/from16 v16, v3

    .line 477
    .line 478
    move-object/from16 v17, v4

    .line 479
    .line 480
    move-object/from16 v18, v5

    .line 481
    .line 482
    move v15, v8

    .line 483
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 484
    .line 485
    move v8, v15

    .line 486
    move/from16 v3, v16

    .line 487
    .line 488
    move-object/from16 v4, v17

    .line 489
    .line 490
    move-object/from16 v5, v18

    .line 491
    .line 492
    goto/16 :goto_2

    .line 493
    .line 494
    :cond_e
    const v1, 0x7f130115

    .line 495
    .line 496
    .line 497
    if-eqz v10, :cond_f

    .line 498
    .line 499
    iget-object v3, v0, Lm0/y;->d:Landroid/widget/TextView;

    .line 500
    .line 501
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_10

    .line 518
    .line 519
    iget-object v1, v0, Lm0/y;->d:Landroid/widget/TextView;

    .line 520
    .line 521
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :cond_f
    invoke-static {}, Lm0/x;->values()[Lm0/x;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    array-length v2, v2

    .line 530
    if-lez v2, :cond_10

    .line 531
    .line 532
    iget-object v2, v0, Lm0/y;->d:Landroid/widget/TextView;

    .line 533
    .line 534
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    .line 536
    .line 537
    :cond_10
    return-void
.end method
