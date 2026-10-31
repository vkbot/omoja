.class public final synthetic Landroidx/constraintlayout/core/utils/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/utils/a;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/utils/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    packed-switch v0, :pswitch_data_13c

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 9
    .line 10
    check-cast p2, Landroid/net/wifi/ScanResult;

    .line 11
    .line 12
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 13
    .line 14
    iget p2, p2, Landroid/net/wifi/ScanResult;->level:I

    .line 15
    .line 16
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 17
    .line 18
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_16
    check-cast p1, Lm0/k3;

    .line 24
    .line 25
    check-cast p2, Lm0/k3;

    .line 26
    .line 27
    iget-object p1, p1, Lm0/k3;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p2, p2, Lm0/k3;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :pswitch_23
    check-cast p1, Ljava/io/File;

    .line 37
    .line 38
    check-cast p2, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_35

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_35

    .line 51
    .line 52
    move v1, v2

    .line 53
    goto :goto_4e

    .line 54
    :cond_35
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_42

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_42

    .line 65
    .line 66
    goto :goto_4e

    .line 67
    :cond_42
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    :goto_4e
    return v1

    .line 80
    :pswitch_4f
    check-cast p1, Lm0/u;

    .line 81
    .line 82
    check-cast p2, Lm0/u;

    .line 83
    .line 84
    sget-object v0, Lm0/v;->h:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p1, Lm0/u;->a:Ljava/lang/String;

    .line 87
    .line 88
    iget-object p2, p2, Lm0/u;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    return p1

    .line 95
    :pswitch_5e
    check-cast p1, Lm0/h;

    .line 96
    .line 97
    check-cast p2, Lm0/h;

    .line 98
    .line 99
    iget-object p1, p1, Lm0/h;->a:Ljava/lang/String;

    .line 100
    .line 101
    iget-object p2, p2, Lm0/h;->a:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1

    .line 108
    :pswitch_6b
    check-cast p1, Lh7/i;

    .line 109
    .line 110
    check-cast p2, Lh7/i;

    .line 111
    .line 112
    iget-object p1, p1, Lh7/i;->a:Ljava/io/File;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p2, p2, Lh7/i;->a:Ljava/io/File;

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    return p1

    .line 129
    :pswitch_80
    check-cast p1, Lh7/i;

    .line 130
    .line 131
    check-cast p2, Lh7/i;

    .line 132
    .line 133
    iget-object p1, p1, Lh7/i;->a:Ljava/io/File;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p2, p2, Lh7/i;->a:Ljava/io/File;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    return p1

    .line 150
    :pswitch_95
    check-cast p1, Ljava/io/File;

    .line 151
    .line 152
    check-cast p2, Ljava/io/File;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a7

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_a7

    .line 165
    .line 166
    move v1, v2

    .line 167
    goto :goto_c0

    .line 168
    :cond_a7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_b4

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_b4

    .line 179
    .line 180
    goto :goto_c0

    .line 181
    :cond_b4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    :goto_c0
    return v1

    .line 194
    :pswitch_c1
    check-cast p1, Ljava/io/File;

    .line 195
    .line 196
    check-cast p2, Ljava/io/File;

    .line 197
    .line 198
    sget-object v0, Lcom/woha/appmanag/FilePickerActivity;->j:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_d5

    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_d5

    .line 211
    .line 212
    move v1, v2

    .line 213
    goto :goto_ee

    .line 214
    :cond_d5
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_e2

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_e2

    .line 225
    .line 226
    goto :goto_ee

    .line 227
    :cond_e2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    :goto_ee
    return v1

    .line 240
    :pswitch_ef
    check-cast p1, Lx5/c;

    .line 241
    .line 242
    check-cast p2, Lx5/c;

    .line 243
    .line 244
    invoke-virtual {p1}, Lx5/c;->q()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_101

    .line 249
    .line 250
    invoke-virtual {p2}, Lx5/c;->q()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_101

    .line 255
    .line 256
    move v1, v2

    .line 257
    goto :goto_122

    .line 258
    :cond_101
    invoke-virtual {p2}, Lx5/c;->q()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_10e

    .line 263
    .line 264
    invoke-virtual {p1}, Lx5/c;->q()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_10e

    .line 269
    .line 270
    goto :goto_122

    .line 271
    :cond_10e
    invoke-virtual {p1}, Lx5/c;->s()Ld5/c;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ld5/c;->o()I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    invoke-virtual {p2}, Lx5/c;->s()Ld5/c;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Ld5/c;->o()I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    :goto_122
    return v1

    .line 292
    :pswitch_123
    check-cast p1, Le0/j1;

    .line 293
    .line 294
    check-cast p2, Le0/j1;

    .line 295
    .line 296
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 297
    .line 298
    iget-object p1, p1, Le0/j1;->b:Ljava/lang/String;

    .line 299
    .line 300
    iget-object p2, p2, Le0/j1;->b:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    return p1

    .line 307
    :pswitch_132
    check-cast p1, Ljava/lang/String;

    .line 308
    .line 309
    check-cast p2, Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {p1, p2}, Landroidx/constraintlayout/core/utils/GridCore;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    return p1

    .line 316
    nop

    .line 317
    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_132
        :pswitch_123
        :pswitch_ef
        :pswitch_c1
        :pswitch_95
        :pswitch_80
        :pswitch_6b
        :pswitch_5e
        :pswitch_4f
        :pswitch_23
        :pswitch_16
    .end packed-switch
.end method
