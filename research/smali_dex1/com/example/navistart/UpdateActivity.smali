.class public Lcom/example/navistart/UpdateActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Switch;

.field public j:I

.field public final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_16

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_22

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/example/navistart/UpdateActivity;->l:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_16
    .array-data 1
        -0x6ft
        0x13t
        -0x73t
        0x1et
        -0x3ct
        -0x7dt
        0x4et
        -0x7bt
        -0x65t
        0x1ct
        -0x73t
        0x30t
        -0x3ft
        -0x57t
        0x4et
        -0x7ft
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_22
    .array-data 1
        -0xet
        0x7ft
        -0x18t
        0x7ft
        -0x4at
        -0x39t
        0x2bt
        -0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Le0/p3;->b(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Le0/p3;->b(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    invoke-static {v0}, Le0/p3;->a(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Le0/p3;->a(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    const/16 v2, 0x5a

    .line 24
    .line 25
    aput-byte v2, v1, v0

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    new-array v2, v2, [B

    .line 30
    .line 31
    fill-array-data v2, :array_3a

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-static {v1}, Le0/p3;->c(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    invoke-static {v1}, Le0/p3;->c(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    iput v0, p0, Lcom/example/navistart/UpdateActivity;->j:I

    .line 46
    .line 47
    new-instance v0, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/example/navistart/UpdateActivity;->k:Landroid/os/Handler;

    .line 57
    .line 58
    return-void

    .line 59
    :array_3a
    .array-data 1
        0x74t
        0x0t
        0x15t
        0x1ft
        -0x23t
        0x2ct
        0x25t
        0x52t
    .end array-data
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p1}, Le0/m;->x(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x5

    .line 9
    new-array p1, p1, [B

    .line 10
    .line 11
    fill-array-data p1, :array_38

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    fill-array-data v1, :array_40

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/16 v1, 0x19

    .line 26
    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    fill-array-data v1, :array_48

    .line 30
    .line 31
    .line 32
    new-array v0, v0, [B

    .line 33
    .line 34
    fill-array-data v0, :array_5a

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_38
    .array-data 1
        -0xat
        -0x74t
        -0x7dt
        0x6at
        -0x28t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        -0x5et
        -0x22t
        -0x3et
        0x29t
        -0x63t
        0x7et
        -0x52t
        0x3bt
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_48
    .array-data 1
        -0x7et
        -0x35t
        -0x5dt
        0x79t
        -0x31t
        0xat
        0x6ft
        0x3at
        -0x1dt
        -0x37t
        -0x4bt
        0x7ft
        -0x34t
        0x17t
        0x3bt
        0x37t
        -0x54t
        -0x78t
        -0x5ct
        0x64t
        -0x28t
        0x11t
        0x6ft
        0x79t
        -0x1dt
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
    .line 89
    .line 90
    nop

    .line 91
    :array_5a
    .array-data 1
        -0x3dt
        -0x58t
        -0x29t
        0x10t
        -0x47t
        0x63t
        0x1bt
        0x43t
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f050377

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0c0027

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7f09012d

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/widget/Button;

    .line 55
    .line 56
    new-instance v2, Le0/v2;

    .line 57
    .line 58
    invoke-direct {v2, p0, v0}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lcom/example/navistart/punto;->w:[B

    .line 65
    .line 66
    sget-object v2, Le0/z2;->a:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/16 v2, 0xb

    .line 78
    .line 79
    new-array v2, v2, [B

    .line 80
    .line 81
    fill-array-data v2, :array_19a

    .line 82
    .line 83
    .line 84
    const/16 v3, 0x8

    .line 85
    .line 86
    new-array v4, v3, [B

    .line 87
    .line 88
    fill-array-data v4, :array_1a4

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_7d

    .line 100
    .line 101
    const v0, 0x7f0c0028

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/Button;

    .line 112
    .line 113
    new-instance v0, Le0/v2;

    .line 114
    .line 115
    const/4 v1, 0x5

    .line 116
    invoke-direct {v0, p0, v1}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/example/navistart/UpdateActivity;->t()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_7d
    const p1, 0x7f09019b

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/TextView;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->b:Landroid/widget/TextView;

    .line 136
    .line 137
    const p1, 0x7f0900d5

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/TextView;

    .line 145
    .line 146
    const p1, 0x7f0903be

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/ProgressBar;

    .line 154
    .line 155
    const p1, 0x7f0905a2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroid/widget/Button;

    .line 163
    .line 164
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->c:Landroid/widget/Button;

    .line 165
    .line 166
    const p1, 0x7f0905a3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/widget/Button;

    .line 174
    .line 175
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->d:Landroid/widget/Button;

    .line 176
    .line 177
    const p1, 0x7f090282

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance v1, Le0/v2;

    .line 185
    .line 186
    const/4 v2, 0x6

    .line 187
    invoke-direct {v1, p0, v2}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    const p1, 0x7f090418

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Landroid/widget/Button;

    .line 201
    .line 202
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->f:Landroid/widget/Button;

    .line 203
    .line 204
    const p1, 0x7f09017c

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Landroid/widget/Button;

    .line 212
    .line 213
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->g:Landroid/widget/Button;

    .line 214
    .line 215
    const p1, 0x7f090153

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Landroid/widget/Button;

    .line 223
    .line 224
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->e:Landroid/widget/Button;

    .line 225
    .line 226
    new-instance v1, Le0/v2;

    .line 227
    .line 228
    const/4 v2, 0x7

    .line 229
    invoke-direct {v1, p0, v2}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    const p1, 0x7f0904eb

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroid/widget/Switch;

    .line 243
    .line 244
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->i:Landroid/widget/Switch;

    .line 245
    .line 246
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const/16 v2, 0x1b

    .line 251
    .line 252
    new-array v2, v2, [B

    .line 253
    .line 254
    fill-array-data v2, :array_1ac

    .line 255
    .line 256
    .line 257
    new-array v4, v3, [B

    .line 258
    .line 259
    fill-array-data v4, :array_1be

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2, v0}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/example/navistart/UpdateActivity;->i:Landroid/widget/Switch;

    .line 274
    .line 275
    new-instance v1, Le0/k0;

    .line 276
    .line 277
    const/16 v2, 0x1d

    .line 278
    .line 279
    invoke-direct {v1, v2}, Le0/k0;-><init>(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    .line 284
    .line 285
    const p1, 0x7f0904e4

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Landroid/widget/Switch;

    .line 293
    .line 294
    new-instance v1, Le0/s0;

    .line 295
    .line 296
    const/4 v2, 0x3

    .line 297
    invoke-direct {v1, v2, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 301
    .line 302
    .line 303
    :try_start_12e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12e .. :try_end_13c} :catch_13d

    .line 316
    .line 317
    goto :goto_13f

    .line 318
    :catch_13d
    const-string p1, ""

    .line 319
    .line 320
    :goto_13f
    iget-object v0, p0, Lcom/example/navistart/UpdateActivity;->b:Landroid/widget/TextView;

    .line 321
    .line 322
    const v1, 0x7f130414

    .line 323
    .line 324
    .line 325
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/example/navistart/UpdateActivity;->b:Landroid/widget/TextView;

    .line 337
    .line 338
    new-instance v0, Le0/v2;

    .line 339
    .line 340
    invoke-direct {v0, p0, v3}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lcom/example/navistart/UpdateActivity;->c:Landroid/widget/Button;

    .line 347
    .line 348
    new-instance v0, Le0/v2;

    .line 349
    .line 350
    const/16 v1, 0x9

    .line 351
    .line 352
    invoke-direct {v0, p0, v1}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Lcom/example/navistart/UpdateActivity;->d:Landroid/widget/Button;

    .line 359
    .line 360
    new-instance v0, Le0/v2;

    .line 361
    .line 362
    const/4 v1, 0x1

    .line 363
    invoke-direct {v0, p0, v1}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/example/navistart/UpdateActivity;->f:Landroid/widget/Button;

    .line 370
    .line 371
    new-instance v0, Le0/v2;

    .line 372
    .line 373
    const/4 v1, 0x2

    .line 374
    invoke-direct {v0, p0, v1}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lcom/example/navistart/UpdateActivity;->g:Landroid/widget/Button;

    .line 381
    .line 382
    new-instance v0, Le0/v2;

    .line 383
    .line 384
    invoke-direct {v0, p0, v2}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    .line 389
    .line 390
    const p1, 0x7f09001b

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    check-cast p1, Landroid/widget/Button;

    .line 398
    .line 399
    iput-object p1, p0, Lcom/example/navistart/UpdateActivity;->h:Landroid/widget/Button;

    .line 400
    .line 401
    new-instance v0, Le0/v2;

    .line 402
    .line 403
    const/4 v1, 0x4

    .line 404
    invoke-direct {v0, p0, v1}, Le0/v2;-><init>(Lcom/example/navistart/UpdateActivity;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :array_19a
    .array-data 1
        0x4ct
        0x2at
        -0x68t
        -0x43t
        0x6t
        0x23t
        0xct
        -0x64t
        0x5et
        0x2at
        -0x64t
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_1a4
    .array-data 1
        0x3ft
        0x5et
        -0x7t
        -0x31t
        0x72t
        0x76t
        0x7ct
        -0x8t
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_1ac
    .array-data 1
        -0x45t
        0x1ft
        0x26t
        -0x20t
        0x47t
        -0x59t
        -0x28t
        0x4ct
        -0x57t
        0x2ct
        0x2et
        -0x13t
        0x5ft
        -0x74t
        -0x33t
        0x4ft
        -0x4bt
        0x2ct
        0x30t
        -0x16t
        0x42t
        -0x59t
        -0x31t
        0x4ft
        -0x50t
        0x10t
        0x2ct
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_1be
    .array-data 1
        -0x27t
        0x73t
        0x47t
        -0x7dt
        0x2ct
        -0x8t
        -0x54t
        0x23t
    .end array-data
.end method

.method public final onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/UpdateActivity;->k:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Le0/q;->f:Z

    .line 12
    .line 13
    return-void
.end method

.method public final onResume()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/UpdateActivity;->f:Landroid/widget/Button;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_24

    .line 8
    .line 9
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x5

    .line 14
    new-array v3, v3, [B

    .line 15
    .line 16
    fill-array-data v3, :array_28

    .line 17
    .line 18
    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    new-array v4, v4, [B

    .line 22
    .line 23
    fill-array-data v4, :array_30

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    :cond_24
    sput-boolean v1, Le0/q;->f:Z

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 1
        0xet
        -0x66t
        -0x38t
        -0x38t
        -0x69t
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    nop

    .line 49
    :array_30
    .array-data 1
        0x4at
        -0x36t
        -0x43t
        -0x48t
        -0x1ct
        -0x7ft
        0x39t
        0x2at
    .end array-data
.end method

.method public final s(Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/example/navistart/UpdateActivity;->l:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    :try_start_4
    invoke-static {p0, v0}, Le0/m;->d(Lcom/example/navistart/UpdateActivity;Ljava/lang/String;)Le0/r;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    new-array v4, v4, [B

    .line 19
    .line 20
    fill-array-data v4, :array_4a

    .line 21
    .line 22
    .line 23
    new-array v5, v1, [B

    .line 24
    .line 25
    fill-array-data v5, :array_50

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Le0/r;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_31

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_31
    move-exception v2

    .line 51
    const/16 v3, 0x1e

    .line 52
    .line 53
    new-array v3, v3, [B

    .line 54
    .line 55
    fill-array-data v3, :array_58

    .line 56
    .line 57
    .line 58
    new-array v1, v1, [B

    .line 59
    .line 60
    fill-array-data v1, :array_6c

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :array_4a
    .array-data 1
        -0x49t
        0x1ft
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    nop

    .line 81
    :array_50
    .array-data 1
        -0x73t
        0x3ft
        -0x13t
        0x7ft
        0x2et
        0x11t
        -0x5at
        0x52t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_58
    .array-data 1
        0x6et
        0xbt
        0x5et
        0x14t
        0x72t
        0x16t
        -0x6t
        -0x8t
        0x74t
        0x5ft
        0x57t
        0x55t
        0x78t
        0x16t
        -0x6t
        -0x3t
        0x26t
        0xbt
        0x7ct
        0x10t
        0x6dt
        0x13t
        -0x4t
        -0x7t
        0x74t
        0x64t
        0x4ft
        0x1bt
        0x7et
        0x8t
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    nop

    .line 109
    :array_6c
    .array-data 1
        0x54t
        0x2bt
        0x38t
        0x75t
        0x1bt
        0x7at
        -0x61t
        -0x64t
    .end array-data
.end method

.method public final t()V
    .registers 4

    .line 1
    new-instance v0, Le0/y2;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    fill-array-data v1, :array_18

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    fill-array-data v2, :array_24

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p0}, Le0/y2;-><init>(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_18
    .array-data 1
        0x1dt
        0x43t
        -0x11t
        -0x12t
        -0x4bt
        0x3dt
        0x2ct
        0x17t
        0x44t
        0x54t
        -0x7t
        -0xat
        -0x1t
        0x3dt
        0x2ft
        0x2t
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    :array_24
    .array-data 1
        0x69t
        0x26t
        -0x64t
        -0x66t
        -0x66t
        0x5ct
        0x5ct
        0x67t
    .end array-data
.end method
