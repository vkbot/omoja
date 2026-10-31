.class public Lcom/example/navistart/CarControlActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic t:I


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field public e:Ljava/util/concurrent/ScheduledFuture;

.field public final f:Ljava/lang/Boolean;

.field public g:Lcom/example/navistart/mainview/HeatingButtonView;

.field public h:Lcom/example/navistart/mainview/HeatingButtonView;

.field public i:Lcom/example/navistart/mainview/HeatingButtonView;

.field public j:Lcom/example/navistart/mainview/HeatingButtonView;

.field public k:Lcom/example/navistart/mainview/HeatingButtonView;

.field public l:Lcom/example/navistart/mainview/HeatingButtonView;

.field public m:Lcom/example/navistart/mainview/HeatingButtonView;

.field public n:Lcom/example/navistart/mainview/HeatingButtonView;

.field public o:Lcom/example/navistart/mainview/HeatingButtonView;

.field public p:Lcom/example/navistart/mainview/HeatingButtonView;

.field public q:Lcom/example/navistart/mainview/HeatingButtonView;

.field public r:Landroid/widget/TextView;

.field public final s:Le0/n;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    fill-array-data v1, :array_3a

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    new-array v3, v2, [B

    .line 14
    .line 15
    fill-array-data v3, :array_48

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/example/navistart/CarControlActivity;->b:Ljava/lang/String;

    .line 23
    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    fill-array-data v0, :array_50

    .line 27
    .line 28
    .line 29
    new-array v1, v2, [B

    .line 30
    .line 31
    fill-array-data v1, :array_5e

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, -0x1

    .line 39
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/example/navistart/CarControlActivity;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 44
    .line 45
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/example/navistart/CarControlActivity;->f:Ljava/lang/Boolean;

    .line 48
    .line 49
    new-instance v0, Le0/n;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, p0, v1}, Le0/n;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/example/navistart/CarControlActivity;->s:Le0/n;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_3a
    .array-data 1
        -0x31t
        0x28t
        -0x5at
        -0x7ct
        0x5ct
        -0x7dt
        0x64t
        -0x22t
        -0x1dt
        0x25t
        -0x6bt
        -0x5ct
        0x47t
        -0x7ct
        0x66t
        -0x3bt
        -0x8t
        0x30t
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
    nop

    .line 73
    :array_48
    .array-data 1
        -0x74t
        0x49t
        -0x2ct
        -0x39t
        0x33t
        -0x13t
        0x10t
        -0x54t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_50
    .array-data 1
        0x3et
        0x1at
        0x17t
        -0x77t
        -0x45t
        0x56t
        -0x43t
        0x20t
        0x12t
        0x17t
        0x24t
        -0x57t
        -0x60t
        0x51t
        -0x41t
        0x3bt
        0x9t
        0x2t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    nop

    .line 95
    :array_5e
    .array-data 1
        0x7dt
        0x7bt
        0x65t
        -0x36t
        -0x2ct
        0x38t
        -0x37t
        0x52t
    .end array-data
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/example/navistart/BlackActivity;->t(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0c001d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f090127

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/Button;

    .line 21
    .line 22
    new-instance v0, Le0/o;

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f090165

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    new-instance v0, Le0/o;

    .line 41
    .line 42
    const/16 v1, 0x9

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f090547

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->r:Landroid/widget/TextView;

    .line 60
    .line 61
    const p1, 0x7f09022b

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->k:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Le0/o;

    .line 77
    .line 78
    const/16 v1, 0xa

    .line 79
    .line 80
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f09022a

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->l:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Le0/o;

    .line 102
    .line 103
    const/16 v1, 0xb

    .line 104
    .line 105
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    const p1, 0x7f09022c

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->m:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v0, Le0/o;

    .line 127
    .line 128
    const/16 v1, 0xc

    .line 129
    .line 130
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    const p1, 0x7f090232

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->g:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance v0, Le0/o;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    const p1, 0x7f0905ba

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->h:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v0, Le0/o;

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    const p1, 0x7f090233

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 192
    .line 193
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->i:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance v0, Le0/o;

    .line 200
    .line 201
    const/4 v1, 0x2

    .line 202
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    const p1, 0x7f0905bb

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 216
    .line 217
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->j:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance v0, Le0/o;

    .line 224
    .line 225
    const/4 v1, 0x3

    .line 226
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    const p1, 0x7f09022e

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 240
    .line 241
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->n:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    new-instance v0, Le0/o;

    .line 248
    .line 249
    const/4 v1, 0x4

    .line 250
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    const p1, 0x7f0905bd

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 264
    .line 265
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->p:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    new-instance v0, Le0/o;

    .line 272
    .line 273
    const/4 v1, 0x6

    .line 274
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    const p1, 0x7f09022d

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 288
    .line 289
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->o:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    new-instance v0, Le0/o;

    .line 296
    .line 297
    const/4 v1, 0x7

    .line 298
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    const p1, 0x7f0905bc

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Lcom/example/navistart/mainview/HeatingButtonView;

    .line 312
    .line 313
    iput-object p1, p0, Lcom/example/navistart/CarControlActivity;->q:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->getHeatingButton()Landroid/widget/ImageButton;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    new-instance v0, Le0/o;

    .line 320
    .line 321
    const/16 v1, 0x8

    .line 322
    .line 323
    invoke-direct {v0, p0, v1}, Le0/o;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    new-instance p1, Le0/n;

    .line 330
    .line 331
    const/4 v0, 0x1

    .line 332
    invoke-direct {p1, p0, v0}, Le0/n;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public final onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->t()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->u()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_13

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_13

    .line 13
    .line 14
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    :cond_13
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->u()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le0/n;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Le0/n;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onStop()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->t()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->u()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onUserLeaveHint()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onUserLeaveHint()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->t()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->u()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/example/navistart/CarControlActivity;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_13

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_13

    .line 13
    .line 14
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    :cond_13
    const-wide/16 v0, 0x7530

    .line 21
    .line 22
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/example/navistart/CarControlActivity;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/example/navistart/CarControlActivity;->s:Le0/n;

    .line 27
    .line 28
    invoke-interface {v3, v4, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/example/navistart/CarControlActivity;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    return-void
.end method

.method public final t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final v()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_10
    new-instance v3, Le0/n;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-direct {v3, p0, v0}, Le0/n;-><init>(Lcom/example/navistart/CarControlActivity;I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v6, 0x1388

    .line 24
    .line 25
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/example/navistart/CarControlActivity;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    const-wide/16 v4, 0x1388

    .line 30
    .line 31
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/example/navistart/CarControlActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 36
    .line 37
    return-void
.end method
