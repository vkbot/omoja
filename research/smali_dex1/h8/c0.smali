.class public final Lh8/c0;
.super Lo8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:[Ljava/lang/Object;

.field public c:I

.field public volatile d:Z

.field public final synthetic e:I

.field public final f:Lx7/d;


# direct methods
.method public constructor <init>(Lx7/d;[Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Lh8/c0;->e:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Lh8/c0;->f:Lx7/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/c0;->d:Z

    .line 3
    .line 4
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iput v0, p0, Lh8/c0;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public final d(J)V
    .registers 13

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_115

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_115

    .line 16
    .line 17
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_74

    .line 25
    .line 26
    iget p1, p0, Lh8/c0;->e:I

    .line 27
    .line 28
    packed-switch p1, :pswitch_data_116

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 32
    .line 33
    array-length p2, p1

    .line 34
    iget-object v0, p0, Lh8/c0;->f:Lx7/d;

    .line 35
    .line 36
    iget v1, p0, Lh8/c0;->c:I

    .line 37
    .line 38
    :goto_25
    iget-boolean v2, p0, Lh8/c0;->d:Z

    .line 39
    .line 40
    if-eq v1, p2, :cond_41

    .line 41
    .line 42
    if-eqz v2, :cond_2c

    .line 43
    .line 44
    goto :goto_73

    .line 45
    :cond_2c
    aget-object v2, p1, v1

    .line 46
    .line 47
    if-nez v2, :cond_3b

    .line 48
    .line 49
    new-instance p1, Ljava/lang/NullPointerException;

    .line 50
    .line 51
    const-string p2, "array element is null"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_73

    .line 60
    :cond_3b
    invoke-interface {v0, v2}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_25

    .line 66
    :cond_41
    if-eqz v2, :cond_44

    .line 67
    .line 68
    goto :goto_73

    .line 69
    :cond_44
    invoke-interface {v0}, Lx7/d;->a()V

    .line 70
    .line 71
    .line 72
    goto :goto_73

    .line 73
    :pswitch_48
    iget-object p1, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 74
    .line 75
    array-length p2, p1

    .line 76
    iget-object v0, p0, Lh8/c0;->f:Lx7/d;

    .line 77
    .line 78
    check-cast v0, Le8/a;

    .line 79
    .line 80
    iget v1, p0, Lh8/c0;->c:I

    .line 81
    .line 82
    :goto_51
    iget-boolean v2, p0, Lh8/c0;->d:Z

    .line 83
    .line 84
    if-eq v1, p2, :cond_6d

    .line 85
    .line 86
    if-eqz v2, :cond_58

    .line 87
    .line 88
    goto :goto_73

    .line 89
    :cond_58
    aget-object v2, p1, v1

    .line 90
    .line 91
    if-nez v2, :cond_67

    .line 92
    .line 93
    new-instance p1, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string p2, "array element is null"

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_73

    .line 104
    :cond_67
    invoke-interface {v0, v2}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_51

    .line 110
    :cond_6d
    if-eqz v2, :cond_70

    .line 111
    .line 112
    goto :goto_73

    .line 113
    :cond_70
    invoke-interface {v0}, Lx7/d;->a()V

    .line 114
    .line 115
    .line 116
    :goto_73
    return-void

    .line 117
    :cond_74
    iget v0, p0, Lh8/c0;->e:I

    .line 118
    .line 119
    packed-switch v0, :pswitch_data_11c

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 123
    .line 124
    array-length v1, v0

    .line 125
    iget v2, p0, Lh8/c0;->c:I

    .line 126
    .line 127
    iget-object v3, p0, Lh8/c0;->f:Lx7/d;

    .line 128
    .line 129
    const-wide/16 v4, 0x0

    .line 130
    .line 131
    :cond_82
    move-wide v6, v4

    .line 132
    :cond_83
    :goto_83
    cmp-long v8, v6, p1

    .line 133
    .line 134
    if-eqz v8, :cond_a8

    .line 135
    .line 136
    if-eq v2, v1, :cond_a8

    .line 137
    .line 138
    iget-boolean v8, p0, Lh8/c0;->d:Z

    .line 139
    .line 140
    if-eqz v8, :cond_8f

    .line 141
    .line 142
    goto/16 :goto_115

    .line 143
    .line 144
    :cond_8f
    aget-object v8, v0, v2

    .line 145
    .line 146
    if-nez v8, :cond_9f

    .line 147
    .line 148
    new-instance p1, Ljava/lang/NullPointerException;

    .line 149
    .line 150
    const-string p2, "array element is null"

    .line 151
    .line 152
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v3, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_115

    .line 159
    .line 160
    :cond_9f
    invoke-interface {v3, v8}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    const-wide/16 v8, 0x1

    .line 164
    .line 165
    add-long/2addr v6, v8

    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_83

    .line 169
    :cond_a8
    if-ne v2, v1, :cond_b2

    .line 170
    .line 171
    iget-boolean p1, p0, Lh8/c0;->d:Z

    .line 172
    .line 173
    if-nez p1, :cond_115

    .line 174
    .line 175
    invoke-interface {v3}, Lx7/d;->a()V

    .line 176
    .line 177
    .line 178
    goto :goto_115

    .line 179
    :cond_b2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 180
    .line 181
    .line 182
    move-result-wide p1

    .line 183
    cmp-long v8, v6, p1

    .line 184
    .line 185
    if-nez v8, :cond_83

    .line 186
    .line 187
    iput v2, p0, Lh8/c0;->c:I

    .line 188
    .line 189
    neg-long p1, v6

    .line 190
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 191
    .line 192
    .line 193
    move-result-wide p1

    .line 194
    cmp-long v6, p1, v4

    .line 195
    .line 196
    if-nez v6, :cond_82

    .line 197
    .line 198
    goto :goto_115

    .line 199
    :pswitch_c6
    iget-object v0, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 200
    .line 201
    array-length v1, v0

    .line 202
    iget v2, p0, Lh8/c0;->c:I

    .line 203
    .line 204
    iget-object v3, p0, Lh8/c0;->f:Lx7/d;

    .line 205
    .line 206
    check-cast v3, Le8/a;

    .line 207
    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .line 210
    :cond_d1
    move-wide v6, v4

    .line 211
    :cond_d2
    :goto_d2
    cmp-long v8, v6, p1

    .line 212
    .line 213
    if-eqz v8, :cond_f8

    .line 214
    .line 215
    if-eq v2, v1, :cond_f8

    .line 216
    .line 217
    iget-boolean v8, p0, Lh8/c0;->d:Z

    .line 218
    .line 219
    if-eqz v8, :cond_dd

    .line 220
    .line 221
    goto :goto_115

    .line 222
    :cond_dd
    aget-object v8, v0, v2

    .line 223
    .line 224
    if-nez v8, :cond_ec

    .line 225
    .line 226
    new-instance p1, Ljava/lang/NullPointerException;

    .line 227
    .line 228
    const-string p2, "array element is null"

    .line 229
    .line 230
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v3, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    goto :goto_115

    .line 237
    :cond_ec
    invoke-interface {v3, v8}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-eqz v8, :cond_f5

    .line 242
    .line 243
    const-wide/16 v8, 0x1

    .line 244
    .line 245
    add-long/2addr v6, v8

    .line 246
    :cond_f5
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto :goto_d2

    .line 249
    :cond_f8
    if-ne v2, v1, :cond_102

    .line 250
    .line 251
    iget-boolean p1, p0, Lh8/c0;->d:Z

    .line 252
    .line 253
    if-nez p1, :cond_115

    .line 254
    .line 255
    invoke-interface {v3}, Lx7/d;->a()V

    .line 256
    .line 257
    .line 258
    goto :goto_115

    .line 259
    :cond_102
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 260
    .line 261
    .line 262
    move-result-wide p1

    .line 263
    cmp-long v8, v6, p1

    .line 264
    .line 265
    if-nez v8, :cond_d2

    .line 266
    .line 267
    iput v2, p0, Lh8/c0;->c:I

    .line 268
    .line 269
    neg-long p1, v6

    .line 270
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide p1

    .line 274
    cmp-long v6, p1, v4

    .line 275
    .line 276
    if-nez v6, :cond_d1

    .line 277
    .line 278
    :cond_115
    :goto_115
    return-void

    .line 279
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_48
    .end packed-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_c6
    .end packed-switch
.end method

.method public final h(I)I
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final isEmpty()Z
    .registers 3

    .line 1
    iget v0, p0, Lh8/c0;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ne v0, v1, :cond_9

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lh8/c0;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lh8/c0;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_9

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0

    .line 10
    :cond_9
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    iput v2, p0, Lh8/c0;->c:I

    .line 13
    .line 14
    aget-object v0, v1, v0

    .line 15
    .line 16
    const-string v1, "array element is null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
