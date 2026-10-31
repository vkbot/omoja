.class public abstract Ly/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:I

.field public c:Lj/m;

.field public d:Lcom/bumptech/glide/h;

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Lh/e;

.field public k:Z

.field public l:Lh/h;

.field public m:Lc0/c;

.field public n:Ljava/lang/Class;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lj/m;->d:Lj/m;

    .line 5
    .line 6
    iput-object v0, p0, Ly/a;->c:Lj/m;

    .line 7
    .line 8
    sget-object v0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/h;

    .line 9
    .line 10
    iput-object v0, p0, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Ly/a;->g:Z

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, p0, Ly/a;->h:I

    .line 17
    .line 18
    iput v1, p0, Ly/a;->i:I

    .line 19
    .line 20
    sget-object v1, Lb0/a;->b:Lb0/a;

    .line 21
    .line 22
    iput-object v1, p0, Ly/a;->j:Lh/e;

    .line 23
    .line 24
    new-instance v1, Lh/h;

    .line 25
    .line 26
    invoke-direct {v1}, Lh/h;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Ly/a;->l:Lh/h;

    .line 30
    .line 31
    new-instance v1, Lc0/c;

    .line 32
    .line 33
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Ly/a;->m:Lc0/c;

    .line 37
    .line 38
    const-class v1, Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, p0, Ly/a;->n:Ljava/lang/Class;

    .line 41
    .line 42
    iput-boolean v0, p0, Ly/a;->q:Z

    .line 43
    .line 44
    return-void
.end method

.method public static g(II)Z
    .registers 2

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_5
    const/4 p0, 0x0

    .line 7
    return p0
.end method


