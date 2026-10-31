.class public Lm0/i;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Landroid/widget/Spinner;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/graphics/drawable/GradientDrawable;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/os/Handler;

.field public h:Z

.field public i:Z

.field public volatile j:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

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
    iput-object v0, p0, Lm0/i;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lm0/i;->g:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .line 1
    const p3, 0x7f0c0055

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p0, Lm0/i;->j:I

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    add-int/2addr p2, p3

    .line 13
    iput p2, p0, Lm0/i;->j:I

    .line 14
    .line 15
    const p2, 0x7f0903b3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/widget/Button;

    .line 23
    .line 24
    const v1, 0x7f0903b2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/Spinner;

    .line 32
    .line 33
    iput-object v1, p0, Lm0/i;->b:Landroid/widget/Spinner;

    .line 34
    .line 35
    const v1, 0x7f0903b4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/Button;

    .line 43
    .line 44
    iput-object v1, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 45
    .line 46
    const v1, 0x7f0903b5

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p0, Lm0/i;->d:Landroid/widget/TextView;

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lm0/i;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 63
    .line 64
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lm0/i;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const v3, 0x66ffffff

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f0903b1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lm0/i;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lm0/a;

    .line 106
    .line 107
    invoke-direct {v1, p0, v0}, Lm0/a;-><init>(Lm0/i;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 114
    .line 115
    new-instance v0, Lm0/a;

    .line 116
    .line 117
    invoke-direct {v0, p0, p3}, Lm0/a;-><init>(Lm0/i;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    iget-object v0, p0, Lm0/i;->f:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x1000

    .line 137
    .line 138
    :try_start_89
    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_91
    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_d3

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 157
    .line 158
    if-eqz v2, :cond_91

    .line 159
    .line 160
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    .line 162
    if-nez v3, :cond_a4

    .line 163
    .line 164
    goto :goto_91

    .line 165
    :cond_a4
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 166
    .line 167
    and-int/2addr v4, p3

    .line 168
    if-eqz v4, :cond_aa

    .line 169
    .line 170
    goto :goto_91

    .line 171
    :cond_aa
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_bb

    .line 186
    .line 187
    goto :goto_91

    .line 188
    :cond_bb
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-instance v4, Lm0/h;

    .line 193
    .line 194
    if-nez v3, :cond_c6

    .line 195
    .line 196
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 197
    .line 198
    goto :goto_ca

    .line 199
    :cond_c6
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :goto_ca
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 204
    .line 205
    invoke-direct {v4, v3, v2}, Lm0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_d2} :catch_d3

    .line 209
    .line 210
    .line 211
    goto :goto_91

    .line 212
    :catch_d3
    :cond_d3
    new-instance p2, Landroidx/constraintlayout/core/utils/a;

    .line 213
    .line 214
    const/4 v1, 0x7

    .line 215
    invoke-direct {p2, v1}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lm0/i;->b:Landroid/widget/Spinner;

    .line 222
    .line 223
    new-instance v0, Lm0/g;

    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, p0, v1}, Lm0/g;-><init>(Lm0/i;Landroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lm0/i;->u()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iget v0, p0, Lm0/i;->j:I

    .line 247
    .line 248
    iput-boolean p3, p0, Lm0/i;->i:Z

    .line 249
    .line 250
    invoke-virtual {p0}, Lm0/i;->u()V

    .line 251
    .line 252
    .line 253
    const/16 p3, 0x12

    .line 254
    .line 255
    new-array p3, p3, [B

    .line 256
    .line 257
    fill-array-data p3, :array_11e

    .line 258
    .line 259
    .line 260
    const/16 v1, 0x8

    .line 261
    .line 262
    new-array v1, v1, [B

    .line 263
    .line 264
    fill-array-data v1, :array_12c

    .line 265
    .line 266
    .line 267
    invoke-static {p3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    const/4 v1, -0x1

    .line 272
    invoke-static {v1, p3}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    new-instance v1, Landroidx/activity/f;

    .line 277
    .line 278
    const/4 v2, 0x4

    .line 279
    invoke-direct {v1, p0, p2, v0, v2}, Landroidx/activity/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 283
    .line 284
    .line 285
    return-object p1

    .line 286
    nop

    .line 287
    :array_11e
    .array-data 1
        0x54t
        -0x23t
        -0x21t
        -0x76t
        -0x4dt
        0x6dt
        0x14t
        0x5et
        0x66t
        -0x22t
        -0x3at
        -0x4bt
        -0x48t
        0x58t
        0xbt
        0x56t
        0x7bt
        -0x27t
    .end array-data

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
    nop

    .line 301
    :array_12c
    .array-data 1
        0x15t
        -0x53t
        -0x51t
        -0x26t
        -0x2at
        0x1ft
        0x79t
        0x37t
    .end array-data
.end method

.method public final onDestroyView()V
    .registers 2

    .line 1
    iget v0, p0, Lm0/i;->j:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lm0/i;->j:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lm0/i;->i:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lm0/i;->h:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lm0/i;->b:Landroid/widget/Spinner;

    .line 14
    .line 15
    iput-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 16
    .line 17
    iput-object v0, p0, Lm0/i;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object v0, p0, Lm0/i;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 20
    .line 21
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm0/i;->u()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final t()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_30

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_3c

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 28
    .line 29
    if-eqz v0, :cond_2e

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2e

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_2e
    const/4 v0, 0x0

    .line 48
    return v0

    .line 49
    :array_30
    .array-data 1
        -0x22t
        0x1ct
        -0x5ct
        -0x7t
        0x1et
        -0x6et
        -0x6dt
        0x23t
        -0x2bt
        0x15t
        -0x45t
        -0xdt
        0x4t
    .end array-data

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
    nop

    .line 61
    :array_3c
    .array-data 1
        -0x46t
        0x79t
        -0x2et
        -0x70t
        0x7dt
        -0x9t
        -0x34t
        0x53t
    .end array-data
.end method

.method public final u()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lm0/i;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lm0/i;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    .line 7
    iget-boolean v2, p0, Lm0/i;->h:Z

    .line 8
    .line 9
    if-eqz v2, :cond_e

    .line 10
    .line 11
    const v2, -0xb350b0

    .line 12
    .line 13
    .line 14
    goto :goto_16

    .line 15
    :cond_e
    if-eqz v0, :cond_13

    .line 16
    .line 17
    const/16 v2, -0x3ef9

    .line 18
    .line 19
    goto :goto_16

    .line 20
    :cond_13
    const v2, -0x10acb0

    .line 21
    .line 22
    .line 23
    :goto_16
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lm0/i;->i:Z

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_24

    .line 30
    .line 31
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    iget-boolean v1, p0, Lm0/i;->h:Z

    .line 38
    .line 39
    const v3, 0x3f0ccccd    # 0.55f

    .line 40
    .line 41
    .line 42
    if-nez v1, :cond_45

    .line 43
    .line 44
    if-nez v0, :cond_45

    .line 45
    .line 46
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 57
    .line 58
    const v1, 0x7f1300b5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lm0/i;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_45
    iget-object v0, p0, Lm0/i;->f:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 77
    .line 78
    if-eqz v0, :cond_65

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 89
    .line 90
    const v1, 0x7f1300b4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lm0/i;->d:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_65
    const/4 v0, 0x1

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 107
    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lm0/i;->c:Landroid/widget/Button;

    .line 114
    .line 115
    const v1, 0x7f1300ae

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lm0/i;->d:Landroid/widget/TextView;

    .line 122
    .line 123
    const-string v1, ""

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
