.class public final synthetic Lu1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lu1/d;

.field public final synthetic d:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lu1/d;Landroid/widget/EditText;I)V
    .registers 4

    .line 1
    iput p3, p0, Lu1/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/b;->c:Lu1/d;

    .line 4
    .line 5
    iput-object p2, p0, Lu1/b;->d:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget p1, p0, Lu1/b;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lu1/b;->d:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v1, p0, Lu1/b;->c:Lu1/d;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_e0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v3, 0x7

    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    fill-array-data v3, :array_e6

    .line 32
    .line 33
    .line 34
    new-array v4, v2, [B

    .line 35
    .line 36
    fill-array-data v4, :array_ee

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    array-length v3, v0

    .line 54
    if-ge p1, v3, :cond_62

    .line 55
    .line 56
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    aget-object p1, v0, p1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {v2, p1}, Lc5/h;->b(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v2, Landroid/content/Intent;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-class v3, Lcom/example/navistart/BlackActivity;

    .line 81
    .line 82
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    const/high16 v1, 0x10000000

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, v1, p1}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    goto :goto_79

    .line 99
    :cond_62
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const/16 v0, 0xa

    .line 104
    .line 105
    new-array v0, v0, [B

    .line 106
    .line 107
    fill-array-data v0, :array_f6

    .line 108
    .line 109
    .line 110
    new-array v1, v2, [B

    .line 111
    .line 112
    fill-array-data v1, :array_100

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p1, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :goto_79
    return-void

    .line 123
    :pswitch_7a
    new-instance p1, Landroid/content/Intent;

    .line 124
    .line 125
    const/16 v3, 0x20

    .line 126
    .line 127
    new-array v3, v3, [B

    .line 128
    .line 129
    fill-array-data v3, :array_108

    .line 130
    .line 131
    .line 132
    new-array v4, v2, [B

    .line 133
    .line 134
    fill-array-data v4, :array_11c

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-array v3, v2, [B

    .line 145
    .line 146
    fill-array-data v3, :array_124

    .line 147
    .line 148
    .line 149
    new-array v4, v2, [B

    .line 150
    .line 151
    fill-array-data v4, :array_12c

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const/16 v4, 0x2723

    .line 159
    .line 160
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    const/16 v3, 0xb

    .line 164
    .line 165
    new-array v3, v3, [B

    .line 166
    .line 167
    fill-array-data v3, :array_134

    .line 168
    .line 169
    .line 170
    new-array v2, v2, [B

    .line 171
    .line 172
    fill-array-data v2, :array_13e

    .line 173
    .line 174
    .line 175
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1, p1}, Ly5/k;->r(Landroid/content/Context;Landroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/ProLanProxy;->DisplayAreaOpen(I)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_7a
    .end packed-switch

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_e6
    .array-data 1
        0x24t
        0x10t
        0x1at
        -0x78t
        0x2bt
        0x7et
        0x7t
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_ee
    .array-data 1
        0x40t
        0x79t
        0x69t
        -0x8t
        0x47t
        0x1ft
        0x7et
        0x30t
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_f6
    .array-data 1
        -0x42t
        0x38t
        -0x30t
        0xbt
        0x3dt
        -0x77t
        0x4bt
        -0x1bt
        -0x6ft
        0x2et
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    nop

    .line 257
    :array_100
    .array-data 1
        -0x10t
        0x57t
        -0x10t
        0x4ft
        0x54t
        -0x6t
        0x3bt
        -0x77t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_108
    .array-data 1
        0x38t
        -0x2bt
        -0x17t
        0x74t
        0x7t
        -0x30t
        -0x20t
        -0x3t
        0x26t
        -0x2dt
        -0x17t
        0x7at
        0x7t
        -0x2bt
        -0x9t
        -0x1at
        0x3dt
        -0x21t
        -0x1t
        0x69t
        0x6t
        -0x30t
        -0xet
        -0x9t
        0x38t
        -0x2dt
        -0x17t
        0x64t
        0x1at
        -0x2ct
        -0x8t
        -0x10t
    .end array-data

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
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_11c
    .array-data 1
        0x79t
        -0x80t
        -0x43t
        0x3bt
        0x49t
        -0x6ft
        -0x4at
        -0x4ct
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
        -0x2ft
        -0x6at
        -0x38t
        -0x15t
        -0x15t
        0x31t
        -0x5t
        0x24t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_12c
    .array-data 1
        -0x66t
        -0x2dt
        -0x6ft
        -0x4ct
        -0x41t
        0x68t
        -0x55t
        0x61t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_134
    .array-data 1
        0x67t
        -0x6bt
        0x63t
        0x36t
        0x3dt
        -0x8t
        -0x2ct
        -0x2bt
        0x63t
        -0x67t
        0x72t
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_13e
    .array-data 1
        0x22t
        -0x33t
        0x37t
        0x64t
        0x7ct
        -0x59t
        -0x79t
        -0x7ft
    .end array-data
.end method
