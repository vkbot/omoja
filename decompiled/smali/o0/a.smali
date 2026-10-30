.class public Lo0/a;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Lo0/e;


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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Lcom/example/navistart/ModernMainActivity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7f0c00b4

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v1, 0x7f0c0020

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 v2, 0x0

    .line 19
    move-object/from16 v3, p1

    .line 20
    .line 21
    move-object/from16 v4, p2

    .line 22
    .line 23
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Lo0/e;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct {v3, v4}, Lo0/e;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v0, Lo0/a;->b:Lo0/e;

    .line 37
    .line 38
    const v3, 0x7f0905f8

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-static {}, Lo0/f;->values()[Lo0/f;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    array-length v5, v4

    .line 52
    move v6, v2

    .line 53
    :goto_1
    if-ge v6, v5, :cond_f

    .line 54
    .line 55
    aget-object v7, v4, v6

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    instance-of v8, v8, Lcom/example/navistart/ModernMainActivity;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    const v8, 0x7f0c00b5

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    const v8, 0x7f0c0085

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v9, v8, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const v9, 0x7f0905f9

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Landroid/widget/Spinner;

    .line 92
    .line 93
    const v10, 0x7f0905f7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Landroid/widget/CheckBox;

    .line 101
    .line 102
    const v11, 0x7f090257

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    check-cast v11, Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    const/4 v13, 0x3

    .line 116
    const/4 v15, 0x4

    .line 117
    const/4 v2, 0x2

    .line 118
    const/4 v14, 0x1

    .line 119
    if-eqz v12, :cond_7

    .line 120
    .line 121
    if-eq v12, v14, :cond_6

    .line 122
    .line 123
    if-eq v12, v2, :cond_5

    .line 124
    .line 125
    if-eq v12, v13, :cond_4

    .line 126
    .line 127
    if-eq v12, v15, :cond_3

    .line 128
    .line 129
    const/4 v15, 0x5

    .line 130
    if-ne v12, v15, :cond_2

    .line 131
    .line 132
    const v12, 0x7f070118

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/IncompatibleClassChangeError;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_3
    const v12, 0x7f070117

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    const v12, 0x7f07011b

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const v12, 0x7f07011c

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    const v12, 0x7f070119

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const v12, 0x7f07011a

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    .line 163
    .line 164
    const v11, 0x7f090564

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    check-cast v11, Landroid/widget/TextView;

    .line 172
    .line 173
    if-eqz v11, :cond_e

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-eqz v12, :cond_d

    .line 180
    .line 181
    if-eq v12, v14, :cond_c

    .line 182
    .line 183
    if-eq v12, v2, :cond_b

    .line 184
    .line 185
    if-eq v12, v13, :cond_a

    .line 186
    .line 187
    const/4 v2, 0x4

    .line 188
    if-eq v12, v2, :cond_9

    .line 189
    .line 190
    const/4 v15, 0x5

    .line 191
    if-ne v12, v15, :cond_8

    .line 192
    .line 193
    const v2, 0x7f13018e

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    new-instance v1, Ljava/lang/IncompatibleClassChangeError;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 200
    .line 201
    .line 202
    throw v1

    .line 203
    :cond_9
    const v2, 0x7f13018d

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_a
    const v2, 0x7f130191

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_b
    const v2, 0x7f130192

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_c
    const v2, 0x7f13018f

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_d
    const v2, 0x7f130190

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    .line 224
    .line 225
    :cond_e
    iget-object v2, v0, Lo0/a;->b:Lo0/e;

    .line 226
    .line 227
    invoke-virtual {v2, v7}, Lo0/e;->a(Lo0/f;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v10, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    new-instance v11, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const/16 v12, 0x12

    .line 247
    .line 248
    new-array v12, v12, [B

    .line 249
    .line 250
    fill-array-data v12, :array_0

    .line 251
    .line 252
    .line 253
    const/16 v14, 0x8

    .line 254
    .line 255
    new-array v14, v14, [B

    .line 256
    .line 257
    fill-array-data v14, :array_1

    .line 258
    .line 259
    .line 260
    invoke-static {v12, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    invoke-virtual {v2, v9, v11}, Lj0/c;->m(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Le0/c3;

    .line 282
    .line 283
    invoke-direct {v2, v13, v0, v7}, Le0/c3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v6, v6, 0x1

    .line 293
    .line 294
    const/4 v2, 0x0

    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_f
    return-object v1

    .line 298
    nop

    .line 299
    :array_0
    .array-data 1
        0x3et
        -0x7t
        0x6ct
        -0x75t
        -0x7t
        0x21t
        -0x1dt
        -0xft
        0x16t
        -0xet
        0x7at
        -0x4et
        -0x13t
        0x3dt
        -0x19t
        -0x34t
        0x1ct
        -0x12t
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    nop

    .line 313
    :array_1
    .array-data 1
        0x79t
        -0x64t
        0x1ft
        -0x1t
        -0x74t
        0x53t
        -0x7at
        -0x55t
    .end array-data
.end method
