.class public final Ls1/u0;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ScrollView;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/LinearLayout;

.field public f:Z

.field public g:I

.field public h:I

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public k:Ljava/util/concurrent/ExecutorService;

.field public l:Landroid/view/WindowManager;

.field public m:Landroid/view/WindowManager$LayoutParams;

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:Landroid/widget/GridLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ls1/u0;->u:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x1e

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_2

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 1
        -0x1ct
        -0x31t
        0x7ft
        0x59t
        -0x22t
        -0x53t
        -0xdt
        -0x7t
        -0x27t
        -0x3et
        0x7et
        0x49t
        -0x1bt
        -0x5ft
        -0x40t
        -0x9t
        -0x2et
        -0x2et
        0x4et
        0x4ct
        -0x29t
        -0x55t
        -0x3ft
        -0x2t
        -0x3dt
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    nop

    .line 55
    :array_1
    .array-data 1
        -0x49t
        -0x5at
        0x11t
        0x3et
        -0x4et
        -0x38t
        -0x5ct
        -0x70t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_2
    .array-data 1
        0x46t
        -0x1bt
        0x1t
        0x5et
        0x59t
        0x40t
        0x45t
        -0x1ft
        0x73t
        -0x26t
        0x8t
        0x7bt
        0x46t
        0x4dt
        0x41t
        -0x1ft
        0x74t
        -0x2at
        0x3et
        0x60t
        0x5et
        0x43t
        0x4et
        -0x1ft
        0x50t
        -0x20t
        0x3t
        0x6dt
        0x5ft
        0x53t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    nop

    .line 83
    :array_3
    .array-data 1
        0x7t
        -0x77t
        0x6dt
        0x9t
        0x30t
        0x24t
        0x22t
        -0x7ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls1/u0;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ls1/u0;->j:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, p0, Ls1/u0;->r:I

    .line 20
    .line 21
    const/16 v1, 0x32

    .line 22
    .line 23
    iput v1, p0, Ls1/u0;->s:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Ls1/u0;->b:Landroid/widget/ImageView;

    .line 38
    .line 39
    const v3, 0x7f070132

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    const/16 v3, 0x12

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Ls1/u0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {p0, v3}, Ls1/u0;->e(I)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {p0, v3}, Ls1/u0;->e(I)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {p0, v3}, Ls1/u0;->e(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    const/16 v3, 0x80

    .line 67
    .line 68
    new-array v3, v3, [B

    .line 69
    .line 70
    fill-array-data v3, :array_0

    .line 71
    .line 72
    .line 73
    const/16 v4, 0x8

    .line 74
    .line 75
    new-array v5, v4, [B

    .line 76
    .line 77
    fill-array-data v5, :array_1

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .line 93
    const/16 v6, 0x50

    .line 94
    .line 95
    invoke-virtual {p0, v6}, Ls1/u0;->e(I)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {p0, v6}, Ls1/u0;->e(I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 107
    .line 108
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Ls1/u0;->e:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .line 126
    const/4 v6, -0x1

    .line 127
    const/4 v7, -0x2

    .line 128
    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    iput-object v2, p0, Ls1/u0;->d:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    .line 143
    .line 144
    new-instance v5, Landroid/widget/ScrollView;

    .line 145
    .line 146
    invoke-direct {v5, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    iput-object v5, p0, Ls1/u0;->c:Landroid/widget/ScrollView;

    .line 150
    .line 151
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {v5, v3, v3, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .line 169
    const/high16 v2, 0x3f800000    # 1.0f

    .line 170
    .line 171
    invoke-direct {p1, v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Ls1/u0;->c()V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const/16 v2, 0x19

    .line 185
    .line 186
    new-array v2, v2, [B

    .line 187
    .line 188
    fill-array-data v2, :array_2

    .line 189
    .line 190
    .line 191
    new-array v3, v4, [B

    .line 192
    .line 193
    fill-array-data v3, :array_3

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const-string v3, ""

    .line 201
    .line 202
    invoke-virtual {p1, v2, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_0

    .line 211
    .line 212
    new-array v1, v1, [B

    .line 213
    .line 214
    const/16 v2, 0x49

    .line 215
    .line 216
    const/4 v3, 0x0

    .line 217
    aput-byte v2, v1, v3

    .line 218
    .line 219
    new-array v2, v4, [B

    .line 220
    .line 221
    fill-array-data v2, :array_4

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .line 238
    .line 239
    :cond_0
    return-void

    .line 240
    nop

    .line 241
    :array_0
    .array-data 1
        0x69t
        -0x6dt
        -0x70t
        -0x32t
        0x4dt
        0x45t
        -0x5ct
        -0x67t
        -0x67t
        -0x23t
        -0x1t
        -0x5bt
        0x1dt
        0x28t
        -0x34t
        -0x7t
        0x2t
        -0x23t
        -0x2t
        -0x5ct
        0x2bt
        0x28t
        -0x3ft
        -0x7t
        0x4t
        -0x23t
        -0x8t
        -0x5ct
        0x24t
        -0x2at
        0x54t
        -0x7t
        0x24t
        -0x23t
        -0x10t
        -0x5ct
        0x2bt
        0x28t
        -0x38t
        -0x7t
        0x1t
        -0x24t
        -0x3et
        -0x5ct
        0x28t
        -0x2ct
        0x54t
        -0x8t
        0x3et
        -0x24t
        -0x3et
        -0x5ct
        0x23t
        0x28t
        -0x3bt
        -0x8t
        0x32t
        0x2dt
        -0x6ft
        -0xct
        0x4dt
        0x48t
        -0x5bt
        -0x58t
        0x69t
        -0x49t
        -0x6ft
        -0xct
        0x4ct
        0x73t
        -0x5bt
        -0x55t
        0x68t
        -0x7ft
        0x7bt
        0x54t
        0x4ct
        0x7bt
        -0x5ct
        -0x63t
        0x69t
        -0x48t
        -0x6ft
        -0xct
        0x4dt
        0x4et
        -0x5ct
        -0x6ft
        0x69t
        -0x41t
        -0x70t
        -0x3ct
        0x4dt
        0x41t
        -0x5bt
        -0x55t
        0x69t
        -0x48t
        0x60t
        -0x5ct
        0x29t
        0x28t
        -0x31t
        -0x8t
        0x36t
        0x2dt
        -0x70t
        -0x35t
        0x4dt
        0x4dt
        -0x5bt
        -0x57t
        0x69t
        -0x48t
        -0x70t
        -0x38t
        0x4dt
        0x4dt
        -0x5bt
        -0x60t
        0x69t
        -0x48t
        -0x70t
        -0x37t
        0x4dt
        0x40t
        -0x5bt
        -0x5at
    .end array-data

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
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
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
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
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
    .line 292
    .line 293
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
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_1
    .array-data 1
        -0x47t
        0xdt
        0x40t
        0x74t
        -0x63t
        -0x8t
        0x74t
        0x29t
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_2
    .array-data 1
        -0x41t
        -0xat
        -0x45t
        -0x3t
        0x5bt
        0x72t
        -0x16t
        -0x25t
        -0x7et
        -0x5t
        -0x46t
        -0x13t
        0x60t
        0x7et
        -0x27t
        -0x2bt
        -0x77t
        -0x15t
        -0x76t
        -0x18t
        0x52t
        0x74t
        -0x28t
        -0x24t
        -0x68t
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    nop

    .line 335
    :array_3
    .array-data 1
        -0x14t
        -0x61t
        -0x2bt
        -0x66t
        0x37t
        0x17t
        -0x43t
        -0x4et
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_4
    .array-data 1
        0x72t
        -0x1dt
        -0x25t
        0x3bt
        -0x2et
        0x51t
        0x61t
        -0x11t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x4

    .line 46
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/16 v6, 0x8

    .line 51
    .line 52
    invoke-virtual {p0, v6}, Ls1/u0;->e(I)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {p0, v6}, Ls1/u0;->e(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 84
    .line 85
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    .line 90
    const/16 v1, 0x40

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Ls1/u0;->d(Ljava/lang/String;)Landroid/widget/TextView;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Ls1/r0;

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    invoke-direct {v0, p0, p1, v1}, Ls1/r0;-><init>(Ls1/u0;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Ls1/u0;->d:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :catch_0
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x23

    .line 4
    .line 5
    new-array p1, p1, [B

    .line 6
    .line 7
    fill-array-data p1, :array_0

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    return-object p1

    .line 44
    nop

    .line 45
    :array_0
    .array-data 1
        -0x39t
        0x3ct
        -0x40t
        -0x68t
        -0x29t
        -0x5at
        0x4ft
        -0x21t
        -0x39t
        0x1et
        -0x40t
        -0x6ft
        -0x2at
        -0x65t
        -0x42t
        -0x71t
        -0x58t
        0x7ft
        -0x6ft
        -0x3dt
        -0x41t
        -0x39t
        0x25t
        -0x71t
        -0x57t
        0x7et
        -0x59t
        -0x3dt
        -0x4et
        -0x39t
        0x23t
        -0x71t
        -0x51t
        0x7et
        -0x5ct
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 1
        0x17t
        -0x52t
        0x11t
        0x13t
        0x7t
        0x17t
        -0x62t
        0x5ft
    .end array-data
.end method

.method public final c()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 4
    .line 5
    const v2, -0xbc7118

    .line 6
    .line 7
    .line 8
    const v3, -0xcdb24b

    .line 9
    .line 10
    .line 11
    filled-new-array {v2, v3}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v2, -0x6e3701

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Ls1/u0;->b:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Ls1/u0;->n:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44
    .line 45
    .line 46
    const v1, -0xe7dace

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x18

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    int-to-float v1, v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-boolean v0, p0, Ls1/u0;->n:Z

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 78
    .line 79
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final d(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x41400000    # 12.0f

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x11

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    const/4 v2, -0x2

    .line 48
    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v1, 0x3

    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v0

    .line 32
    :cond_2
    :goto_0
    new-instance p1, Le0/e;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {p1, p0, v1}, Le0/e;-><init>(Ls1/u0;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public final e(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final f(Le4/o;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ls1/u0;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Ls1/u0;->f:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ls1/u0;->l()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Ls1/u0;->o:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Ls1/u0;->h()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    .line 31
    invoke-virtual {p0}, Ls1/u0;->o()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v2, 0x68

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ls1/u0;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    div-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    iget-object v0, p0, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 53
    .line 54
    new-instance v2, Landroidx/activity/f;

    .line 55
    .line 56
    const/16 v3, 0xb

    .line 57
    .line 58
    invoke-direct {v2, p0, p1, v1, v3}, Landroidx/activity/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls1/u0;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Ls1/u0;->f:Z

    .line 8
    .line 9
    iget v1, p0, Ls1/u0;->p:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput v1, p0, Ls1/u0;->p:I

    .line 14
    .line 15
    iget-object v1, p0, Ls1/u0;->e:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Ls1/u0;->b:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget v1, p0, Ls1/u0;->g:I

    .line 32
    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 34
    .line 35
    iget v1, p0, Ls1/u0;->h:I

    .line 36
    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Ls1/u0;->h()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/u0;->l:Landroid/view/WindowManager;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ls1/u0;->o()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    const/16 v2, 0x33

    .line 18
    .line 19
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 20
    .line 21
    const/16 v1, 0x68

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    div-int/lit8 v2, v2, 0x3

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-boolean v2, p0, Ls1/u0;->n:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-boolean v3, p0, Ls1/u0;->f:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    const/16 v2, 0x258

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Ls1/u0;->e(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/16 v4, 0x10

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sub-int/2addr v3, v4

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    .line 70
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    const/16 v2, 0x244

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Ls1/u0;->e(I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 87
    .line 88
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 89
    .line 90
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    iget v3, p0, Ls1/u0;->g:I

    .line 93
    .line 94
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    .line 98
    sub-int/2addr v4, v5

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 108
    .line 109
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    iget v3, p0, Ls1/u0;->h:I

    .line 114
    .line 115
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    .line 119
    sub-int/2addr v0, v4

    .line 120
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Ls1/u0;->l:Landroid/view/WindowManager;

    .line 137
    .line 138
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 139
    .line 140
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_1
    iget-object v3, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 145
    .line 146
    const/16 v4, 0x50

    .line 147
    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    move v2, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    :goto_0
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    .line 158
    iget-object v2, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 159
    .line 160
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    .line 164
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 165
    .line 166
    sub-int/2addr v6, v1

    .line 167
    const/16 v1, 0xa0

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    div-int/lit8 v7, v7, 0x3

    .line 178
    .line 179
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    sub-int/2addr v6, v1

    .line 184
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 193
    .line 194
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 195
    .line 196
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 197
    .line 198
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 199
    .line 200
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    sub-int/2addr v5, v6

    .line 207
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    .line 217
    iget-boolean v1, p0, Ls1/u0;->n:Z

    .line 218
    .line 219
    if-eqz v1, :cond_3

    .line 220
    .line 221
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 222
    .line 223
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 224
    .line 225
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 226
    .line 227
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 228
    .line 229
    const/16 v6, 0xf0

    .line 230
    .line 231
    invoke-virtual {p0, v6}, Ls1/u0;->e(I)I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    sub-int/2addr v5, v6

    .line 236
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 245
    .line 246
    :cond_3
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 247
    .line 248
    iget-boolean v2, p0, Ls1/u0;->n:Z

    .line 249
    .line 250
    const/16 v3, 0x8

    .line 251
    .line 252
    if-eqz v2, :cond_4

    .line 253
    .line 254
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 259
    .line 260
    invoke-virtual {p0, v3}, Ls1/u0;->e(I)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    sub-int/2addr v0, v4

    .line 265
    iget-object v4, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 266
    .line 267
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 268
    .line 269
    sub-int/2addr v0, v4

    .line 270
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    goto :goto_1

    .line 275
    :cond_4
    invoke-virtual {p0, v4}, Ls1/u0;->e(I)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 280
    .line 281
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const/16 v1, 0x1f

    .line 286
    .line 287
    new-array v2, v1, [B

    .line 288
    .line 289
    fill-array-data v2, :array_0

    .line 290
    .line 291
    .line 292
    new-array v4, v3, [B

    .line 293
    .line 294
    fill-array-data v4, :array_1

    .line 295
    .line 296
    .line 297
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v4, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 302
    .line 303
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 304
    .line 305
    invoke-virtual {v0, v2, v4}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    new-array v1, v1, [B

    .line 313
    .line 314
    fill-array-data v1, :array_2

    .line 315
    .line 316
    .line 317
    new-array v2, v3, [B

    .line 318
    .line 319
    fill-array-data v2, :array_3

    .line 320
    .line 321
    .line 322
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iget-object v2, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 327
    .line 328
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 329
    .line 330
    invoke-virtual {v0, v1, v2}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_5

    .line 338
    .line 339
    iget-object v0, p0, Ls1/u0;->l:Landroid/view/WindowManager;

    .line 340
    .line 341
    iget-object v1, p0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 342
    .line 343
    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    :cond_5
    :goto_2
    return-void

    .line 347
    :array_0
    .array-data 1
        0x75t
        0x73t
        0x67t
        0x56t
        0x5et
        -0xbt
        0x1ct
        0x51t
        0x40t
        0x4ct
        0x6et
        0x73t
        0x41t
        -0x8t
        0x18t
        0x51t
        0x47t
        0x40t
        0x58t
        0x68t
        0x59t
        -0xat
        0x17t
        0x51t
        0x63t
        0x76t
        0x65t
        0x65t
        0x58t
        -0x1at
        0x23t
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_1
    .array-data 1
        0x34t
        0x1ft
        0xbt
        0x1t
        0x37t
        -0x6ft
        0x7bt
        0x34t
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_2
    .array-data 1
        -0x73t
        0x64t
        -0x44t
        0x15t
        0x7at
        -0x14t
        0x42t
        0x4at
        -0x48t
        0x5bt
        -0x4bt
        0x30t
        0x65t
        -0x1ft
        0x46t
        0x4at
        -0x41t
        0x57t
        -0x7dt
        0x2bt
        0x7dt
        -0x11t
        0x49t
        0x4at
        -0x65t
        0x61t
        -0x42t
        0x26t
        0x7ct
        -0x1t
        0x7ct
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_3
    .array-data 1
        -0x34t
        0x8t
        -0x30t
        0x42t
        0x13t
        -0x78t
        0x25t
        0x2ft
    .end array-data
.end method

.method public final i()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls1/u0;->e:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x28

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    new-array v4, v3, [B

    .line 18
    .line 19
    fill-array-data v4, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ls1/u0;->k(Ljava/lang/String;)Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v4, Ls1/s0;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v0, v5}, Ls1/s0;-><init>(Ls1/u0;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v6, 0x2

    .line 53
    filled-new-array {v4, v6}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    move v8, v5

    .line 58
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 59
    .line 60
    const/16 v10, 0x3c

    .line 61
    .line 62
    const/16 v11, 0x11

    .line 63
    .line 64
    const/4 v12, 0x4

    .line 65
    if-ge v8, v6, :cond_5

    .line 66
    .line 67
    aget v13, v7, v8

    .line 68
    .line 69
    if-ne v13, v4, :cond_0

    .line 70
    .line 71
    const/16 v14, 0x19

    .line 72
    .line 73
    new-array v14, v14, [B

    .line 74
    .line 75
    fill-array-data v14, :array_2

    .line 76
    .line 77
    .line 78
    new-array v15, v3, [B

    .line 79
    .line 80
    fill-array-data v15, :array_3

    .line 81
    .line 82
    .line 83
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    const/16 v14, 0x19

    .line 89
    .line 90
    new-array v14, v14, [B

    .line 91
    .line 92
    fill-array-data v14, :array_4

    .line 93
    .line 94
    .line 95
    new-array v15, v3, [B

    .line 96
    .line 97
    fill-array-data v15, :array_5

    .line 98
    .line 99
    .line 100
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    :goto_1
    invoke-virtual {v0, v14}, Ls1/u0;->k(Ljava/lang/String;)Landroid/widget/TextView;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    .line 110
    .line 111
    iget v11, v0, Ls1/u0;->r:I

    .line 112
    .line 113
    if-ne v13, v4, :cond_2

    .line 114
    .line 115
    if-ne v11, v4, :cond_1

    .line 116
    .line 117
    const v11, 0x7f070137

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    const v11, 0x7f070136

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    if-ne v11, v6, :cond_3

    .line 126
    .line 127
    const v11, 0x7f070135

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    const v11, 0x7f070134

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v14, v11, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 135
    .line 136
    .line 137
    iget v11, v0, Ls1/u0;->r:I

    .line 138
    .line 139
    if-ne v11, v13, :cond_4

    .line 140
    .line 141
    move v11, v4

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move v11, v5

    .line 144
    :goto_3
    invoke-virtual {v0, v11}, Ls1/u0;->m(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .line 153
    invoke-virtual {v0, v10}, Ls1/u0;->e(I)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    invoke-direct {v11, v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v12}, Ls1/u0;->e(I)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-virtual {v0, v12}, Ls1/u0;->e(I)I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    invoke-virtual {v0, v12}, Ls1/u0;->e(I)I

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    invoke-virtual {v11, v9, v5, v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    new-instance v9, Ls1/t0;

    .line 179
    .line 180
    invoke-direct {v9, v0, v13, v5}, Ls1/t0;-><init>(Ls1/u0;II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v8, v8, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Landroid/widget/LinearLayout;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    const/16 v7, 0x32

    .line 203
    .line 204
    const/16 v8, 0x46

    .line 205
    .line 206
    const/16 v13, 0x1e

    .line 207
    .line 208
    filled-new-array {v13, v7, v8}, [I

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    move v8, v5

    .line 213
    :goto_4
    const/4 v13, 0x3

    .line 214
    if-ge v8, v13, :cond_c

    .line 215
    .line 216
    aget v14, v7, v8

    .line 217
    .line 218
    new-instance v15, Landroid/widget/LinearLayout;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-direct {v15, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    const/4 v10, 0x6

    .line 235
    invoke-virtual {v0, v10}, Ls1/u0;->e(I)I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    invoke-virtual {v0, v12}, Ls1/u0;->e(I)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v15, v9, v10, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    .line 249
    .line 250
    iget v3, v0, Ls1/u0;->s:I

    .line 251
    .line 252
    if-ne v3, v14, :cond_6

    .line 253
    .line 254
    move v3, v4

    .line 255
    goto :goto_5

    .line 256
    :cond_6
    move v3, v5

    .line 257
    :goto_5
    invoke-virtual {v0, v3}, Ls1/u0;->m(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v15, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    .line 263
    .line 264
    new-instance v3, Landroid/widget/LinearLayout;

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    iget v9, v0, Ls1/u0;->r:I

    .line 274
    .line 275
    if-ne v9, v4, :cond_7

    .line 276
    .line 277
    move v9, v4

    .line 278
    goto :goto_6

    .line 279
    :cond_7
    move v9, v5

    .line 280
    :goto_6
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    .line 282
    .line 283
    move v9, v5

    .line 284
    :goto_7
    const/4 v10, -0x1

    .line 285
    if-ge v9, v6, :cond_b

    .line 286
    .line 287
    new-instance v11, Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-direct {v11, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    if-nez v9, :cond_8

    .line 297
    .line 298
    const v6, -0x894501

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_8
    const v6, -0xb79269

    .line 303
    .line 304
    .line 305
    :goto_8
    invoke-virtual {v11, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 306
    .line 307
    .line 308
    if-nez v9, :cond_9

    .line 309
    .line 310
    move v6, v14

    .line 311
    goto :goto_9

    .line 312
    :cond_9
    rsub-int/lit8 v6, v14, 0x64

    .line 313
    .line 314
    :goto_9
    iget v12, v0, Ls1/u0;->r:I

    .line 315
    .line 316
    if-ne v12, v4, :cond_a

    .line 317
    .line 318
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    .line 320
    int-to-float v6, v6

    .line 321
    invoke-direct {v12, v10, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 322
    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_a
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 326
    .line 327
    int-to-float v6, v6

    .line 328
    invoke-direct {v12, v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 329
    .line 330
    .line 331
    :goto_a
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    invoke-virtual {v12, v6, v10, v5, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .line 352
    .line 353
    add-int/lit8 v9, v9, 0x1

    .line 354
    .line 355
    const/4 v5, 0x0

    .line 356
    const/4 v6, 0x2

    .line 357
    const/4 v12, 0x4

    .line 358
    const/4 v13, 0x3

    .line 359
    goto :goto_7

    .line 360
    :cond_b
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    .line 362
    const/16 v6, 0x18

    .line 363
    .line 364
    invoke-virtual {v0, v6}, Ls1/u0;->e(I)I

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v15, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .line 373
    .line 374
    new-instance v3, Landroid/widget/TextView;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const/4 v6, 0x3

    .line 392
    new-array v6, v6, [B

    .line 393
    .line 394
    fill-array-data v6, :array_6

    .line 395
    .line 396
    .line 397
    const/16 v9, 0x8

    .line 398
    .line 399
    new-array v11, v9, [B

    .line 400
    .line 401
    fill-array-data v11, :array_7

    .line 402
    .line 403
    .line 404
    invoke-static {v6, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    rsub-int/lit8 v6, v14, 0x64

    .line 412
    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    .line 425
    .line 426
    const/16 v5, 0x11

    .line 427
    .line 428
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    .line 430
    .line 431
    const/high16 v6, 0x41600000    # 14.0f

    .line 432
    .line 433
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    .line 438
    .line 439
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 440
    .line 441
    const/16 v6, 0x3c

    .line 442
    .line 443
    invoke-virtual {v0, v6}, Ls1/u0;->e(I)I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    const/high16 v10, 0x3f800000    # 1.0f

    .line 448
    .line 449
    const/4 v11, 0x0

    .line 450
    invoke-direct {v3, v11, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 451
    .line 452
    .line 453
    const/4 v9, 0x4

    .line 454
    invoke-virtual {v0, v9}, Ls1/u0;->e(I)I

    .line 455
    .line 456
    .line 457
    move-result v12

    .line 458
    invoke-virtual {v0, v9}, Ls1/u0;->e(I)I

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    invoke-virtual {v3, v12, v11, v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    .line 467
    .line 468
    new-instance v3, Ls1/t0;

    .line 469
    .line 470
    invoke-direct {v3, v0, v14, v4}, Ls1/t0;-><init>(Ls1/u0;II)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v15, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    .line 475
    .line 476
    add-int/lit8 v8, v8, 0x1

    .line 477
    .line 478
    move v3, v11

    .line 479
    move v11, v5

    .line 480
    move v5, v3

    .line 481
    move v12, v9

    .line 482
    move v9, v10

    .line 483
    const/16 v3, 0x8

    .line 484
    .line 485
    move v10, v6

    .line 486
    const/4 v6, 0x2

    .line 487
    goto/16 :goto_4

    .line 488
    .line 489
    :cond_c
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 490
    .line 491
    .line 492
    iget-object v2, v0, Ls1/u0;->q:Ljava/lang/String;

    .line 493
    .line 494
    if-nez v2, :cond_d

    .line 495
    .line 496
    const/16 v2, 0x5d

    .line 497
    .line 498
    new-array v2, v2, [B

    .line 499
    .line 500
    fill-array-data v2, :array_8

    .line 501
    .line 502
    .line 503
    const/16 v9, 0x8

    .line 504
    .line 505
    new-array v3, v9, [B

    .line 506
    .line 507
    fill-array-data v3, :array_9

    .line 508
    .line 509
    .line 510
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    goto :goto_b

    .line 515
    :cond_d
    const/16 v9, 0x8

    .line 516
    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const/16 v3, 0x4f

    .line 523
    .line 524
    new-array v3, v3, [B

    .line 525
    .line 526
    fill-array-data v3, :array_a

    .line 527
    .line 528
    .line 529
    new-array v5, v9, [B

    .line 530
    .line 531
    fill-array-data v5, :array_b

    .line 532
    .line 533
    .line 534
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget-object v3, v0, Ls1/u0;->q:Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v0, v3}, Ls1/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const/4 v3, 0x4

    .line 551
    new-array v3, v3, [B

    .line 552
    .line 553
    fill-array-data v3, :array_c

    .line 554
    .line 555
    .line 556
    new-array v5, v9, [B

    .line 557
    .line 558
    fill-array-data v5, :array_d

    .line 559
    .line 560
    .line 561
    invoke-static {v3, v5, v2}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    :goto_b
    invoke-virtual {v0, v2}, Ls1/u0;->k(Ljava/lang/String;)Landroid/widget/TextView;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    const/high16 v3, 0x41500000    # 13.0f

    .line 570
    .line 571
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 572
    .line 573
    .line 574
    const/4 v3, 0x2

    .line 575
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 576
    .line 577
    .line 578
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 579
    .line 580
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 581
    .line 582
    .line 583
    new-instance v3, Ls1/s0;

    .line 584
    .line 585
    invoke-direct {v3, v0, v4}, Ls1/s0;-><init>(Ls1/u0;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 592
    .line 593
    .line 594
    return-void

    .line 595
    :array_0
    .array-data 1
        -0x35t
        0x28t
        0x36t
        0x25t
        -0x1et
        -0x13t
        0x45t
        -0x4bt
        -0x69t
        0x78t
        0x38t
        -0x2bt
        0x76t
        -0x13t
        0x54t
        -0x4ct
        -0x55t
        0x79t
        0x3t
        0x25t
        0x12t
        -0x79t
        0x34t
        -0x25t
        -0x7t
        0x14t
        0x5ft
        -0x4ct
        0x12t
        -0x7bt
        0x34t
        -0x28t
        -0x7t
        0x18t
        0x5et
        -0x7dt
        0x12t
        -0x7bt
        0x35t
        -0x15t
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_1
    .array-data 1
        0x29t
        -0x58t
        -0x71t
        0x5t
        -0x3et
        0x3dt
        -0x1ct
        0x65t
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_2
    .array-data 1
        0x4ft
        0x1et
        -0x4ft
        0x45t
        0x29t
        -0x58t
        -0x29t
        0x7ct
        0x4et
        0x3at
        -0x50t
        0x74t
        -0x27t
        0x32t
        0x26t
        0x2dt
        0x1et
        0x6ft
        -0x24t
        0x27t
        0x41t
        -0x33t
        -0x4ft
        0x2dt
        0x1ct
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    nop

    .line 645
    :array_3
    .array-data 1
        -0x61t
        -0x41t
        0x61t
        -0x9t
        -0x7t
        0x1dt
        0x6t
        -0x4t
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :array_4
    .array-data 1
        -0x1ct
        0x4at
        -0x67t
        0x0t
        0x60t
        -0xdt
        -0x57t
        0x30t
        -0x1ct
        0x5bt
        0x69t
        -0x6ct
        -0x70t
        -0x69t
        -0x8t
        0x52t
        -0x75t
        0x3at
        -0x37t
        0x6bt
        0x0t
        -0x6at
        -0x35t
        0x52t
        -0x7ct
    .end array-data

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    nop

    .line 671
    :array_5
    .array-data 1
        0x34t
        -0x15t
        0x49t
        -0x45t
        -0x50t
        0x46t
        0x79t
        -0x7et
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    :array_6
    .array-data 1
        0x28t
        -0x3dt
        0x4ct
    .end array-data

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :array_7
    .array-data 1
        0x8t
        -0x14t
        0x6ct
        -0x4ft
        -0x6bt
        -0xft
        0x0t
        0x16t
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_8
    .array-data 1
        -0xft
        -0x35t
        -0x13t
        -0x58t
        -0xct
        -0x73t
        -0x1at
        -0x30t
        0x71t
        0x35t
        0x78t
        -0x57t
        -0x1at
        -0x74t
        -0x2bt
        -0x2ft
        0x42t
        0x35t
        0x78t
        0x58t
        -0x4at
        -0x1dt
        -0x43t
        -0x4bt
        0x11t
        0x65t
        0x1dt
        -0x36t
        -0x4at
        -0x1et
        -0x43t
        -0x4bt
        -0x20t
        0x35t
        0x72t
        -0x57t
        -0x1at
        -0x74t
        -0x2bt
        -0x30t
        0x7bt
        0x35t
        0x73t
        -0x58t
        -0x30t
        -0x74t
        -0x28t
        -0x30t
        0x7dt
        0x35t
        0x75t
        -0x58t
        -0x2dt
        0x7ct
        -0x51t
        -0x49t
        -0x20t
        0x35t
        0x56t
        -0x58t
        -0x22t
        -0x73t
        -0x14t
        -0x2ft
        0x42t
        0x35t
        0x7dt
        -0x58t
        -0x21t
        -0x73t
        -0x11t
        -0x30t
        0x75t
        -0x3bt
        0x1ct
        -0x7t
        -0x4at
        -0x17t
        -0x44t
        -0x7et
        0x10t
        0x5ft
        0x1ct
        -0x5t
        0x46t
        -0x74t
        -0x21t
        -0x30t
        0x71t
        0x35t
        0x73t
        -0x58t
        -0x24t
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    nop

    .line 745
    :array_9
    .array-data 1
        -0x40t
        -0x1bt
        -0x33t
        0x78t
        0x66t
        0x5ct
        0x6dt
        0x0t
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_a
    .array-data 1
        0x5at
        0x23t
        -0x56t
        -0x11t
        0x41t
        0x2at
        -0x76t
        -0x43t
        -0x27t
        -0x23t
        0x3ft
        -0x12t
        0x53t
        0x2bt
        -0x47t
        -0x44t
        -0x16t
        -0x23t
        0x3ft
        0x1ft
        0x3t
        0x49t
        -0x30t
        -0x11t
        -0x48t
        -0x4dt
        0x5bt
        -0x41t
        0x3t
        0x45t
        -0x2ft
        -0x28t
        0x48t
        -0x11t
        0xat
        -0x55t
        -0xdt
        0x2bt
        -0x42t
        -0x43t
        -0x28t
        -0x24t
        0xat
        -0x11t
        0x63t
        -0x25t
        -0x2ft
        -0x2dt
        -0x47t
        -0x71t
        0x5at
        -0x7bt
        0x2t
        0x7bt
        -0x2ft
        -0x2dt
        -0x48t
        -0x48t
        0x5bt
        -0x43t
        0x2t
        0x7at
        -0x30t
        -0x1et
        0x62t
        -0x23t
        0x15t
        -0x11t
        0x66t
        0x2at
        -0x7ft
        -0x43t
        -0x26t
        -0x23t
        0x34t
        -0x11t
        0x66t
        -0x3ft
        0x21t
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_b
    .array-data 1
        0x68t
        0xdt
        -0x76t
        0x3ft
        -0x2dt
        -0x5t
        0x1t
        0x6dt
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_c
    .array-data 1
        -0x57t
        0x6dt
        0x30t
        -0x7bt
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_d
    .array-data 1
        -0x77t
        0x4dt
        -0xdt
        0x12t
        0x21t
        0x37t
        -0x7et
        0x7ct
    .end array-data
.end method

.method public final j()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls1/u0;->d:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/widget/HorizontalScrollView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v2, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Landroid/widget/GridLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v4, v5}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v4, v0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-virtual {v4, v5}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 39
    .line 40
    .line 41
    iget-object v4, v0, Ls1/u0;->m:Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    const/16 v4, 0x258

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    .line 54
    :goto_0
    const/16 v5, 0x78

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Ls1/u0;->e(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    div-int v6, v4, v6

    .line 61
    .line 62
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    div-int/2addr v4, v6

    .line 67
    iget-object v6, v0, Ls1/u0;->i:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/4 v8, 0x0

    .line 74
    :goto_1
    if-ge v8, v7, :cond_1

    .line 75
    .line 76
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 83
    .line 84
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 85
    .line 86
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v11, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    .line 102
    .line 103
    const/16 v12, 0x11

    .line 104
    .line 105
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    .line 107
    .line 108
    const/4 v13, 0x5

    .line 109
    invoke-virtual {v0, v13}, Ls1/u0;->e(I)I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    const/4 v15, 0x6

    .line 114
    invoke-virtual {v0, v15}, Ls1/u0;->e(I)I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    invoke-virtual {v0, v13}, Ls1/u0;->e(I)I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    const/4 v3, 0x4

    .line 123
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v11, v14, v15, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-direct {v5, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    invoke-virtual {v9, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    .line 154
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .line 156
    const/16 v14, 0x40

    .line 157
    .line 158
    invoke-virtual {v0, v14}, Ls1/u0;->e(I)I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    invoke-virtual {v0, v14}, Ls1/u0;->e(I)I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    invoke-direct {v13, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Landroid/widget/TextView;

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-direct {v5, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    invoke-virtual {v9, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    const/4 v9, -0x1

    .line 197
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    const/high16 v13, 0x41600000    # 14.0f

    .line 201
    .line 202
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    .line 207
    .line 208
    const/4 v12, 0x2

    .line 209
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 210
    .line 211
    .line 212
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 213
    .line 214
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 215
    .line 216
    .line 217
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .line 219
    const/4 v13, -0x2

    .line 220
    invoke-direct {v12, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v11, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    new-instance v5, Landroid/widget/GridLayout$LayoutParams;

    .line 234
    .line 235
    invoke-direct {v5}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 236
    .line 237
    .line 238
    const/16 v9, 0x8

    .line 239
    .line 240
    invoke-virtual {v0, v9}, Ls1/u0;->e(I)I

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    sub-int v9, v4, v9

    .line 245
    .line 246
    iput v9, v5, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 247
    .line 248
    const/16 v9, 0x78

    .line 249
    .line 250
    invoke-virtual {v0, v9}, Ls1/u0;->e(I)I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    iput v12, v5, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    invoke-virtual {v0, v3}, Ls1/u0;->e(I)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-virtual {v5, v12, v13, v14, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 276
    .line 277
    invoke-virtual {v3, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    new-instance v3, Ls1/r0;

    .line 281
    .line 282
    const/4 v5, 0x0

    .line 283
    invoke-direct {v3, v0, v10, v5}, Ls1/r0;-><init>(Ls1/u0;Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    move v5, v9

    .line 290
    const/4 v3, 0x1

    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_1
    iget-object v3, v0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 294
    .line 295
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ls1/u0;->n()V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public final k(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x41600000    # 14.0f

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x10

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x38

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    .line 59
    const/4 v2, -0x2

    .line 60
    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final l()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ls1/u0;->g()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Ls1/u0;->p:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, v0, Ls1/u0;->p:I

    .line 11
    .line 12
    iget-object v3, v0, Ls1/u0;->d:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    const/16 v4, 0x18

    .line 18
    .line 19
    new-array v4, v4, [B

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    const/16 v5, 0x8

    .line 25
    .line 26
    new-array v6, v5, [B

    .line 27
    .line 28
    fill-array-data v6, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v4}, Ls1/u0;->k(Ljava/lang/String;)Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/16 v6, 0x11

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    .line 43
    .line 44
    const/high16 v6, 0x41400000    # 12.0f

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Ls1/s0;

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    invoke-direct {v6, v0, v7}, Ls1/s0;-><init>(Ls1/u0;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v6, Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v8, v0, Ls1/u0;->j:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/4 v9, 0x0

    .line 78
    move v10, v9

    .line 79
    :goto_0
    if-ge v10, v8, :cond_11

    .line 80
    .line 81
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    add-int/lit8 v10, v10, 0x1

    .line 86
    .line 87
    check-cast v11, Ljava/lang/String;

    .line 88
    .line 89
    const/4 v12, 0x4

    .line 90
    const/4 v13, -0x1

    .line 91
    const/4 v14, 0x0

    .line 92
    if-eqz v11, :cond_0

    .line 93
    .line 94
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_1

    .line 103
    .line 104
    :cond_0
    move/from16 v16, v9

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    new-array v15, v2, [B

    .line 108
    .line 109
    const/16 v16, -0x76

    .line 110
    .line 111
    aput-byte v16, v15, v9

    .line 112
    .line 113
    move/from16 v16, v9

    .line 114
    .line 115
    new-array v9, v5, [B

    .line 116
    .line 117
    fill-array-data v9, :array_2

    .line 118
    .line 119
    .line 120
    invoke-static {v15, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v11, v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    array-length v11, v9

    .line 129
    const/16 v15, 0x32

    .line 130
    .line 131
    if-ne v11, v2, :cond_2

    .line 132
    .line 133
    new-instance v11, Le4/o;

    .line 134
    .line 135
    aget-object v9, v9, v16

    .line 136
    .line 137
    invoke-direct {v11, v9, v14, v7, v15}, Le4/o;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 138
    .line 139
    .line 140
    move-object v14, v11

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    array-length v11, v9

    .line 143
    if-ne v11, v12, :cond_5

    .line 144
    .line 145
    aget-object v11, v9, v16

    .line 146
    .line 147
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-nez v11, :cond_5

    .line 152
    .line 153
    aget-object v11, v9, v2

    .line 154
    .line 155
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-nez v11, :cond_5

    .line 160
    .line 161
    aget-object v11, v9, v16

    .line 162
    .line 163
    aget-object v14, v9, v2

    .line 164
    .line 165
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-eqz v11, :cond_3

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    :try_start_0
    aget-object v11, v9, v7

    .line 173
    .line 174
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    const/4 v14, 0x3

    .line 179
    aget-object v14, v9, v14

    .line 180
    .line 181
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-eq v11, v2, :cond_4

    .line 186
    .line 187
    if-ne v11, v7, :cond_5

    .line 188
    .line 189
    :cond_4
    const/16 v5, 0x1e

    .line 190
    .line 191
    if-eq v14, v5, :cond_6

    .line 192
    .line 193
    if-eq v14, v15, :cond_6

    .line 194
    .line 195
    const/16 v5, 0x46

    .line 196
    .line 197
    if-eq v14, v5, :cond_6

    .line 198
    .line 199
    :catch_0
    :cond_5
    :goto_1
    const/4 v14, 0x0

    .line 200
    goto :goto_2

    .line 201
    :cond_6
    new-instance v5, Le4/o;

    .line 202
    .line 203
    aget-object v15, v9, v16

    .line 204
    .line 205
    aget-object v9, v9, v2

    .line 206
    .line 207
    invoke-direct {v5, v15, v9, v11, v14}, Le4/o;-><init>(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    move-object v14, v5

    .line 211
    :goto_2
    if-nez v14, :cond_7

    .line 212
    .line 213
    move/from16 v9, v16

    .line 214
    .line 215
    const/16 v5, 0x8

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_7
    iget-object v5, v14, Le4/o;->d:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v5, Ljava/lang/String;

    .line 222
    .line 223
    iget-object v9, v14, Le4/o;->c:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v9, Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v5, :cond_f

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    iget v15, v14, Le4/o;->b:I

    .line 238
    .line 239
    iget v12, v14, Le4/o;->a:I

    .line 240
    .line 241
    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    move-result-object v17

    .line 245
    if-eqz v17, :cond_8

    .line 246
    .line 247
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    move-result-object v17

    .line 251
    if-nez v17, :cond_9

    .line 252
    .line 253
    :cond_8
    move/from16 v24, v1

    .line 254
    .line 255
    move-object/from16 v25, v4

    .line 256
    .line 257
    move-object/from16 v18, v6

    .line 258
    .line 259
    move v6, v7

    .line 260
    move/from16 v21, v8

    .line 261
    .line 262
    move/from16 v22, v10

    .line 263
    .line 264
    const/16 v4, 0x8

    .line 265
    .line 266
    :goto_3
    move v8, v2

    .line 267
    goto/16 :goto_11

    .line 268
    .line 269
    :cond_9
    new-instance v13, Landroid/widget/LinearLayout;

    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-direct {v13, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    .line 280
    .line 281
    new-instance v7, Landroid/widget/LinearLayout;

    .line 282
    .line 283
    move-object/from16 v18, v6

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-direct {v7, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    if-ne v12, v2, :cond_a

    .line 293
    .line 294
    move v6, v2

    .line 295
    goto :goto_4

    .line 296
    :cond_a
    move/from16 v6, v16

    .line 297
    .line 298
    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    .line 300
    .line 301
    :try_start_1
    filled-new-array {v9, v5}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    .line 305
    move-object/from16 v19, v6

    .line 306
    .line 307
    move/from16 v2, v16

    .line 308
    .line 309
    :goto_5
    const/4 v6, 0x2

    .line 310
    if-ge v2, v6, :cond_d

    .line 311
    .line 312
    :try_start_2
    aget-object v6, v19, v2

    .line 313
    .line 314
    move/from16 v20, v2

    .line 315
    .line 316
    new-instance v2, Landroid/widget/ImageView;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    .line 317
    .line 318
    move/from16 v21, v8

    .line 319
    .line 320
    :try_start_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    .line 333
    .line 334
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 335
    .line 336
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    .line 337
    .line 338
    .line 339
    move/from16 v22, v10

    .line 340
    .line 341
    const/4 v8, 0x1

    .line 342
    :try_start_4
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    move-object/from16 v23, v11

    .line 347
    .line 348
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 349
    .line 350
    .line 351
    move-result v11
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    .line 352
    move/from16 v24, v1

    .line 353
    .line 354
    :try_start_5
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 355
    .line 356
    .line 357
    move-result v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 358
    move-object/from16 v25, v4

    .line 359
    .line 360
    :try_start_6
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 361
    .line 362
    .line 363
    move-result v4
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 364
    :try_start_7
    invoke-virtual {v2, v10, v11, v1, v4}, Landroid/view/View;->setPadding(IIII)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 365
    .line 366
    .line 367
    move/from16 v1, v16

    .line 368
    .line 369
    :try_start_8
    invoke-virtual {v0, v1}, Ls1/u0;->m(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 370
    .line 371
    .line 372
    move-result-object v4
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .line 373
    :try_start_9
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_b

    .line 381
    .line 382
    move v1, v15

    .line 383
    :goto_6
    const/4 v8, 0x1

    .line 384
    goto :goto_7

    .line 385
    :cond_b
    rsub-int/lit8 v1, v15, 0x64

    .line 386
    .line 387
    goto :goto_6

    .line 388
    :goto_7
    if-ne v12, v8, :cond_c

    .line 389
    .line 390
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    .line 391
    .line 392
    int-to-float v1, v1

    .line 393
    const/4 v6, -0x1

    .line 394
    const/4 v8, 0x0

    .line 395
    :try_start_a
    invoke-direct {v4, v6, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 396
    .line 397
    .line 398
    :goto_8
    const/4 v8, 0x1

    .line 399
    goto :goto_c

    .line 400
    :catch_1
    move/from16 v16, v8

    .line 401
    .line 402
    :goto_9
    const/16 v4, 0x8

    .line 403
    .line 404
    const/4 v6, 0x2

    .line 405
    const/4 v8, 0x1

    .line 406
    goto/16 :goto_11

    .line 407
    .line 408
    :catch_2
    :goto_a
    const/16 v4, 0x8

    .line 409
    .line 410
    const/4 v6, 0x2

    .line 411
    const/4 v8, 0x1

    .line 412
    :goto_b
    const/16 v16, 0x0

    .line 413
    .line 414
    goto/16 :goto_11

    .line 415
    .line 416
    :cond_c
    const/4 v6, -0x1

    .line 417
    const/4 v8, 0x0

    .line 418
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 419
    .line 420
    int-to-float v1, v1

    .line 421
    invoke-direct {v4, v8, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    .line 422
    .line 423
    .line 424
    goto :goto_8

    .line 425
    :goto_c
    :try_start_b
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    invoke-virtual {v0, v8}, Ls1/u0;->e(I)I

    .line 438
    .line 439
    .line 440
    move-result v11
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_3

    .line 441
    :try_start_c
    invoke-virtual {v4, v1, v6, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2

    .line 445
    .line 446
    .line 447
    add-int/lit8 v2, v20, 0x1

    .line 448
    .line 449
    move/from16 v8, v21

    .line 450
    .line 451
    move/from16 v10, v22

    .line 452
    .line 453
    move-object/from16 v11, v23

    .line 454
    .line 455
    move/from16 v1, v24

    .line 456
    .line 457
    move-object/from16 v4, v25

    .line 458
    .line 459
    const/16 v16, 0x0

    .line 460
    .line 461
    goto/16 :goto_5

    .line 462
    .line 463
    :catch_3
    :goto_d
    const/16 v4, 0x8

    .line 464
    .line 465
    const/4 v6, 0x2

    .line 466
    goto :goto_b

    .line 467
    :catch_4
    move/from16 v16, v1

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :catch_5
    :goto_e
    move-object/from16 v25, v4

    .line 471
    .line 472
    goto :goto_d

    .line 473
    :catch_6
    move/from16 v24, v1

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :catch_7
    move/from16 v24, v1

    .line 477
    .line 478
    move-object/from16 v25, v4

    .line 479
    .line 480
    :goto_f
    move/from16 v22, v10

    .line 481
    .line 482
    goto :goto_a

    .line 483
    :catch_8
    move/from16 v24, v1

    .line 484
    .line 485
    move-object/from16 v25, v4

    .line 486
    .line 487
    move/from16 v21, v8

    .line 488
    .line 489
    goto :goto_f

    .line 490
    :cond_d
    move/from16 v24, v1

    .line 491
    .line 492
    move-object/from16 v25, v4

    .line 493
    .line 494
    move/from16 v21, v8

    .line 495
    .line 496
    move/from16 v22, v10

    .line 497
    .line 498
    const/4 v1, 0x4

    .line 499
    invoke-virtual {v0, v1}, Ls1/u0;->e(I)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    const/4 v4, 0x6

    .line 504
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    invoke-virtual {v0, v1}, Ls1/u0;->e(I)I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    invoke-virtual {v0, v4}, Ls1/u0;->e(I)I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    invoke-virtual {v13, v2, v6, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 520
    .line 521
    const/16 v2, 0x5c

    .line 522
    .line 523
    invoke-virtual {v0, v2}, Ls1/u0;->e(I)I

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    const/4 v6, -0x1

    .line 528
    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v13, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v9}, Ls1/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Ls1/u0;->d(Ljava/lang/String;)Landroid/widget/TextView;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v5}, Ls1/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v0, v1}, Ls1/u0;->d(Ljava/lang/String;)Landroid/widget/TextView;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 554
    .line 555
    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v9}, Ls1/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const/4 v6, 0x2

    .line 569
    new-array v2, v6, [B

    .line 570
    .line 571
    fill-array-data v2, :array_3

    .line 572
    .line 573
    .line 574
    const/16 v4, 0x8

    .line 575
    .line 576
    new-array v7, v4, [B

    .line 577
    .line 578
    fill-array-data v7, :array_4

    .line 579
    .line 580
    .line 581
    invoke-static {v2, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0, v5}, Ls1/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    new-array v2, v6, [B

    .line 596
    .line 597
    fill-array-data v2, :array_5

    .line 598
    .line 599
    .line 600
    new-array v5, v4, [B

    .line 601
    .line 602
    fill-array-data v5, :array_6

    .line 603
    .line 604
    .line 605
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const/16 v2, 0x1a

    .line 613
    .line 614
    const/4 v8, 0x1

    .line 615
    new-array v2, v2, [B

    .line 616
    .line 617
    if-ne v12, v8, :cond_e

    .line 618
    .line 619
    fill-array-data v2, :array_7

    .line 620
    .line 621
    .line 622
    new-array v5, v4, [B

    .line 623
    .line 624
    fill-array-data v5, :array_8

    .line 625
    .line 626
    .line 627
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    goto :goto_10

    .line 632
    :cond_e
    fill-array-data v2, :array_9

    .line 633
    .line 634
    .line 635
    new-array v5, v4, [B

    .line 636
    .line 637
    fill-array-data v5, :array_a

    .line 638
    .line 639
    .line 640
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const/4 v6, 0x2

    .line 648
    new-array v2, v6, [B

    .line 649
    .line 650
    fill-array-data v2, :array_b

    .line 651
    .line 652
    .line 653
    new-array v5, v4, [B

    .line 654
    .line 655
    fill-array-data v5, :array_c

    .line 656
    .line 657
    .line 658
    invoke-static {v2, v5, v1, v15}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 659
    .line 660
    .line 661
    const/4 v8, 0x1

    .line 662
    new-array v2, v8, [B

    .line 663
    .line 664
    const/16 v5, -0x6b

    .line 665
    .line 666
    const/16 v16, 0x0

    .line 667
    .line 668
    aput-byte v5, v2, v16

    .line 669
    .line 670
    new-array v5, v4, [B

    .line 671
    .line 672
    fill-array-data v5, :array_d

    .line 673
    .line 674
    .line 675
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    rsub-int/lit8 v2, v15, 0x64

    .line 683
    .line 684
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-virtual {v13, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 692
    .line 693
    .line 694
    new-instance v1, Landroidx/navigation/ui/a;

    .line 695
    .line 696
    const/16 v2, 0x13

    .line 697
    .line 698
    invoke-direct {v1, v2, v0, v14}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 705
    .line 706
    .line 707
    goto :goto_11

    .line 708
    :catch_9
    move/from16 v24, v1

    .line 709
    .line 710
    move-object/from16 v25, v4

    .line 711
    .line 712
    move/from16 v21, v8

    .line 713
    .line 714
    move/from16 v22, v10

    .line 715
    .line 716
    const/16 v4, 0x8

    .line 717
    .line 718
    const/4 v6, 0x2

    .line 719
    goto/16 :goto_3

    .line 720
    .line 721
    :goto_11
    move-object/from16 v1, v25

    .line 722
    .line 723
    goto :goto_12

    .line 724
    :cond_f
    move/from16 v24, v1

    .line 725
    .line 726
    move-object v1, v4

    .line 727
    move-object/from16 v18, v6

    .line 728
    .line 729
    move v6, v7

    .line 730
    move/from16 v21, v8

    .line 731
    .line 732
    move/from16 v22, v10

    .line 733
    .line 734
    const/16 v4, 0x8

    .line 735
    .line 736
    move v8, v2

    .line 737
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-eqz v2, :cond_10

    .line 742
    .line 743
    invoke-virtual {v0, v9}, Ls1/u0;->a(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    :cond_10
    :goto_12
    move v5, v4

    .line 747
    move v7, v6

    .line 748
    move v2, v8

    .line 749
    move/from16 v9, v16

    .line 750
    .line 751
    move-object/from16 v6, v18

    .line 752
    .line 753
    move/from16 v8, v21

    .line 754
    .line 755
    move/from16 v10, v22

    .line 756
    .line 757
    move-object v4, v1

    .line 758
    move/from16 v1, v24

    .line 759
    .line 760
    goto/16 :goto_0

    .line 761
    .line 762
    :cond_11
    move/from16 v24, v1

    .line 763
    .line 764
    move-object v1, v4

    .line 765
    iget-object v2, v0, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 766
    .line 767
    if-nez v2, :cond_12

    .line 768
    .line 769
    return-void

    .line 770
    :cond_12
    new-instance v3, Landroidx/activity/f;

    .line 771
    .line 772
    const/16 v4, 0xc

    .line 773
    .line 774
    move/from16 v5, v24

    .line 775
    .line 776
    invoke-direct {v3, v0, v5, v1, v4}, Landroidx/activity/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 777
    .line 778
    .line 779
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 780
    .line 781
    .line 782
    return-void

    .line 783
    :array_0
    .array-data 1
        0x42t
        -0x46t
        -0x26t
        0x71t
        -0x5t
        0x5t
        0x23t
        -0x40t
        0x7dt
        -0x46t
        -0x7ft
        -0x36t
        -0x5t
        0x27t
        0x23t
        -0x3dt
        0x7dt
        -0x4at
        -0x80t
        -0x3t
        -0x5t
        0x27t
        0x22t
        -0xft
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    :array_1
    .array-data 1
        -0x53t
        0x6t
        0x51t
        0x7bt
        0x2bt
        -0x61t
        -0xdt
        0x7et
    .end array-data

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    :array_2
    .array-data 1
        -0x5at
        0x52t
        -0x1at
        -0x42t
        -0x42t
        -0x69t
        0x15t
        0x2t
    .end array-data

    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :array_3
    .array-data 1
        0x5t
        -0x3dt
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    nop

    .line 821
    :array_4
    .array-data 1
        0x29t
        -0x1dt
        0x7dt
        -0x46t
        0x11t
        -0x74t
        -0x6at
        -0x61t
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_5
    .array-data 1
        0x11t
        -0x5ct
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    nop

    .line 835
    :array_6
    .array-data 1
        0x3dt
        -0x7ct
        0xat
        -0x78t
        -0x6bt
        -0x2et
        0x2bt
        -0x73t
    .end array-data

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :array_7
    .array-data 1
        -0x48t
        0x63t
        -0x36t
        -0x31t
        -0x2ct
        -0x40t
        0x7t
        -0x1dt
        -0x48t
        0x67t
        -0x35t
        -0x2t
        0x24t
        -0x5bt
        0x6et
        0x43t
        -0x48t
        0x63t
        -0x36t
        -0x40t
        -0x2ct
        -0x33t
        0x6t
        -0x2ct
        -0x48t
        0x61t
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    nop

    .line 861
    :array_8
    .array-data 1
        0x69t
        -0x1et
        0x1at
        0x7dt
        0x4t
        0x75t
        -0x2at
        0x63t
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :array_9
    .array-data 1
        -0x7bt
        0x50t
        0x0t
        -0x10t
        0x8t
        0x5dt
        -0x4dt
        -0x6ft
        -0x7ct
        0x61t
        -0x10t
        -0x65t
        0x60t
        -0x38t
        -0x4et
        -0x5et
        -0x7ct
        0x6et
        0x1t
        -0x35t
        0x8t
        0x58t
        -0x4dt
        -0x6ft
        -0x7ct
        0x61t
    .end array-data

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    nop

    .line 887
    :array_a
    .array-data 1
        0x54t
        -0x2ft
        -0x30t
        0x4bt
        -0x28t
        -0x18t
        0x63t
        0x23t
    .end array-data

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_b
    .array-data 1
        -0x64t
        -0x78t
    .end array-data

    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    nop

    .line 901
    :array_c
    .array-data 1
        -0x50t
        -0x58t
        -0x32t
        -0x23t
        0x73t
        0x28t
        -0x7t
        0x73t
    .end array-data

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    :array_d
    .array-data 1
        -0x46t
        0x32t
        0x59t
        -0x9t
        -0x36t
        -0x3at
        0x60t
        -0x8t
    .end array-data
.end method

.method public final m(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const v1, -0xd7a668

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v1, -0xdbcabc

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v1}, Ls1/u0;->e(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const p1, -0x6e3701

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const p1, -0xbfab98

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Ls1/u0;->t:Landroid/widget/GridLayout;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Ls1/u0;->q:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Ls1/u0;->m(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    return-void
.end method

.method public final o()Landroid/graphics/Rect;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ls1/u0;->l:Landroid/view/WindowManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/core/view/accessibility/b;->i(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/core/view/accessibility/b;->c(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {}, Landroidx/core/view/accessibility/b;->h()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {}, Landroidx/core/view/m;->D()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    or-int/2addr v2, v3

    .line 28
    invoke-static {v1, v2}, Landroidx/core/view/m;->c(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/core/view/accessibility/b;->b(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/activity/k;->a(Landroid/graphics/Insets;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v0

    .line 48
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    invoke-static {v1}, Landroidx/activity/k;->n(Landroid/graphics/Insets;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v4, v0

    .line 55
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    invoke-static {v1}, Landroidx/activity/k;->t(Landroid/graphics/Insets;)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    sub-int/2addr v0, v5

    .line 62
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/activity/k;->w(Landroid/graphics/Insets;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr v5, v1

    .line 69
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Ls1/u0;->l:Landroid/view/WindowManager;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    new-instance v2, Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    sub-int/2addr v5, v6

    .line 136
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    sub-int/2addr v0, v1

    .line 143
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .line 145
    .line 146
    return-object v2

    .line 147
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    .line 148
    .line 149
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .line 156
    .line 157
    return-object v1
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Le0/e;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, p0, v1}, Le0/e;-><init>(Ls1/u0;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Le0/e;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-direct {p1, p0, v0}, Le0/e;-><init>(Ls1/u0;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget v0, p0, Ls1/u0;->p:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ls1/u0;->p:I

    .line 6
    .line 7
    iget-object v0, p0, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ls1/u0;->k:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Ls1/u0;->o:Z

    .line 19
    .line 20
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
