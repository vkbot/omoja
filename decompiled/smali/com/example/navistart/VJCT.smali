.class public Lcom/example/navistart/VJCT;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static g:Landroid/widget/TextView;

.field public static h:Landroid/widget/TextView;

.field public static i:Landroid/widget/Button;

.field public static j:Landroid/widget/TextView;


# instance fields
.field public b:Lcom/example/navistart/VJCT;

.field public c:Landroid/widget/ProgressBar;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/Switch;

.field public f:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static s(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/example/navistart/VJCT;->i:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Le0/a3;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Le0/a3;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/VJCT;->i:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Le0/a2;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, p0, v2}, Le0/a2;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/example/navistart/VJCT;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Le0/a2;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, p0, v2}, Le0/a2;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0xf

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/example/navistart/VJCT;->e:Landroid/widget/Switch;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0c002a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 11
    .line 12
    const p1, 0x7f0905dc

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/TextView;

    .line 20
    .line 21
    sput-object p1, Lcom/example/navistart/VJCT;->h:Landroid/widget/TextView;

    .line 22
    .line 23
    const p1, 0x7f0903c1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/ProgressBar;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    const p1, 0x7f0905e0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    .line 43
    sput-object p1, Lcom/example/navistart/VJCT;->j:Landroid/widget/TextView;

    .line 44
    .line 45
    const p1, 0x7f09012a

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/Button;

    .line 53
    .line 54
    new-instance v0, Le0/b3;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, p0, v1}, Le0/b3;-><init>(Lcom/example/navistart/VJCT;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const p1, 0x7f09012b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/Button;

    .line 71
    .line 72
    new-instance v0, Le0/b3;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-direct {v0, p0, v2}, Le0/b3;-><init>(Lcom/example/navistart/VJCT;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    const p1, 0x7f0905e2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/Button;

    .line 89
    .line 90
    sput-object p1, Lcom/example/navistart/VJCT;->i:Landroid/widget/Button;

    .line 91
    .line 92
    new-instance v0, Le0/o1;

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-direct {v0, v2}, Le0/o1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const p1, 0x7f090551

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/TextView;

    .line 109
    .line 110
    sput-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 111
    .line 112
    const p1, 0x7f09014a

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/widget/Button;

    .line 120
    .line 121
    new-instance v0, Le0/b3;

    .line 122
    .line 123
    invoke-direct {v0, p0, v2}, Le0/b3;-><init>(Lcom/example/navistart/VJCT;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    const p1, 0x7f0905dd

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/widget/Switch;

    .line 137
    .line 138
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const/16 v2, 0xe

    .line 143
    .line 144
    new-array v2, v2, [B

    .line 145
    .line 146
    fill-array-data v2, :array_0

    .line 147
    .line 148
    .line 149
    const/16 v3, 0x8

    .line 150
    .line 151
    new-array v4, v3, [B

    .line 152
    .line 153
    fill-array-data v4, :array_1

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0, v2, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Le0/e3;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v2, 0x12

    .line 180
    .line 181
    new-array v2, v2, [B

    .line 182
    .line 183
    fill-array-data v2, :array_2

    .line 184
    .line 185
    .line 186
    new-array v4, v3, [B

    .line 187
    .line 188
    fill-array-data v4, :array_3

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    const v2, 0x7f0905df

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Landroid/widget/LinearLayout;

    .line 207
    .line 208
    iput-object v2, p0, Lcom/example/navistart/VJCT;->d:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    if-eqz v0, :cond_0

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    :goto_0
    const v2, 0x7f0905de

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Landroid/widget/Switch;

    .line 227
    .line 228
    iput-object v2, p0, Lcom/example/navistart/VJCT;->e:Landroid/widget/Switch;

    .line 229
    .line 230
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/example/navistart/VJCT;->e:Landroid/widget/Switch;

    .line 234
    .line 235
    new-instance v2, Le0/c3;

    .line 236
    .line 237
    invoke-direct {v2, v1, p0, p1}, Le0/c3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    nop

    .line 245
    :array_0
    .array-data 1
        0x54t
        -0x57t
        0x10t
        -0x73t
        0x2bt
        -0x10t
        -0x7et
        0x2ft
        0x7dt
        -0x56t
        0xat
        -0x4dt
        0x3bt
        -0x15t
    .end array-data

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
    nop

    .line 257
    :array_1
    .array-data 1
        0x22t
        -0x27t
        0x7et
        -0x2et
        0x49t
        -0x61t
        -0x13t
        0x5bt
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_2
    .array-data 1
        -0x68t
        -0x26t
        -0x69t
        0x5ft
        -0x77t
        -0x1ct
        -0x5et
        0x6ct
        -0x79t
        -0x37t
        -0x64t
        0x73t
        -0x5bt
        -0xet
        -0x5ct
        0x7bt
        -0x64t
        -0x22t
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
    nop

    .line 279
    :array_3
    .array-data 1
        -0x12t
        -0x56t
        -0x7t
        0x0t
        -0x6t
        -0x7ft
        -0x30t
        0x1at
    .end array-data
.end method

.method public final onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :try_start_0
    iget-object v1, v0, Ld2/h;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/wireguard/android/backend/GoBackend;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Ld2/h;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lr5/c;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/wireguard/android/backend/GoBackend;->c:Lr5/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    if-ne v1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f130475

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/example/navistart/VJCT;->t(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 37
    .line 38
    const/high16 v1, 0x7f050000

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Lcom/example/navistart/VJCT;->s(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f130476

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/example/navistart/VJCT;->t(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 63
    .line 64
    const v1, 0x7f050068

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Lcom/example/navistart/VJCT;->s(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    new-instance v0, Le0/f3;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-direct {v0, v1}, Le0/f3;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v1, v0, Le0/f3;->b:Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const/4 v1, -0x1

    .line 88
    iput v1, v0, Le0/f3;->c:I

    .line 89
    .line 90
    iput-object p0, v0, Le0/f3;->d:Lcom/example/navistart/VJCT;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const/16 v3, 0xa

    .line 105
    .line 106
    new-array v3, v3, [B

    .line 107
    .line 108
    fill-array-data v3, :array_0

    .line 109
    .line 110
    .line 111
    const/16 v4, 0x8

    .line 112
    .line 113
    new-array v4, v4, [B

    .line 114
    .line 115
    fill-array-data v4, :array_1

    .line 116
    .line 117
    .line 118
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, Lcom/example/navistart/punto;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    sget-object v4, Le0/m;->j:[B

    .line 135
    .line 136
    sget-object v5, Le0/p3;->a:[Ljava/lang/String;

    .line 137
    .line 138
    new-instance v5, Ljava/lang/String;

    .line 139
    .line 140
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 141
    .line 142
    .line 143
    const-string v4, ""

    .line 144
    .line 145
    invoke-virtual {v3, v5, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget-object v7, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 159
    .line 160
    invoke-static {v7}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v6, v7, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/example/navistart/VJCT;->b:Lcom/example/navistart/VJCT;

    .line 172
    .line 173
    invoke-static {v4}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4}, Lcom/example/navistart/boot;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :array_0
    .array-data 1
        -0x2bt
        -0x4et
        -0x38t
        0x3at
        0x39t
        -0x3ft
        -0x2et
        0x33t
        -0x23t
        -0x48t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    nop

    .line 207
    :array_1
    .array-data 1
        -0x4ct
        -0x24t
        -0x54t
        0x48t
        0x56t
        -0x58t
        -0x4at
        0x6ct
    .end array-data
.end method
