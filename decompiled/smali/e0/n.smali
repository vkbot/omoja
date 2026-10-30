.class public final synthetic Le0/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/CarControlActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/CarControlActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/n;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/n;->c:Lcom/example/navistart/CarControlActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Le0/n;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le0/n;->c:Lcom/example/navistart/CarControlActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->f:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    throw v4

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    throw v4

    .line 44
    :cond_3
    :goto_1
    new-instance v0, Le0/n;

    .line 45
    .line 46
    invoke-direct {v0, v2, v1}, Le0/n;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->b:Ljava/lang/String;

    .line 53
    .line 54
    const/16 v1, 0xb

    .line 55
    .line 56
    new-array v1, v1, [B

    .line 57
    .line 58
    fill-array-data v1, :array_0

    .line 59
    .line 60
    .line 61
    const/16 v2, 0x8

    .line 62
    .line 63
    new-array v2, v2, [B

    .line 64
    .line 65
    fill-array-data v2, :array_1

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->g:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 77
    .line 78
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v3, v1}, Lcom/example/navistart/cores/CarCmdProxy;->cargetheat(I)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->h:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 93
    .line 94
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v3, v1}, Lcom/example/navistart/cores/CarCmdProxy;->cargetvent(I)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->i:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 109
    .line 110
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/4 v4, 0x2

    .line 118
    invoke-interface {v3, v4}, Lcom/example/navistart/cores/CarCmdProxy;->cargetheat(I)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->j:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 126
    .line 127
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-interface {v3, v4}, Lcom/example/navistart/cores/CarCmdProxy;->cargetvent(I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->k:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 142
    .line 143
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-interface {v3}, Lcom/example/navistart/cores/CarCmdProxy;->getrulheat()Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->d(Ljava/lang/Boolean;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->l:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 158
    .line 159
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-interface {v3}, Lcom/example/navistart/cores/CarCmdProxy;->getlobheat()Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->d(Ljava/lang/Boolean;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->m:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 174
    .line 175
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-interface {v3}, Lcom/example/navistart/cores/CarCmdProxy;->getzadheat()Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->d(Ljava/lang/Boolean;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->o:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 190
    .line 191
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    const/4 v4, 0x0

    .line 199
    invoke-interface {v3, v4}, Lcom/example/navistart/cores/CarCmdProxy;->getcarZadSeatHeat(I)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->q:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 207
    .line 208
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-interface {v3, v4}, Lcom/example/navistart/cores/CarCmdProxy;->getcarZadSeatVent(I)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->n:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 223
    .line 224
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-interface {v3, v1}, Lcom/example/navistart/cores/CarCmdProxy;->getcarZadSeatHeat(I)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v0, v3}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->p:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 239
    .line 240
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-interface {v3, v1}, Lcom/example/navistart/cores/CarCmdProxy;->getcarZadSeatVent(I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-virtual {v0, v1}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, v2, Lcom/example/navistart/CarControlActivity;->r:Landroid/widget/TextView;

    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const v4, 0x7f1300e3

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v3, " "

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-interface {v3}, Lcom/example/navistart/cores/CarCmdProxy;->akbvolt()F

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const v3, 0x7f1304b6

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :pswitch_1
    sget v0, Lcom/example/navistart/CarControlActivity;->t:I

    .line 317
    .line 318
    invoke-virtual {v2, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_0
    .array-data 1
        -0x5t
        0x44t
        -0x47t
        -0x23t
        -0x60t
        -0x16t
        -0x7bt
        0x43t
        -0x32t
        0x59t
        -0x4ft
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_1
    .array-data 1
        -0x51t
        0x2dt
        -0x2ct
        -0x48t
        -0x2et
        -0x41t
        -0xbt
        0x27t
    .end array-data
.end method
