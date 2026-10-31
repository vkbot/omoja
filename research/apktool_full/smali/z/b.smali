.class public final Lz/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lz/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lz/b;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lz/b;->c:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lz/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz/b;->b:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz/b;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 9

    .line 1
    iget v0, p0, Lz/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const-string v1, "ViewTarget"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lz/b;->c:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lz/e;

    .line 39
    .line 40
    if-eqz v0, :cond_8

    .line 41
    .line 42
    iget-object v1, v0, Lz/e;->b:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v2, v0, Lz/e;->a:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    add-int/2addr v4, v3

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v5, 0x0

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v3, v5

    .line 74
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-virtual {v0, v6, v3, v4}, Lz/e;->a(III)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    add-int/2addr v6, v4

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v4, v5

    .line 101
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-virtual {v0, v7, v4, v6}, Lz/e;->a(III)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/high16 v6, -0x80000000

    .line 110
    .line 111
    if-gtz v3, :cond_4

    .line 112
    .line 113
    if-ne v3, v6, :cond_8

    .line 114
    .line 115
    :cond_4
    if-gtz v4, :cond_5

    .line 116
    .line 117
    if-ne v4, v6, :cond_8

    .line 118
    .line 119
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    :goto_2
    if-ge v5, v7, :cond_6

    .line 129
    .line 130
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    check-cast v8, Ly/f;

    .line 137
    .line 138
    invoke-virtual {v8, v3, v4}, Ly/f;->m(II)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    iget-object v3, v0, Lz/e;->c:Lz/b;

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    const/4 v2, 0x0

    .line 158
    iput-object v2, v0, Lz/e;->c:Lz/b;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 161
    .line 162
    .line 163
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 164
    return v0

    .line 165
    :pswitch_0
    const/4 v0, 0x2

    .line 166
    const-string v1, "CustomViewTarget"

    .line 167
    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    .line 177
    .line 178
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_9
    iget-object v0, p0, Lz/b;->c:Ljava/lang/ref/WeakReference;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lz/c;

    .line 198
    .line 199
    if-eqz v0, :cond_11

    .line 200
    .line 201
    iget-object v1, v0, Lz/c;->b:Ljava/util/ArrayList;

    .line 202
    .line 203
    iget-object v2, v0, Lz/c;->a:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_a

    .line 210
    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    add-int/2addr v4, v3

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    const/4 v5, 0x0

    .line 227
    if-eqz v3, :cond_b

    .line 228
    .line 229
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_b
    move v3, v5

    .line 233
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v0, v6, v3, v4}, Lz/c;->a(III)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    add-int/2addr v6, v4

    .line 250
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    if-eqz v4, :cond_c

    .line 255
    .line 256
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_c
    move v4, v5

    .line 260
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    invoke-virtual {v0, v7, v4, v6}, Lz/c;->a(III)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    const/high16 v6, -0x80000000

    .line 269
    .line 270
    if-gtz v3, :cond_d

    .line 271
    .line 272
    if-ne v3, v6, :cond_11

    .line 273
    .line 274
    :cond_d
    if-gtz v4, :cond_e

    .line 275
    .line 276
    if-ne v4, v6, :cond_11

    .line 277
    .line 278
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    :goto_6
    if-ge v5, v7, :cond_f

    .line 288
    .line 289
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    add-int/lit8 v5, v5, 0x1

    .line 294
    .line 295
    check-cast v8, Ly/f;

    .line 296
    .line 297
    invoke-virtual {v8, v3, v4}, Ly/f;->m(II)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_10

    .line 310
    .line 311
    iget-object v3, v0, Lz/c;->c:Lz/b;

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 314
    .line 315
    .line 316
    :cond_10
    const/4 v2, 0x0

    .line 317
    iput-object v2, v0, Lz/c;->c:Lz/b;

    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 320
    .line 321
    .line 322
    :cond_11
    :goto_7
    const/4 v0, 0x1

    .line 323
    return v0

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
