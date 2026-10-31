.class public final synthetic Li7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Li7/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Li7/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 9
    iput p1, p0, Li7/c;->a:I

    iput-object p3, p0, Li7/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 11

    .line 1
    iget v0, p0, Li7/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Li7/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_11c

    .line 8
    .line 9
    .line 10
    check-cast v3, Ls1/q0;

    .line 11
    .line 12
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 13
    .line 14
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 15
    .line 16
    if-eqz v0, :cond_25

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 35
    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, v2

    .line 38
    :cond_25
    :goto_25
    return v1

    .line 39
    :pswitch_26
    check-cast v3, Lorg/apache/commons/net/ftp/FTPFileFilter;

    .line 40
    .line 41
    check-cast p1, Lorg/apache/commons/net/ftp/FTPFile;

    .line 42
    .line 43
    invoke-interface {v3, p1}, Lorg/apache/commons/net/ftp/FTPFileFilter;->accept(Lorg/apache/commons/net/ftp/FTPFile;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :pswitch_2f
    check-cast v3, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 49
    .line 50
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :pswitch_38
    check-cast v3, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 58
    .line 59
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :pswitch_41
    check-cast v3, Lorg/apache/commons/io/input/BOMInputStream;

    .line 67
    .line 68
    check-cast p1, Lorg/apache/commons/io/ByteOrderMark;

    .line 69
    .line 70
    invoke-static {v3, p1}, Lorg/apache/commons/io/input/BOMInputStream;->b(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/ByteOrderMark;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :pswitch_4a
    check-cast v3, Ljava/nio/file/Path;

    .line 76
    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v3, p1}, Lorg/apache/commons/io/filefilter/WildcardFilter;->a(Ljava/nio/file/Path;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :pswitch_53
    check-cast v3, Ljava/lang/String;

    .line 85
    .line 86
    check-cast p1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v3, p1}, Lorg/apache/commons/io/filefilter/WildcardFilter;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :pswitch_5c
    check-cast v3, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 94
    .line 95
    check-cast p1, Ljava/io/File;

    .line 96
    .line 97
    invoke-interface {v3, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    :pswitch_65
    check-cast v3, Le4/o;

    .line 103
    .line 104
    check-cast p1, Ljava/lang/String;

    .line 105
    .line 106
    if-eqz p1, :cond_ed

    .line 107
    .line 108
    if-eqz v3, :cond_ed

    .line 109
    .line 110
    iget-object v0, v3, Le4/o;->c:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, La5/h;

    .line 113
    .line 114
    if-eqz v0, :cond_ed

    .line 115
    .line 116
    iget-object v0, v3, Le4/o;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, La5/h;

    .line 119
    .line 120
    if-nez v0, :cond_7b

    .line 121
    .line 122
    goto/16 :goto_ed

    .line 123
    .line 124
    :cond_7b
    new-array v0, v1, [B

    .line 125
    .line 126
    const/16 v4, 0x70

    .line 127
    .line 128
    aput-byte v4, v0, v2

    .line 129
    .line 130
    const/16 v4, 0x8

    .line 131
    .line 132
    new-array v4, v4, [B

    .line 133
    .line 134
    fill-array-data v4, :array_132

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    array-length v0, p1

    .line 146
    const/4 v4, 0x3

    .line 147
    if-ge v0, v4, :cond_95

    .line 148
    .line 149
    goto :goto_ed

    .line 150
    :cond_95
    const/4 v0, 0x2

    .line 151
    :try_start_96
    aget-object v5, p1, v0

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v5
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a0} :catch_ed

    .line 161
    array-length v6, p1

    .line 162
    const/4 v7, 0x4

    .line 163
    if-lt v6, v7, :cond_af

    .line 164
    .line 165
    :try_start_a4
    aget-object v4, p1, v4

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v4
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ae} :catch_ed

    .line 175
    goto :goto_b1

    .line 176
    :cond_af
    const/16 v4, 0x32

    .line 177
    .line 178
    :goto_b1
    if-ne v5, v0, :cond_b5

    .line 179
    .line 180
    move v5, v0

    .line 181
    goto :goto_b6

    .line 182
    :cond_b5
    move v5, v1

    .line 183
    :goto_b6
    iget v6, v3, Le4/o;->a:I

    .line 184
    .line 185
    if-ne v6, v0, :cond_bb

    .line 186
    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v0, v1

    .line 189
    :goto_bc
    if-ne v5, v0, :cond_ed

    .line 190
    .line 191
    invoke-static {v4}, Lm0/k2;->w(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iget v4, v3, Le4/o;->b:I

    .line 196
    .line 197
    invoke-static {v4}, Lm0/k2;->w(I)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-ne v0, v4, :cond_ed

    .line 202
    .line 203
    aget-object v0, p1, v2

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    aget-object p1, p1, v1

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iget-object v4, v3, Le4/o;->c:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v4, La5/h;

    .line 218
    .line 219
    iget-object v4, v4, La5/h;->d:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v4, Ljava/lang/String;

    .line 222
    .line 223
    iget-object v3, v3, Le4/o;->d:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v3, La5/h;

    .line 226
    .line 227
    iget-object v3, v3, La5/h;->d:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v3, Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v0, p1, v4, v3}, Lm0/k2;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_ed

    .line 236
    .line 237
    goto :goto_ee

    .line 238
    :catch_ed
    :cond_ed
    :goto_ed
    move v1, v2

    .line 239
    :goto_ee
    return v1

    .line 240
    :pswitch_ef
    check-cast v3, Li7/a;

    .line 241
    .line 242
    check-cast p1, Li7/a;

    .line 243
    .line 244
    iget-object v0, p1, Li7/a;->a:Li7/x;

    .line 245
    .line 246
    iget-wide v4, v0, Li7/x;->b:D

    .line 247
    .line 248
    iget-object v0, v3, Li7/a;->a:Li7/x;

    .line 249
    .line 250
    iget-wide v6, v0, Li7/x;->b:D

    .line 251
    .line 252
    sub-double/2addr v4, v6

    .line 253
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    cmpg-double v3, v3, v5

    .line 263
    .line 264
    if-gez v3, :cond_119

    .line 265
    .line 266
    iget-object p1, p1, Li7/a;->a:Li7/x;

    .line 267
    .line 268
    iget-wide v3, p1, Li7/x;->c:D

    .line 269
    .line 270
    iget-wide v7, v0, Li7/x;->c:D

    .line 271
    .line 272
    sub-double/2addr v3, v7

    .line 273
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 274
    .line 275
    .line 276
    move-result-wide v3

    .line 277
    cmpg-double p1, v3, v5

    .line 278
    .line 279
    if-gez p1, :cond_119

    .line 280
    .line 281
    goto :goto_11a

    .line 282
    :cond_119
    move v1, v2

    .line 283
    :goto_11a
    return v1

    .line 284
    nop

    .line 285
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
        :pswitch_41
        :pswitch_38
        :pswitch_2f
        :pswitch_26
    .end packed-switch

    .line 286
    .line 287
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
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_132
    .array-data 1
        0x5ct
        0x2ct
        -0x73t
        -0x58t
        -0x2et
        -0x43t
        0x44t
        -0x49t
    .end array-data
.end method