# virtual methods
.method public a(Ly/a;)Ly/a;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ly/a;->a(Ly/a;)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iget v0, p1, Ly/a;->b:I

    .line 15
    .line 16
    iget v0, p1, Ly/a;->b:I

    .line 17
    .line 18
    const/high16 v1, 0x100000

    .line 19
    .line 20
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1d

    .line 25
    .line 26
    iget-boolean v0, p1, Ly/a;->r:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Ly/a;->r:Z

    .line 29
    .line 30
    :cond_1d
    iget v0, p1, Ly/a;->b:I

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2a

    .line 38
    .line 39
    iget-object v0, p1, Ly/a;->c:Lj/m;

    .line 40
    .line 41
    iput-object v0, p0, Ly/a;->c:Lj/m;

    .line 42
    .line 43
    :cond_2a
    iget v0, p1, Ly/a;->b:I

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_38

    .line 52
    .line 53
    iget-object v0, p1, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 54
    .line 55
    iput-object v0, p0, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 56
    .line 57
    :cond_38
    iget v0, p1, Ly/a;->b:I

    .line 58
    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz v0, :cond_4b

    .line 67
    .line 68
    iput v1, p0, Ly/a;->e:I

    .line 69
    .line 70
    iget v0, p0, Ly/a;->b:I

    .line 71
    .line 72
    and-int/lit8 v0, v0, -0x21

    .line 73
    .line 74
    iput v0, p0, Ly/a;->b:I

    .line 75
    .line 76
    :cond_4b
    iget v0, p1, Ly/a;->b:I

    .line 77
    .line 78
    const/16 v2, 0x20

    .line 79
    .line 80
    invoke-static {v0, v2}, Ly/a;->g(II)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5f

    .line 85
    .line 86
    iget v0, p1, Ly/a;->e:I

    .line 87
    .line 88
    iput v0, p0, Ly/a;->e:I

    .line 89
    .line 90
    iget v0, p0, Ly/a;->b:I

    .line 91
    .line 92
    and-int/lit8 v0, v0, -0x11

    .line 93
    .line 94
    iput v0, p0, Ly/a;->b:I

    .line 95
    .line 96
    :cond_5f
    iget v0, p1, Ly/a;->b:I

    .line 97
    .line 98
    const/16 v2, 0x40

    .line 99
    .line 100
    invoke-static {v0, v2}, Ly/a;->g(II)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_71

    .line 105
    .line 106
    iput v1, p0, Ly/a;->f:I

    .line 107
    .line 108
    iget v0, p0, Ly/a;->b:I

    .line 109
    .line 110
    and-int/lit16 v0, v0, -0x81

    .line 111
    .line 112
    iput v0, p0, Ly/a;->b:I

    .line 113
    .line 114
    :cond_71
    iget v0, p1, Ly/a;->b:I

    .line 115
    .line 116
    const/16 v1, 0x80

    .line 117
    .line 118
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_85

    .line 123
    .line 124
    iget v0, p1, Ly/a;->f:I

    .line 125
    .line 126
    iput v0, p0, Ly/a;->f:I

    .line 127
    .line 128
    iget v0, p0, Ly/a;->b:I

    .line 129
    .line 130
    and-int/lit8 v0, v0, -0x41

    .line 131
    .line 132
    iput v0, p0, Ly/a;->b:I

    .line 133
    .line 134
    :cond_85
    iget v0, p1, Ly/a;->b:I

    .line 135
    .line 136
    const/16 v1, 0x100

    .line 137
    .line 138
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_93

    .line 143
    .line 144
    iget-boolean v0, p1, Ly/a;->g:Z

    .line 145
    .line 146
    iput-boolean v0, p0, Ly/a;->g:Z

    .line 147
    .line 148
    :cond_93
    iget v0, p1, Ly/a;->b:I

    .line 149
    .line 150
    const/16 v1, 0x200

    .line 151
    .line 152
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_a5

    .line 157
    .line 158
    iget v0, p1, Ly/a;->i:I

    .line 159
    .line 160
    iput v0, p0, Ly/a;->i:I

    .line 161
    .line 162
    iget v0, p1, Ly/a;->h:I

    .line 163
    .line 164
    iput v0, p0, Ly/a;->h:I

    .line 165
    .line 166
    :cond_a5
    iget v0, p1, Ly/a;->b:I

    .line 167
    .line 168
    const/16 v1, 0x400

    .line 169
    .line 170
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b3

    .line 175
    .line 176
    iget-object v0, p1, Ly/a;->j:Lh/e;

    .line 177
    .line 178
    iput-object v0, p0, Ly/a;->j:Lh/e;

    .line 179
    .line 180
    :cond_b3
    iget v0, p1, Ly/a;->b:I

    .line 181
    .line 182
    const/16 v1, 0x1000

    .line 183
    .line 184
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c1

    .line 189
    .line 190
    iget-object v0, p1, Ly/a;->n:Ljava/lang/Class;

    .line 191
    .line 192
    iput-object v0, p0, Ly/a;->n:Ljava/lang/Class;

    .line 193
    .line 194
    :cond_c1
    iget v0, p1, Ly/a;->b:I

    .line 195
    .line 196
    const/16 v1, 0x2000

    .line 197
    .line 198
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_d1

    .line 203
    .line 204
    iget v0, p0, Ly/a;->b:I

    .line 205
    .line 206
    and-int/lit16 v0, v0, -0x4001

    .line 207
    .line 208
    iput v0, p0, Ly/a;->b:I

    .line 209
    .line 210
    :cond_d1
    iget v0, p1, Ly/a;->b:I

    .line 211
    .line 212
    const/16 v1, 0x4000

    .line 213
    .line 214
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_e1

    .line 219
    .line 220
    iget v0, p0, Ly/a;->b:I

    .line 221
    .line 222
    and-int/lit16 v0, v0, -0x2001

    .line 223
    .line 224
    iput v0, p0, Ly/a;->b:I

    .line 225
    .line 226
    :cond_e1
    iget v0, p1, Ly/a;->b:I

    .line 227
    .line 228
    const/high16 v1, 0x20000

    .line 229
    .line 230
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_ef

    .line 235
    .line 236
    iget-boolean v0, p1, Ly/a;->k:Z

    .line 237
    .line 238
    iput-boolean v0, p0, Ly/a;->k:Z

    .line 239
    .line 240
    :cond_ef
    iget v0, p1, Ly/a;->b:I

    .line 241
    .line 242
    const/16 v1, 0x800

    .line 243
    .line 244
    invoke-static {v0, v1}, Ly/a;->g(II)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_104

    .line 249
    .line 250
    iget-object v0, p0, Ly/a;->m:Lc0/c;

    .line 251
    .line 252
    iget-object v1, p1, Ly/a;->m:Lc0/c;

    .line 253
    .line 254
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 255
    .line 256
    .line 257
    iget-boolean v0, p1, Ly/a;->q:Z

    .line 258
    .line 259
    iput-boolean v0, p0, Ly/a;->q:Z

    .line 260
    .line 261
    :cond_104
    iget v0, p0, Ly/a;->b:I

    .line 262
    .line 263
    iget v1, p1, Ly/a;->b:I

    .line 264
    .line 265
    or-int/2addr v0, v1

    .line 266
    iput v0, p0, Ly/a;->b:I

    .line 267
    .line 268
    iget-object v0, p0, Ly/a;->l:Lh/h;

    .line 269
    .line 270
    iget-object p1, p1, Ly/a;->l:Lh/h;

    .line 271
    .line 272
    iget-object v0, v0, Lh/h;->b:Lc0/c;

    .line 273
    .line 274
    iget-object p1, p1, Lh/h;->b:Lc0/c;

    .line 275
    .line 276
    invoke-virtual {v0, p1}, Lc0/c;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Ly/a;->l()V

    .line 280
    .line 281
    .line 282
    return-object p0
