.class public Lm0/c3;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;

.field public e:Lm0/x2;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Button;

.field public p:Landroid/widget/Button;

.field public q:Landroid/widget/Button;

.field public r:Lh7/k;

.field public s:Ljava/io/File;

.field public t:Ljava/io/File;

.field public u:Ljava/io/File;

.field public v:Z

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lm0/c3;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm0/c3;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lm0/c3;->d:Ljava/util/HashSet;

    .line 24
    .line 25
    return-void
.end method

.method public static A(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lm0/c3;->B(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x27

    .line 10
    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    fill-array-data p0, :array_0

    .line 14
    .line 15
    .line 16
    new-array v0, v1, [B

    .line 17
    .line 18
    fill-array-data v0, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/16 v0, 0x2e

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ltz v0, :cond_2

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v0, v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_0
    move-object v0, p0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string p0, ""

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_4

    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_2
    if-nez p0, :cond_5

    .line 98
    .line 99
    const/4 p0, 0x3

    .line 100
    new-array p0, p0, [B

    .line 101
    .line 102
    fill-array-data p0, :array_2

    .line 103
    .line 104
    .line 105
    new-array v0, v1, [B

    .line 106
    .line 107
    fill-array-data v0, :array_3

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    :cond_5
    return-object p0

    .line 115
    :array_0
    .array-data 1
        0x79t
        -0x35t
        -0x5ct
        -0x2dt
        -0x69t
        -0x4et
        0x58t
        -0x7t
        0x71t
        -0x2ct
        -0x46t
        -0x70t
        -0x78t
        -0x41t
        0x5dt
        -0x5dt
        0x79t
        -0x2bt
        -0x50t
        -0x33t
        -0x6ft
        -0x48t
        0x5dt
        -0x5dt
        0x68t
        -0x26t
        -0x49t
        -0x2ct
        -0x61t
        -0x4at
        0x5ct
        -0x60t
        0x79t
        -0x37t
        -0x49t
        -0x29t
        -0x69t
        -0x59t
        0x5ct
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 1
        0x18t
        -0x45t
        -0x2ct
        -0x41t
        -0x2t
        -0x2ft
        0x39t
        -0x73t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 1
        -0x4dt
        -0x5ct
        0x68t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 1
        -0x67t
        -0x75t
        0x42t
        -0xbt
        -0x11t
        0x6et
        0x54t
        0x66t
    .end array-data
.end method

.method public static B(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        -0x1ft
        -0x7dt
        -0x52t
        0x71t
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :array_1
    .array-data 1
        -0x31t
        -0x1et
        -0x22t
        0x1at
        0x9t
        -0x4ft
        -0x2at
        0x13t
    .end array-data
.end method

.method public static C(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0xe

    .line 26
    .line 27
    new-array v2, v0, [B

    .line 28
    .line 29
    fill-array-data v2, :array_2

    .line 30
    .line 31
    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    fill-array-data v3, :array_3

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    fill-array-data v2, :array_4

    .line 52
    .line 53
    .line 54
    new-array v3, v1, [B

    .line 55
    .line 56
    fill-array-data v3, :array_5

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    new-array v2, v1, [B

    .line 70
    .line 71
    fill-array-data v2, :array_6

    .line 72
    .line 73
    .line 74
    new-array v3, v1, [B

    .line 75
    .line 76
    fill-array-data v3, :array_7

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_1

    .line 88
    .line 89
    const/16 v2, 0xc

    .line 90
    .line 91
    new-array v2, v2, [B

    .line 92
    .line 93
    fill-array-data v2, :array_8

    .line 94
    .line 95
    .line 96
    new-array v3, v1, [B

    .line 97
    .line 98
    fill-array-data v3, :array_9

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_1

    .line 110
    .line 111
    const/16 v2, 0xa

    .line 112
    .line 113
    new-array v2, v2, [B

    .line 114
    .line 115
    fill-array-data v2, :array_a

    .line 116
    .line 117
    .line 118
    new-array v3, v1, [B

    .line 119
    .line 120
    fill-array-data v3, :array_b

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_1

    .line 132
    .line 133
    new-array v0, v0, [B

    .line 134
    .line 135
    fill-array-data v0, :array_c

    .line 136
    .line 137
    .line 138
    new-array v2, v1, [B

    .line 139
    .line 140
    fill-array-data v2, :array_d

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_1

    .line 152
    .line 153
    const/16 v0, 0xc

    .line 154
    .line 155
    new-array v0, v0, [B

    .line 156
    .line 157
    fill-array-data v0, :array_e

    .line 158
    .line 159
    .line 160
    new-array v2, v1, [B

    .line 161
    .line 162
    fill-array-data v2, :array_f

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_1

    .line 174
    .line 175
    new-array v0, v1, [B

    .line 176
    .line 177
    fill-array-data v0, :array_10

    .line 178
    .line 179
    .line 180
    new-array v2, v1, [B

    .line 181
    .line 182
    fill-array-data v2, :array_11

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_1

    .line 194
    .line 195
    const/16 v0, 0xf

    .line 196
    .line 197
    new-array v0, v0, [B

    .line 198
    .line 199
    fill-array-data v0, :array_12

    .line 200
    .line 201
    .line 202
    new-array v1, v1, [B

    .line 203
    .line 204
    fill-array-data v1, :array_13

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_0

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_0
    const/4 p0, 0x0

    .line 219
    return p0

    .line 220
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 221
    return p0

    .line 222
    nop

    .line 223
    :array_0
    .array-data 1
        0x1ft
        -0x32t
        0x0t
        0x36t
        0x6t
        0x5et
        -0x2ct
        0x9t
        0x1ft
    .end array-data

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
    :array_1
    .array-data 1
        0x30t
        -0x43t
        0x74t
        0x59t
        0x74t
        0x3ft
        -0x4dt
        0x6ct
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_2
    .array-data 1
        0x5t
        0x22t
        -0x3ct
        -0x52t
        0x73t
        -0x4bt
        0x7bt
        0x7dt
        0x43t
        0x2et
        -0xbt
        -0x58t
        0x2bt
        -0x9t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    nop

    .line 253
    :array_3
    .array-data 1
        0x2at
        0x4ft
        -0x56t
        -0x26t
        0x5ct
        -0x28t
        0x1et
        0x19t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_4
    .array-data 1
        -0x42t
        -0x29t
        0x65t
        0xet
        -0x2dt
        0x72t
        -0x6bt
        0x34t
        -0x1bt
        -0x2dt
        0x66t
        0x1ft
        -0x2dt
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    nop

    .line 273
    :array_5
    .array-data 1
        -0x6ft
        -0x46t
        0xbt
        0x7at
        -0x4t
        0x0t
        -0x20t
        0x5at
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_6
    .array-data 1
        -0x7ct
        0x4dt
        -0x7t
        0x7ft
        -0x5ct
        -0x8t
        -0x38t
        -0x14t
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_7
    .array-data 1
        -0x55t
        0x20t
        -0x69t
        0xbt
        -0x75t
        -0x73t
        -0x45t
        -0x72t
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_8
    .array-data 1
        -0x9t
        -0x6t
        0x70t
        0x3ct
        0x7ct
        0x73t
        -0x76t
        -0x14t
        -0x9t
        -0x4t
        0x77t
        0x31t
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_9
    .array-data 1
        -0x28t
        -0x77t
        0x4t
        0x53t
        0xet
        0x12t
        -0x13t
        -0x77t
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    :array_a
    .array-data 1
        0x1ft
        0x6t
        0x33t
        0x49t
        -0x30t
        0x5t
        -0x6dt
        -0x17t
        0x43t
        0x0t
    .end array-data

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    nop

    .line 325
    :array_b
    .array-data 1
        0x30t
        0x6bt
        0x5dt
        0x3dt
        -0x1t
        0x70t
        -0x9t
        -0x80t
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_c
    .array-data 1
        0x72t
        0x34t
        -0x28t
        -0x2t
        -0x7ct
        0x1bt
        0x44t
        -0xdt
        0x72t
        0x32t
        -0x38t
        -0x8t
        -0x7bt
        0x11t
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    nop

    .line 345
    :array_d
    .array-data 1
        0x5dt
        0x47t
        -0x54t
        -0x6ft
        -0xat
        0x7at
        0x23t
        -0x6at
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_e
    .array-data 1
        -0x34t
        -0x39t
        0x19t
        0x41t
        0x40t
        -0x4ft
        0x37t
        0x58t
        -0x34t
        -0x2ft
        0x15t
        0x5at
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_f
    .array-data 1
        -0x1dt
        -0x4ct
        0x6dt
        0x2et
        0x32t
        -0x30t
        0x50t
        0x3dt
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_10
    .array-data 1
        0x4t
        0x16t
        0x5ft
        -0x79t
        -0x33t
        0x51t
        0x1ct
        -0x40t
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_11
    .array-data 1
        0x2bt
        0x7bt
        0x31t
        -0xdt
        -0x1et
        0x34t
        0x64t
        -0x4ct
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_12
    .array-data 1
        0x8t
        0x2t
        -0x38t
        0x77t
        -0x1et
        0x5ct
        0x11t
        -0x3t
        0x8t
        0x2t
        -0x28t
        0x7bt
        -0xft
        0x4ft
        0x12t
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_13
    .array-data 1
        0x27t
        0x71t
        -0x44t
        0x18t
        -0x70t
        0x3dt
        0x76t
        -0x68t
    .end array-data
.end method

.method public static E(Ljava/io/File;)Lm0/b3;
    .locals 10

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 11
    .line 12
    new-instance v4, Ljava/io/FileInputStream;

    .line 13
    .line 14
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    .line 19
    .line 20
    const/high16 v4, 0x80000

    .line 21
    .line 22
    :goto_0
    const/4 v5, 0x0

    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {v3, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v7, -0x1

    .line 34
    if-eq v6, v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    sub-int/2addr v4, v6

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    throw p0

    .line 51
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lm0/b3;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    array-length v2, v0

    .line 61
    const/4 v3, 0x3

    .line 62
    const/4 v4, 0x1

    .line 63
    const/4 v6, 0x2

    .line 64
    const/16 v7, 0xff

    .line 65
    .line 66
    if-lt v2, v3, :cond_1

    .line 67
    .line 68
    aget-byte v2, v0, v5

    .line 69
    .line 70
    and-int/2addr v2, v7

    .line 71
    const/16 v8, 0xef

    .line 72
    .line 73
    if-ne v2, v8, :cond_1

    .line 74
    .line 75
    aget-byte v2, v0, v4

    .line 76
    .line 77
    and-int/2addr v2, v7

    .line 78
    const/16 v8, 0xbb

    .line 79
    .line 80
    if-ne v2, v8, :cond_1

    .line 81
    .line 82
    aget-byte v2, v0, v6

    .line 83
    .line 84
    and-int/2addr v2, v7

    .line 85
    const/16 v8, 0xbf

    .line 86
    .line 87
    if-ne v2, v8, :cond_1

    .line 88
    .line 89
    new-instance v2, Ljava/lang/String;

    .line 90
    .line 91
    array-length v6, v0

    .line 92
    sub-int/2addr v6, v3

    .line 93
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    .line 95
    invoke-direct {v2, v0, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    array-length v2, v0

    .line 100
    const/16 v3, 0xfe

    .line 101
    .line 102
    if-lt v2, v6, :cond_2

    .line 103
    .line 104
    aget-byte v2, v0, v5

    .line 105
    .line 106
    and-int/2addr v2, v7

    .line 107
    if-ne v2, v7, :cond_2

    .line 108
    .line 109
    aget-byte v2, v0, v4

    .line 110
    .line 111
    and-int/2addr v2, v7

    .line 112
    if-ne v2, v3, :cond_2

    .line 113
    .line 114
    new-instance v2, Ljava/lang/String;

    .line 115
    .line 116
    array-length v3, v0

    .line 117
    sub-int/2addr v3, v6

    .line 118
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    invoke-direct {v2, v0, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    array-length v2, v0

    .line 125
    if-lt v2, v6, :cond_3

    .line 126
    .line 127
    aget-byte v2, v0, v5

    .line 128
    .line 129
    and-int/2addr v2, v7

    .line 130
    if-ne v2, v3, :cond_3

    .line 131
    .line 132
    aget-byte v2, v0, v4

    .line 133
    .line 134
    and-int/2addr v2, v7

    .line 135
    if-ne v2, v7, :cond_3

    .line 136
    .line 137
    new-instance v2, Ljava/lang/String;

    .line 138
    .line 139
    array-length v3, v0

    .line 140
    sub-int/2addr v3, v6

    .line 141
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 142
    .line 143
    invoke-direct {v2, v0, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    goto :goto_2

    .line 176
    :catch_0
    new-instance v2, Ljava/lang/String;

    .line 177
    .line 178
    const/16 v3, 0xc

    .line 179
    .line 180
    new-array v3, v3, [B

    .line 181
    .line 182
    fill-array-data v3, :array_0

    .line 183
    .line 184
    .line 185
    const/16 v6, 0x8

    .line 186
    .line 187
    new-array v6, v6, [B

    .line 188
    .line 189
    fill-array-data v6, :array_1

    .line 190
    .line 191
    .line 192
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 201
    .line 202
    .line 203
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 204
    .line 205
    .line 206
    move-result-wide v6

    .line 207
    const-wide/32 v8, 0x80000

    .line 208
    .line 209
    .line 210
    cmp-long p0, v6, v8

    .line 211
    .line 212
    if-lez p0, :cond_4

    .line 213
    .line 214
    move v5, v4

    .line 215
    :cond_4
    invoke-direct {v1, v2, v5}, Lm0/b3;-><init>(Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    return-object v1

    .line 219
    :array_0
    .array-data 1
        0x3t
        0x10t
        0x67t
        0x1t
        -0x7at
        -0x7at
        0x8t
        0x5et
        0x45t
        0x4bt
        0x3ct
        0x54t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 1
        0x74t
        0x79t
        0x9t
        0x65t
        -0x17t
        -0xft
        0x7bt
        0x73t
    .end array-data
.end method

.method public static G(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static t(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x8

    .line 15
    .line 16
    new-array v2, v1, [B

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    new-array v3, v1, [B

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x4

    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    fill-array-data v2, :array_2

    .line 41
    .line 42
    .line 43
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_3

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v0}, Lm0/c3;->C(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-static {p2}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_4
    :goto_0
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 1
        -0x6et
        -0x5t
        0x1et
        0x32t
        0x7ft
        0x6ct
        -0x61t
        0x24t
    .end array-data

    .line 88
    :array_1
    .array-data 1
        -0x9t
        -0x6at
        0x6bt
        0x5et
        0x1et
        0x18t
        -0x6t
        0x40t
    .end array-data

    :array_2
    .array-data 1
        0x24t
        -0x1dt
        -0x13t
        0x1bt
    .end array-data

    :array_3
    .array-data 1
        0x57t
        -0x7at
        -0x7ft
        0x7dt
        -0x71t
        0x38t
        0xft
        0x8t
    .end array-data
.end method

.method public static u(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/16 v0, 0x2e

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v0, p1

    .line 31
    move-object p1, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, ""

    .line 34
    .line 35
    :goto_0
    const/4 v1, 0x1

    .line 36
    move v2, v1

    .line 37
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 38
    .line 39
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 40
    .line 41
    const/16 v5, 0xc

    .line 42
    .line 43
    new-array v5, v5, [B

    .line 44
    .line 45
    fill-array-data v5, :array_0

    .line 46
    .line 47
    .line 48
    const/16 v6, 0x8

    .line 49
    .line 50
    new-array v6, v6, [B

    .line 51
    .line 52
    fill-array-data v6, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    filled-new-array {p1, v6, v0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/2addr v2, v1

    .line 75
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_2

    .line 80
    .line 81
    return-object v3

    .line 82
    nop

    .line 83
    :array_0
    .array-data 1
        0x33t
        -0x2t
        -0x32t
        -0x3dt
        -0x51t
        0xdt
        -0x1ft
        -0x4at
        0x33t
        -0x17t
        -0x4ct
        -0x2dt
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
    :array_1
    .array-data 1
        0x16t
        -0x73t
        -0x6ft
        -0x60t
        -0x40t
        0x7dt
        -0x68t
        -0x17t
    .end array-data
.end method

.method public static w(Ljava/io/File;Lm0/y2;Z)V
    .locals 11

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    iget-boolean v0, p1, Lm0/y2;->d:Z

    .line 10
    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    iget-boolean v0, p1, Lm0/y2;->e:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p1, Lm0/y2;->a:Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iput-boolean v1, p1, Lm0/y2;->d:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    if-nez p0, :cond_3

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget p0, p1, Lm0/y2;->c:I

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    iput-boolean v1, p1, Lm0/y2;->e:Z

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    iput-boolean v1, p1, Lm0/y2;->d:Z

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    array-length p2, p0

    .line 56
    const/4 v0, 0x0

    .line 57
    move v2, v0

    .line 58
    :goto_1
    if-ge v2, p2, :cond_9

    .line 59
    .line 60
    aget-object v3, p0, v2

    .line 61
    .line 62
    iget v4, p1, Lm0/y2;->c:I

    .line 63
    .line 64
    const v5, 0xc350

    .line 65
    .line 66
    .line 67
    if-lt v4, v5, :cond_4

    .line 68
    .line 69
    iput-boolean v1, p1, Lm0/y2;->d:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    iput v4, p1, Lm0/y2;->c:I

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    invoke-static {v3, p1, v0}, Lm0/c3;->w(Ljava/io/File;Lm0/y2;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    const-wide/16 v5, 0x0

    .line 91
    .line 92
    cmp-long v5, v3, v5

    .line 93
    .line 94
    if-gtz v5, :cond_6

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-wide v5, p1, Lm0/y2;->b:J

    .line 98
    .line 99
    const-wide v7, 0x7fffffffffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    sub-long v9, v7, v5

    .line 105
    .line 106
    cmp-long v9, v9, v3

    .line 107
    .line 108
    if-gez v9, :cond_7

    .line 109
    .line 110
    iput-wide v7, p1, Lm0/y2;->b:J

    .line 111
    .line 112
    iput-boolean v1, p1, Lm0/y2;->d:Z

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    add-long/2addr v5, v3

    .line 116
    iput-wide v5, p1, Lm0/y2;->b:J

    .line 117
    .line 118
    :goto_2
    iget-boolean v3, p1, Lm0/y2;->d:Z

    .line 119
    .line 120
    if-nez v3, :cond_9

    .line 121
    .line 122
    iget-boolean v3, p1, Lm0/y2;->e:Z

    .line 123
    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_9
    :goto_3
    return-void
.end method

.method public static x(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    array-length v2, v0

    .line 36
    :goto_1
    if-ge v1, v2, :cond_7

    .line 37
    .line 38
    aget-object v3, v0, v1

    .line 39
    .line 40
    new-instance v4, Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Lm0/c3;->x(Ljava/io/File;Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    :goto_2
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 91
    .line 92
    new-instance v2, Ljava/io/FileInputStream;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .line 99
    .line 100
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 101
    .line 102
    new-instance v3, Ljava/io/FileOutputStream;

    .line 103
    .line 104
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    .line 109
    .line 110
    const/high16 v3, 0x10000

    .line 111
    .line 112
    :try_start_1
    new-array v3, v3, [B

    .line 113
    .line 114
    :goto_3
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    const/4 v5, -0x1

    .line 119
    if-eq v4, v5, :cond_6

    .line 120
    .line 121
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    const-wide/16 v2, 0x0

    .line 138
    .line 139
    cmp-long p0, v0, v2

    .line 140
    .line 141
    if-lez p0, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 144
    .line 145
    .line 146
    :cond_8
    return-void

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    goto :goto_6

    .line 149
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :catchall_2
    move-exception p1

    .line 154
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_5
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 159
    .line 160
    .line 161
    goto :goto_7

    .line 162
    :catchall_3
    move-exception p1

    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_7
    throw p0
.end method

.method public static y(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    aget-object v3, v0, v2

    .line 25
    .line 26
    invoke-static {v3}, Lm0/c3;->y(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :goto_1
    return-void

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final D(Ljava/io/File;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    goto :goto_1

    .line 32
    :catch_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    iput-object p1, p0, Lm0/c3;->t:Ljava/io/File;

    .line 34
    .line 35
    iget-object v1, p0, Lm0/c3;->g:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lm0/c3;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    const/16 v1, 0x3e8

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :try_start_2
    new-instance v3, Landroid/os/StatFs;

    .line 48
    .line 49
    invoke-static {p1}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    sub-long v8, v4, v6

    .line 65
    .line 66
    const-wide/16 v10, 0x0

    .line 67
    .line 68
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    cmp-long p1, v4, v10

    .line 73
    .line 74
    if-lez p1, :cond_3

    .line 75
    .line 76
    const-wide/16 v10, 0x3e8

    .line 77
    .line 78
    mul-long v12, v8, v10

    .line 79
    .line 80
    div-long/2addr v12, v4

    .line 81
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    long-to-int p1, v10

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move p1, v2

    .line 88
    :goto_2
    iget-object v3, p0, Lm0/c3;->g:Landroid/widget/ProgressBar;

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lm0/c3;->g:Landroid/widget/ProgressBar;

    .line 94
    .line 95
    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lm0/c3;->f:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v8, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const v4, 0x7f130458

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catch_2
    iget-object p1, p0, Lm0/c3;->g:Landroid/widget/ProgressBar;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lm0/c3;->g:Landroid/widget/ProgressBar;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lm0/c3;->f:Landroid/widget/TextView;

    .line 150
    .line 151
    const v1, 0x7f130459

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_3
    iget-object p1, p0, Lm0/c3;->h:Landroid/widget/TextView;

    .line 158
    .line 159
    iget-object v1, p0, Lm0/c3;->s:Ljava/io/File;

    .line 160
    .line 161
    invoke-static {v1}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v2, p0, Lm0/c3;->t:Ljava/io/File;

    .line 166
    .line 167
    invoke-static {v2}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const v2, 0x7f13044e

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lm0/c3;->b:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 188
    .line 189
    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v0, Landroidx/constraintlayout/core/utils/a;

    .line 196
    .line 197
    const/16 v1, 0x9

    .line 198
    .line 199
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    const p1, 0x7f13043e

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    goto :goto_4

    .line 219
    :cond_5
    const p1, 0x7f13045a

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :goto_4
    invoke-virtual {p0, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_6
    iget-object p1, p0, Lm0/c3;->t:Ljava/io/File;

    .line 231
    .line 232
    invoke-static {p1}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const v0, 0x7f130449

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :goto_5
    iget-object p1, p0, Lm0/c3;->e:Lm0/x2;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lm0/c3;->J()V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_7
    :goto_6
    const p1, 0x7f13044c

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public final F(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Le0/j2;

    .line 9
    .line 10
    const/16 v2, 0x15

    .line 11
    .line 12
    invoke-direct {v1, v2, p0, p1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final H(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lm0/c3;->v:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lm0/c3;->J()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lm0/c3;->e:Lm0/x2;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/c3;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_1
    return-void
.end method

.method public final J()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lm0/c3;->v:Z

    .line 2
    .line 3
    xor-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iget-object v2, p0, Lm0/c3;->q:Landroid/widget/Button;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lm0/c3;->n:Landroid/widget/Button;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v2, p0, Lm0/c3;->o:Landroid/widget/Button;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v2, p0, Lm0/c3;->p:Landroid/widget/Button;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v1, p0, Lm0/c3;->l:Landroid/widget/Button;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    iget-object v4, p0, Lm0/c3;->u:Ljava/io/File;

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    iget-object v4, p0, Lm0/c3;->t:Ljava/io/File;

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    move v4, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move v4, v2

    .line 52
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lm0/c3;->m:Landroid/widget/Button;

    .line 56
    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Lm0/c3;->u:Ljava/io/File;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    move v2, v3

    .line 66
    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    :cond_7
    return-void
.end method

.method public final K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/c3;->u:Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p0, Lm0/c3;->k:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/16 v1, 0x8

    .line 17
    .line 18
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_2
    iget-object v1, p0, Lm0/c3;->i:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lm0/c3;->u:Ljava/io/File;

    .line 28
    .line 29
    invoke-static {v0}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v2, 0x7f130431

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p0}, Lm0/c3;->J()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    const p3, 0x7f0c006e

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    move-object p3, p2

    .line 10
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0c0118

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f0c0117

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lm0/c3;->j:Landroid/widget/TextView;

    .line 41
    .line 42
    const p1, 0x7f0905ac

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/Button;

    .line 50
    .line 51
    const v2, 0x7f0905b9

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/widget/Button;

    .line 59
    .line 60
    iput-object v2, p0, Lm0/c3;->q:Landroid/widget/Button;

    .line 61
    .line 62
    const v2, 0x7f0905b1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/Button;

    .line 70
    .line 71
    iput-object v2, p0, Lm0/c3;->n:Landroid/widget/Button;

    .line 72
    .line 73
    const v2, 0x7f0905b8

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroid/widget/Button;

    .line 81
    .line 82
    iput-object v2, p0, Lm0/c3;->o:Landroid/widget/Button;

    .line 83
    .line 84
    const v2, 0x7f0905b4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/widget/Button;

    .line 92
    .line 93
    iput-object v2, p0, Lm0/c3;->p:Landroid/widget/Button;

    .line 94
    .line 95
    const v2, 0x7f0905b3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/widget/Button;

    .line 103
    .line 104
    iput-object v2, p0, Lm0/c3;->l:Landroid/widget/Button;

    .line 105
    .line 106
    const v2, 0x7f0905ad

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/widget/Button;

    .line 114
    .line 115
    iput-object v2, p0, Lm0/c3;->m:Landroid/widget/Button;

    .line 116
    .line 117
    const v2, 0x7f0905b6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object v2, p0, Lm0/c3;->f:Landroid/widget/TextView;

    .line 127
    .line 128
    const v2, 0x7f0905b7

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/widget/ProgressBar;

    .line 136
    .line 137
    iput-object v2, p0, Lm0/c3;->g:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    const v2, 0x7f0905b0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object v2, p0, Lm0/c3;->h:Landroid/widget/TextView;

    .line 149
    .line 150
    const v2, 0x7f0905af

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    iput-object v2, p0, Lm0/c3;->k:Landroid/widget/LinearLayout;

    .line 160
    .line 161
    const v2, 0x7f0905ae

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object v2, p0, Lm0/c3;->i:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, p0, Lm0/c3;->s:Ljava/io/File;

    .line 177
    .line 178
    iput-object v2, p0, Lm0/c3;->t:Ljava/io/File;

    .line 179
    .line 180
    sget-object v2, Lh7/k;->o:Lh7/k;

    .line 181
    .line 182
    iput-object v2, p0, Lm0/c3;->r:Lh7/k;

    .line 183
    .line 184
    new-instance v2, Lm0/x2;

    .line 185
    .line 186
    invoke-direct {v2, p0}, Lm0/x2;-><init>(Lm0/c3;)V

    .line 187
    .line 188
    .line 189
    iput-object v2, p0, Lm0/c3;->e:Lm0/x2;

    .line 190
    .line 191
    new-instance v2, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 192
    .line 193
    new-instance v3, Lm0/a3;

    .line 194
    .line 195
    invoke-direct {v3, v1}, Lm0/a3;-><init>(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lm0/c3;->e:Lm0/x2;

    .line 199
    .line 200
    new-instance v4, Lm0/a3;

    .line 201
    .line 202
    iget-object v5, p0, Lm0/c3;->j:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-direct {v4, v5}, Lm0/a3;-><init>(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    const/4 v5, 0x3

    .line 208
    new-array v6, v5, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 209
    .line 210
    aput-object v3, v6, v0

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    aput-object v1, v6, v3

    .line 214
    .line 215
    const/4 v1, 0x2

    .line 216
    aput-object v4, v6, v1

    .line 217
    .line 218
    invoke-direct {v2, v6}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 222
    .line 223
    .line 224
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 226
    .line 227
    .line 228
    new-instance v2, Lm0/u2;

    .line 229
    .line 230
    invoke-direct {v2, p0}, Lm0/u2;-><init>(Lm0/c3;)V

    .line 231
    .line 232
    .line 233
    new-instance v4, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 234
    .line 235
    invoke-direct {v4, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 239
    .line 240
    .line 241
    new-instance p3, Lm0/r2;

    .line 242
    .line 243
    invoke-direct {p3, p0, v0}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lm0/c3;->q:Landroid/widget/Button;

    .line 250
    .line 251
    new-instance p3, Lm0/r2;

    .line 252
    .line 253
    invoke-direct {p3, p0, v3}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lm0/c3;->n:Landroid/widget/Button;

    .line 260
    .line 261
    new-instance p3, Lm0/r2;

    .line 262
    .line 263
    invoke-direct {p3, p0, v1}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lm0/c3;->o:Landroid/widget/Button;

    .line 270
    .line 271
    new-instance p3, Lm0/r2;

    .line 272
    .line 273
    invoke-direct {p3, p0, v5}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lm0/c3;->p:Landroid/widget/Button;

    .line 280
    .line 281
    new-instance p3, Lm0/r2;

    .line 282
    .line 283
    const/4 v0, 0x4

    .line 284
    invoke-direct {p3, p0, v0}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lm0/c3;->l:Landroid/widget/Button;

    .line 291
    .line 292
    new-instance p3, Lm0/r2;

    .line 293
    .line 294
    const/4 v0, 0x5

    .line 295
    invoke-direct {p3, p0, v0}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lm0/c3;->m:Landroid/widget/Button;

    .line 302
    .line 303
    new-instance p3, Lm0/r2;

    .line 304
    .line 305
    const/4 v0, 0x6

    .line 306
    invoke-direct {p3, p0, v0}, Lm0/r2;-><init>(Lm0/c3;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lm0/c3;->K()V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lm0/c3;->t:Ljava/io/File;

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Lm0/c3;->D(Ljava/io/File;)V

    .line 318
    .line 319
    .line 320
    return-object p2
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm0/c3;->r:Lh7/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lh7/k;->v(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/c3;->r:Lh7/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lh7/k;->w()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget v0, p0, Lm0/c3;->w:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lm0/c3;->w:I

    .line 6
    .line 7
    iget-object v0, p0, Lm0/c3;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lm0/c3;->d:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final z(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    mul-float/2addr p1, v0

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
