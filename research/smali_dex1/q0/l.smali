.class public Lq0/l;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Lcom/bumptech/glide/m;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/RadioGroup;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/CheckBox;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lq0/l;->b:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/bumptech/glide/m;

    .line 16
    .line 17
    const/16 v1, 0x1a

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lq0/l;->c:Lcom/bumptech/glide/m;

    .line 23
    .line 24
    const/16 v0, 0x9

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    fill-array-data v0, :array_2c

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_36

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lq0/l;->t:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :array_2c
    .array-data 1
        0x53t
        0x3ft
        0x1at
        -0x3at
        0x45t
        0xbt
        -0x67t
        -0x49t
        0x53t
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    nop

    .line 55
    :array_36
    .array-data 1
        0x23t
        0x57t
        0x75t
        -0x58t
        0x20t
        0x54t
        -0x8t
        -0x39t
    .end array-data
.end method

.method public static v(Ljava/lang/String;)I
    .registers 4

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_52

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_5e

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1c

    .line 24
    .line 25
    const p0, 0x7f0902f6

    .line 26
    .line 27
    .line 28
    return p0

    .line 29
    :cond_1c
    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    fill-array-data v0, :array_66

    .line 33
    .line 34
    .line 35
    new-array v2, v1, [B

    .line 36
    .line 37
    fill-array-data v2, :array_6c

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_35

    .line 49
    .line 50
    const p0, 0x7f0902fa

    .line 51
    .line 52
    .line 53
    return p0

    .line 54
    :cond_35
    const/4 v0, 0x5

    .line 55
    new-array v0, v0, [B

    .line 56
    .line 57
    fill-array-data v0, :array_74

    .line 58
    .line 59
    .line 60
    new-array v1, v1, [B

    .line 61
    .line 62
    fill-array-data v1, :array_7c

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4e

    .line 74
    .line 75
    const p0, 0x7f0902f7

    .line 76
    .line 77
    .line 78
    return p0

    .line 79
    :cond_4e
    const p0, 0x7f0902f8

    .line 80
    .line 81
    .line 82
    return p0

    .line 83
    :array_52
    .array-data 1
        0x17t
        0x58t
        -0xbt
        0x4t
        -0x63t
        -0x11t
        0x73t
        0x23t
        0x15t
        0x5at
        -0x27t
        0x32t
        -0x7ft
        -0x7t
    .end array-data

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
        0x70t
        0x28t
        -0x7at
        0x5bt
        -0x12t
        -0x76t
        0x1t
        0x55t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        -0x58t
        0x7at
        0x37t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_6c
    .array-data 1
        -0x23t
        0x9t
        0x55t
        0x77t
        0x5dt
        -0x63t
        0x3et
        -0x71t
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_74
    .array-data 1
        0x26t
        -0x4ct
        0x3at
        0x4et
        0x2ct
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    nop

    .line 125
    :array_7c
    .array-data 1
        0x4bt
        -0x25t
        0x5et
        0x2bt
        0x41t
        -0x22t
        -0xdt
        -0x30t
    .end array-data
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_a4

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_ae

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_27

    .line 24
    .line 25
    new-array p0, v0, [B

    .line 26
    .line 27
    fill-array-data p0, :array_b6

    .line 28
    .line 29
    .line 30
    new-array v0, v2, [B

    .line 31
    .line 32
    fill-array-data v0, :array_c0

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_27
    const/16 v1, 0xe

    .line 41
    .line 42
    new-array v3, v1, [B

    .line 43
    .line 44
    fill-array-data v3, :array_c8

    .line 45
    .line 46
    .line 47
    new-array v4, v2, [B

    .line 48
    .line 49
    fill-array-data v4, :array_d4

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_4c

    .line 61
    .line 62
    new-array p0, v1, [B

    .line 63
    .line 64
    fill-array-data p0, :array_dc

    .line 65
    .line 66
    .line 67
    new-array v0, v2, [B

    .line 68
    .line 69
    fill-array-data v0, :array_e8

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4c
    const/4 v1, 0x3

    .line 78
    new-array v3, v1, [B

    .line 79
    .line 80
    fill-array-data v3, :array_f0

    .line 81
    .line 82
    .line 83
    new-array v4, v2, [B

    .line 84
    .line 85
    fill-array-data v4, :array_f6

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_70

    .line 97
    .line 98
    new-array p0, v1, [B

    .line 99
    .line 100
    fill-array-data p0, :array_fe

    .line 101
    .line 102
    .line 103
    new-array v0, v2, [B

    .line 104
    .line 105
    fill-array-data v0, :array_104

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_70
    const/4 v1, 0x5

    .line 114
    new-array v3, v1, [B

    .line 115
    .line 116
    fill-array-data v3, :array_10c

    .line 117
    .line 118
    .line 119
    new-array v4, v2, [B

    .line 120
    .line 121
    fill-array-data v4, :array_114

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_94

    .line 133
    .line 134
    new-array p0, v1, [B

    .line 135
    .line 136
    fill-array-data p0, :array_11c

    .line 137
    .line 138
    .line 139
    new-array v0, v2, [B

    .line 140
    .line 141
    fill-array-data v0, :array_124

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_94
    new-array p0, v0, [B

    .line 150
    .line 151
    fill-array-data p0, :array_12c

    .line 152
    .line 153
    .line 154
    new-array v0, v2, [B

    .line 155
    .line 156
    fill-array-data v0, :array_136

    .line 157
    .line 158
    .line 159
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    nop

    .line 165
    :array_a4
    .array-data 1
        -0x37t
        0x68t
        -0x6ft
        -0x4et
        0x32t
        -0x5ct
        -0x55t
        -0x6et
        -0x37t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :array_ae
    .array-data 1
        -0x47t
        0x0t
        -0x2t
        -0x24t
        0x57t
        -0x5t
        -0x36t
        -0x1et
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_b6
    .array-data 1
        0x1ft
        -0x3et
        -0x45t
        -0x26t
        -0x63t
        0x15t
        -0x4bt
        -0x36t
        0x1ft
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    nop

    .line 193
    :array_c0
    .array-data 1
        0x6ft
        -0x56t
        -0x2ct
        -0x4ct
        -0x8t
        0x4at
        -0x2ct
        -0x46t
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_c8
    .array-data 1
        0x6at
        -0x21t
        0x6bt
        0x4t
        0x76t
        0x78t
        -0x7t
        -0x51t
        0x68t
        -0x23t
        0x47t
        0x32t
        0x6at
        0x6et
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    nop

    .line 213
    :array_d4
    .array-data 1
        0xdt
        -0x51t
        0x18t
        0x5bt
        0x5t
        0x1dt
        -0x75t
        -0x27t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_dc
    .array-data 1
        0x2et
        0x1t
        -0x60t
        0x5at
        0x32t
        -0x5dt
        -0x19t
        -0x4t
        0x2ct
        0x3t
        -0x74t
        0x6ct
        0x2et
        -0x4bt
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    nop

    .line 233
    :array_e8
    .array-data 1
        0x49t
        0x71t
        -0x2dt
        0x5t
        0x41t
        -0x3at
        -0x6bt
        -0x76t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_f0
    .array-data 1
        -0x2et
        0x5dt
        0x10t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_f6
    .array-data 1
        -0x59t
        0x2et
        0x72t
        -0x5bt
        0x51t
        0x18t
        0x30t
        -0x54t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_fe
    .array-data 1
        0x51t
        0x5et
        0x69t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_104
    .array-data 1
        0x24t
        0x2dt
        0xbt
        0x6dt
        0x5et
        -0x7at
        -0x1et
        0x3bt
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_10c
    .array-data 1
        -0xet
        -0x59t
        0x2bt
        -0x73t
        0x2et
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    nop

    .line 277
    :array_114
    .array-data 1
        -0x61t
        -0x38t
        0x4ft
        -0x18t
        0x43t
        -0x1et
        -0x56t
        0x7ct
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_11c
    .array-data 1
        -0x11t
        0x16t
        0x32t
        0x17t
        -0x2et
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    nop

    .line 293
    :array_124
    .array-data 1
        -0x7et
        0x79t
        0x56t
        0x72t
        -0x41t
        0x49t
        -0x66t
        0x5ct
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_12c
    .array-data 1
        -0x29t
        0x57t
        -0x80t
        -0x1et
        -0x6t
        0x3at
        0x2et
        0xct
        -0x29t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    nop

    .line 311
    :array_136
    .array-data 1
        -0x59t
        0x3ft
        -0x11t
        -0x74t
        -0x61t
        0x65t
        0x4ft
        0x7ct
    .end array-data
.end method

.method public static y(ILandroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_a

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_a
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    const p3, 0x7f0c005f

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
    return-object p1
.end method

.method public final onPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/l;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lq0/l;->c:Lcom/bumptech/glide/m;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq0/l;->c:Lcom/bumptech/glide/m;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/m;->run()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/example/navistart/MockGPS/MockGpsService;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0902ef

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroid/widget/EditText;

    .line 19
    .line 20
    iput-object p2, p0, Lq0/l;->d:Landroid/widget/EditText;

    .line 21
    .line 22
    const p2, 0x7f0902f3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/widget/EditText;

    .line 30
    .line 31
    iput-object p2, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 32
    .line 33
    const p2, 0x7f0902f9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/widget/RadioGroup;

    .line 41
    .line 42
    iput-object p2, p0, Lq0/l;->f:Landroid/widget/RadioGroup;

    .line 43
    .line 44
    const p2, 0x7f0902f5

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object p2, p0, Lq0/l;->g:Landroid/widget/TextView;

    .line 54
    .line 55
    const p2, 0x7f0902f4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object p2, p0, Lq0/l;->h:Landroid/widget/TextView;

    .line 65
    .line 66
    const p2, 0x7f090301

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object p2, p0, Lq0/l;->i:Landroid/widget/TextView;

    .line 76
    .line 77
    const p2, 0x7f0902ee

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p2, p0, Lq0/l;->j:Landroid/widget/TextView;

    .line 87
    .line 88
    const p2, 0x7f0902fe

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Landroid/widget/TextView;

    .line 96
    .line 97
    iput-object p2, p0, Lq0/l;->k:Landroid/widget/TextView;

    .line 98
    .line 99
    const p2, 0x7f0902f2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object p2, p0, Lq0/l;->l:Landroid/widget/TextView;

    .line 109
    .line 110
    const p2, 0x7f0902ed

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iput-object p2, p0, Lq0/l;->m:Landroid/view/View;

    .line 118
    .line 119
    const p2, 0x7f0902fd

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iput-object p2, p0, Lq0/l;->n:Landroid/view/View;

    .line 127
    .line 128
    const p2, 0x7f090302

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, p0, Lq0/l;->o:Landroid/view/View;

    .line 136
    .line 137
    const v0, 0x7f0902f0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lq0/l;->p:Landroid/view/View;

    .line 145
    .line 146
    const v0, 0x7f0902eb

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroid/widget/CheckBox;

    .line 154
    .line 155
    iput-object v0, p0, Lq0/l;->q:Landroid/widget/CheckBox;

    .line 156
    .line 157
    const v0, 0x7f090300

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object v0, p0, Lq0/l;->r:Landroid/widget/TextView;

    .line 167
    .line 168
    const v0, 0x7f0902ff

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object v0, p0, Lq0/l;->s:Landroid/widget/TextView;

    .line 178
    .line 179
    const v0, 0x7f0902f1

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Landroid/widget/ImageView;

    .line 187
    .line 188
    const v1, 0x7f130265

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const/16 v2, 0x168

    .line 196
    .line 197
    invoke-static {v2, v1}, Le3/d;->h(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-eqz v1, :cond_cd

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    .line 205
    .line 206
    :cond_cd
    const v0, 0x7f0902f8

    .line 207
    .line 208
    .line 209
    invoke-static {v0, p1}, Lq0/l;->y(ILandroid/view/View;)V

    .line 210
    .line 211
    .line 212
    const v0, 0x7f0902f6

    .line 213
    .line 214
    .line 215
    invoke-static {v0, p1}, Lq0/l;->y(ILandroid/view/View;)V

    .line 216
    .line 217
    .line 218
    const v0, 0x7f0902fa

    .line 219
    .line 220
    .line 221
    invoke-static {v0, p1}, Lq0/l;->y(ILandroid/view/View;)V

    .line 222
    .line 223
    .line 224
    const v0, 0x7f0902f7

    .line 225
    .line 226
    .line 227
    invoke-static {v0, p1}, Lq0/l;->y(ILandroid/view/View;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/16 v1, 0x12

    .line 235
    .line 236
    new-array v2, v1, [B

    .line 237
    .line 238
    fill-array-data v2, :array_1b2

    .line 239
    .line 240
    .line 241
    const/16 v3, 0x8

    .line 242
    .line 243
    new-array v4, v3, [B

    .line 244
    .line 245
    fill-array-data v4, :array_1c0

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const/4 v2, 0x1

    .line 257
    if-nez v0, :cond_131

    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-instance v4, Lm0/m2;

    .line 268
    .line 269
    invoke-direct {v4}, Lm0/m2;-><init>()V

    .line 270
    .line 271
    .line 272
    new-instance v5, Landroid/os/Bundle;

    .line 273
    .line 274
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 275
    .line 276
    .line 277
    sget-object v6, Lm0/m2;->m:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 283
    .line 284
    .line 285
    new-array v1, v1, [B

    .line 286
    .line 287
    fill-array-data v1, :array_1c8

    .line 288
    .line 289
    .line 290
    new-array v5, v3, [B

    .line 291
    .line 292
    fill-array-data v5, :array_1d6

    .line 293
    .line 294
    .line 295
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v0, p2, v4, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 304
    .line 305
    .line 306
    :cond_131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    sget-object v0, Lcom/example/navistart/MockGPS/MockGpsService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_149

    .line 317
    .line 318
    new-instance p2, Lq0/g;

    .line 319
    .line 320
    sget-object v0, Lcom/example/navistart/MockGPS/MockGpsService;->w:Ljava/lang/String;

    .line 321
    .line 322
    sget-object v1, Lcom/example/navistart/MockGPS/MockGpsService;->x:Ljava/lang/String;

    .line 323
    .line 324
    sget v4, Lcom/example/navistart/MockGPS/MockGpsService;->y:I

    .line 325
    .line 326
    invoke-direct {p2, v0, v1, v4}, Lq0/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_14d

    .line 330
    :cond_149
    invoke-static {p2}, Lcom/example/navistart/MockGPS/MockGpsService;->d(Landroid/content/Context;)Lq0/g;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    :goto_14d
    iget-object v0, p2, Lq0/g;->b:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v0}, Lq0/l;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iput-object v0, p0, Lq0/l;->t:Ljava/lang/String;

    .line 341
    .line 342
    iget-object v1, p0, Lq0/l;->f:Landroid/widget/RadioGroup;

    .line 343
    .line 344
    invoke-static {v0}, Lq0/l;->v(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v2}, Lq0/l;->u(Z)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, p2}, Lq0/l;->t(Lq0/g;)V

    .line 355
    .line 356
    .line 357
    iget-object p2, p0, Lq0/l;->f:Landroid/widget/RadioGroup;

    .line 358
    .line 359
    new-instance v0, Lq0/i;

    .line 360
    .line 361
    const/4 v1, 0x0

    .line 362
    invoke-direct {v0, v1, p0}, Lq0/i;-><init>(ILjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 366
    .line 367
    .line 368
    iget-object p2, p0, Lq0/l;->q:Landroid/widget/CheckBox;

    .line 369
    .line 370
    new-instance v0, Le0/s0;

    .line 371
    .line 372
    invoke-direct {v0, v3, p0}, Le0/s0;-><init>(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 376
    .line 377
    .line 378
    const p2, 0x7f0902fb

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    check-cast p2, Landroid/widget/Button;

    .line 386
    .line 387
    const v0, 0x7f0902fc

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    check-cast v0, Landroid/widget/Button;

    .line 395
    .line 396
    const v3, 0x7f0902ec

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Landroid/widget/Button;

    .line 404
    .line 405
    new-instance v3, Lq0/j;

    .line 406
    .line 407
    invoke-direct {v3, p0, v1}, Lq0/j;-><init>(Lq0/l;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    new-instance p2, Lq0/j;

    .line 414
    .line 415
    invoke-direct {p2, p0, v2}, Lq0/j;-><init>(Lq0/l;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    .line 420
    .line 421
    new-instance p2, Lq0/j;

    .line 422
    .line 423
    const/4 v0, 0x2

    .line 424
    invoke-direct {p2, p0, v0}, Lq0/j;-><init>(Lq0/l;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0}, Lq0/l;->z()V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    nop

    .line 435
    :array_1b2
    .array-data 1
        0x55t
        0x28t
        0x25t
        0x49t
        -0xbt
        0x33t
        0x8t
        0x30t
        0x55t
        0x5t
        0x37t
        0x42t
        -0xet
        0x37t
        0xet
        0x2ct
        0x46t
        0x29t
    .end array-data

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
    .line 448
    nop

    .line 449
    :array_1c0
    .array-data 1
        0x21t
        0x5at
        0x44t
        0x27t
        -0x7at
        0x43t
        0x67t
        0x42t
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_1c8
    .array-data 1
        -0x80t
        0xbt
        -0x53t
        0x77t
        0x44t
        0x58t
        0x39t
        -0x28t
        -0x80t
        0x26t
        -0x41t
        0x7ct
        0x43t
        0x5ct
        0x3ft
        -0x3ct
        -0x6dt
        0xat
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    nop

    .line 471
    :array_1d6
    .array-data 1
        -0xct
        0x79t
        -0x34t
        0x19t
        0x37t
        0x28t
        0x56t
        -0x56t
    .end array-data
.end method

.method public final t(Lq0/g;)V
    .registers 10

    .line 1
    iget v0, p1, Lq0/g;->d:I

    .line 2
    .line 3
    iget-object v1, p1, Lq0/g;->c:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lq0/g;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    new-array v3, p1, [B

    .line 17
    .line 18
    const/16 v4, -0x73

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-byte v4, v3, v5

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    new-array v6, v4, [B

    .line 26
    .line 27
    fill-array-data v6, :array_7c

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ""

    .line 38
    .line 39
    if-nez v1, :cond_2a

    .line 40
    .line 41
    move-object v6, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move-object v6, v1

    .line 44
    :goto_2b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-array v6, p1, [B

    .line 48
    .line 49
    const/16 v7, 0x59

    .line 50
    .line 51
    aput-byte v7, v6, v5

    .line 52
    .line 53
    new-array v7, v4, [B

    .line 54
    .line 55
    fill-array-data v7, :array_84

    .line 56
    .line 57
    .line 58
    invoke-static {v6, v7, v2, v0}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 59
    .line 60
    .line 61
    new-array v6, p1, [B

    .line 62
    .line 63
    const/16 v7, 0x75

    .line 64
    .line 65
    aput-byte v7, v6, v5

    .line 66
    .line 67
    new-array v4, v4, [B

    .line 68
    .line 69
    fill-array-data v4, :array_8c

    .line 70
    .line 71
    .line 72
    invoke-static {v6, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v4, p0, Lq0/l;->u:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5e

    .line 93
    .line 94
    return-void

    .line 95
    :cond_5e
    iget-object v4, p0, Lq0/l;->d:Landroid/widget/EditText;

    .line 96
    .line 97
    if-nez v1, :cond_63

    .line 98
    .line 99
    move-object v1, v3

    .line 100
    :cond_63
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iput-boolean p1, p0, Lq0/l;->v:Z

    .line 113
    .line 114
    iget-object p1, p0, Lq0/l;->q:Landroid/widget/CheckBox;

    .line 115
    .line 116
    invoke-virtual {p1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 117
    .line 118
    .line 119
    iput-boolean v5, p0, Lq0/l;->v:Z

    .line 120
    .line 121
    iput-object v2, p0, Lq0/l;->u:Ljava/lang/String;

    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :array_7c
    .array-data 1
        -0xft
        -0x7t
        0x48t
        -0x59t
        0x66t
        0x71t
        0x12t
        -0xat
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_84
    .array-data 1
        0x25t
        0x51t
        -0x5bt
        -0x21t
        -0x4at
        -0x39t
        -0x59t
        -0x33t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_8c
    .array-data 1
        0x9t
        0x45t
        -0x6bt
        0x77t
        -0x4ct
        0x65t
        0x45t
        -0x63t
    .end array-data
.end method

.method public final u(Z)V
    .registers 13

    .line 1
    iget-object v0, p0, Lq0/l;->t:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    fill-array-data v2, :array_166

    .line 8
    .line 9
    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    new-array v4, v3, [B

    .line 13
    .line 14
    fill-array-data v4, :array_172

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_39

    .line 26
    .line 27
    new-instance v4, Lq0/k;

    .line 28
    .line 29
    const v0, 0x7f130266

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const v0, 0x7f13025d

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const v0, 0x7f13025e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const/16 v5, 0x22b7

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    invoke-direct/range {v4 .. v9}, Lq0/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_be

    .line 57
    .line 58
    :cond_39
    const/4 v2, 0x3

    .line 59
    new-array v2, v2, [B

    .line 60
    .line 61
    fill-array-data v2, :array_17a

    .line 62
    .line 63
    .line 64
    new-array v4, v3, [B

    .line 65
    .line 66
    fill-array-data v4, :array_180

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6d

    .line 78
    .line 79
    new-instance v4, Lq0/k;

    .line 80
    .line 81
    const v0, 0x7f13029b

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const v0, 0x7f130263

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const v0, 0x7f130264

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const v5, 0x70800

    .line 103
    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    invoke-direct/range {v4 .. v9}, Lq0/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_be

    .line 110
    :cond_6d
    const/4 v2, 0x5

    .line 111
    new-array v2, v2, [B

    .line 112
    .line 113
    fill-array-data v2, :array_188

    .line 114
    .line 115
    .line 116
    new-array v4, v3, [B

    .line 117
    .line 118
    fill-array-data v4, :array_190

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_a0

    .line 130
    .line 131
    new-instance v4, Lq0/k;

    .line 132
    .line 133
    const v0, 0x7f130273

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const v0, 0x7f13025f

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    const v0, 0x7f130260

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    const/16 v5, 0x2b02

    .line 155
    .line 156
    const/4 v9, 0x1

    .line 157
    invoke-direct/range {v4 .. v9}, Lq0/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    goto :goto_be

    .line 161
    :cond_a0
    new-instance v5, Lq0/k;

    .line 162
    .line 163
    const v0, 0x7f13027e

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const v0, 0x7f13025c

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    const v0, 0x7f130261

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    const/16 v6, 0x22b7

    .line 185
    .line 186
    const/4 v10, 0x1

    .line 187
    invoke-direct/range {v5 .. v10}, Lq0/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    move-object v4, v5

    .line 191
    :goto_be
    iget-object v0, p0, Lq0/l;->g:Landroid/widget/TextView;

    .line 192
    .line 193
    iget-object v2, v4, Lq0/k;->a:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lq0/l;->d:Landroid/widget/EditText;

    .line 199
    .line 200
    iget-object v2, v4, Lq0/k;->b:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lq0/l;->d:Landroid/widget/EditText;

    .line 206
    .line 207
    iget-boolean v2, v4, Lq0/k;->e:Z

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 213
    .line 214
    iget-object v2, v4, Lq0/k;->c:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 220
    .line 221
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-nez p1, :cond_f1

    .line 234
    .line 235
    iget-object v2, p0, Lq0/l;->d:Landroid/widget/EditText;

    .line 236
    .line 237
    const-string v5, ""

    .line 238
    .line 239
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    :cond_f1
    if-eqz p1, :cond_f9

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_104

    .line 249
    .line 250
    :cond_f9
    iget-object p1, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 251
    .line 252
    iget v0, v4, Lq0/k;->d:I

    .line 253
    .line 254
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    :cond_104
    const/16 p1, 0x9

    .line 262
    .line 263
    new-array p1, p1, [B

    .line 264
    .line 265
    fill-array-data p1, :array_198

    .line 266
    .line 267
    .line 268
    new-array v0, v3, [B

    .line 269
    .line 270
    fill-array-data v0, :array_1a2

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object v0, p0, Lq0/l;->t:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    iget-object v0, p0, Lq0/l;->o:Landroid/view/View;

    .line 284
    .line 285
    const/4 v2, 0x0

    .line 286
    if-eqz p1, :cond_121

    .line 287
    .line 288
    move v4, v2

    .line 289
    goto :goto_122

    .line 290
    :cond_121
    move v4, v3

    .line 291
    :goto_122
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lq0/l;->p:Landroid/view/View;

    .line 295
    .line 296
    new-array v1, v1, [B

    .line 297
    .line 298
    fill-array-data v1, :array_1aa

    .line 299
    .line 300
    .line 301
    new-array v4, v3, [B

    .line 302
    .line 303
    fill-array-data v4, :array_1b6

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iget-object v4, p0, Lq0/l;->t:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_13f

    .line 317
    .line 318
    move v1, v2

    .line 319
    goto :goto_140

    .line 320
    :cond_13f
    move v1, v3

    .line 321
    :goto_140
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lq0/l;->q:Landroid/widget/CheckBox;

    .line 325
    .line 326
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lq0/l;->r:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lq0/l;->s:Landroid/widget/TextView;

    .line 335
    .line 336
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lq0/l;->d:Landroid/widget/EditText;

    .line 340
    .line 341
    if-eqz p1, :cond_158

    .line 342
    .line 343
    move v1, v3

    .line 344
    goto :goto_159

    .line 345
    :cond_158
    move v1, v2

    .line 346
    :goto_159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 350
    .line 351
    if-eqz p1, :cond_161

    .line 352
    .line 353
    goto :goto_162

    .line 354
    :cond_161
    move v3, v2

    .line 355
    :goto_162
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :array_166
    .array-data 1
        0x31t
        0x4bt
        0x5ft
        -0x39t
        -0x32t
        0xat
        0x4ft
        -0xat
        0x33t
        0x49t
        0x73t
        -0xft
        -0x2et
        0x1ct
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    nop

    .line 371
    :array_172
    .array-data 1
        0x56t
        0x3bt
        0x2ct
        -0x68t
        -0x43t
        0x6ft
        0x3dt
        -0x80t
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_17a
    .array-data 1
        0x7bt
        -0x56t
        0x31t
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_180
    .array-data 1
        0xet
        -0x27t
        0x53t
        -0x50t
        0x40t
        -0x73t
        0x35t
        0x78t
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_188
    .array-data 1
        0x1at
        0x31t
        0x3t
        -0x7t
        -0x66t
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    nop

    .line 401
    :array_190
    .array-data 1
        0x77t
        0x5et
        0x67t
        -0x64t
        -0x9t
        -0x43t
        -0x6t
        -0xbt
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_198
    .array-data 1
        0xct
        -0x64t
        0x42t
        -0xct
        -0x5et
        0x28t
        0x1et
        -0x58t
        0xct
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    nop

    .line 419
    :array_1a2
    .array-data 1
        0x7ct
        -0xct
        0x2dt
        -0x66t
        -0x39t
        0x77t
        0x7ft
        -0x28t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_1aa
    .array-data 1
        -0x3ct
        -0x5dt
        -0x49t
        0x47t
        -0x2ct
        0x68t
        -0x48t
        -0x4dt
        -0x3at
        -0x5ft
        -0x65t
        0x71t
        -0x38t
        0x7et
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    nop

    .line 439
    :array_1b6
    .array-data 1
        -0x5dt
        -0x2dt
        -0x3ct
        0x18t
        -0x59t
        0xdt
        -0x36t
        -0x3bt
    .end array-data
.end method

.method public final x()I
    .registers 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x5

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    :try_start_4
    iget-object v3, p0, Lq0/l;->e:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-array v4, v0, [B

    .line 24
    .line 25
    fill-array-data v4, :array_a6

    .line 26
    .line 27
    .line 28
    new-array v5, v2, [B

    .line 29
    .line 30
    fill-array-data v5, :array_ac

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lq0/l;->t:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_36

    .line 44
    .line 45
    const/16 v0, 0x4b0

    .line 46
    .line 47
    if-lt v3, v0, :cond_71

    .line 48
    .line 49
    const v0, 0xe1000

    .line 50
    .line 51
    .line 52
    if-gt v3, v0, :cond_71

    .line 53
    .line 54
    goto :goto_5a

    .line 55
    :cond_36
    new-array v4, v1, [B

    .line 56
    .line 57
    fill-array-data v4, :array_b4

    .line 58
    .line 59
    .line 60
    new-array v5, v2, [B

    .line 61
    .line 62
    fill-array-data v5, :array_bc

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, p0, Lq0/l;->t:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4a} :catch_5b

    .line 75
    const v5, 0xffff

    .line 76
    .line 77
    .line 78
    if-eqz v4, :cond_56

    .line 79
    .line 80
    const/16 v0, 0x400

    .line 81
    .line 82
    if-lt v3, v0, :cond_8b

    .line 83
    .line 84
    if-gt v3, v5, :cond_8b

    .line 85
    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    if-lez v3, :cond_5b

    .line 88
    .line 89
    if-gt v3, v5, :cond_5b

    .line 90
    .line 91
    :goto_5a
    return v3

    .line 92
    :catch_5b
    :cond_5b
    new-array v0, v0, [B

    .line 93
    .line 94
    fill-array-data v0, :array_c4

    .line 95
    .line 96
    .line 97
    new-array v3, v2, [B

    .line 98
    .line 99
    fill-array-data v3, :array_ca

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v3, p0, Lq0/l;->t:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_75

    .line 113
    .line 114
    :cond_71
    const v0, 0x70800

    .line 115
    .line 116
    .line 117
    return v0

    .line 118
    :cond_75
    new-array v0, v1, [B

    .line 119
    .line 120
    fill-array-data v0, :array_d2

    .line 121
    .line 122
    .line 123
    new-array v1, v2, [B

    .line 124
    .line 125
    fill-array-data v1, :array_da

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v1, p0, Lq0/l;->t:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_8e

    .line 139
    .line 140
    :cond_8b
    const/16 v0, 0x2b02

    .line 141
    .line 142
    return v0

    .line 143
    :cond_8e
    const/16 v0, 0xe

    .line 144
    .line 145
    new-array v0, v0, [B

    .line 146
    .line 147
    fill-array-data v0, :array_e2

    .line 148
    .line 149
    .line 150
    new-array v1, v2, [B

    .line 151
    .line 152
    fill-array-data v1, :array_ee

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v1, p0, Lq0/l;->t:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    const/16 v0, 0x22b7

    .line 165
    .line 166
    return v0

    .line 167
    :array_a6
    .array-data 1
        0x15t
        -0x72t
        -0x77t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_ac
    .array-data 1
        0x60t
        -0x3t
        -0x15t
        -0x12t
        -0x2bt
        -0x28t
        0x7dt
        0x7ft
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_b4
    .array-data 1
        0x5t
        -0x48t
        -0x1ft
        -0x73t
        0x5ct
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    nop

    .line 189
    :array_bc
    .array-data 1
        0x68t
        -0x29t
        -0x7bt
        -0x18t
        0x31t
        0x1dt
        0x21t
        -0x45t
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_c4
    .array-data 1
        -0x52t
        0x10t
        0x31t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_ca
    .array-data 1
        -0x25t
        0x63t
        0x53t
        -0x45t
        0x13t
        -0x1dt
        -0x40t
        -0x7ft
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_d2
    .array-data 1
        0x54t
        0x48t
        0xdt
        0x1at
        0xbt
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    nop

    .line 219
    :array_da
    .array-data 1
        0x39t
        0x27t
        0x69t
        0x7ft
        0x66t
        -0x20t
        0x4ct
        0x70t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_e2
    .array-data 1
        0x5t
        0x70t
        0x44t
        -0x6ct
        -0x52t
        0xet
        0x2ft
        0x71t
        0x7t
        0x72t
        0x68t
        -0x5et
        -0x4et
        0x18t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    nop

    .line 239
    :array_ee
    .array-data 1
        0x62t
        0x0t
        0x37t
        -0x35t
        -0x23t
        0x6bt
        0x5dt
        0x7t
    .end array-data
.end method

.method public final z()V
    .registers 14

    .line 1
    sget-object v0, Lcom/example/navistart/MockGPS/MockGpsService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/example/navistart/MockGPS/MockGpsService;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lcom/example/navistart/MockGPS/MockGpsService;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v0, :cond_3f

    .line 20
    .line 21
    new-instance v4, Lq0/g;

    .line 22
    .line 23
    sget-object v5, Lcom/example/navistart/MockGPS/MockGpsService;->w:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v6, Lcom/example/navistart/MockGPS/MockGpsService;->x:Ljava/lang/String;

    .line 26
    .line 27
    sget v7, Lcom/example/navistart/MockGPS/MockGpsService;->y:I

    .line 28
    .line 29
    invoke-direct {v4, v5, v6, v7}, Lq0/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    iget-object v5, v4, Lq0/g;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v5}, Lq0/l;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, p0, Lq0/l;->t:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v5}, Lq0/l;->v(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, p0, Lq0/l;->f:Landroid/widget/RadioGroup;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eq v6, v5, :cond_38

    .line 51
    .line 52
    iget-object v6, p0, Lq0/l;->f:Landroid/widget/RadioGroup;

    .line 53
    .line 54
    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 55
    .line 56
    .line 57
    :cond_38
    const/4 v5, 0x1

    .line 58
    invoke-virtual {p0, v5}, Lq0/l;->u(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v4}, Lq0/l;->t(Lq0/g;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    iget-object v4, p0, Lq0/l;->h:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v0, :cond_47

    .line 67
    .line 68
    const v5, 0x7f130280

    .line 69
    .line 70
    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    const v5, 0x7f130281

    .line 73
    .line 74
    .line 75
    :goto_4a
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lq0/l;->i:Landroid/widget/TextView;

    .line 83
    .line 84
    sget-object v5, Lcom/example/navistart/MockGPS/MockGpsService;->C:Ljava/lang/String;

    .line 85
    .line 86
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const v6, 0x7f130252

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lq0/l;->j:Landroid/widget/TextView;

    .line 101
    .line 102
    sget-object v5, Lcom/example/navistart/MockGPS/MockGpsService;->B:Ljava/lang/String;

    .line 103
    .line 104
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const v6, 0x7f13025b

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lq0/l;->k:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const-wide/16 v5, 0x3e8

    .line 125
    .line 126
    const-wide/16 v7, 0x0

    .line 127
    .line 128
    if-eqz v2, :cond_b2

    .line 129
    .line 130
    sget-wide v9, Lcom/example/navistart/MockGPS/MockGpsService;->H:J

    .line 131
    .line 132
    cmp-long v2, v9, v7

    .line 133
    .line 134
    if-lez v2, :cond_b2

    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v9

    .line 140
    sget-wide v11, Lcom/example/navistart/MockGPS/MockGpsService;->H:J

    .line 141
    .line 142
    sub-long/2addr v9, v11

    .line 143
    div-long/2addr v9, v5

    .line 144
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide v9

    .line 148
    sget-object v2, Lcom/example/navistart/MockGPS/MockGpsService;->A:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    filled-new-array {v2, v9}, [Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    sget-object v9, Lcom/example/navistart/MockGPS/MockGpsService;->F:Landroid/content/Context;

    .line 159
    .line 160
    if-nez v9, :cond_a4

    .line 161
    .line 162
    const-string v2, ""

    .line 163
    .line 164
    goto :goto_ab

    .line 165
    :cond_a4
    const v10, 0x7f13026e

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_ab
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-nez v9, :cond_b2

    .line 177
    .line 178
    goto :goto_b4

    .line 179
    :cond_b2
    sget-object v2, Lcom/example/navistart/MockGPS/MockGpsService;->E:Ljava/lang/String;

    .line 180
    .line 181
    :goto_b4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lq0/l;->l:Landroid/widget/TextView;

    .line 185
    .line 186
    sget-object v4, Lcom/example/navistart/MockGPS/MockGpsService;->D:Ljava/lang/String;

    .line 187
    .line 188
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    const v9, 0x7f13026c

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v9, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lq0/l;->m:Landroid/view/View;

    .line 203
    .line 204
    const v4, 0x7f070180

    .line 205
    .line 206
    .line 207
    const v9, 0x7f070182

    .line 208
    .line 209
    .line 210
    const v10, 0x7f070181

    .line 211
    .line 212
    .line 213
    if-eqz v1, :cond_d8

    .line 214
    .line 215
    move v0, v10

    .line 216
    goto :goto_dd

    .line 217
    :cond_d8
    if-eqz v0, :cond_dc

    .line 218
    .line 219
    move v0, v9

    .line 220
    goto :goto_dd

    .line 221
    :cond_dc
    move v0, v4

    .line 222
    :goto_dd
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lq0/l;->n:Landroid/view/View;

    .line 226
    .line 227
    if-eqz v3, :cond_e6

    .line 228
    .line 229
    move v4, v10

    .line 230
    goto :goto_e9

    .line 231
    :cond_e6
    if-eqz v1, :cond_e9

    .line 232
    .line 233
    move v4, v9

    .line 234
    :cond_e9
    :goto_e9
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    sget v0, Lq0/s;->l:I

    .line 238
    .line 239
    sget-wide v1, Lq0/s;->m:J

    .line 240
    .line 241
    cmp-long v3, v1, v7

    .line 242
    .line 243
    if-gtz v3, :cond_f7

    .line 244
    .line 245
    const-wide/16 v1, -0x1

    .line 246
    .line 247
    goto :goto_101

    .line 248
    :cond_f7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    sub-long/2addr v3, v1

    .line 253
    div-long/2addr v3, v5

    .line 254
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 255
    .line 256
    .line 257
    move-result-wide v1

    .line 258
    :goto_101
    iget-object v3, p0, Lq0/l;->r:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const v4, 0x7f13028e

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lq0/l;->s:Landroid/widget/TextView;

    .line 279
    .line 280
    cmp-long v3, v1, v7

    .line 281
    .line 282
    if-gez v3, :cond_123

    .line 283
    .line 284
    const v1, 0x7f13028d

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    goto :goto_132

    .line 292
    :cond_123
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const v2, 0x7f13028c

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    :goto_132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    return-void
.end method