.end method

.method public b()Ly/a;
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ly/a;

    .line 6
    .line 7
    new-instance v1, Lh/h;

    .line 8
    .line 9
    invoke-direct {v1}, Lh/h;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Ly/a;->l:Lh/h;

    .line 13
    .line 14
    iget-object v2, p0, Ly/a;->l:Lh/h;

    .line 15
    .line 16
    iget-object v1, v1, Lh/h;->b:Lc0/c;

    .line 17
    .line 18
    iget-object v2, v2, Lh/h;->b:Lc0/c;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lc0/c;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lc0/c;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Ly/a;->m:Lc0/c;

    .line 29
    .line 30
    iget-object v2, p0, Ly/a;->m:Lc0/c;

    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Ly/a;->o:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Ly/a;->p:Z
    :try_end_27
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_27} :catch_28

    .line 39
    .line 40
    return-object v0

    .line 41
    :catch_28
    move-exception v0

    .line 42
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Ly/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ly/a;->c(Ljava/lang/Class;)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput-object p1, p0, Ly/a;->n:Ljava/lang/Class;

    .line 15
    .line 16
    iget p1, p0, Ly/a;->b:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x1000

    .line 19
    .line 20
    iput p1, p0, Ly/a;->b:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ly/a;->l()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Lj/m;)Ly/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ly/a;->d(Lj/m;)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput-object p1, p0, Ly/a;->c:Lj/m;

    .line 15
    .line 16
    iget p1, p0, Ly/a;->b:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    iput p1, p0, Ly/a;->b:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ly/a;->l()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final e(I)Ly/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ly/a;->e(I)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput p1, p0, Ly/a;->e:I

    .line 15
    .line 16
    iget p1, p0, Ly/a;->b:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x20

    .line 19
    .line 20
    and-int/lit8 p1, p1, -0x11

    .line 21
    .line 22
    iput p1, p0, Ly/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ly/a;->l()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Ly/a;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    check-cast p1, Ly/a;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ly/a;->f(Ly/a;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final f(Ly/a;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_6b

    .line 11
    .line 12
    iget v0, p0, Ly/a;->e:I

    .line 13
    .line 14
    iget v1, p1, Ly/a;->e:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_6b

    .line 17
    .line 18
    sget-object v0, Lc0/p;->a:[C

    .line 19
    .line 20
    iget v0, p0, Ly/a;->f:I

    .line 21
    .line 22
    iget v1, p1, Ly/a;->f:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_6b

    .line 25
    .line 26
    iget-boolean v0, p0, Ly/a;->g:Z

    .line 27
    .line 28
    iget-boolean v1, p1, Ly/a;->g:Z

    .line 29
    .line 30
    if-ne v0, v1, :cond_6b

    .line 31
    .line 32
    iget v0, p0, Ly/a;->h:I

    .line 33
    .line 34
    iget v1, p1, Ly/a;->h:I

    .line 35
    .line 36
    if-ne v0, v1, :cond_6b

    .line 37
    .line 38
    iget v0, p0, Ly/a;->i:I

    .line 39
    .line 40
    iget v1, p1, Ly/a;->i:I

    .line 41
    .line 42
    if-ne v0, v1, :cond_6b

    .line 43
    .line 44
    iget-boolean v0, p0, Ly/a;->k:Z

    .line 45
    .line 46
    iget-boolean v1, p1, Ly/a;->k:Z

    .line 47
    .line 48
    if-ne v0, v1, :cond_6b

    .line 49
    .line 50
    iget-object v0, p0, Ly/a;->c:Lj/m;

    .line 51
    .line 52
    iget-object v1, p1, Ly/a;->c:Lj/m;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_6b

    .line 59
    .line 60
    iget-object v0, p0, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 61
    .line 62
    iget-object v1, p1, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 63
    .line 64
    if-ne v0, v1, :cond_6b

    .line 65
    .line 66
    iget-object v0, p0, Ly/a;->l:Lh/h;

    .line 67
    .line 68
    iget-object v1, p1, Ly/a;->l:Lh/h;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lh/h;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6b

    .line 75
    .line 76
    iget-object v0, p0, Ly/a;->m:Lc0/c;

    .line 77
    .line 78
    iget-object v1, p1, Ly/a;->m:Lc0/c;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6b

    .line 85
    .line 86
    iget-object v0, p0, Ly/a;->n:Ljava/lang/Class;

    .line 87
    .line 88
    iget-object v1, p1, Ly/a;->n:Ljava/lang/Class;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6b

    .line 95
    .line 96
    iget-object v0, p0, Ly/a;->j:Lh/e;

    .line 97
    .line 98
    iget-object p1, p1, Ly/a;->j:Lh/e;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6b

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :cond_6b
    const/4 p1, 0x0

    .line 109
    return p1
.end method

.method public final h(Lq/o;Lq/f;)Ly/a;
    .registers 4

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ly/a;->h(Lq/o;Lq/f;)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    sget-object v0, Lq/o;->g:Lh/g;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Ly/a;->m(Lh/g;Ljava/lang/Object;)Ly/a;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p2, p1}, Ly/a;->p(Lh/l;Z)Ly/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .line 1
    sget-object v0, Lc0/p;->a:[C

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1, v0}, Lc0/p;->g(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Ly/a;->e:I

    .line 16
    .line 17
    invoke-static {v1, v0}, Lc0/p;->g(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v2, p0, Ly/a;->f:I

    .line 27
    .line 28
    invoke-static {v2, v0}, Lc0/p;->g(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {v2, v0}, Lc0/p;->g(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-boolean v3, p0, Ly/a;->g:Z

    .line 46
    .line 47
    invoke-static {v3, v0}, Lc0/p;->g(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v3, p0, Ly/a;->h:I

    .line 52
    .line 53
    invoke-static {v3, v0}, Lc0/p;->g(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget v3, p0, Ly/a;->i:I

    .line 58
    .line 59
    invoke-static {v3, v0}, Lc0/p;->g(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-boolean v3, p0, Ly/a;->k:Z

    .line 64
    .line 65
    invoke-static {v3, v0}, Lc0/p;->g(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-static {v3, v0}, Lc0/p;->g(II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v2, v0}, Lc0/p;->g(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v2, v0}, Lc0/p;->g(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v2, p0, Ly/a;->c:Lj/m;

    .line 83
    .line 84
    invoke-static {v0, v2}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v2, p0, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 89
    .line 90
    invoke-static {v0, v2}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v2, p0, Ly/a;->l:Lh/h;

    .line 95
    .line 96
    invoke-static {v0, v2}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v2, p0, Ly/a;->m:Lc0/c;

    .line 101
    .line 102
    invoke-static {v0, v2}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object v2, p0, Ly/a;->n:Ljava/lang/Class;

    .line 107
    .line 108
    invoke-static {v0, v2}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v2, p0, Ly/a;->j:Lh/e;

    .line 113
    .line 114
    invoke-static {v0, v2}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0, v1}, Lc0/p;->h(ILjava/lang/Object;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    return v0
.end method

.method public final i(II)Ly/a;
    .registers 4

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ly/a;->i(II)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput p1, p0, Ly/a;->i:I

    .line 15
    .line 16
    iput p2, p0, Ly/a;->h:I

    .line 17
    .line 18
    iget p1, p0, Ly/a;->b:I

    .line 19
    .line 20
    or-int/lit16 p1, p1, 0x200

    .line 21
    .line 22
    iput p1, p0, Ly/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ly/a;->l()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final j(I)Ly/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ly/a;->j(I)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput p1, p0, Ly/a;->f:I

    .line 15
    .line 16
    iget p1, p0, Ly/a;->b:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x80

    .line 19
    .line 20
    and-int/lit8 p1, p1, -0x41

    .line 21
    .line 22
    iput p1, p0, Ly/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ly/a;->l()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final k()Ly/a;
    .registers 2

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ly/a;->k()Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    sget-object v0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/h;

    .line 15
    .line 16
    iput-object v0, p0, Ly/a;->d:Lcom/bumptech/glide/h;

    .line 17
    .line 18
    iget v0, p0, Ly/a;->b:I

    .line 19
    .line 20
    or-int/lit8 v0, v0, 0x8

    .line 21
    .line 22
    iput v0, p0, Ly/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ly/a;->l()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final l()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ly/a;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "You cannot modify locked T, consider clone()"

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(Lh/g;Ljava/lang/Object;)Ly/a;
    .registers 4

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ly/a;->m(Lh/g;Ljava/lang/Object;)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    invoke-static {p1}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ly/a;->l:Lh/h;

    .line 18
    .line 19
    iget-object v0, v0, Lh/h;->b:Lc0/c;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lc0/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ly/a;->l()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final n(Lb0/b;)Ly/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ly/a;->n(Lb0/b;)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    iput-object p1, p0, Ly/a;->j:Lh/e;

    .line 15
    .line 16
    iget p1, p0, Ly/a;->b:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x400

    .line 19
    .line 20
    iput p1, p0, Ly/a;->b:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ly/a;->l()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final o()Ly/a;
    .registers 2

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ly/a;->o()Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Ly/a;->g:Z

    .line 16
    .line 17
    iget v0, p0, Ly/a;->b:I

    .line 18
    .line 19
    or-int/lit16 v0, v0, 0x100

    .line 20
    .line 21
    iput v0, p0, Ly/a;->b:I

    .line 22
    .line 23
    invoke-virtual {p0}, Ly/a;->l()V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final p(Lh/l;Z)Ly/a;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ly/a;->p(Lh/l;Z)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    new-instance v0, Lq/t;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lq/t;-><init>(Lh/l;Z)V

    .line 17
    .line 18
    .line 19
    const-class v1, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, p2}, Ly/a;->q(Ljava/lang/Class;Lh/l;Z)Ly/a;

    .line 22
    .line 23
    .line 24
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, p2}, Ly/a;->q(Ljava/lang/Class;Lh/l;Z)Ly/a;

    .line 27
    .line 28
    .line 29
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0, p2}, Ly/a;->q(Ljava/lang/Class;Lh/l;Z)Ly/a;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lu/c;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lu/c;-><init>(Lh/l;)V

    .line 37
    .line 38
    .line 39
    const-class p1, Lu/b;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, p2}, Ly/a;->q(Ljava/lang/Class;Lh/l;Z)Ly/a;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ly/a;->l()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final q(Ljava/lang/Class;Lh/l;Z)Ly/a;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ly/a;->q(Ljava/lang/Class;Lh/l;Z)Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    invoke-static {p2}, Lc0/g;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ly/a;->m:Lc0/c;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lc0/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget p1, p0, Ly/a;->b:I

    .line 23
    .line 24
    const p2, 0x10800

    .line 25
    .line 26
    .line 27
    or-int/2addr p2, p1

    .line 28
    iput p2, p0, Ly/a;->b:I

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Ly/a;->q:Z

    .line 32
    .line 33
    if-eqz p3, :cond_2b

    .line 34
    .line 35
    const p2, 0x30800

    .line 36
    .line 37
    .line 38
    or-int/2addr p1, p2

    .line 39
    iput p1, p0, Ly/a;->b:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Ly/a;->k:Z

    .line 43
    .line 44
    :cond_2b
    invoke-virtual {p0}, Ly/a;->l()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final r(Lq/i;)Ly/a;
    .registers 4

    .line 1
    sget-object v0, Lq/o;->d:Lq/o;

    .line 2
    .line 3
    iget-boolean v1, p0, Ly/a;->p:Z

    .line 4
    .line 5
    if-eqz v1, :cond_f

    .line 6
    .line 7
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ly/a;->r(Lq/i;)Ly/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    sget-object v1, Lq/o;->g:Lh/g;

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Ly/a;->m(Lh/g;Ljava/lang/Object;)Ly/a;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, v0}, Ly/a;->p(Lh/l;Z)Ly/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final s()Ly/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Ly/a;->b()Ly/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ly/a;->s()Ly/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Ly/a;->r:Z

    .line 16
    .line 17
    iget v0, p0, Ly/a;->b:I

    .line 18
    .line 19
    const/high16 v1, 0x100000

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput v0, p0, Ly/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ly/a;->l()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method
