.class public final synthetic Lm0/v2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Lm0/v2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/v2;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/v2;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 10

    .line 1
    iget p1, p0, Lm0/v2;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lm0/v2;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lm0/v2;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    packed-switch p1, :pswitch_data_12c

    .line 11
    .line 12
    .line 13
    check-cast v1, Lm7/f;

    .line 14
    .line 15
    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 16
    .line 17
    iget-object p1, v1, Lm7/f;->e:Lm7/b;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lm7/b;->a:Lcom/woha/wifim/MainWifiManadger;

    .line 22
    .line 23
    sget-object v1, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const v5, 0x7f1304fe

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const v6, 0x7f1304ff

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    new-array v5, v3, [B

    .line 68
    .line 69
    const/16 v6, -0x70

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    aput-byte v6, v5, v7

    .line 73
    .line 74
    new-array v6, v2, [B

    .line 75
    .line 76
    fill-array-data v6, :array_132

    .line 77
    .line 78
    .line 79
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const v5, 0x7f130503

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    new-instance v5, Le0/e0;

    .line 106
    .line 107
    invoke-direct {v5, v2, p1, v0}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const v1, 0x7f130330

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v1, Le0/d3;

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    invoke-direct {v1, v2}, Le0/d3;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 136
    .line 137
    .line 138
    return v3

    .line 139
    :pswitch_8a
    check-cast v1, Lm0/x2;

    .line 140
    .line 141
    check-cast v0, Ljava/io/File;

    .line 142
    .line 143
    iget-object p1, v1, Lm0/x2;->a:Lm0/c3;

    .line 144
    .line 145
    iget-boolean v1, p1, Lm0/c3;->v:Z

    .line 146
    .line 147
    if-eqz v1, :cond_96

    .line 148
    .line 149
    goto/16 :goto_12a

    .line 150
    .line 151
    :cond_96
    if-nez v1, :cond_12a

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_a0

    .line 158
    .line 159
    goto/16 :goto_12a

    .line 160
    .line 161
    :cond_a0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-nez v1, :cond_b9

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const v1, 0x7f130453

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_12a

    .line 186
    :cond_b9
    new-instance v1, Landroid/widget/EditText;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    const v4, 0x7f07018a

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const v5, 0x7f050381

    .line 206
    .line 207
    .line 208
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    const/high16 v4, 0x41900000    # 18.0f

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 231
    .line 232
    .line 233
    const/16 v4, 0x14

    .line 234
    .line 235
    invoke-virtual {p1, v4}, Lm0/c3;->z(I)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    invoke-virtual {p1, v2}, Lm0/c3;->z(I)I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    invoke-virtual {p1, v2}, Lm0/c3;->z(I)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-virtual {v1, v4, v5, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    const v5, 0x7f1402ef

    .line 257
    .line 258
    .line 259
    invoke-direct {v2, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 260
    .line 261
    .line 262
    const v4, 0x7f130455

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    new-instance v4, Lm0/y0;

    .line 274
    .line 275
    invoke-direct {v4, p1, v1, v0, v3}, Lm0/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 276
    .line 277
    .line 278
    const p1, 0x7f130450

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const v0, 0x7f13010a

    .line 286
    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 297
    .line 298
    .line 299
    :cond_12a
    :goto_12a
    return v3

    .line 300
    nop

    .line 301
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_8a
    .end packed-switch

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_132
    .array-data 1
        -0x51t
        -0x21t
        -0x3at
        0x3t
        0x2et
        0x9t
        -0x5dt
        0x57t
    .end array-data
.end method
