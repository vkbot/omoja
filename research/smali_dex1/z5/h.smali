.class public final Lz5/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz5/k;


# static fields
.field public static final c:[Lz5/k;


# instance fields
.field public a:Ljava/util/Map;

.field public b:[Lz5/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lz5/k;

    .line 3
    .line 4
    sput-object v0, Lz5/h;->c:[Lz5/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lz5/b;Ljava/util/Map;)Lz5/m;
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lz5/h;->c(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lz5/h;->b(Lz5/b;)Lz5/m;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final b(Lz5/b;)Lz5/m;
    .registers 7

    .line 1
    iget-object v0, p0, Lz5/h;->b:[Lz5/k;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_14

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    :try_start_a
    iget-object v4, p0, Lz5/h;->a:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v3, p1, v4}, Lz5/k;->a(Lz5/b;Ljava/util/Map;)Lz5/m;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_10
    .catch Lz5/l; {:try_start_a .. :try_end_10} :catch_11

    .line 17
    return-object p1

    .line 18
    :catch_11
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_6

    .line 21
    :cond_14
    sget-object p1, Lz5/i;->d:Lz5/i;

    .line 22
    .line 23
    throw p1
.end method

.method public final c(Ljava/util/Map;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lz5/h;->a:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_10

    .line 6
    .line 7
    sget-object v2, Lz5/d;->e:Lz5/d;

    .line 8
    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_10

    .line 14
    .line 15
    move v2, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v2, v0

    .line 18
    :goto_11
    if-nez p1, :cond_15

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    sget-object v3, Lz5/d;->d:Lz5/d;

    .line 23
    .line 24
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Collection;

    .line 29
    .line 30
    :goto_1d
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    if-eqz v3, :cond_e7

    .line 36
    .line 37
    sget-object v5, Lz5/a;->p:Lz5/a;

    .line 38
    .line 39
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_7c

    .line 44
    .line 45
    sget-object v5, Lz5/a;->q:Lz5/a;

    .line 46
    .line 47
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_7c

    .line 52
    .line 53
    sget-object v5, Lz5/a;->i:Lz5/a;

    .line 54
    .line 55
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_7c

    .line 60
    .line 61
    sget-object v5, Lz5/a;->h:Lz5/a;

    .line 62
    .line 63
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_7c

    .line 68
    .line 69
    sget-object v5, Lz5/a;->c:Lz5/a;

    .line 70
    .line 71
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_7c

    .line 76
    .line 77
    sget-object v5, Lz5/a;->d:Lz5/a;

    .line 78
    .line 79
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_7c

    .line 84
    .line 85
    sget-object v5, Lz5/a;->e:Lz5/a;

    .line 86
    .line 87
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_7c

    .line 92
    .line 93
    sget-object v5, Lz5/a;->f:Lz5/a;

    .line 94
    .line 95
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_7c

    .line 100
    .line 101
    sget-object v5, Lz5/a;->j:Lz5/a;

    .line 102
    .line 103
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_7c

    .line 108
    .line 109
    sget-object v5, Lz5/a;->n:Lz5/a;

    .line 110
    .line 111
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_7c

    .line 116
    .line 117
    sget-object v5, Lz5/a;->o:Lz5/a;

    .line 118
    .line 119
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_7d

    .line 124
    .line 125
    :cond_7c
    move v0, v1

    .line 126
    :cond_7d
    if-eqz v0, :cond_8a

    .line 127
    .line 128
    if-nez v2, :cond_8a

    .line 129
    .line 130
    new-instance v1, Ln6/g;

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    invoke-direct {v1, p1, v5}, Ln6/g;-><init>(Ljava/util/Map;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_8a
    sget-object v1, Lz5/a;->m:Lz5/a;

    .line 140
    .line 141
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_9a

    .line 146
    .line 147
    new-instance v1, Lv6/a;

    .line 148
    .line 149
    invoke-direct {v1}, Lv6/a;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_9a
    sget-object v1, Lz5/a;->g:Lz5/a;

    .line 156
    .line 157
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_aa

    .line 162
    .line 163
    new-instance v1, Li6/a;

    .line 164
    .line 165
    invoke-direct {v1}, Li6/a;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_aa
    sget-object v1, Lz5/a;->b:Lz5/a;

    .line 172
    .line 173
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_ba

    .line 178
    .line 179
    new-instance v1, La6/b;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_ba
    sget-object v1, Lz5/a;->l:Lz5/a;

    .line 188
    .line 189
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_ca

    .line 194
    .line 195
    new-instance v1, Lr6/b;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_ca
    sget-object v1, Lz5/a;->k:Lz5/a;

    .line 204
    .line 205
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_da

    .line 210
    .line 211
    new-instance v1, Ll6/a;

    .line 212
    .line 213
    invoke-direct {v1}, Ll6/a;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    :cond_da
    if-eqz v0, :cond_e7

    .line 220
    .line 221
    if-eqz v2, :cond_e7

    .line 222
    .line 223
    new-instance v0, Ln6/g;

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    invoke-direct {v0, p1, v1}, Ln6/g;-><init>(Ljava/util/Map;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_e7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_12b

    .line 237
    .line 238
    if-nez v2, :cond_f8

    .line 239
    .line 240
    new-instance v0, Ln6/g;

    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    invoke-direct {v0, p1, v1}, Ln6/g;-><init>(Ljava/util/Map;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_f8
    new-instance v0, Lv6/a;

    .line 250
    .line 251
    invoke-direct {v0}, Lv6/a;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    new-instance v0, Li6/a;

    .line 258
    .line 259
    invoke-direct {v0}, Li6/a;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    new-instance v0, La6/b;

    .line 266
    .line 267
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    new-instance v0, Lr6/b;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    new-instance v0, Ll6/a;

    .line 282
    .line 283
    invoke-direct {v0}, Ll6/a;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    if-eqz v2, :cond_12b

    .line 290
    .line 291
    new-instance v0, Ln6/g;

    .line 292
    .line 293
    const/4 v1, 0x0

    .line 294
    invoke-direct {v0, p1, v1}, Ln6/g;-><init>(Ljava/util/Map;I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_12b
    sget-object p1, Lz5/h;->c:[Lz5/k;

    .line 301
    .line 302
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    check-cast p1, [Lz5/k;

    .line 307
    .line 308
    iput-object p1, p0, Lz5/h;->b:[Lz5/k;

    .line 309
    .line 310
    return-void
.end method

.method public final reset()V
    .registers 5

    .line 1
    iget-object v0, p0, Lz5/h;->b:[Lz5/k;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_10

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-interface {v3}, Lz5/k;->reset()V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_6

    .line 17
    :cond_10
    return-void
.end method
