.class public final synthetic Lm0/t1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lm0/u1;

.field public final synthetic c:Lm0/s1;


# direct methods
.method public synthetic constructor <init>(Lm0/u1;Lm0/s1;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/t1;->b:Lm0/u1;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/t1;->c:Lm0/s1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lm0/t1;->b:Lm0/u1;

    .line 2
    .line 3
    iget-object v1, v0, Lm0/u1;->e:Lm0/v1;

    .line 4
    .line 5
    iget-object v1, v1, Lm0/v1;->a:Lm0/w1;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v2, :cond_f1

    .line 16
    .line 17
    const v6, 0x3f266666    # 0.65f

    .line 18
    .line 19
    .line 20
    if-eq v2, v5, :cond_68

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    if-eq v2, v7, :cond_20

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq v2, p2, :cond_1c

    .line 27
    .line 28
    goto :goto_67

    .line 29
    :cond_1c
    invoke-static {p1}, Lm0/u1;->a(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return v5

    .line 33
    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget v7, v0, Lm0/u1;->c:F

    .line 38
    .line 39
    sub-float/2addr v2, v7

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget v0, v0, Lm0/u1;->d:F

    .line 45
    .line 46
    sub-float/2addr p2, v0

    .line 47
    cmpg-float v0, p2, v3

    .line 48
    .line 49
    if-gez v0, :cond_67

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    cmpl-float v0, v0, v2

    .line 60
    .line 61
    if-lez v0, :cond_67

    .line 62
    .line 63
    iget-object v0, v1, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    if-eqz v0, :cond_45

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 68
    .line 69
    .line 70
    :cond_45
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/high16 v1, 0x42fc0000    # 126.0f

    .line 75
    .line 76
    div-float/2addr v0, v1

    .line 77
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    mul-float/2addr p2, v6

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    .line 84
    .line 85
    const/high16 p2, 0x3f400000    # 0.75f

    .line 86
    .line 87
    mul-float/2addr p2, v0

    .line 88
    sub-float p2, v4, p2

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    .line 92
    .line 93
    const p2, 0x3d75c28f    # 0.06f

    .line 94
    .line 95
    .line 96
    mul-float/2addr v0, p2

    .line 97
    sub-float/2addr v4, v0

    .line 98
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    return v5

    .line 105
    :cond_68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    iget v4, v0, Lm0/u1;->c:F

    .line 110
    .line 111
    sub-float/2addr v2, v4

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iget v4, v0, Lm0/u1;->d:F

    .line 117
    .line 118
    sub-float/2addr p2, v4

    .line 119
    const/high16 v4, -0x3d740000    # -70.0f

    .line 120
    .line 121
    cmpg-float v4, p2, v4

    .line 122
    .line 123
    if-gez v4, :cond_d7

    .line 124
    .line 125
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    cmpl-float v4, v4, v7

    .line 134
    .line 135
    if-lez v4, :cond_d7

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object v1, p0, Lm0/t1;->c:Lm0/s1;

    .line 142
    .line 143
    iget-object v2, v1, Lm0/s1;->b:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p2, v2}, Lm0/w1;->t(Landroid/content/Context;Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_9a

    .line 150
    .line 151
    invoke-static {p1}, Lm0/u1;->a(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    return v5

    .line 155
    :cond_9a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    const/4 v2, -0x1

    .line 160
    if-ne p2, v2, :cond_a5

    .line 161
    .line 162
    invoke-static {p1}, Lm0/u1;->a(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    return v5

    .line 166
    :cond_a5
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    neg-int p1, p1

    .line 175
    int-to-float p1, p1

    .line 176
    mul-float/2addr p1, v6

    .line 177
    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const v2, 0x3f6b851f    # 0.92f

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-wide/16 v2, 0xf0

    .line 197
    .line 198
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    new-instance v2, Landroidx/activity/f;

    .line 203
    .line 204
    const/4 v3, 0x7

    .line 205
    invoke-direct {v2, v0, v1, p2, v3}, Landroidx/activity/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 213
    .line 214
    .line 215
    return v5

    .line 216
    :cond_d7
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    const/high16 v1, 0x41400000    # 12.0f

    .line 221
    .line 222
    cmpg-float v0, v0, v1

    .line 223
    .line 224
    if-gez v0, :cond_ed

    .line 225
    .line 226
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    cmpg-float p2, p2, v1

    .line 231
    .line 232
    if-gez p2, :cond_ed

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 235
    .line 236
    .line 237
    return v5

    .line 238
    :cond_ed
    invoke-static {p1}, Lm0/u1;->a(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return v5

    .line 242
    :cond_f1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iput v1, v0, Lm0/u1;->c:F

    .line 247
    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    iput p2, v0, Lm0/u1;->d:F

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 271
    .line 272
    .line 273
    return v5
.end method
