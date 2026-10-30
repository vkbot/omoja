.class public Lcom/example/navistart/mainview/DownloadButton;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic f:I


# instance fields
.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/graphics/drawable/GradientDrawable;

.field public e:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/example/navistart/mainview/DownloadButton;->a(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x20

    .line 11
    .line 12
    const/16 v3, 0x14

    .line 13
    .line 14
    invoke-virtual {p0, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 25
    .line 26
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 27
    .line 28
    const v5, -0xff5501

    .line 29
    .line 30
    .line 31
    const v6, -0xff0056

    .line 32
    .line 33
    .line 34
    filled-new-array {v6, v5, v6}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 47
    .line 48
    const/high16 v4, 0x41c00000    # 24.0f

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 54
    .line 55
    const/4 v4, 0x4

    .line 56
    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->b:Landroid/widget/ImageView;

    .line 70
    .line 71
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .line 73
    const/16 v4, 0x30

    .line 74
    .line 75
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/example/navistart/mainview/DownloadButton;->b:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->b:Landroid/widget/ImageView;

    .line 84
    .line 85
    const v4, 0x7f07010e

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->b:Landroid/widget/ImageView;

    .line 92
    .line 93
    const/4 v4, -0x1

    .line 94
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .line 106
    const/4 v5, -0x2

    .line 107
    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 111
    .line 112
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 118
    .line 119
    const v3, 0x7f130068

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 135
    .line 136
    const/high16 v3, 0x41600000    # 14.0f

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->b:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Landroid/util/TypedValue;

    .line 158
    .line 159
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const v5, 0x7f0302ea

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_0

    .line 174
    .line 175
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 176
    .line 177
    if-eqz v1, :cond_0

    .line 178
    .line 179
    const v0, 0x7f070186

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .line 195
    const/high16 v1, 0x41800000    # 16.0f

    .line 196
    .line 197
    mul-float/2addr v1, v0

    .line 198
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    const/high16 v3, 0x41200000    # 10.0f

    .line 203
    .line 204
    mul-float/2addr v3, v0

    .line 205
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    .line 219
    .line 220
    const/high16 v1, 0x42400000    # 48.0f

    .line 221
    .line 222
    mul-float/2addr v0, v1

    .line 223
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 231
    .line 232
    const v1, 0x7f050381

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->c:Landroid/widget/TextView;

    .line 243
    .line 244
    const/high16 v0, 0x41700000    # 15.0f

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 251
    .line 252
    if-eqz p1, :cond_1

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 255
    .line 256
    .line 257
    :cond_1
    const/16 p1, 0x2710

    .line 258
    .line 259
    filled-new-array {v0, p1}, [I

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 268
    .line 269
    const-wide/16 v0, 0xbb8

    .line 270
    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 275
    .line 276
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 280
    .line 281
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 282
    .line 283
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 290
    .line 291
    new-instance v0, Le4/h;

    .line 292
    .line 293
    const/4 v1, 0x3

    .line 294
    invoke-direct {v0, v1, p0}, Le4/h;-><init>(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/mainview/DownloadButton;->e:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
