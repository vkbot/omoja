.class public final Lx0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:Z

.field public final synthetic g:Lx0/m;

.field public final synthetic h:Lx0/c;


# direct methods
.method public constructor <init>(Lx0/c;Lx0/m;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx0/b;->h:Lx0/c;

    .line 5
    .line 6
    iput-object p2, p0, Lx0/b;->g:Lx0/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lx0/b;->h:Lx0/c;

    .line 8
    .line 9
    if-nez v0, :cond_2e

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lx0/b;->b:F

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iput p2, p0, Lx0/b;->c:F

    .line 22
    .line 23
    iput-boolean v1, p0, Lx0/b;->f:Z

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    .line 31
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 32
    .line 33
    iput p2, p0, Lx0/b;->d:I

    .line 34
    .line 35
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 36
    .line 37
    iput p1, p0, Lx0/b;->e:I

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_2e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v4, 0x2

    .line 52
    iget-object v5, p0, Lx0/b;->g:Lx0/m;

    .line 53
    .line 54
    if-ne v0, v4, :cond_f4

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iget v6, p0, Lx0/b;->b:F

    .line 73
    .line 74
    sub-float/2addr v4, v6

    .line 75
    float-to-double v6, v4

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget v8, p0, Lx0/b;->c:F

    .line 81
    .line 82
    sub-float/2addr v4, v8

    .line 83
    float-to-double v8, v4

    .line 84
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 85
    .line 86
    .line 87
    move-result-wide v6

    .line 88
    int-to-double v8, v0

    .line 89
    cmpl-double v0, v6, v8

    .line 90
    .line 91
    if-lez v0, :cond_5e

    .line 92
    .line 93
    iput-boolean v2, p0, Lx0/b;->f:Z

    .line 94
    .line 95
    :cond_5e
    iget-boolean v0, p0, Lx0/b;->f:Z

    .line 96
    .line 97
    if-nez v0, :cond_64

    .line 98
    .line 99
    goto/16 :goto_122

    .line 100
    .line 101
    :cond_64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 116
    .line 117
    invoke-virtual {v3}, Lx0/c;->o()F

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    mul-float/2addr v6, v4

    .line 122
    iget v4, p0, Lx0/b;->d:I

    .line 123
    .line 124
    int-to-float v4, v4

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    add-float/2addr v7, v4

    .line 130
    iget v4, p0, Lx0/b;->b:F

    .line 131
    .line 132
    sub-float/2addr v7, v4

    .line 133
    div-float/2addr v7, v6

    .line 134
    const/high16 v4, 0x41000000    # 8.0f

    .line 135
    .line 136
    div-float/2addr v7, v4

    .line 137
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    mul-int/lit8 v7, v7, 0x8

    .line 142
    .line 143
    invoke-virtual {v3}, Lx0/c;->c()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    const/16 v9, 0x40

    .line 148
    .line 149
    if-nez v5, :cond_98

    .line 150
    .line 151
    move v10, v9

    .line 152
    goto :goto_9c

    .line 153
    :cond_98
    invoke-virtual {v5}, Lx0/m;->b()I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    :goto_9c
    sub-int/2addr v8, v10

    .line 158
    invoke-static {v7, v1, v8}, Lx0/o;->a(III)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    iget v8, p0, Lx0/b;->e:I

    .line 163
    .line 164
    int-to-float v8, v8

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    add-float/2addr p2, v8

    .line 170
    iget v8, p0, Lx0/b;->c:F

    .line 171
    .line 172
    sub-float/2addr p2, v8

    .line 173
    div-float/2addr p2, v6

    .line 174
    div-float/2addr p2, v4

    .line 175
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    mul-int/lit8 p2, p2, 0x8

    .line 180
    .line 181
    iget-boolean v4, v3, Lx0/c;->e:Z

    .line 182
    .line 183
    if-eqz v4, :cond_bb

    .line 184
    .line 185
    const/16 v4, 0x28

    .line 186
    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v4, v1

    .line 189
    :goto_bc
    invoke-virtual {v3}, Lx0/c;->b()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-nez v5, :cond_c3

    .line 194
    .line 195
    goto :goto_c7

    .line 196
    :cond_c3
    invoke-virtual {v5}, Lx0/m;->a()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    :goto_c7
    sub-int/2addr v6, v9

    .line 201
    invoke-static {p2, v4, v6}, Lx0/o;->a(III)I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-virtual {v3, v7}, Lx0/c;->p(I)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 210
    .line 211
    invoke-virtual {v3, p2}, Lx0/c;->p(I)I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    if-nez v5, :cond_e6

    .line 221
    .line 222
    iget-object p1, v3, Lx0/c;->c:Lx0/o;

    .line 223
    .line 224
    iput v7, p1, Lx0/o;->n:I

    .line 225
    .line 226
    iput p2, p1, Lx0/o;->o:I

    .line 227
    .line 228
    iput-boolean v1, p1, Lx0/o;->t:Z

    .line 229
    .line 230
    return v2

    .line 231
    :cond_e6
    iget-boolean p1, v3, Lx0/c;->e:Z

    .line 232
    .line 233
    if-eqz p1, :cond_ef

    .line 234
    .line 235
    iput v7, v5, Lx0/m;->g:I

    .line 236
    .line 237
    iput p2, v5, Lx0/m;->h:I

    .line 238
    .line 239
    return v2

    .line 240
    :cond_ef
    iput v7, v5, Lx0/m;->i:I

    .line 241
    .line 242
    iput p2, v5, Lx0/m;->j:I

    .line 243
    .line 244
    return v2

    .line 245
    :cond_f4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-eq p1, v2, :cond_101

    .line 250
    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    const/4 v0, 0x3

    .line 256
    if-ne p1, v0, :cond_122

    .line 257
    .line 258
    :cond_101
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-ne p1, v2, :cond_11b

    .line 270
    .line 271
    iget-boolean p1, p0, Lx0/b;->f:Z

    .line 272
    .line 273
    if-nez p1, :cond_11b

    .line 274
    .line 275
    if-eqz v5, :cond_11b

    .line 276
    .line 277
    iget-object p1, v3, Lx0/c;->n:Ljava/util/function/Consumer;

    .line 278
    .line 279
    if-eqz p1, :cond_11b

    .line 280
    .line 281
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :cond_11b
    iget-object p1, v3, Lx0/c;->m:Ljava/lang/Runnable;

    .line 285
    .line 286
    if-eqz p1, :cond_122

    .line 287
    .line 288
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 289
    .line 290
    .line 291
    :cond_122
    :goto_122
    return v2
.end method
