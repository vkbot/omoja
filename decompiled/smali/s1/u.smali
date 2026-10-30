.class public final synthetic Ls1/u;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/v;


# direct methods
.method public synthetic constructor <init>(Ls1/v;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/u;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/u;->c:Ls1/v;

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
    .locals 6

    .line 1
    iget p1, p0, Ls1/u;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Ls1/u;->c:Ls1/v;

    .line 4
    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object p1, Ls1/v;->f:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-class v4, Lcom/woha/appmanag/FilePickerActivity;

    .line 21
    .line 22
    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_0

    .line 28
    .line 29
    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    fill-array-data v3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v3, 0x4

    .line 40
    new-array v3, v3, [B

    .line 41
    .line 42
    fill-array-data v3, :array_2

    .line 43
    .line 44
    .line 45
    new-array v4, v2, [B

    .line 46
    .line 47
    fill-array-data v4, :array_3

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x18

    .line 58
    .line 59
    new-array v1, v1, [B

    .line 60
    .line 61
    fill-array-data v1, :array_4

    .line 62
    .line 63
    .line 64
    new-array v2, v2, [B

    .line 65
    .line 66
    fill-array-data v2, :array_5

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const v1, 0x18dd5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_0
    sget-object p1, Ls1/v;->f:Ljava/lang/String;

    .line 85
    .line 86
    new-instance p1, Landroid/content/Intent;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-class v4, Lcom/example/navistart/W;

    .line 93
    .line 94
    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    const/16 v3, 0x11

    .line 98
    .line 99
    new-array v3, v3, [B

    .line 100
    .line 101
    fill-array-data v3, :array_6

    .line 102
    .line 103
    .line 104
    new-array v4, v2, [B

    .line 105
    .line 106
    fill-array-data v4, :array_7

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-array v4, v1, [B

    .line 114
    .line 115
    fill-array-data v4, :array_8

    .line 116
    .line 117
    .line 118
    new-array v5, v2, [B

    .line 119
    .line 120
    fill-array-data v5, :array_9

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    new-array v1, v1, [B

    .line 131
    .line 132
    fill-array-data v1, :array_a

    .line 133
    .line 134
    .line 135
    new-array v3, v2, [B

    .line 136
    .line 137
    fill-array-data v3, :array_b

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-class v3, Lm0/i1;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    const/16 v1, 0xd

    .line 154
    .line 155
    new-array v1, v1, [B

    .line 156
    .line 157
    fill-array-data v1, :array_c

    .line 158
    .line 159
    .line 160
    new-array v2, v2, [B

    .line 161
    .line 162
    fill-array-data v2, :array_d

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    sget-object v2, Lm0/i1;->l:Ljava/lang/String;

    .line 170
    .line 171
    filled-new-array {v2}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2}, Lm0/i1;->x([Ljava/lang/String;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    sget-object v3, Lm0/i1;->k:Ljava/lang/String;

    .line 180
    .line 181
    sget-object v4, Lm0/i1;->o:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    const/high16 v1, 0x8000000

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_0
    .array-data 1
        0x59t
        -0xct
        -0x54t
        0x22t
        -0x74t
        -0x11t
        -0x6ft
        -0x48t
        0x5at
        -0xdt
        -0x4dt
        0x2et
        -0x44t
        -0x1ct
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_1
    .array-data 1
        0x3ft
        -0x63t
        -0x40t
        0x47t
        -0x2dt
        -0x76t
        -0x17t
        -0x34t
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_2
    .array-data 1
        0x1et
        0x71t
        0xft
        0x7dt
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_3
    .array-data 1
        0x30t
        0xbt
        0x66t
        0xdt
        0x70t
        -0x73t
        -0x6bt
        -0x27t
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_4
    .array-data 1
        0x2et
        -0x49t
        0x38t
        0x6ft
        0x5at
        -0x7dt
        -0x4bt
        0x8t
        0x2dt
        -0x50t
        0x27t
        0x63t
        0x6at
        -0x78t
        -0x6et
        0x11t
        0x27t
        -0x46t
        0x31t
        0x55t
        0x76t
        -0x7dt
        -0x5dt
        0x18t
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_5
    .array-data 1
        0x48t
        -0x22t
        0x54t
        0xat
        0x5t
        -0x1at
        -0x33t
        0x7ct
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_6
    .array-data 1
        0x45t
        0x69t
        -0x3bt
        -0x5dt
        -0x5ft
        0xft
        0x11t
        0x71t
        0x7ct
        0x49t
        -0xft
        -0x76t
        -0x6dt
        0x3et
        0x26t
        0x55t
        0x66t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    nop

    .line 277
    :array_7
    .array-data 1
        0x23t
        0x1bt
        -0x5ct
        -0x3ct
        -0x34t
        0x6at
        0x7ft
        0x5t
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_8
    .array-data 1
        -0x3dt
        0x26t
        -0x67t
        -0x6et
        0x7at
        -0x41t
        -0x22t
        -0xft
        -0x22t
        0x34t
        -0x78t
        -0x68t
        0x70t
        -0x41t
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    nop

    .line 297
    :array_9
    .array-data 1
        -0x6ft
        0x73t
        -0x29t
        -0x33t
        0x3et
        -0xat
        -0x61t
        -0x43t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_a
    .array-data 1
        -0x7ct
        0x70t
        -0x74t
        -0x74t
        0x75t
        0x7bt
        0x3ct
        0x5at
        -0x43t
        0x61t
        -0x7ft
        -0x76t
        0x6bt
        0x6dt
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
    nop

    .line 317
    :array_b
    .array-data 1
        -0x1et
        0x2t
        -0x13t
        -0x15t
        0x18t
        0x1et
        0x52t
        0x2et
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_c
    .array-data 1
        0x2at
        -0x37t
        0x2et
        -0x27t
        -0x7dt
        -0x21t
        0x77t
        0x30t
        0x13t
        -0x26t
        0x3dt
        -0x27t
        -0x63t
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
    :array_d
    .array-data 1
        0x4ct
        -0x45t
        0x4ft
        -0x42t
        -0x12t
        -0x46t
        0x19t
        0x44t
    .end array-data
.end method
