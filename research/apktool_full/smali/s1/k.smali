.class public final Ls1/k;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;


# instance fields
.field public final b:Ls1/r;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Landroid/widget/HorizontalScrollView;

.field public final e:Landroid/widget/ScrollView;

.field public final f:Landroid/widget/Button;

.field public final g:Ls1/f;

.field public h:Landroidx/core/graphics/Insets;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ls1/o;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/TextView;

.field public o:Le0/r1;

.field public p:Ls1/v0;

.field public q:Ls1/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x25

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
    sput-object v0, Ls1/k;->r:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x15

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
    move-result-object v0

    .line 37
    sput-object v0, Ls1/k;->s:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        -0x5at
        0x71t
        0x3t
        -0x4bt
        0x45t
        0x49t
        -0x80t
        -0x3at
        -0x7bt
        0x72t
        0x3bt
        -0x63t
        0x63t
        0x62t
        -0x79t
        -0x3ct
        -0x6ct
        0x46t
        0x22t
        -0x67t
        0x7ft
        0x62t
        -0x62t
        -0x1bt
        -0x6ct
        0x57t
        0x2at
        -0x46t
        0x7et
        0x64t
        -0x5ct
        -0x40t
        -0x70t
        0x53t
        0xet
        -0x74t
        0x61t
    .end array-data

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
    nop

    .line 65
    :array_1
    .array-data 1
        -0xbt
        0x21t
        0x4ft
        -0x4t
        0x11t
        0x16t
        -0x3ft
        -0x4at
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_2
    .array-data 1
        -0x6ct
        0x2bt
        0x31t
        0x12t
        0x27t
        0x4ft
        -0x3ct
        -0x28t
        -0x59t
        0x2et
        0x2bt
        0x1ft
        0x2ft
        0x78t
        -0x40t
        -0x37t
        -0x74t
        0x23t
        0x2bt
        0x12t
        0x1bt
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_3
    .array-data 1
        -0x8t
        0x4at
        0x44t
        0x7ct
        0x44t
        0x27t
        -0x5ft
        -0x56t
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/home/WebLauncherActivity;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls1/f;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Ls1/f;-><init>(Ls1/k;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ls1/k;->g:Ls1/f;

    .line 11
    .line 12
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 13
    .line 14
    iput-object v0, p0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 15
    .line 16
    new-instance v0, Ls1/r;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ls1/r;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Ls1/k;->b:Ls1/r;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ls1/r;->a(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Ls1/k;->c:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const/16 v3, 0x11

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x9

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 64
    .line 65
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 66
    .line 67
    .line 68
    const v4, -0x17e9e2d9

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72
    .line 73
    .line 74
    const/16 v4, 0x1b

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ls1/k;->h(I)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    int-to-float v4, v4

    .line 81
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    const/16 v3, 0x15

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    int-to-float v3, v3

    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Ls1/c;

    .line 98
    .line 99
    invoke-direct {v3, p0, v0}, Ls1/c;-><init>(Ls1/k;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Landroid/widget/HorizontalScrollView;

    .line 106
    .line 107
    invoke-direct {v2, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Ls1/k;->d:Landroid/widget/HorizontalScrollView;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 122
    .line 123
    .line 124
    new-instance v3, Ls1/d;

    .line 125
    .line 126
    invoke-direct {v3, p0, v0}, Ls1/d;-><init>(Ls1/k;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Ls1/e;

    .line 133
    .line 134
    invoke-direct {v3, p0, v0}, Ls1/e;-><init>(Ls1/k;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Landroid/widget/ScrollView;

    .line 144
    .line 145
    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Ls1/k;->e:Landroid/widget/ScrollView;

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Ls1/d;

    .line 163
    .line 164
    invoke-direct {v3, p0, v1}, Ls1/d;-><init>(Ls1/k;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    .line 169
    .line 170
    new-instance v3, Ls1/e;

    .line 171
    .line 172
    invoke-direct {v3, p0, v1}, Ls1/e;-><init>(Ls1/k;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ls1/k;->k()Ls1/o;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    sget-object v3, Ls1/o;->d:Ls1/o;

    .line 186
    .line 187
    if-eq v2, v3, :cond_1

    .line 188
    .line 189
    sget-object v3, Ls1/o;->e:Ls1/o;

    .line 190
    .line 191
    if-ne v2, v3, :cond_0

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_0
    move v2, v0

    .line 195
    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    move v2, v1

    .line 197
    :goto_1
    invoke-virtual {p0, v2}, Ls1/k;->e(Z)V

    .line 198
    .line 199
    .line 200
    new-instance v2, Landroid/widget/Button;

    .line 201
    .line 202
    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    iput-object v2, p0, Ls1/k;->f:Landroid/widget/Button;

    .line 206
    .line 207
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 208
    .line 209
    .line 210
    const/4 p1, -0x1

    .line 211
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    const/high16 p1, 0x41f00000    # 30.0f

    .line 215
    .line 216
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 229
    .line 230
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 231
    .line 232
    .line 233
    const v3, -0x26d9cbbc

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 237
    .line 238
    .line 239
    const/16 v3, 0x12

    .line 240
    .line 241
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    int-to-float v3, v3

    .line 246
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    .line 251
    .line 252
    const/16 p1, 0x2e

    .line 253
    .line 254
    new-array p1, p1, [B

    .line 255
    .line 256
    fill-array-data p1, :array_0

    .line 257
    .line 258
    .line 259
    const/16 v3, 0x8

    .line 260
    .line 261
    new-array v3, v3, [B

    .line 262
    .line 263
    fill-array-data v3, :array_1

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    new-instance p1, Ls1/c;

    .line 274
    .line 275
    invoke-direct {p1, p0, v1}, Ls1/c;-><init>(Ls1/k;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Ls1/k;->n()V

    .line 285
    .line 286
    .line 287
    new-instance p1, Ls1/f;

    .line 288
    .line 289
    invoke-direct {p1, p0, v0}, Ls1/f;-><init>(Ls1/k;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    nop

    .line 297
    :array_0
    .array-data 1
        0x6et
        -0x63t
        0x4et
        -0x4ft
        0x13t
        -0x3t
        0x20t
        0x3ct
        0x6et
        -0x4bt
        0x4et
        -0x41t
        0x12t
        -0x3bt
        0x21t
        0x0t
        -0x62t
        -0x2et
        0x21t
        -0x21t
        0x73t
        -0x69t
        0x4dt
        0x5ct
        0xbt
        -0x2et
        0x25t
        -0x22t
        0x4ft
        0x67t
        0x20t
        0x37t
        0x6et
        -0x4et
        0x4ft
        -0x74t
        0x13t
        -0x6t
        0x21t
        0xbt
        0x6et
        -0x49t
        0x4ft
        -0x71t
        0x13t
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
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    nop

    .line 325
    :array_1
    .array-data 1
        -0x42t
        0x2t
        -0x62t
        0xft
        -0x3dt
        0x47t
        -0x10t
        -0x74t
    .end array-data
.end method

.method public static i(Lj0/e;Ljava/util/ArrayList;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lj0/f;->g(Lj0/e;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lj0/e;

    .line 18
    .line 19
    invoke-static {v2}, Lj0/f;->g(Lj0/e;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v0
.end method

.method public static v()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Ls1/k;->l:Ls1/o;

    .line 8
    .line 9
    sget-object v2, Ls1/o;->d:Ls1/o;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    sget-object v2, Ls1/o;->e:Ls1/o;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v4

    .line 23
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    const/16 v5, 0x90

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v5}, Ls1/k;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v7, p0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 38
    .line 39
    iget v8, v7, Landroidx/core/graphics/Insets;->left:I

    .line 40
    .line 41
    sub-int/2addr v6, v8

    .line 42
    iget v7, v7, Landroidx/core/graphics/Insets;->right:I

    .line 43
    .line 44
    sub-int/2addr v6, v7

    .line 45
    sub-int/2addr v6, v5

    .line 46
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    aget v0, v0, v3

    .line 55
    .line 56
    int-to-float v0, v0

    .line 57
    sub-float/2addr p1, v0

    .line 58
    iget-object v0, p0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 59
    .line 60
    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    .line 61
    .line 62
    :goto_2
    int-to-float v0, v0

    .line 63
    sub-float/2addr p1, v0

    .line 64
    int-to-float v0, v5

    .line 65
    div-float/2addr v0, v2

    .line 66
    sub-float/2addr p1, v0

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    invoke-virtual {p0, v5}, Ls1/k;->h(I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iget-object v7, p0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 77
    .line 78
    iget v8, v7, Landroidx/core/graphics/Insets;->top:I

    .line 79
    .line 80
    sub-int/2addr v6, v8

    .line 81
    iget v7, v7, Landroidx/core/graphics/Insets;->bottom:I

    .line 82
    .line 83
    sub-int/2addr v6, v7

    .line 84
    sub-int/2addr v6, v5

    .line 85
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    aget v0, v0, v4

    .line 94
    .line 95
    int-to-float v0, v0

    .line 96
    sub-float/2addr p1, v0

    .line 97
    iget-object v0, p0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 98
    .line 99
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_3
    const/high16 v0, 0x42c80000    # 100.0f

    .line 103
    .line 104
    mul-float/2addr p1, v0

    .line 105
    int-to-float v2, v6

    .line 106
    div-float/2addr p1, v2

    .line 107
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const/16 v2, 0x64

    .line 112
    .line 113
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Ls1/k;->k:I

    .line 122
    .line 123
    iget-object p1, p0, Ls1/k;->n:Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const/16 v5, 0x10

    .line 133
    .line 134
    new-array v5, v5, [B

    .line 135
    .line 136
    fill-array-data v5, :array_0

    .line 137
    .line 138
    .line 139
    const/16 v7, 0x8

    .line 140
    .line 141
    new-array v8, v7, [B

    .line 142
    .line 143
    fill-array-data v8, :array_1

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v5, p0, Ls1/k;->k:I

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-array v4, v4, [B

    .line 159
    .line 160
    const/16 v5, 0x5f

    .line 161
    .line 162
    aput-byte v5, v4, v3

    .line 163
    .line 164
    new-array v3, v7, [B

    .line 165
    .line 166
    fill-array-data v3, :array_2

    .line 167
    .line 168
    .line 169
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    iget-object p1, p0, Ls1/k;->f:Landroid/widget/Button;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    .line 191
    iget-object v3, p0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 192
    .line 193
    if-eqz v1, :cond_4

    .line 194
    .line 195
    iget v1, v3, Landroidx/core/graphics/Insets;->left:I

    .line 196
    .line 197
    iget v3, p0, Ls1/k;->k:I

    .line 198
    .line 199
    mul-int/2addr v6, v3

    .line 200
    int-to-float v3, v6

    .line 201
    div-float/2addr v3, v0

    .line 202
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/2addr v0, v1

    .line 207
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 208
    .line 209
    sub-int/2addr v0, v1

    .line 210
    int-to-float v0, v0

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_4
    iget v1, v3, Landroidx/core/graphics/Insets;->top:I

    .line 216
    .line 217
    iget v3, p0, Ls1/k;->k:I

    .line 218
    .line 219
    mul-int/2addr v6, v3

    .line 220
    int-to-float v3, v6

    .line 221
    div-float/2addr v3, v0

    .line 222
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    add-int/2addr v0, v1

    .line 227
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 228
    .line 229
    sub-int/2addr v0, v1

    .line 230
    int-to-float v0, v0

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :array_0
    .array-data 1
        -0x3bt
        0xet
        -0x73t
        0x1dt
        -0x1et
        0x6ct
        -0x3dt
        0x21t
        -0x3ct
        0x17t
        -0x73t
        0x1bt
        -0x1dt
        0x54t
        0x29t
        -0x47t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_1
    .array-data 1
        0x15t
        -0x6ft
        0x5dt
        -0x5dt
        0x32t
        -0x25t
        0x13t
        -0x67t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_2
    .array-data 1
        0x7at
        0x2ct
        0x38t
        0x41t
        -0x6bt
        -0x48t
        0x58t
        0x41t
    .end array-data
.end method

.method public final B()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls1/k;->k()Ls1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ls1/o;->d:Ls1/o;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Ls1/o;->e:Ls1/o;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    iget-boolean v1, p0, Ls1/k;->i:Z

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v1, v3

    .line 29
    :goto_2
    iget-object v4, p0, Ls1/k;->d:Landroid/widget/HorizontalScrollView;

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Ls1/k;->i:Z

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move v2, v3

    .line 42
    :goto_3
    iget-object v0, p0, Ls1/k;->e:Landroid/widget/ScrollView;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final a(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/o;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const p2, -0x271d15

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    const/high16 p2, 0x41500000    # 13.0f

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Ls1/k;->b:Ls1/r;

    .line 35
    .line 36
    invoke-virtual {p2}, Ls1/r;->b()Ls1/o;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/4 v1, 0x0

    .line 41
    if-ne p2, p3, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p2, v1

    .line 46
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/widget/RadioGroup$LayoutParams;

    .line 50
    .line 51
    const/4 p3, -0x2

    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-direct {p2, v1, p3, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final b(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/p;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const p2, -0x271d15

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    const/high16 p2, 0x41600000    # 14.0f

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Ls1/k;->b:Ls1/r;

    .line 35
    .line 36
    invoke-virtual {p2}, Ls1/r;->d()Ls1/p;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/4 v1, 0x0

    .line 41
    if-ne p2, p3, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p2, v1

    .line 46
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/widget/RadioGroup$LayoutParams;

    .line 50
    .line 51
    const/4 p3, -0x2

    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-direct {p2, v1, p3, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final c(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/q;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const p2, -0x271d15

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    const/high16 p2, 0x41600000    # 14.0f

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Ls1/k;->b:Ls1/r;

    .line 35
    .line 36
    invoke-virtual {p2}, Ls1/r;->e()Ls1/q;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/4 v1, 0x0

    .line 41
    if-ne p2, p3, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p2, v1

    .line 46
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/widget/RadioGroup$LayoutParams;

    .line 50
    .line 51
    const/4 p3, -0x2

    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-direct {p2, v1, p3, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final d()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ls1/k;->k()Ls1/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ls1/o;->d:Ls1/o;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    sget-object v5, Ls1/o;->e:Ls1/o;

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v5, v4

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v5, v3

    .line 21
    :goto_1
    invoke-virtual {v0, v5}, Ls1/k;->e(Z)V

    .line 22
    .line 23
    .line 24
    xor-int/lit8 v6, v5, 0x1

    .line 25
    .line 26
    iget-object v7, v0, Ls1/k;->c:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v7, -0x2

    .line 34
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iget-boolean v7, v0, Ls1/k;->j:Z

    .line 38
    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    iget v7, v0, Ls1/k;->k:I

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v7, v0, Ls1/k;->b:Ls1/r;

    .line 45
    .line 46
    invoke-virtual {v7}, Ls1/r;->c()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .line 64
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 81
    .line 82
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/16 v10, 0x8

    .line 87
    .line 88
    const/high16 v11, 0x42c80000    # 100.0f

    .line 89
    .line 90
    const/16 v12, 0x24

    .line 91
    .line 92
    const/16 v13, 0x90

    .line 93
    .line 94
    iget-object v14, v0, Ls1/k;->f:Landroid/widget/Button;

    .line 95
    .line 96
    const/4 v15, 0x3

    .line 97
    const/16 v16, 0x30

    .line 98
    .line 99
    if-eqz v5, :cond_7

    .line 100
    .line 101
    const/16 v9, 0x50

    .line 102
    .line 103
    if-ne v1, v2, :cond_3

    .line 104
    .line 105
    move/from16 v17, v16

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move/from16 v17, v9

    .line 109
    .line 110
    :goto_3
    or-int/lit8 v3, v17, 0x1

    .line 111
    .line 112
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    .line 114
    invoke-virtual {v0, v13}, Ls1/k;->h(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    .line 120
    invoke-virtual {v0, v12}, Ls1/k;->h(I)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-direct {v13, v3, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    if-ne v1, v2, :cond_4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    move/from16 v16, v9

    .line 131
    .line 132
    :goto_4
    or-int/lit8 v9, v16, 0x3

    .line 133
    .line 134
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    .line 136
    iget-object v9, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 137
    .line 138
    iget v12, v9, Landroidx/core/graphics/Insets;->left:I

    .line 139
    .line 140
    sub-int/2addr v8, v12

    .line 141
    iget v9, v9, Landroidx/core/graphics/Insets;->right:I

    .line 142
    .line 143
    sub-int/2addr v8, v9

    .line 144
    sub-int/2addr v8, v3

    .line 145
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    iget-object v4, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 150
    .line 151
    iget v4, v4, Landroidx/core/graphics/Insets;->left:I

    .line 152
    .line 153
    mul-int/2addr v3, v7

    .line 154
    int-to-float v3, v3

    .line 155
    div-float/2addr v3, v11

    .line 156
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    add-int/2addr v3, v4

    .line 161
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 162
    .line 163
    iget-object v3, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 164
    .line 165
    if-ne v1, v2, :cond_5

    .line 166
    .line 167
    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    .line 168
    .line 169
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_5
    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    .line 173
    .line 174
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 175
    .line 176
    :goto_5
    if-ne v1, v2, :cond_6

    .line 177
    .line 178
    new-array v1, v15, [B

    .line 179
    .line 180
    fill-array-data v1, :array_0

    .line 181
    .line 182
    .line 183
    new-array v2, v10, [B

    .line 184
    .line 185
    fill-array-data v2, :array_1

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    goto :goto_6

    .line 193
    :cond_6
    new-array v1, v15, [B

    .line 194
    .line 195
    fill-array-data v1, :array_2

    .line 196
    .line 197
    .line 198
    new-array v2, v10, [B

    .line 199
    .line 200
    fill-array-data v2, :array_3

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :goto_6
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_7
    sget-object v2, Ls1/o;->b:Ls1/o;

    .line 212
    .line 213
    const/4 v3, 0x5

    .line 214
    if-ne v1, v2, :cond_8

    .line 215
    .line 216
    move v8, v15

    .line 217
    goto :goto_7

    .line 218
    :cond_8
    move v8, v3

    .line 219
    :goto_7
    or-int/lit8 v8, v8, 0x10

    .line 220
    .line 221
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    .line 223
    invoke-virtual {v0, v13}, Ls1/k;->h(I)I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 228
    .line 229
    invoke-virtual {v0, v12}, Ls1/k;->h(I)I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    invoke-direct {v13, v12, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .line 235
    .line 236
    if-ne v1, v2, :cond_9

    .line 237
    .line 238
    move v3, v15

    .line 239
    :cond_9
    or-int/lit8 v3, v3, 0x30

    .line 240
    .line 241
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    .line 243
    iget-object v3, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 244
    .line 245
    iget v12, v3, Landroidx/core/graphics/Insets;->top:I

    .line 246
    .line 247
    sub-int/2addr v9, v12

    .line 248
    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    .line 249
    .line 250
    sub-int/2addr v9, v3

    .line 251
    sub-int/2addr v9, v8

    .line 252
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    iget-object v4, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 257
    .line 258
    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    .line 259
    .line 260
    mul-int/2addr v3, v7

    .line 261
    int-to-float v3, v3

    .line 262
    div-float/2addr v3, v11

    .line 263
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    add-int/2addr v3, v4

    .line 268
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 269
    .line 270
    iget-object v3, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 271
    .line 272
    if-ne v1, v2, :cond_a

    .line 273
    .line 274
    iget v3, v3, Landroidx/core/graphics/Insets;->left:I

    .line 275
    .line 276
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_a
    iget v3, v3, Landroidx/core/graphics/Insets;->right:I

    .line 280
    .line 281
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 282
    .line 283
    :goto_8
    if-ne v1, v2, :cond_b

    .line 284
    .line 285
    new-array v1, v15, [B

    .line 286
    .line 287
    fill-array-data v1, :array_4

    .line 288
    .line 289
    .line 290
    new-array v2, v10, [B

    .line 291
    .line 292
    fill-array-data v2, :array_5

    .line 293
    .line 294
    .line 295
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto :goto_9

    .line 300
    :cond_b
    new-array v1, v15, [B

    .line 301
    .line 302
    fill-array-data v1, :array_6

    .line 303
    .line 304
    .line 305
    new-array v2, v10, [B

    .line 306
    .line 307
    fill-array-data v2, :array_7

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    :goto_9
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    .line 317
    :goto_a
    iget-object v1, v0, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 318
    .line 319
    iget v2, v1, Landroidx/core/graphics/Insets;->left:I

    .line 320
    .line 321
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 322
    .line 323
    iget v2, v1, Landroidx/core/graphics/Insets;->top:I

    .line 324
    .line 325
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 326
    .line 327
    iget v2, v1, Landroidx/core/graphics/Insets;->right:I

    .line 328
    .line 329
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 330
    .line 331
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 332
    .line 333
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 334
    .line 335
    const/4 v1, -0x1

    .line 336
    if-eqz v5, :cond_c

    .line 337
    .line 338
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_c
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 342
    .line 343
    :goto_b
    if-eqz v5, :cond_d

    .line 344
    .line 345
    iget-object v1, v0, Ls1/k;->d:Landroid/widget/HorizontalScrollView;

    .line 346
    .line 347
    goto :goto_c

    .line 348
    :cond_d
    iget-object v1, v0, Ls1/k;->e:Landroid/widget/ScrollView;

    .line 349
    .line 350
    :goto_c
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Ls1/k;->p:Ls1/v0;

    .line 357
    .line 358
    if-eqz v1, :cond_e

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 364
    .line 365
    .line 366
    :cond_e
    return-void

    .line 367
    :array_0
    .array-data 1
        0xdt
        0x15t
        -0x55t
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_1
    .array-data 1
        -0x11t
        -0x67t
        0x2ft
        0x6ft
        0x3at
        0x72t
        0x74t
        0x67t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_2
    .array-data 1
        0x3et
        0x62t
        -0x43t
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_3
    .array-data 1
        -0x24t
        -0x12t
        0x3et
        -0x3at
        -0x5ct
        0x2at
        -0x35t
        0x2et
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_4
    .array-data 1
        0x28t
        -0x6et
        -0xdt
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_5
    .array-data 1
        -0x36t
        0x12t
        0x49t
        0x2dt
        -0x66t
        -0x50t
        -0x4at
        0x3bt
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_6
    .array-data 1
        0x0t
        -0x63t
        0x4bt
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_7
    .array-data 1
        -0x1et
        0x1dt
        -0xet
        0x72t
        0x6bt
        -0x62t
        0x76t
        -0x2at
    .end array-data
.end method

.method public final e(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Ls1/k;->d:Landroid/widget/HorizontalScrollView;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Ls1/k;->e:Landroid/widget/ScrollView;

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Ls1/k;->c:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eq v1, p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    const/4 v2, -0x2

    .line 30
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Ls1/k;->B()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final f()Landroid/widget/LinearLayout;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x11

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Ls1/k;->b:Ls1/r;

    .line 16
    .line 17
    invoke-virtual {v1}, Ls1/r;->b()Ls1/o;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Ls1/o;->d:Ls1/o;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ls1/r;->b()Ls1/o;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Ls1/o;->e:Ls1/o;

    .line 31
    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move v1, v4

    .line 38
    :goto_1
    xor-int/2addr v1, v4

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v2, -0x2

    .line 45
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public final g()Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/16 v1, 0x4e

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final h(I)I
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

.method public final j(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Ls1/k;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Ls1/k;->b:Ls1/r;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Ls1/k;->l:Ls1/o;

    .line 13
    .line 14
    iget-object v3, v1, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Ls1/r;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Ls1/k;->k:I

    .line 34
    .line 35
    iget-object v3, v1, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget-object v4, Ls1/r;->d:Ljava/lang/String;

    .line 42
    .line 43
    const/16 v5, 0x64

    .line 44
    .line 45
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    .line 59
    .line 60
    :cond_1
    iput-boolean v0, p0, Ls1/k;->j:Z

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Ls1/k;->l:Ls1/o;

    .line 64
    .line 65
    iget-object v3, p0, Ls1/k;->f:Landroid/widget/Button;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    .line 76
    .line 77
    const/16 v4, 0x2e

    .line 78
    .line 79
    new-array v4, v4, [B

    .line 80
    .line 81
    fill-array-data v4, :array_0

    .line 82
    .line 83
    .line 84
    const/16 v5, 0x8

    .line 85
    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    fill-array-data v6, :array_1

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iput-object v2, p0, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object v2, p0, Ls1/k;->n:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {p0}, Ls1/k;->d()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ls1/r;->f()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0}, Ls1/k;->l()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Ls1/k;->y()V

    .line 123
    .line 124
    .line 125
    :goto_0
    iget-object v1, p0, Ls1/k;->o:Le0/r1;

    .line 126
    .line 127
    iput-object v2, p0, Ls1/k;->o:Le0/r1;

    .line 128
    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    iget-object v2, v1, Le0/r1;->b:Landroid/view/KeyEvent$Callback;

    .line 132
    .line 133
    check-cast v2, Ls1/k;

    .line 134
    .line 135
    iget-object v3, v1, Le0/r1;->c:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Landroid/widget/RadioGroup;

    .line 138
    .line 139
    iget-object v4, v1, Le0/r1;->d:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v4, Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v1, v1, Le0/r1;->e:Landroid/view/KeyEvent$Callback;

    .line 144
    .line 145
    check-cast v1, Landroid/app/AlertDialog;

    .line 146
    .line 147
    iget-object v2, v2, Ls1/k;->b:Ls1/r;

    .line 148
    .line 149
    const/4 v6, 0x1

    .line 150
    if-nez p1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v2}, Ls1/r;->b()Ls1/o;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    move v7, v0

    .line 157
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-ge v7, v8, :cond_5

    .line 162
    .line 163
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    instance-of v9, v8, Landroid/widget/RadioButton;

    .line 168
    .line 169
    if-eqz v9, :cond_4

    .line 170
    .line 171
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    if-ne p1, v9, :cond_4

    .line 176
    .line 177
    check-cast v8, Landroid/widget/RadioButton;

    .line 178
    .line 179
    invoke-virtual {v8, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const/16 v3, 0x35

    .line 192
    .line 193
    new-array v3, v3, [B

    .line 194
    .line 195
    fill-array-data v3, :array_2

    .line 196
    .line 197
    .line 198
    new-array v7, v5, [B

    .line 199
    .line 200
    fill-array-data v7, :array_3

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ls1/r;->c()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    new-array v2, v6, [B

    .line 218
    .line 219
    const/16 v3, 0x57

    .line 220
    .line 221
    aput-byte v3, v2, v0

    .line 222
    .line 223
    new-array v0, v5, [B

    .line 224
    .line 225
    fill-array-data v0, :array_4

    .line 226
    .line 227
    .line 228
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_6

    .line 247
    .line 248
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 249
    .line 250
    .line 251
    :cond_6
    :goto_3
    return-void

    .line 252
    nop

    .line 253
    :array_0
    .array-data 1
        -0x2dt
        -0x52t
        0x2bt
        -0x21t
        0x15t
        -0x7t
        -0x4dt
        -0x54t
        -0x2dt
        -0x7at
        0x2bt
        -0x2ft
        0x14t
        -0x3ft
        -0x4et
        -0x70t
        0x23t
        -0x1ft
        0x44t
        -0x4ft
        0x75t
        -0x6dt
        -0x22t
        -0x34t
        -0x4at
        -0x1ft
        0x40t
        -0x50t
        0x49t
        0x63t
        -0x4dt
        -0x59t
        -0x2dt
        -0x7ft
        0x2at
        -0x1et
        0x15t
        -0x2t
        -0x4et
        -0x65t
        -0x2dt
        -0x7ct
        0x2at
        -0x1ft
        0x15t
        -0xdt
    .end array-data

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
    nop

    .line 281
    :array_1
    .array-data 1
        0x3t
        0x31t
        -0x5t
        0x61t
        -0x3bt
        0x43t
        0x63t
        0x1ct
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_2
    .array-data 1
        0x1dt
        -0x4dt
        0x4at
        -0x1ft
        -0xft
        0x6t
        -0x5et
        -0x42t
        0x1dt
        -0x66t
        0x4at
        -0x16t
        -0xft
        0x0t
        -0x5et
        -0x48t
        0x1dt
        -0x67t
        -0x46t
        -0x71t
        -0x65t
        0x6dt
        -0x31t
        -0x30t
        0x73t
        -0x4t
        0x25t
        -0x71t
        -0x65t
        0x6dt
        -0x36t
        0x20t
        0x1dt
        -0x62t
        0x4at
        -0x15t
        -0xft
        0x3t
        -0x5et
        -0x45t
        0x1ct
        -0x60t
        -0x46t
        -0x71t
        -0x65t
        0x6ct
        -0xet
        -0x30t
        0x7dt
        -0x3t
        0x15t
        0x65t
        0x1t
    .end array-data

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
    .line 320
    nop

    .line 321
    :array_3
    .array-data 1
        -0x33t
        0x2ct
        -0x66t
        0x5ft
        0x21t
        -0x43t
        0x72t
        0x0t
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_4
    .array-data 1
        0x72t
        -0xat
        -0x38t
        -0x4dt
        -0x76t
        0x0t
        0x72t
        -0x3et
    .end array-data
.end method

.method public final k()Ls1/o;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/k;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ls1/k;->l:Ls1/o;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Ls1/k;->b:Ls1/r;

    .line 11
    .line 12
    invoke-virtual {v0}, Ls1/r;->b()Ls1/o;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/k;->g:Ls1/f;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls1/k;->b:Ls1/r;

    .line 7
    .line 8
    invoke-virtual {v0}, Ls1/r;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Ls1/k;->f:Landroid/widget/Button;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Ls1/k;->i:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Ls1/k;->B()V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Ls1/k;->i:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Ls1/k;->B()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    const/16 p2, 0xe

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ls1/k;->h(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, p2}, Ls1/k;->h(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, p2}, Ls1/k;->h(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0, p2}, Ls1/k;->h(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    const/16 p1, 0x10

    .line 46
    .line 47
    new-array p1, p1, [B

    .line 48
    .line 49
    fill-array-data p1, :array_0

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x8

    .line 53
    .line 54
    new-array p2, p2, [B

    .line 55
    .line 56
    fill-array-data p2, :array_1

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :array_0
    .array-data 1
        -0x28t
        0x3et
        0x78t
        -0x55t
        0x5ct
        0x12t
        0x2et
        0x5ct
        -0x27t
        0x28t
        0x78t
        -0x54t
        0x5ct
        0x13t
        0x2ft
        0x68t
    .end array-data

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
    :array_1
    .array-data 1
        0x8t
        -0x56t
        -0x58t
        0x1et
        -0x74t
        -0x55t
        -0x1t
        -0x23t
    .end array-data
.end method

.method public final n()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ls1/k;->c:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x6

    .line 11
    if-ge v3, v4, :cond_1

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v5, Ls1/k;->s:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5, v4}, Lj0/f;->e(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Lj0/f;->d(Lj0/e;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v5, v4, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    iget-object v6, v4, Lj0/e;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v6, v5}, Ls1/k;->m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v6, Ls1/g;

    .line 54
    .line 55
    invoke-direct {v6, v0, v4, v2}, Ls1/g;-><init>(Ls1/k;Lj0/e;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ls1/k;->g()Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, v0, Ls1/k;->b:Ls1/r;

    .line 72
    .line 73
    iget-object v5, v3, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    sget-object v6, Ls1/r;->g:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x2

    .line 82
    const/16 v7, 0x8

    .line 83
    .line 84
    const v8, 0x3eb33333    # 0.35f

    .line 85
    .line 86
    .line 87
    const/4 v9, 0x1

    .line 88
    if-eqz v5, :cond_7

    .line 89
    .line 90
    invoke-virtual {v0}, Ls1/k;->f()Landroid/widget/LinearLayout;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    sget-object v11, Ls1/k;->r:Ljava/lang/String;

    .line 99
    .line 100
    const-string v12, ""

    .line 101
    .line 102
    invoke-virtual {v10, v11, v12}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    if-nez v11, :cond_4

    .line 111
    .line 112
    new-array v11, v9, [B

    .line 113
    .line 114
    const/16 v12, 0xa

    .line 115
    .line 116
    aput-byte v12, v11, v2

    .line 117
    .line 118
    new-array v12, v7, [B

    .line 119
    .line 120
    fill-array-data v12, :array_0

    .line 121
    .line 122
    .line 123
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    array-length v11, v10

    .line 132
    move v12, v2

    .line 133
    move v13, v12

    .line 134
    :goto_2
    if-ge v12, v11, :cond_5

    .line 135
    .line 136
    aget-object v14, v10, v12

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-static {v15, v14}, Lj0/f;->c(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    iget-object v15, v14, Lj0/e;->a:Lj0/d;

    .line 147
    .line 148
    sget-object v9, Lj0/d;->d:Lj0/d;

    .line 149
    .line 150
    if-ne v15, v9, :cond_3

    .line 151
    .line 152
    invoke-static {v14}, Lj0/f;->d(Lj0/e;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_2

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    iget-object v9, v14, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    iget-object v15, v14, Lj0/e;->i:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v15, v9}, Ls1/k;->m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    new-instance v15, Ls1/g;

    .line 168
    .line 169
    invoke-direct {v15, v0, v14, v6}, Ls1/g;-><init>(Ls1/k;Lj0/e;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ls1/k;->g()Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    invoke-virtual {v5, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 183
    .line 184
    if-lt v13, v4, :cond_3

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 188
    .line 189
    const/4 v9, 0x1

    .line 190
    goto :goto_2

    .line 191
    :cond_4
    move v13, v2

    .line 192
    :cond_5
    :goto_4
    if-nez v13, :cond_6

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    const v10, 0x7f070231

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const/16 v10, 0x2c

    .line 206
    .line 207
    new-array v10, v10, [B

    .line 208
    .line 209
    fill-array-data v10, :array_1

    .line 210
    .line 211
    .line 212
    new-array v11, v7, [B

    .line 213
    .line 214
    fill-array-data v11, :array_2

    .line 215
    .line 216
    .line 217
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v0, v10, v9}, Ls1/k;->m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v8}, Landroid/view/View;->setAlpha(F)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ls1/k;->g()Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    :cond_7
    iget-object v3, v3, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 242
    .line 243
    sget-object v5, Ls1/r;->f:Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_c

    .line 250
    .line 251
    invoke-virtual {v0}, Ls1/k;->f()Landroid/widget/LinearLayout;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {}, Lm0/o;->x()Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    move v10, v2

    .line 268
    move v11, v10

    .line 269
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    if-ge v10, v12, :cond_a

    .line 274
    .line 275
    if-ge v11, v4, :cond_a

    .line 276
    .line 277
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    check-cast v12, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    if-nez v12, :cond_8

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_8
    invoke-virtual {v9, v12, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    if-nez v12, :cond_9

    .line 295
    .line 296
    :goto_6
    const/4 v15, 0x1

    .line 297
    goto :goto_7

    .line 298
    :cond_9
    invoke-static {v12, v9}, Lj0/e;->b(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lj0/e;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    iget-object v13, v12, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 303
    .line 304
    iget-object v14, v12, Lj0/e;->i:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v0, v14, v13}, Ls1/k;->m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    new-instance v14, Ls1/g;

    .line 311
    .line 312
    const/4 v15, 0x1

    .line 313
    invoke-direct {v14, v0, v12, v15}, Ls1/g;-><init>(Ls1/k;Lj0/e;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Ls1/k;->g()Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    invoke-virtual {v3, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    .line 325
    .line 326
    add-int/lit8 v11, v11, 0x1

    .line 327
    .line 328
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_a
    if-nez v11, :cond_b

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    const v5, 0x7f070130

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    const/16 v5, 0x44

    .line 345
    .line 346
    new-array v5, v5, [B

    .line 347
    .line 348
    fill-array-data v5, :array_3

    .line 349
    .line 350
    .line 351
    new-array v9, v7, [B

    .line 352
    .line 353
    fill-array-data v9, :array_4

    .line 354
    .line 355
    .line 356
    invoke-static {v5, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {v0, v5, v4}, Ls1/k;->m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ls1/k;->g()Landroid/widget/LinearLayout$LayoutParams;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    :cond_b
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    .line 379
    .line 380
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    const v3, 0x1080049

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    const/16 v3, 0x23

    .line 392
    .line 393
    new-array v3, v3, [B

    .line 394
    .line 395
    fill-array-data v3, :array_5

    .line 396
    .line 397
    .line 398
    new-array v4, v7, [B

    .line 399
    .line 400
    fill-array-data v4, :array_6

    .line 401
    .line 402
    .line 403
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v0, v3, v2}, Ls1/k;->m(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    new-instance v3, Ls1/c;

    .line 412
    .line 413
    invoke-direct {v3, v0, v6}, Ls1/c;-><init>(Ls1/k;I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Ls1/k;->g()Landroid/widget/LinearLayout$LayoutParams;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ls1/k;->d()V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    nop

    .line 431
    :array_0
    .array-data 1
        0x31t
        -0x5t
        -0x15t
        -0x73t
        0x32t
        -0x14t
        0x57t
        -0x19t
    .end array-data

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_1
    .array-data 1
        -0x72t
        -0xbt
        0x2ct
        0x60t
        0x54t
        -0x8t
        -0x78t
        -0x17t
        -0x1dt
        -0x48t
        0x49t
        0x5t
        0x31t
        -0x56t
        0x18t
        -0x17t
        -0x14t
        -0x48t
        0x41t
        0x5t
        0x3dt
        -0x55t
        0x2dt
        0x19t
        -0x71t
        -0x18t
        0x2ct
        0x65t
        0x55t
        -0x33t
        0x78t
        -0x73t
        -0x72t
        -0x23t
        0x2ct
        0x6et
        0x55t
        -0x31t
        0x78t
        -0x7ct
        -0x72t
        -0x30t
        0x2ct
        0x6ct
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_2
    .array-data 1
        0x5et
        0x68t
        -0x4t
        -0x2bt
        -0x7bt
        0x7at
        -0x58t
        0x39t
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    :array_3
    .array-data 1
        0x70t
        0x16t
        -0x72t
        -0x72t
        0x37t
        -0x68t
        0x31t
        -0x61t
        0x71t
        0x0t
        -0x71t
        -0x44t
        0x37t
        -0x61t
        0x31t
        -0x62t
        0x70t
        0x34t
        0x7et
        -0x12t
        0x58t
        -0xat
        0x60t
        -0x34t
        0x18t
        0x51t
        -0x1bt
        -0x12t
        0x59t
        -0x9t
        0x56t
        -0x34t
        0x15t
        0x51t
        -0x1dt
        -0x12t
        0x5ft
        -0xat
        0x6ft
        0x3ct
        0x70t
        0x39t
        -0x72t
        -0x77t
        -0x39t
        -0x9t
        0x5ct
        -0x34t
        0x15t
        0x51t
        -0x1dt
        -0x11t
        0x69t
        0x7t
        0x30t
        -0x55t
        0x70t
        0x31t
        -0x72t
        -0x7ft
        0x36t
        -0x5ct
        0x31t
        -0x63t
        0x70t
        0x3bt
        -0x72t
        -0x72t
    .end array-data

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_4
    .array-data 1
        -0x60t
        -0x7ft
        0x5et
        0x3et
        -0x19t
        0x27t
        -0x20t
        0x1ct
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_5
    .array-data 1
        -0x33t
        -0x80t
        0x12t
        -0x74t
        -0x25t
        0x5at
        0x7dt
        0x71t
        -0x34t
        -0x63t
        0x12t
        -0x7et
        -0x26t
        0x62t
        0x7ct
        0x49t
        -0x33t
        -0x5bt
        -0x1et
        -0x14t
        -0x4ft
        0xbt
        0x1ct
        0x22t
        -0x62t
        -0x33t
        0x7ft
        -0x13t
        -0x73t
        0xbt
        0x19t
        0x22t
        -0x63t
        -0x33t
        0x72t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    :array_6
    .array-data 1
        0x1dt
        0x1dt
        -0x3et
        0x3ct
        0xat
        -0x25t
        -0x54t
        -0xdt
    .end array-data
.end method

.method public final o(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ls1/k;->h(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Ls1/k;->h(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final p(Lj0/e;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ls1/k;->q(Lj0/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Lj0/c;->j(Lj0/e;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Ls1/k;->b:Ls1/r;

    .line 19
    .line 20
    invoke-virtual {p1}, Ls1/r;->f()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ls1/k;->l()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 v0, 0x32

    .line 35
    .line 36
    new-array v0, v0, [B

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ls1/k;->r()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 1
        0xft
        0xet
        0x3t
        -0x1at
        -0x54t
        -0x42t
        -0x6bt
        -0x45t
        0xet
        0x18t
        0x3t
        -0x1ft
        -0x54t
        -0x41t
        -0x6ct
        -0x71t
        -0x1t
        0x4bt
        0x52t
        -0x7dt
        -0x37t
        -0x29t
        -0x3t
        -0x15t
        0x58t
        0x4at
        0x63t
        -0x7et
        -0x3t
        0x27t
        -0x6ct
        -0x79t
        0xft
        0x2ft
        0x3t
        -0x19t
        -0x54t
        -0x47t
        -0x6bt
        -0x45t
        0xet
        0x18t
        0x2t
        -0x30t
        -0x54t
        -0x48t
        -0x6ct
        -0x79t
        0xft
        0x24t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
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
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    nop

    .line 89
    :array_1
    .array-data 1
        -0x21t
        -0x66t
        -0x2dt
        0x53t
        0x7ct
        0x7t
        0x44t
        0x3at
    .end array-data
.end method

.method public final q(Lj0/e;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lj0/e;->a:Lj0/d;

    .line 2
    .line 3
    sget-object v1, Lj0/d;->b:Lj0/d;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p1, Lj0/e;->b:Ln0/d;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lcom/example/navistart/home/WebLauncherActivity;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    check-cast v0, Lcom/example/navistart/home/WebLauncherActivity;

    .line 21
    .line 22
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lcom/example/navistart/cores/ProLanProxy;->getGuDisplayID()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    new-instance v2, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    new-array v3, v3, [B

    .line 40
    .line 41
    fill-array-data v3, :array_0

    .line 42
    .line 43
    .line 44
    const/16 v4, 0x8

    .line 45
    .line 46
    new-array v5, v4, [B

    .line 47
    .line 48
    fill-array-data v5, :array_1

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lj0/e;->b:Ln0/d;

    .line 59
    .line 60
    sget-object v1, Ln0/d;->l:Ln0/d;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    if-ne p1, v1, :cond_1

    .line 64
    .line 65
    const-class p1, Lm0/o;

    .line 66
    .line 67
    invoke-virtual {v0, p1, v2}, Lcom/example/navistart/home/WebLauncherActivity;->G(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_1
    sget-object v1, Ln0/d;->h0:Ln0/d;

    .line 72
    .line 73
    if-ne p1, v1, :cond_2

    .line 74
    .line 75
    const-class p1, Lm0/k2;

    .line 76
    .line 77
    invoke-virtual {v0, p1, v2}, Lcom/example/navistart/home/WebLauncherActivity;->G(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_2
    sget-object v1, Ln0/d;->A0:Ln0/d;

    .line 82
    .line 83
    if-ne p1, v1, :cond_3

    .line 84
    .line 85
    const/16 p1, 0x14

    .line 86
    .line 87
    new-array p1, p1, [B

    .line 88
    .line 89
    fill-array-data p1, :array_2

    .line 90
    .line 91
    .line 92
    new-array v1, v4, [B

    .line 93
    .line 94
    fill-array-data v1, :array_3

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v2, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    const-class p1, Lm0/w1;

    .line 105
    .line 106
    invoke-virtual {v0, p1, v2}, Lcom/example/navistart/home/WebLauncherActivity;->G(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    return v3

    .line 110
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 111
    return p1

    .line 112
    nop

    .line 113
    :array_0
    .array-data 1
        -0x57t
        -0x68t
        -0x51t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 1
        -0x33t
        -0xft
        -0x24t
        -0x12t
        -0x76t
        -0x28t
        0x12t
        0x1at
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 1
        0x5at
        -0x70t
        -0x80t
        0x2at
        -0x30t
        0x68t
        0x6ct
        -0x33t
        0x67t
        -0x6et
        -0x78t
        0x34t
        -0x22t
        0x6ft
        0x5dt
        -0x3ft
        0x51t
        -0x6bt
        -0x7et
        0x36t
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_3
    .array-data 1
        0x38t
        -0xft
        -0x19t
        0x58t
        -0x4ft
        0x1dt
        0x2t
        -0x57t
    .end array-data
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/k;->g:Ls1/f;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ls1/k;->b:Ls1/r;

    .line 7
    .line 8
    invoke-virtual {v1}, Ls1/r;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Ls1/k;->i:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-wide/16 v1, 0x1388

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const v1, -0xaf461e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x3da3d70a    # 0.08f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ls1/k;->h(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public final t(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x41800000    # 16.0f

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const p1, -0xdb7248

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const p1, -0xdfd3c8

    .line 39
    .line 40
    .line 41
    :goto_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    const p2, -0xaa431d

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const p2, -0xcbb9a9

    .line 48
    .line 49
    .line 50
    :goto_1
    const/16 v1, 0xf

    .line 51
    .line 52
    invoke-virtual {p0, p1, v1, p2}, Ls1/k;->o(III)Landroid/graphics/drawable/GradientDrawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public final u()Landroid/widget/LinearLayout;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0xe

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p0, v1}, Ls1/k;->h(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v3}, Ls1/k;->h(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x11

    .line 38
    .line 39
    const v2, -0xd5c6b8

    .line 40
    .line 41
    .line 42
    const v3, -0xe7ded4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3, v1, v2}, Ls1/k;->o(III)Landroid/graphics/drawable/GradientDrawable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final w(Ljava/lang/String;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const p1, -0x17110c

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    .line 18
    .line 19
    const/high16 p1, 0x41700000    # 15.0f

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x10

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Ls1/k;->h(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, p1}, Ls1/k;->h(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final x(IILjava/lang/String;)Landroid/widget/TextView;
    .locals 2

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
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final y()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls1/k;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ls1/k;->B()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ls1/k;->f:Landroid/widget/Button;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ls1/k;->r()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z()V
    .locals 24

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    iget-object v0, v2, Ls1/k;->g:Ls1/f;

    .line 4
    .line 5
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    const/4 v12, 0x1

    .line 9
    new-array v6, v12, [Landroid/app/AlertDialog;

    .line 10
    .line 11
    new-instance v7, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x18

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ls1/k;->h(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v3, 0x16

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ls1/k;->h(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v0}, Ls1/k;->h(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2, v0}, Ls1/k;->h(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v7, v1, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 44
    .line 45
    .line 46
    const v8, -0xf4eee7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x1b

    .line 53
    .line 54
    new-array v1, v0, [B

    .line 55
    .line 56
    fill-array-data v1, :array_0

    .line 57
    .line 58
    .line 59
    const/16 v9, 0x8

    .line 60
    .line 61
    new-array v3, v9, [B

    .line 62
    .line 63
    fill-array-data v3, :array_1

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/16 v10, 0xc

    .line 71
    .line 72
    const v11, -0xaf461e

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v10, v11, v1}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const v3, 0x3db851ec    # 0.09f

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x1d

    .line 89
    .line 90
    new-array v1, v1, [B

    .line 91
    .line 92
    fill-array-data v1, :array_2

    .line 93
    .line 94
    .line 95
    new-array v3, v9, [B

    .line 96
    .line 97
    fill-array-data v3, :array_3

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v13, -0x1

    .line 105
    invoke-virtual {v2, v0, v13, v1}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/4 v14, 0x5

    .line 110
    invoke-virtual {v2, v14}, Ls1/k;->h(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/4 v15, 0x3

    .line 115
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const/4 v4, 0x0

    .line 120
    invoke-virtual {v0, v4, v1, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    const/16 v0, 0x70

    .line 127
    .line 128
    new-array v0, v0, [B

    .line 129
    .line 130
    fill-array-data v0, :array_4

    .line 131
    .line 132
    .line 133
    new-array v1, v9, [B

    .line 134
    .line 135
    fill-array-data v1, :array_5

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const/16 v1, 0xe

    .line 143
    .line 144
    const v3, -0x645546

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v1, v3, v0}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/16 v5, 0x12

    .line 152
    .line 153
    invoke-virtual {v2, v5}, Ls1/k;->h(I)I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ls1/k;->u()Landroid/widget/LinearLayout;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const/16 v5, 0x12

    .line 168
    .line 169
    new-array v5, v5, [B

    .line 170
    .line 171
    fill-array-data v5, :array_6

    .line 172
    .line 173
    .line 174
    new-array v8, v9, [B

    .line 175
    .line 176
    fill-array-data v8, :array_7

    .line 177
    .line 178
    .line 179
    invoke-static {v5, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v2, v5}, Ls1/k;->s(Ljava/lang/String;)Landroid/widget/TextView;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    const/16 v5, 0x38

    .line 191
    .line 192
    new-array v5, v5, [B

    .line 193
    .line 194
    fill-array-data v5, :array_8

    .line 195
    .line 196
    .line 197
    new-array v8, v9, [B

    .line 198
    .line 199
    fill-array-data v8, :array_9

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v2, v5}, Ls1/k;->w(Ljava/lang/String;)Landroidx/appcompat/widget/SwitchCompat;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    iget-object v5, v2, Ls1/k;->b:Ls1/r;

    .line 211
    .line 212
    invoke-virtual {v5}, Ls1/r;->f()Z

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    invoke-virtual {v8, v11}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    invoke-virtual {v0, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    const/16 v11, 0x40

    .line 227
    .line 228
    new-array v11, v11, [B

    .line 229
    .line 230
    fill-array-data v11, :array_a

    .line 231
    .line 232
    .line 233
    new-array v14, v9, [B

    .line 234
    .line 235
    fill-array-data v14, :array_b

    .line 236
    .line 237
    .line 238
    invoke-static {v11, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v2, v11}, Ls1/k;->w(Ljava/lang/String;)Landroidx/appcompat/widget/SwitchCompat;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    iget-object v14, v5, Ls1/r;->a:Landroid/content/SharedPreferences;

    .line 247
    .line 248
    sget-object v15, Ls1/r;->h:Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    invoke-virtual {v11, v15}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-virtual {v0, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .line 263
    .line 264
    const/16 v15, 0x52

    .line 265
    .line 266
    new-array v15, v15, [B

    .line 267
    .line 268
    fill-array-data v15, :array_c

    .line 269
    .line 270
    .line 271
    new-array v10, v9, [B

    .line 272
    .line 273
    fill-array-data v10, :array_d

    .line 274
    .line 275
    .line 276
    invoke-static {v15, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    invoke-virtual {v2, v10}, Ls1/k;->w(Ljava/lang/String;)Landroidx/appcompat/widget/SwitchCompat;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    sget-object v15, Ls1/r;->i:Ljava/lang/String;

    .line 285
    .line 286
    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 287
    .line 288
    .line 289
    move-result v15

    .line 290
    invoke-virtual {v10, v15}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 291
    .line 292
    .line 293
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    invoke-virtual {v0, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .line 299
    .line 300
    const/16 v15, 0x2a

    .line 301
    .line 302
    new-array v15, v15, [B

    .line 303
    .line 304
    fill-array-data v15, :array_e

    .line 305
    .line 306
    .line 307
    new-array v13, v9, [B

    .line 308
    .line 309
    fill-array-data v13, :array_f

    .line 310
    .line 311
    .line 312
    invoke-static {v15, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    invoke-virtual {v2, v1, v3, v13}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    const/16 v15, 0xa

    .line 321
    .line 322
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    const/4 v12, 0x4

    .line 327
    invoke-virtual {v2, v12}, Ls1/k;->h(I)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {v13, v4, v15, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    .line 336
    .line 337
    new-instance v1, Landroid/widget/RadioGroup;

    .line 338
    .line 339
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 340
    .line 341
    .line 342
    move-result-object v13

    .line 343
    invoke-direct {v1, v13}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    .line 348
    .line 349
    const/16 v13, 0x14

    .line 350
    .line 351
    new-array v13, v13, [B

    .line 352
    .line 353
    fill-array-data v13, :array_10

    .line 354
    .line 355
    .line 356
    new-array v15, v9, [B

    .line 357
    .line 358
    fill-array-data v15, :array_11

    .line 359
    .line 360
    .line 361
    invoke-static {v13, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v13

    .line 365
    sget-object v15, Ls1/q;->b:Ls1/q;

    .line 366
    .line 367
    invoke-virtual {v2, v1, v13, v15}, Ls1/k;->c(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/q;)V

    .line 368
    .line 369
    .line 370
    const/16 v13, 0x10

    .line 371
    .line 372
    new-array v13, v13, [B

    .line 373
    .line 374
    fill-array-data v13, :array_12

    .line 375
    .line 376
    .line 377
    new-array v15, v9, [B

    .line 378
    .line 379
    fill-array-data v15, :array_13

    .line 380
    .line 381
    .line 382
    invoke-static {v13, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v13

    .line 386
    sget-object v15, Ls1/q;->c:Ls1/q;

    .line 387
    .line 388
    invoke-virtual {v2, v1, v13, v15}, Ls1/k;->c(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/q;)V

    .line 389
    .line 390
    .line 391
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 392
    .line 393
    .line 394
    move-result-object v13

    .line 395
    invoke-virtual {v0, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    .line 397
    .line 398
    const/16 v13, 0x34

    .line 399
    .line 400
    new-array v13, v13, [B

    .line 401
    .line 402
    fill-array-data v13, :array_14

    .line 403
    .line 404
    .line 405
    new-array v15, v9, [B

    .line 406
    .line 407
    fill-array-data v15, :array_15

    .line 408
    .line 409
    .line 410
    invoke-static {v13, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    const/16 v15, 0xe

    .line 415
    .line 416
    invoke-virtual {v2, v15, v3, v13}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 417
    .line 418
    .line 419
    move-result-object v13

    .line 420
    invoke-virtual {v2, v9}, Ls1/k;->h(I)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-virtual {v2, v12}, Ls1/k;->h(I)I

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    invoke-virtual {v13, v4, v3, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    .line 433
    .line 434
    new-instance v3, Landroid/widget/RadioGroup;

    .line 435
    .line 436
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    invoke-direct {v3, v12}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 444
    .line 445
    .line 446
    const/16 v12, 0x1a

    .line 447
    .line 448
    new-array v12, v12, [B

    .line 449
    .line 450
    fill-array-data v12, :array_16

    .line 451
    .line 452
    .line 453
    new-array v4, v9, [B

    .line 454
    .line 455
    fill-array-data v4, :array_17

    .line 456
    .line 457
    .line 458
    invoke-static {v12, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    sget-object v12, Ls1/p;->b:Ls1/p;

    .line 463
    .line 464
    invoke-virtual {v2, v3, v4, v12}, Ls1/k;->b(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/p;)V

    .line 465
    .line 466
    .line 467
    const/16 v4, 0x16

    .line 468
    .line 469
    new-array v4, v4, [B

    .line 470
    .line 471
    fill-array-data v4, :array_18

    .line 472
    .line 473
    .line 474
    new-array v12, v9, [B

    .line 475
    .line 476
    fill-array-data v12, :array_19

    .line 477
    .line 478
    .line 479
    invoke-static {v4, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    sget-object v12, Ls1/p;->c:Ls1/p;

    .line 484
    .line 485
    invoke-virtual {v2, v3, v4, v12}, Ls1/k;->b(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/p;)V

    .line 486
    .line 487
    .line 488
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    move-object v4, v0

    .line 496
    new-instance v0, Lm0/s2;

    .line 497
    .line 498
    move-object v12, v5

    .line 499
    move-object v5, v3

    .line 500
    move-object v3, v1

    .line 501
    const/4 v1, 0x1

    .line 502
    move-object v15, v13

    .line 503
    move-object v13, v4

    .line 504
    move-object v4, v15

    .line 505
    move-object/from16 v17, v12

    .line 506
    .line 507
    const/4 v12, 0x0

    .line 508
    const v15, -0x645546

    .line 509
    .line 510
    .line 511
    invoke-direct/range {v0 .. v5}, Lm0/s2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    new-instance v1, Lq0/i;

    .line 515
    .line 516
    const/4 v4, 0x1

    .line 517
    invoke-direct {v1, v4, v0}, Lq0/i;-><init>(ILjava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Lm0/s2;->run()V

    .line 524
    .line 525
    .line 526
    const/16 v0, 0x30

    .line 527
    .line 528
    new-array v0, v0, [B

    .line 529
    .line 530
    fill-array-data v0, :array_1a

    .line 531
    .line 532
    .line 533
    new-array v1, v9, [B

    .line 534
    .line 535
    fill-array-data v1, :array_1b

    .line 536
    .line 537
    .line 538
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v2, v0}, Ls1/k;->w(Ljava/lang/String;)Landroidx/appcompat/widget/SwitchCompat;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    sget-object v1, Ls1/r;->g:Ljava/lang/String;

    .line 547
    .line 548
    invoke-interface {v14, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 553
    .line 554
    .line 555
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    .line 561
    .line 562
    const/16 v1, 0x30

    .line 563
    .line 564
    new-array v1, v1, [B

    .line 565
    .line 566
    fill-array-data v1, :array_1c

    .line 567
    .line 568
    .line 569
    new-array v4, v9, [B

    .line 570
    .line 571
    fill-array-data v4, :array_1d

    .line 572
    .line 573
    .line 574
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-virtual {v2, v1}, Ls1/k;->w(Ljava/lang/String;)Landroidx/appcompat/widget/SwitchCompat;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    sget-object v4, Ls1/r;->f:Ljava/lang/String;

    .line 583
    .line 584
    invoke-interface {v14, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 589
    .line 590
    .line 591
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    invoke-virtual {v13, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    .line 597
    .line 598
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 599
    .line 600
    const/4 v14, -0x2

    .line 601
    const/4 v15, -0x1

    .line 602
    invoke-direct {v4, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 603
    .line 604
    .line 605
    const/16 v15, 0xc

    .line 606
    .line 607
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 608
    .line 609
    .line 610
    move-result v14

    .line 611
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 612
    .line 613
    invoke-virtual {v7, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2}, Ls1/k;->u()Landroid/widget/LinearLayout;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    const/16 v13, 0x18

    .line 621
    .line 622
    new-array v13, v13, [B

    .line 623
    .line 624
    fill-array-data v13, :array_1e

    .line 625
    .line 626
    .line 627
    new-array v14, v9, [B

    .line 628
    .line 629
    fill-array-data v14, :array_1f

    .line 630
    .line 631
    .line 632
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v13

    .line 636
    invoke-virtual {v2, v13}, Ls1/k;->s(Ljava/lang/String;)Landroid/widget/TextView;

    .line 637
    .line 638
    .line 639
    move-result-object v13

    .line 640
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 641
    .line 642
    .line 643
    new-instance v13, Landroid/widget/RadioGroup;

    .line 644
    .line 645
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 646
    .line 647
    .line 648
    move-result-object v14

    .line 649
    invoke-direct {v13, v14}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 653
    .line 654
    .line 655
    const/16 v14, 0xa

    .line 656
    .line 657
    new-array v14, v14, [B

    .line 658
    .line 659
    fill-array-data v14, :array_20

    .line 660
    .line 661
    .line 662
    new-array v15, v9, [B

    .line 663
    .line 664
    fill-array-data v15, :array_21

    .line 665
    .line 666
    .line 667
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v14

    .line 671
    sget-object v15, Ls1/o;->b:Ls1/o;

    .line 672
    .line 673
    invoke-virtual {v2, v13, v14, v15}, Ls1/k;->a(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/o;)V

    .line 674
    .line 675
    .line 676
    const/16 v15, 0xc

    .line 677
    .line 678
    new-array v14, v15, [B

    .line 679
    .line 680
    fill-array-data v14, :array_22

    .line 681
    .line 682
    .line 683
    move/from16 v18, v12

    .line 684
    .line 685
    new-array v12, v9, [B

    .line 686
    .line 687
    fill-array-data v12, :array_23

    .line 688
    .line 689
    .line 690
    invoke-static {v14, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v12

    .line 694
    sget-object v14, Ls1/o;->c:Ls1/o;

    .line 695
    .line 696
    invoke-virtual {v2, v13, v12, v14}, Ls1/k;->a(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/o;)V

    .line 697
    .line 698
    .line 699
    new-array v12, v15, [B

    .line 700
    .line 701
    fill-array-data v12, :array_24

    .line 702
    .line 703
    .line 704
    new-array v14, v9, [B

    .line 705
    .line 706
    fill-array-data v14, :array_25

    .line 707
    .line 708
    .line 709
    invoke-static {v12, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v12

    .line 713
    sget-object v14, Ls1/o;->d:Ls1/o;

    .line 714
    .line 715
    invoke-virtual {v2, v13, v12, v14}, Ls1/k;->a(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/o;)V

    .line 716
    .line 717
    .line 718
    const/16 v12, 0xa

    .line 719
    .line 720
    new-array v12, v12, [B

    .line 721
    .line 722
    fill-array-data v12, :array_26

    .line 723
    .line 724
    .line 725
    new-array v14, v9, [B

    .line 726
    .line 727
    fill-array-data v14, :array_27

    .line 728
    .line 729
    .line 730
    invoke-static {v12, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v12

    .line 734
    sget-object v14, Ls1/o;->e:Ls1/o;

    .line 735
    .line 736
    invoke-virtual {v2, v13, v12, v14}, Ls1/k;->a(Landroid/widget/RadioGroup;Ljava/lang/String;Ls1/o;)V

    .line 737
    .line 738
    .line 739
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 740
    .line 741
    .line 742
    move-result-object v12

    .line 743
    invoke-virtual {v4, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    .line 745
    .line 746
    const/16 v12, 0xf

    .line 747
    .line 748
    const v14, -0x271d15

    .line 749
    .line 750
    .line 751
    const-string v15, ""

    .line 752
    .line 753
    invoke-virtual {v2, v12, v14, v15}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 754
    .line 755
    .line 756
    move-result-object v12

    .line 757
    new-instance v14, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .line 761
    .line 762
    const/16 v15, 0x35

    .line 763
    .line 764
    new-array v15, v15, [B

    .line 765
    .line 766
    fill-array-data v15, :array_28

    .line 767
    .line 768
    .line 769
    move-object/from16 v19, v0

    .line 770
    .line 771
    new-array v0, v9, [B

    .line 772
    .line 773
    fill-array-data v0, :array_29

    .line 774
    .line 775
    .line 776
    invoke-static {v15, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual/range {v17 .. v17}, Ls1/r;->c()I

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    const/4 v0, 0x1

    .line 791
    new-array v15, v0, [B

    .line 792
    .line 793
    const/16 v0, 0x64

    .line 794
    .line 795
    aput-byte v0, v15, v18

    .line 796
    .line 797
    new-array v0, v9, [B

    .line 798
    .line 799
    fill-array-data v0, :array_2a

    .line 800
    .line 801
    .line 802
    invoke-static {v15, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    .line 815
    .line 816
    const/16 v15, 0xc

    .line 817
    .line 818
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    const/16 v14, 0x9

    .line 823
    .line 824
    invoke-virtual {v2, v14}, Ls1/k;->h(I)I

    .line 825
    .line 826
    .line 827
    move-result v14

    .line 828
    move/from16 v15, v18

    .line 829
    .line 830
    invoke-virtual {v12, v15, v0, v15, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 834
    .line 835
    .line 836
    const/16 v0, 0x35

    .line 837
    .line 838
    new-array v0, v0, [B

    .line 839
    .line 840
    fill-array-data v0, :array_2b

    .line 841
    .line 842
    .line 843
    new-array v14, v9, [B

    .line 844
    .line 845
    fill-array-data v14, :array_2c

    .line 846
    .line 847
    .line 848
    invoke-static {v0, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-virtual {v2, v0, v15}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    new-instance v14, Lr0/c;

    .line 857
    .line 858
    invoke-direct {v14, v2, v6, v13, v12}, Lr0/c;-><init>(Ls1/k;[Landroid/app/AlertDialog;Landroid/widget/RadioGroup;Landroid/widget/TextView;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    .line 863
    .line 864
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 865
    .line 866
    const/16 v14, 0x32

    .line 867
    .line 868
    invoke-virtual {v2, v14}, Ls1/k;->h(I)I

    .line 869
    .line 870
    .line 871
    move-result v15

    .line 872
    const/4 v14, -0x1

    .line 873
    invoke-direct {v12, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v4, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    .line 878
    .line 879
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 880
    .line 881
    const/4 v12, -0x2

    .line 882
    invoke-direct {v0, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 883
    .line 884
    .line 885
    const/16 v15, 0xc

    .line 886
    .line 887
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 888
    .line 889
    .line 890
    move-result v12

    .line 891
    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 892
    .line 893
    invoke-virtual {v7, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    .line 895
    .line 896
    const/16 v0, 0x24

    .line 897
    .line 898
    new-array v0, v0, [B

    .line 899
    .line 900
    fill-array-data v0, :array_2d

    .line 901
    .line 902
    .line 903
    new-array v4, v9, [B

    .line 904
    .line 905
    fill-array-data v4, :array_2e

    .line 906
    .line 907
    .line 908
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    const/4 v4, 0x1

    .line 913
    invoke-virtual {v2, v0, v4}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    new-instance v4, Ls1/i;

    .line 918
    .line 919
    const/4 v15, 0x0

    .line 920
    invoke-direct {v4, v2, v6, v15}, Ls1/i;-><init>(Ls1/k;[Landroid/app/AlertDialog;I)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    .line 925
    .line 926
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 927
    .line 928
    const/16 v12, 0x38

    .line 929
    .line 930
    invoke-virtual {v2, v12}, Ls1/k;->h(I)I

    .line 931
    .line 932
    .line 933
    move-result v12

    .line 934
    const/4 v15, -0x1

    .line 935
    invoke-direct {v4, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 936
    .line 937
    .line 938
    const/16 v15, 0xc

    .line 939
    .line 940
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 941
    .line 942
    .line 943
    move-result v12

    .line 944
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 945
    .line 946
    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    .line 948
    .line 949
    const/16 v0, 0x2e

    .line 950
    .line 951
    new-array v0, v0, [B

    .line 952
    .line 953
    fill-array-data v0, :array_2f

    .line 954
    .line 955
    .line 956
    new-array v4, v9, [B

    .line 957
    .line 958
    fill-array-data v4, :array_30

    .line 959
    .line 960
    .line 961
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    const/4 v15, 0x0

    .line 966
    invoke-virtual {v2, v0, v15}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    new-instance v4, Ls1/i;

    .line 971
    .line 972
    const/4 v12, 0x1

    .line 973
    invoke-direct {v4, v2, v6, v12}, Ls1/i;-><init>(Ls1/k;[Landroid/app/AlertDialog;I)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    .line 978
    .line 979
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 980
    .line 981
    const/16 v12, 0x36

    .line 982
    .line 983
    invoke-virtual {v2, v12}, Ls1/k;->h(I)I

    .line 984
    .line 985
    .line 986
    move-result v14

    .line 987
    const/4 v15, -0x1

    .line 988
    invoke-direct {v4, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 989
    .line 990
    .line 991
    const/16 v15, 0xc

    .line 992
    .line 993
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 994
    .line 995
    .line 996
    move-result v14

    .line 997
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 998
    .line 999
    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    .line 1001
    .line 1002
    const/16 v0, 0x35

    .line 1003
    .line 1004
    new-array v0, v0, [B

    .line 1005
    .line 1006
    fill-array-data v0, :array_31

    .line 1007
    .line 1008
    .line 1009
    new-array v4, v9, [B

    .line 1010
    .line 1011
    fill-array-data v4, :array_32

    .line 1012
    .line 1013
    .line 1014
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    const/4 v15, 0x0

    .line 1019
    invoke-virtual {v2, v0, v15}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    new-instance v4, Ls1/i;

    .line 1024
    .line 1025
    const/4 v14, 0x2

    .line 1026
    invoke-direct {v4, v2, v6, v14}, Ls1/i;-><init>(Ls1/k;[Landroid/app/AlertDialog;I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    .line 1031
    .line 1032
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1033
    .line 1034
    invoke-virtual {v2, v12}, Ls1/k;->h(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v14

    .line 1038
    const/4 v15, -0x1

    .line 1039
    invoke-direct {v4, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1040
    .line 1041
    .line 1042
    const/16 v15, 0xc

    .line 1043
    .line 1044
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 1045
    .line 1046
    .line 1047
    move-result v14

    .line 1048
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1049
    .line 1050
    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    .line 1052
    .line 1053
    const/16 v0, 0x1c

    .line 1054
    .line 1055
    new-array v0, v0, [B

    .line 1056
    .line 1057
    fill-array-data v0, :array_33

    .line 1058
    .line 1059
    .line 1060
    new-array v4, v9, [B

    .line 1061
    .line 1062
    fill-array-data v4, :array_34

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    const/4 v15, 0x0

    .line 1070
    invoke-virtual {v2, v0, v15}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    new-instance v4, Ls1/i;

    .line 1075
    .line 1076
    const/4 v14, 0x3

    .line 1077
    invoke-direct {v4, v2, v6, v14}, Ls1/i;-><init>(Ls1/k;[Landroid/app/AlertDialog;I)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    .line 1082
    .line 1083
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1084
    .line 1085
    invoke-virtual {v2, v12}, Ls1/k;->h(I)I

    .line 1086
    .line 1087
    .line 1088
    move-result v12

    .line 1089
    const/4 v15, -0x1

    .line 1090
    invoke-direct {v4, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1091
    .line 1092
    .line 1093
    const/16 v15, 0xc

    .line 1094
    .line 1095
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 1096
    .line 1097
    .line 1098
    move-result v12

    .line 1099
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1100
    .line 1101
    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v2}, Ls1/k;->u()Landroid/widget/LinearLayout;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    const/16 v4, 0x1f

    .line 1109
    .line 1110
    new-array v4, v4, [B

    .line 1111
    .line 1112
    fill-array-data v4, :array_35

    .line 1113
    .line 1114
    .line 1115
    new-array v12, v9, [B

    .line 1116
    .line 1117
    fill-array-data v12, :array_36

    .line 1118
    .line 1119
    .line 1120
    invoke-static {v4, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v4

    .line 1124
    invoke-virtual {v2, v4}, Ls1/k;->s(Ljava/lang/String;)Landroid/widget/TextView;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1129
    .line 1130
    .line 1131
    const/16 v4, 0x51

    .line 1132
    .line 1133
    new-array v4, v4, [B

    .line 1134
    .line 1135
    fill-array-data v4, :array_37

    .line 1136
    .line 1137
    .line 1138
    new-array v12, v9, [B

    .line 1139
    .line 1140
    fill-array-data v12, :array_38

    .line 1141
    .line 1142
    .line 1143
    invoke-static {v4, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v4

    .line 1147
    const/16 v12, 0xd

    .line 1148
    .line 1149
    const v15, -0x645546

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v2, v12, v15, v4}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v4

    .line 1156
    invoke-virtual {v2, v9}, Ls1/k;->h(I)I

    .line 1157
    .line 1158
    .line 1159
    move-result v12

    .line 1160
    const/4 v15, 0x0

    .line 1161
    invoke-virtual {v4, v15, v15, v15, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1165
    .line 1166
    .line 1167
    new-instance v4, Lj0/c;

    .line 1168
    .line 1169
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v12

    .line 1173
    invoke-direct {v4, v12}, Lj0/c;-><init>(Landroid/content/Context;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v4}, Lj0/c;->e()Ljava/util/ArrayList;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v4

    .line 1180
    const/4 v12, 0x6

    .line 1181
    move-object v14, v6

    .line 1182
    move-object v6, v11

    .line 1183
    new-array v11, v12, [Landroid/widget/Spinner;

    .line 1184
    .line 1185
    const/4 v15, 0x0

    .line 1186
    :goto_0
    if-ge v15, v12, :cond_0

    .line 1187
    .line 1188
    new-instance v12, Landroid/widget/LinearLayout;

    .line 1189
    .line 1190
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v9

    .line 1194
    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1195
    .line 1196
    .line 1197
    const/16 v9, 0x10

    .line 1198
    .line 1199
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1200
    .line 1201
    .line 1202
    move-object/from16 v20, v1

    .line 1203
    .line 1204
    const/16 v9, 0xc

    .line 1205
    .line 1206
    invoke-virtual {v2, v9}, Ls1/k;->h(I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    move-object/from16 v16, v3

    .line 1211
    .line 1212
    const/4 v9, 0x5

    .line 1213
    invoke-virtual {v2, v9}, Ls1/k;->h(I)I

    .line 1214
    .line 1215
    .line 1216
    move-result v3

    .line 1217
    move-object/from16 v21, v5

    .line 1218
    .line 1219
    move-object/from16 v22, v6

    .line 1220
    .line 1221
    const/16 v5, 0x8

    .line 1222
    .line 1223
    invoke-virtual {v2, v5}, Ls1/k;->h(I)I

    .line 1224
    .line 1225
    .line 1226
    move-result v6

    .line 1227
    invoke-virtual {v2, v9}, Ls1/k;->h(I)I

    .line 1228
    .line 1229
    .line 1230
    move-result v5

    .line 1231
    invoke-virtual {v12, v1, v3, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1232
    .line 1233
    .line 1234
    const v1, -0xefe7df

    .line 1235
    .line 1236
    .line 1237
    const v3, -0xd6c8ba

    .line 1238
    .line 1239
    .line 1240
    const/16 v5, 0xc

    .line 1241
    .line 1242
    invoke-virtual {v2, v1, v5, v3}, Ls1/k;->o(III)Landroid/graphics/drawable/GradientDrawable;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    .line 1248
    .line 1249
    add-int/lit8 v1, v15, 0x1

    .line 1250
    .line 1251
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    const v5, -0xaf461e

    .line 1256
    .line 1257
    .line 1258
    const/16 v6, 0xe

    .line 1259
    .line 1260
    invoke-virtual {v2, v6, v5, v3}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v3

    .line 1264
    const/16 v5, 0x11

    .line 1265
    .line 1266
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1267
    .line 1268
    .line 1269
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1270
    .line 1271
    const/16 v6, 0x22

    .line 1272
    .line 1273
    invoke-virtual {v2, v6}, Ls1/k;->h(I)I

    .line 1274
    .line 1275
    .line 1276
    move-result v6

    .line 1277
    const/16 v9, 0x2c

    .line 1278
    .line 1279
    invoke-virtual {v2, v9}, Ls1/k;->h(I)I

    .line 1280
    .line 1281
    .line 1282
    move-result v9

    .line 1283
    invoke-direct {v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v12, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1287
    .line 1288
    .line 1289
    new-instance v3, Landroid/widget/Spinner;

    .line 1290
    .line 1291
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v5

    .line 1295
    const/4 v6, 0x1

    .line 1296
    invoke-direct {v3, v5, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 1297
    .line 1298
    .line 1299
    new-instance v5, Lj0/b;

    .line 1300
    .line 1301
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v6

    .line 1305
    invoke-direct {v5, v6, v4}, Lj0/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1309
    .line 1310
    .line 1311
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1314
    .line 1315
    .line 1316
    sget-object v6, Ls1/k;->s:Ljava/lang/String;

    .line 1317
    .line 1318
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v6

    .line 1332
    invoke-static {v6, v5}, Lj0/f;->e(Landroid/content/Context;Ljava/lang/String;)Lj0/e;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v5

    .line 1336
    invoke-static {v5, v4}, Ls1/k;->i(Lj0/e;Ljava/util/ArrayList;)I

    .line 1337
    .line 1338
    .line 1339
    move-result v5

    .line 1340
    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1341
    .line 1342
    .line 1343
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1344
    .line 1345
    const/16 v6, 0x32

    .line 1346
    .line 1347
    invoke-virtual {v2, v6}, Ls1/k;->h(I)I

    .line 1348
    .line 1349
    .line 1350
    move-result v9

    .line 1351
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1352
    .line 1353
    move/from16 v23, v1

    .line 1354
    .line 1355
    const/4 v1, 0x0

    .line 1356
    invoke-direct {v5, v1, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v12, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    .line 1361
    .line 1362
    invoke-static {}, Ls1/k;->v()Landroid/widget/LinearLayout$LayoutParams;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v1

    .line 1366
    const/4 v5, 0x7

    .line 1367
    invoke-virtual {v2, v5}, Ls1/k;->h(I)I

    .line 1368
    .line 1369
    .line 1370
    move-result v5

    .line 1371
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1372
    .line 1373
    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    .line 1375
    .line 1376
    aput-object v3, v11, v15

    .line 1377
    .line 1378
    move-object/from16 v3, v16

    .line 1379
    .line 1380
    move-object/from16 v1, v20

    .line 1381
    .line 1382
    move-object/from16 v5, v21

    .line 1383
    .line 1384
    move-object/from16 v6, v22

    .line 1385
    .line 1386
    move/from16 v15, v23

    .line 1387
    .line 1388
    const/16 v9, 0x8

    .line 1389
    .line 1390
    const/4 v12, 0x6

    .line 1391
    goto/16 :goto_0

    .line 1392
    .line 1393
    :cond_0
    move-object/from16 v20, v1

    .line 1394
    .line 1395
    move-object/from16 v16, v3

    .line 1396
    .line 1397
    move-object/from16 v21, v5

    .line 1398
    .line 1399
    move-object/from16 v22, v6

    .line 1400
    .line 1401
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1402
    .line 1403
    const/4 v12, -0x2

    .line 1404
    const/4 v15, -0x1

    .line 1405
    invoke-direct {v1, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1406
    .line 1407
    .line 1408
    const/16 v15, 0xc

    .line 1409
    .line 1410
    invoke-virtual {v2, v15}, Ls1/k;->h(I)I

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1415
    .line 1416
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1417
    .line 1418
    .line 1419
    new-instance v0, Landroid/widget/ScrollView;

    .line 1420
    .line 1421
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v1

    .line 1425
    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1426
    .line 1427
    .line 1428
    const/4 v4, 0x1

    .line 1429
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1430
    .line 1431
    .line 1432
    const v1, -0xf4eee7

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1439
    .line 1440
    .line 1441
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 1442
    .line 1443
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v3

    .line 1447
    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    const/16 v1, 0x12

    .line 1455
    .line 1456
    new-array v1, v1, [B

    .line 1457
    .line 1458
    fill-array-data v1, :array_39

    .line 1459
    .line 1460
    .line 1461
    const/16 v5, 0x8

    .line 1462
    .line 1463
    new-array v3, v5, [B

    .line 1464
    .line 1465
    fill-array-data v3, :array_3a

    .line 1466
    .line 1467
    .line 1468
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v1

    .line 1472
    const/4 v3, 0x0

    .line 1473
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    const/16 v15, 0xc

    .line 1478
    .line 1479
    new-array v1, v15, [B

    .line 1480
    .line 1481
    fill-array-data v1, :array_3b

    .line 1482
    .line 1483
    .line 1484
    new-array v4, v5, [B

    .line 1485
    .line 1486
    fill-array-data v4, :array_3c

    .line 1487
    .line 1488
    .line 1489
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v0

    .line 1497
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v1

    .line 1501
    const/16 v18, 0x0

    .line 1502
    .line 1503
    aput-object v1, v14, v18

    .line 1504
    .line 1505
    new-instance v0, Ls1/j;

    .line 1506
    .line 1507
    move-object v5, v8

    .line 1508
    move-object v7, v10

    .line 1509
    move-object v4, v13

    .line 1510
    move-object/from16 v8, v19

    .line 1511
    .line 1512
    move-object/from16 v9, v20

    .line 1513
    .line 1514
    move-object/from16 v3, v21

    .line 1515
    .line 1516
    move-object v10, v2

    .line 1517
    move-object/from16 v2, v16

    .line 1518
    .line 1519
    invoke-direct/range {v0 .. v11}, Ls1/j;-><init>(Landroid/app/AlertDialog;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Ls1/k;[Landroid/widget/Spinner;)V

    .line 1520
    .line 1521
    .line 1522
    move-object v2, v10

    .line 1523
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1524
    .line 1525
    .line 1526
    new-instance v0, Lm7/c;

    .line 1527
    .line 1528
    const/4 v4, 0x1

    .line 1529
    invoke-direct {v0, v2, v4}, Lm7/c;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1536
    .line 1537
    .line 1538
    return-void

    .line 1539
    :array_0
    .array-data 1
        -0x39t
        0x2ct
        0x0t
        0xct
        0x57t
        0x78t
        -0xdt
        0x50t
        -0x39t
        0x11t
        0x0t
        0x2t
        0x57t
        0x40t
        -0xdt
        0x68t
        -0x39t
        0x21t
        -0x10t
        -0x2at
        -0x3ct
        -0x73t
        0x3t
        -0x46t
        0x58t
        -0x4t
        -0x6bt
    .end array-data

    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    :array_1
    .array-data 1
        0x17t
        -0x4ft
        -0x30t
        -0x64t
        -0x79t
        -0x27t
        0x23t
        -0xet
    .end array-data

    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    :array_2
    .array-data 1
        0x75t
        -0x3ft
        0x62t
        0x74t
        -0x4dt
        0x28t
        0x59t
        -0x47t
        0x75t
        -0x1bt
        0x63t
        0x48t
        0x43t
        0x45t
        0x32t
        -0x24t
        0x15t
        -0x71t
        0x31t
        0x14t
        -0x22t
        0x44t
        0xet
        -0x24t
        0x10t
        -0x71t
        0x32t
        0x14t
        -0x2dt
    .end array-data

    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    nop

    .line 1585
    :array_3
    .array-data 1
        -0x5bt
        0x5et
        -0x4et
        -0x3ct
        0x63t
        -0x6bt
        -0x77t
        0xct
    .end array-data

    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    :array_4
    .array-data 1
        0x76t
        -0x60t
        -0x51t
        0x3ft
        0x60t
        0x3ct
        -0x54t
        0x7bt
        0x77t
        -0x43t
        -0x51t
        0x31t
        0x61t
        0x4t
        -0x54t
        0x7bt
        0x76t
        -0x78t
        0x5ft
        0x5ft
        0xet
        0x6dt
        -0x3dt
        0x29t
        0x14t
        -0x13t
        -0x36t
        0x5ft
        0x5t
        0x6dt
        -0x38t
        0x29t
        0x1bt
        -0x13t
        -0x39t
        0x5ft
        0x4t
        -0x6ft
        0x5dt
        0x28t
        0x26t
        -0x13t
        -0x31t
        0x5et
        0x30t
        0x6dt
        -0x3et
        0x29t
        0x18t
        -0x13t
        -0x3ct
        0x5ft
        0xft
        0x6dt
        -0x35t
        0x29t
        0x13t
        -0x13t
        -0x3et
        0x5ft
        0x9t
        0x6dt
        -0x38t
        -0x27t
        0x76t
        -0x7bt
        0x5ft
        0x5ft
        0x0t
        0x6ct
        -0xat
        0x28t
        0x27t
        -0x14t
        -0x3t
        0x5et
        0x31t
        0x6ct
        -0xat
        0x29t
        0x13t
        0x1dt
        -0x51t
        0x3bt
        0x61t
        0x8t
        -0x53t
        0x40t
        0x77t
        -0x44t
        -0x52t
        0xdt
        0x61t
        0xft
        -0x53t
        0x41t
        0x77t
        -0x4et
        0x5ft
        0x5ft
        0xet
        0x6dt
        -0x33t
        0x29t
        0x1bt
        -0x13t
        -0x36t
        0x5ft
        0xat
        0x6dt
        -0x3bt
        -0x29t
    .end array-data

    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    :array_5
    .array-data 1
        -0x5at
        0x3dt
        0x7ft
        -0x71t
        -0x4ft
        -0x43t
        0x7dt
        -0x7t
    .end array-data

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    :array_6
    .array-data 1
        -0x5ct
        -0x3bt
        0x6ft
        -0x8t
        -0x3t
        0x4bt
        -0x3at
        0x46t
        -0x5ct
        -0x32t
        0x6ft
        -0xdt
        -0x3t
        0x44t
        -0x3at
        0x4bt
        -0x5ct
        -0x31t
    .end array-data

    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    nop

    .line 1675
    :array_7
    .array-data 1
        0x74t
        0x5at
        -0x41t
        0x66t
        0x2dt
        -0x27t
        0x16t
        -0x2dt
    .end array-data

    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    :array_8
    .array-data 1
        -0x62t
        -0x35t
        -0x41t
        0x66t
        -0x8t
        0x15t
        0x78t
        0x3et
        -0x62t
        -0x19t
        -0x41t
        0x64t
        -0x8t
        0x15t
        0x78t
        0x38t
        -0x61t
        -0x24t
        -0x41t
        0x61t
        -0x8t
        0x16t
        0x78t
        0x3at
        -0x62t
        -0x1dt
        0x4ft
        0x5t
        -0x58t
        0x47t
        0x12t
        0x51t
        -0x32t
        -0x76t
        -0x1ct
        0x4t
        -0x65t
        0x47t
        0x18t
        0x51t
        -0x34t
        -0x76t
        -0x1dt
        -0xct
        -0x7t
        0x28t
        0x78t
        0x30t
        -0x62t
        -0x1at
        -0x41t
        0x61t
        -0x7t
        0x2ct
        0x79t
        0xct
    .end array-data

    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    :array_9
    .array-data 1
        0x4et
        0x5bt
        0x6ft
        -0x2ct
        0x29t
        -0x69t
        -0x58t
        -0x80t
    .end array-data

    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    :array_a
    .array-data 1
        -0x7ft
        -0x2dt
        -0x7t
        -0x68t
        -0x67t
        -0x33t
        -0x61t
        0x56t
        -0x80t
        -0x3et
        -0x7t
        -0x68t
        -0x68t
        -0xft
        -0x62t
        0x68t
        -0x7ft
        -0xdt
        -0x8t
        -0x53t
        -0x68t
        -0x9t
        -0x61t
        0x5at
        -0x7ft
        -0xdt
        -0x7t
        -0x69t
        -0x68t
        -0x9t
        -0x61t
        0x5dt
        0x71t
        -0x6dt
        -0x6at
        -0x6t
        -0xdt
        -0x61t
        -0x1t
        0x38t
        -0x1dt
        -0x6dt
        -0x67t
        -0x5t
        -0x3at
        -0x62t
        -0x3at
        0x38t
        -0x1ct
        -0x6dt
        -0x66t
        -0x6t
        -0xat
        0x6ft
        -0x61t
        0x53t
        -0x7ft
        -0x3t
        -0x8t
        -0x58t
        -0x68t
        -0xbt
        -0x61t
        0x58t
    .end array-data

    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    :array_b
    .array-data 1
        0x51t
        0x43t
        0x29t
        0x2at
        0x48t
        0x4ft
        0x4ft
        -0x18t
    .end array-data

    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    :array_c
    .array-data 1
        -0x67t
        0x51t
        -0x56t
        0x2ft
        0x64t
        -0x6et
        -0x70t
        0xft
        -0x67t
        0x79t
        -0x55t
        0x1at
        0x64t
        -0x66t
        -0x70t
        0xft
        -0x68t
        0x4ct
        -0x55t
        0x1dt
        -0x6ct
        -0x8t
        -0x1t
        0x6ft
        -0xet
        0x1et
        -0x36t
        0x41t
        0x6t
        -0x8t
        -0x10t
        0x6et
        -0x39t
        0x1ft
        -0xdt
        0x40t
        0x37t
        -0x7t
        -0x32t
        -0x61t
        -0x67t
        0x71t
        -0x56t
        0x21t
        0x64t
        -0x6bt
        -0x70t
        0xat
        -0x67t
        0x75t
        -0x55t
        0x1dt
        -0x6ct
        -0x8t
        -0x1t
        0x6ft
        -0x9t
        0x1et
        -0x38t
        0x41t
        0x1t
        -0x7t
        -0x40t
        0x6et
        -0x34t
        -0x12t
        -0x56t
        0x2at
        0x64t
        -0x68t
        -0x6ft
        0x3ct
        -0x67t
        0x73t
        -0x55t
        0x16t
        0x64t
        -0x63t
        -0x6ft
        0x3ft
        -0x67t
        0x7et
    .end array-data

    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    nop

    .line 1813
    :array_d
    .array-data 1
        0x49t
        -0x32t
        0x7at
        -0x6ft
        -0x4ct
        0x28t
        0x40t
        -0x41t
    .end array-data

    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    :array_e
    .array-data 1
        -0x62t
        -0x34t
        0x7ct
        -0x3t
        -0x24t
        0x31t
        0x23t
        0x50t
        -0x62t
        -0x28t
        -0x74t
        -0x6dt
        -0x4et
        0x61t
        0x48t
        0x3ct
        -0x2t
        -0x48t
        0x1et
        -0x6dt
        -0x43t
        0x60t
        0x7dt
        0x3dt
        -0x39t
        -0x48t
        0x19t
        -0x6dt
        -0x42t
        0x61t
        0x4dt
        -0x34t
        -0x62t
        -0x2dt
        0x7ct
        -0x3t
        -0x24t
        0x33t
        0x23t
        0x56t
        -0x62t
        -0x28t
    .end array-data

    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    nop

    .line 1847
    :array_f
    .array-data 1
        0x4et
        0x68t
        -0x54t
        0x43t
        0xdt
        -0x4ft
        -0xdt
        -0x14t
    .end array-data

    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    :array_10
    .array-data 1
        -0x55t
        0x32t
        -0x3bt
        -0x2ct
        0x58t
        0x52t
        -0x24t
        0x1et
        -0x56t
        0x28t
        -0x3bt
        -0x2at
        0x59t
        0x60t
        -0x24t
        0x17t
        -0x56t
        0x23t
        -0x3bt
        -0x21t
    .end array-data

    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    :array_11
    .array-data 1
        0x7bt
        -0x58t
        0x15t
        0x66t
        -0x78t
        -0x1et
        0xct
        -0x56t
    .end array-data

    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    :array_12
    .array-data 1
        -0x24t
        0x43t
        -0x73t
        0x70t
        0x3dt
        -0x21t
        -0x33t
        -0x30t
        -0x24t
        0x61t
        -0x73t
        0x75t
        0x3ct
        -0x17t
        -0x33t
        -0x24t
    .end array-data

    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    :array_13
    .array-data 1
        0xct
        -0x28t
        0x5dt
        -0x38t
        -0x13t
        0x62t
        0x1dt
        0x65t
    .end array-data

    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    :array_14
    .array-data 1
        -0x2ft
        -0x54t
        -0x4bt
        -0x67t
        0x3t
        0x6bt
        -0x7at
        -0x6ft
        -0x2ft
        -0x7ft
        -0x4bt
        -0x65t
        0x3t
        0x6ft
        -0x79t
        -0x5ct
        -0x2ft
        -0x74t
        -0x4bt
        -0x6ft
        0x3t
        0x61t
        0x77t
        -0x3ft
        -0x46t
        -0x1ft
        -0x23t
        -0x7t
        0x6et
        0x4t
        -0x1et
        -0x3ft
        -0x48t
        -0x1ft
        -0x28t
        -0x7t
        0x6dt
        0x4t
        -0x1ct
        -0x3ft
        -0x41t
        0x11t
        -0x4bt
        -0x6et
        0x3t
        0x6at
        -0x7at
        -0x6dt
        -0x2ft
        -0x75t
        -0x4bt
        -0x67t
    .end array-data

    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    :array_15
    .array-data 1
        0x1t
        0x31t
        0x65t
        0x29t
        -0x2dt
        -0x2ct
        0x57t
        0x11t
    .end array-data

    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    :array_16
    .array-data 1
        -0x4et
        0x63t
        0x47t
        0x43t
        0x59t
        -0x7ft
        -0x16t
        0x4at
        -0x4et
        0x47t
        0x47t
        0x43t
        0x58t
        -0x44t
        -0x15t
        0x70t
        -0x4et
        0x40t
        0x47t
        0x46t
        0x59t
        -0x73t
        -0x16t
        0x4ft
        -0x4et
        0x4et
    .end array-data

    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    nop

    .line 1953
    :array_17
    .array-data 1
        0x62t
        -0x10t
        -0x69t
        -0x3t
        -0x78t
        0x1t
        0x3at
        -0xet
    .end array-data

    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    :array_18
    .array-data 1
        0x21t
        0x4et
        -0x36t
        -0x73t
        -0x56t
        0xdt
        0x14t
        0x39t
        0x21t
        0x64t
        -0x36t
        -0x7et
        -0x55t
        0x3dt
        0x15t
        0x0t
        0x20t
        0x50t
        -0x36t
        -0x7bt
        -0x55t
        0x33t
    .end array-data

    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    nop

    .line 1977
    :array_19
    .array-data 1
        -0xft
        -0x24t
        0x1at
        0x38t
        0x7bt
        -0x73t
        -0x3bt
        -0x45t
    .end array-data

    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    :array_1a
    .array-data 1
        -0x70t
        -0x25t
        -0x4bt
        -0x55t
        -0x37t
        -0x1at
        -0x6et
        0x78t
        -0x70t
        -0x6t
        0x45t
        -0x3bt
        -0x5bt
        -0x4ct
        -0x9t
        0x16t
        -0xct
        -0x70t
        -0x2bt
        -0x3bt
        -0x56t
        -0x4ct
        -0x1t
        0x16t
        -0x8t
        -0x6ft
        -0x20t
        0x35t
        -0x37t
        -0x1ct
        -0x6et
        0x76t
        -0x70t
        -0x9t
        -0x4bt
        -0x5ft
        -0x38t
        -0x2ft
        -0x6et
        0x7dt
        -0x70t
        -0xbt
        -0x4bt
        -0x58t
        -0x38t
        -0x24t
        -0x6et
        0x7ft
    .end array-data

    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    :array_1b
    .array-data 1
        0x40t
        0x40t
        0x65t
        0x15t
        0x18t
        0x64t
        0x42t
        -0x3at
    .end array-data

    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    :array_1c
    .array-data 1
        0x1dt
        0x7ct
        -0x23t
        0x7ct
        0x1ct
        0x2dt
        0x65t
        0x20t
        0x1dt
        0x5dt
        0x2dt
        0x12t
        0x70t
        0x7ft
        0x0t
        0x4et
        0x79t
        0x37t
        -0x43t
        0x12t
        0x7ft
        0x7ft
        0x8t
        0x4et
        0x75t
        0x36t
        -0x78t
        -0x1et
        0x1dt
        0x10t
        0x64t
        0x1et
        0x1dt
        0x5ft
        -0x23t
        0x79t
        0x1dt
        0x11t
        0x65t
        0x28t
        0x1dt
        0x52t
        -0x23t
        0x7ft
        0x1dt
        0x17t
        0x65t
        0x27t
    .end array-data

    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    :array_1d
    .array-data 1
        -0x33t
        -0x19t
        0xdt
        -0x3et
        -0x33t
        -0x51t
        -0x4bt
        -0x62t
    .end array-data

    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    :array_1e
    .array-data 1
        0x77t
        0x12t
        0x5bt
        -0x76t
        0x1bt
        -0x5at
        -0x7dt
        -0x77t
        0x77t
        0x2ct
        0x5bt
        -0x7ft
        0x1bt
        -0x67t
        -0x7dt
        -0x80t
        0x77t
        0x27t
        0x5bt
        -0x79t
        0x1bt
        -0x61t
        -0x7dt
        -0x7dt
    .end array-data

    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    :array_1f
    .array-data 1
        -0x59t
        -0x4et
        -0x75t
        0x1at
        -0x35t
        0x7t
        0x53t
        0x16t
    .end array-data

    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    :array_20
    .array-data 1
        -0x5ft
        -0x43t
        -0x6ft
        -0x60t
        -0x67t
        0x67t
        0x57t
        -0x67t
        -0x5ft
        -0x54t
    .end array-data

    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    nop

    .line 2091
    :array_21
    .array-data 1
        0x71t
        0x1ct
        0x41t
        0x1bt
        0x49t
        -0x2et
        -0x79t
        0x2bt
    .end array-data

    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    :array_22
    .array-data 1
        0x35t
        -0x5ct
        0x50t
        -0x2dt
        -0x6ft
        0x39t
        -0x3ct
        -0x3at
        0x35t
        -0x49t
        0x50t
        -0x24t
    .end array-data

    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    :array_23
    .array-data 1
        -0x1bt
        0x5t
        -0x80t
        0x6ct
        0x40t
        -0x47t
        0x14t
        0x76t
    .end array-data

    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    :array_24
    .array-data 1
        0x60t
        -0x16t
        -0x37t
        -0x17t
        0x5ct
        -0x80t
        0x4at
        0x74t
        0x61t
        -0x32t
        -0x38t
        -0x28t
    .end array-data

    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    :array_25
    .array-data 1
        -0x50t
        0x4bt
        0x19t
        0x5bt
        -0x74t
        0x35t
        -0x65t
        -0xct
    .end array-data

    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    :array_26
    .array-data 1
        -0x4dt
        0x19t
        -0xat
        0x48t
        -0x76t
        -0x7ft
        -0x5et
        -0x1et
        -0x4et
        0x3bt
    .end array-data

    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    nop

    .line 2145
    :array_27
    .array-data 1
        0x63t
        -0x48t
        0x26t
        -0xbt
        0x5at
        0x39t
        0x72t
        0x55t
    .end array-data

    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    :array_28
    .array-data 1
        0x41t
        -0x61t
        -0x24t
        0x9t
        0x49t
        -0x7et
        0x0t
        0x59t
        0x41t
        -0x4at
        -0x24t
        0x2t
        0x49t
        -0x7ct
        0x0t
        0x5ft
        0x41t
        -0x4bt
        0x2ct
        0x67t
        0x23t
        -0x17t
        0x6dt
        0x37t
        0x2ft
        -0x30t
        -0x4dt
        0x67t
        0x23t
        -0x17t
        0x68t
        -0x39t
        0x41t
        -0x4et
        -0x24t
        0x3t
        0x49t
        -0x79t
        0x0t
        0x5ct
        0x40t
        -0x74t
        0x2ct
        0x67t
        0x23t
        -0x18t
        0x50t
        0x37t
        0x21t
        -0x2ft
        -0x7dt
        -0x73t
        -0x47t
    .end array-data

    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    nop

    .line 2185
    :array_29
    .array-data 1
        -0x6ft
        0x0t
        0xct
        -0x49t
        -0x67t
        0x39t
        -0x30t
        -0x19t
    .end array-data

    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    :array_2a
    .array-data 1
        0x41t
        -0x36t
        -0x46t
        0x3dt
        -0x2dt
        0x66t
        0x28t
        -0x6t
    .end array-data

    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    :array_2b
    .array-data 1
        -0x2et
        -0xdt
        0x2at
        -0x3t
        0x3t
        -0x7bt
        -0x17t
        0x0t
        -0x2et
        -0x30t
        0x2at
        -0x3t
        0x3t
        -0x7ct
        -0x18t
        0x37t
        -0x2et
        -0x2ct
        0x2bt
        -0x36t
        0x3t
        -0x77t
        0x19t
        0x65t
        -0x48t
        -0x44t
        0x47t
        -0x68t
        0x6ct
        -0x2bt
        -0x7at
        0x65t
        -0x48t
        -0x43t
        0x79t
        0x68t
        0x2t
        -0x48t
        -0x17t
        0x5t
        0x22t
        -0x43t
        0x77t
        -0x68t
        0x68t
        -0x2ct
        -0x47t
        0x65t
        -0x4et
        -0x44t
        0x47t
        -0x68t
        0x67t
    .end array-data

    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    nop

    .line 2233
    :array_2c
    .array-data 1
        0x2t
        0x6ct
        -0x6t
        0x48t
        -0x2et
        0x5t
        0x39t
        -0x4bt
    .end array-data

    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    :array_2d
    .array-data 1
        0x57t
        -0x6bt
        -0x7dt
        -0x26t
        0x36t
        -0x2t
        -0x16t
        0x6t
        -0x59t
        -0x1at
        -0x2dt
        -0x41t
        0x56t
        -0x6et
        -0x76t
        0x5dt
        0x39t
        -0x1at
        -0x2ct
        -0x41t
        0x53t
        -0x6et
        -0x78t
        0x5dt
        0x39t
        0x17t
        -0x7et
        -0x12t
        0x37t
        -0x40t
        -0x15t
        0x33t
        0x57t
        -0x74t
        -0x7dt
        -0x21t
    .end array-data

    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    :array_2e
    .array-data 1
        -0x79t
        0x37t
        0x53t
        0x6ft
        -0x1at
        0x42t
        0x3bt
        -0x73t
    .end array-data

    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    :array_2f
    .array-data 1
        -0x19t
        0x45t
        -0x15t
        0x6dt
        -0x4t
        -0x54t
        0x4et
        0x1t
        -0x1at
        0x58t
        -0x15t
        0x63t
        -0x3t
        -0x6bt
        0x4et
        0x1t
        -0x1at
        0x54t
        0x1bt
        0xdt
        -0x70t
        -0x3t
        0x2ft
        0x52t
        -0x4bt
        0x8t
        -0x7dt
        0xdt
        -0x61t
        -0x3t
        0x22t
        0x52t
        -0x44t
        0x8t
        -0x7et
        -0x3t
        -0x4t
        -0x60t
        0x4ft
        0x39t
        -0x1at
        0x58t
        -0x15t
        0x6dt
        -0x3t
        -0x70t
    .end array-data

    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    nop

    .line 2299
    :array_30
    .array-data 1
        0x37t
        -0x28t
        0x3bt
        -0x23t
        0x2dt
        0x2dt
        -0x61t
        -0x7dt
    .end array-data

    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    :array_31
    .array-data 1
        0x25t
        -0x33t
        -0x4ct
        -0x43t
        0x3ft
        0x7dt
        0x34t
        0x3ft
        0x25t
        -0x11t
        -0x4ct
        -0x4ct
        0x3et
        0x40t
        -0x3bt
        0x6et
        0x71t
        -0x71t
        -0x25t
        -0x1at
        0x52t
        -0x14t
        0x35t
        0x2t
        0x25t
        -0x11t
        -0x4ct
        -0x4ct
        0x3ft
        0x74t
        0x35t
        0xdt
        0x25t
        -0x1et
        -0x4bt
        -0x78t
        0x3ft
        0x7ft
        0x35t
        0x1t
        -0x2bt
        -0x72t
        -0x18t
        -0x1at
        0x55t
        0x1dt
        0x65t
        0x6ft
        0x45t
        -0x71t
        -0x28t
        -0x1at
        0x5ft
    .end array-data

    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    .line 2324
    .line 2325
    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    .line 2335
    .line 2336
    .line 2337
    .line 2338
    nop

    .line 2339
    :array_32
    .array-data 1
        -0xbt
        0x5ft
        0x65t
        0x36t
        -0x11t
        -0x34t
        -0x1bt
        -0x41t
    .end array-data

    .line 2340
    .line 2341
    .line 2342
    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    :array_33
    .array-data 1
        0x1at
        -0x4bt
        0x40t
        0x74t
        -0x1et
        0x26t
        -0x51t
        0x78t
        0x1bt
        -0x5dt
        0x41t
        0x46t
        -0x1et
        0x21t
        -0x51t
        0x79t
        0x1bt
        -0x52t
        -0x50t
        -0x72t
        0x71t
        -0x8t
        0xct
        -0x51t
        -0x5bt
        0x4dt
        -0x4t
        -0x49t
    .end array-data

    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    :array_34
    .array-data 1
        -0x36t
        0x22t
        -0x70t
        -0x3ct
        0x32t
        -0x67t
        0x7et
        -0x5t
    .end array-data

    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    :array_35
    .array-data 1
        -0x6et
        0x31t
        0x1bt
        -0x1et
        -0x66t
        0x15t
        -0x44t
        -0xbt
        -0x6et
        0x0t
        0x1bt
        -0x1et
        -0x66t
        0x21t
        0x4ct
        -0x79t
        -0x2at
        0x70t
        0x5et
        -0x67t
        -0x2dt
        0x64t
        -0x33t
        -0x79t
        -0x20t
        0x70t
        0x59t
        -0x67t
        -0x2et
        0x64t
        -0x3dt
    .end array-data

    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    :array_36
    .array-data 1
        0x42t
        -0x60t
        -0x35t
        0x49t
        0x4at
        -0x4ct
        0x6ct
        0x57t
    .end array-data

    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    :array_37
    .array-data 1
        -0x62t
        0x30t
        0x0t
        0x67t
        0x2ct
        0x2ft
        -0x55t
        -0x3ct
        -0x61t
        0x22t
        0x1t
        0x54t
        0x2dt
        0x1ct
        -0x55t
        -0x3ct
        0x6et
        0x73t
        0x55t
        0x3dt
        0x7ft
        0x4et
        -0x3at
        -0x5ft
        -0xct
        0x73t
        0x57t
        0x3ct
        0x44t
        0x4et
        -0x3dt
        0x51t
        -0x62t
        0x16t
        0x1t
        0x57t
        0x2dt
        0x11t
        0x5bt
        -0x60t
        -0x3at
        0x72t
        0x64t
        0x3dt
        0x7dt
        0x4ft
        -0x7t
        -0x5ft
        -0xat
        -0x7et
        0x1t
        0x56t
        0x2ct
        0x23t
        -0x55t
        -0x31t
        -0x62t
        0x1dt
        0x1t
        0x52t
        0x2ct
        0x24t
        0x5bt
        -0x5ft
        -0xdt
        0x72t
        0x61t
        -0x34t
        0x2ct
        0x21t
        -0x55t
        -0x3ft
        -0x62t
        0x1ft
        0x1t
        0x59t
        0x2ct
        0x25t
        -0x55t
        -0x37t
        0x60t
    .end array-data

    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    .line 2436
    .line 2437
    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    .line 2444
    .line 2445
    .line 2446
    nop

    .line 2447
    :array_38
    .array-data 1
        0x4et
        -0x5et
        -0x2ft
        -0x14t
        -0x4t
        -0x62t
        0x7bt
        0x71t
    .end array-data

    .line 2448
    .line 2449
    .line 2450
    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    :array_39
    .array-data 1
        -0x67t
        0x1ct
        0x42t
        -0x3t
        0x4dt
        0x22t
        0xet
        -0x6dt
        -0x67t
        0xdt
        0x42t
        -0x2t
        0x4ct
        0x1ft
        0xet
        -0x6ft
        -0x68t
        0x31t
    .end array-data

    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    nop

    .line 2469
    :array_3a
    .array-data 1
        0x49t
        -0x43t
        -0x6et
        0x43t
        -0x64t
        -0x59t
        -0x21t
        0x13t
    .end array-data

    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    :array_3b
    .array-data 1
        0x3dt
        0x65t
        0x61t
        -0x13t
        -0x3et
        0x19t
        0x5dt
        -0x63t
        0x3dt
        0x46t
        0x60t
        -0x21t
    .end array-data

    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    :array_3c
    .array-data 1
        -0x13t
        -0x5t
        -0x50t
        0x6ft
        0x12t
        -0x5bt
        -0x73t
        0x28t
    .end array-data
.end method
