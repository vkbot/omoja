.class public final synthetic Lf5/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/b;
.implements Lb8/c;
.implements Lb8/d;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf5/t;


# direct methods
.method public synthetic constructor <init>(Lf5/t;I)V
    .locals 0

    .line 10
    iput p2, p0, Lf5/q;->b:I

    iput-object p1, p0, Lf5/q;->c:Lf5/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf5/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    iput p2, p0, Lf5/q;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lf5/q;->c:Lf5/t;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lf5/q;->b:I

    .line 2
    .line 3
    check-cast p1, Ly5/i;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf5/q;->c:Lf5/t;

    .line 9
    .line 10
    iget-object v0, v0, Lf5/t;->c:Lf5/g;

    .line 11
    .line 12
    iget-object v1, v0, Lf5/g;->a:Lf5/y;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lf5/x;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, v3, v1, p1}, Lf5/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lg8/b;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lg8/b;-><init>(Lf5/x;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lf5/f;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, v3, v0, p1}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lg8/d;

    .line 35
    .line 36
    sget-object v0, Ld8/b;->d:Lz3/f;

    .line 37
    .line 38
    invoke-direct {p1, v1, v0, v2}, Lg8/d;-><init>(Lb1/u;Lb8/b;Lb8/a;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Le0/g;

    .line 42
    .line 43
    const/16 v2, 0x13

    .line 44
    .line 45
    invoke-direct {v1, v2}, Le0/g;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lg8/d;

    .line 49
    .line 50
    invoke-direct {v2, p1, v0, v1}, Lg8/d;-><init>(Lb1/u;Lb8/b;Lb8/a;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Le0/g;

    .line 54
    .line 55
    const/16 v0, 0x14

    .line 56
    .line 57
    invoke-direct {p1, v0}, Le0/g;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lg8/d;

    .line 61
    .line 62
    sget-object v1, Ld8/b;->c:Lw7/c;

    .line 63
    .line 64
    invoke-direct {v0, v2, p1, v1}, Lg8/d;-><init>(Lb1/u;Lb8/b;Lb8/a;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Le0/g;

    .line 68
    .line 69
    const/16 v1, 0x15

    .line 70
    .line 71
    invoke-direct {p1, v1}, Le0/g;-><init>(I)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lg8/b;

    .line 75
    .line 76
    invoke-direct {v1, v0, p1}, Lg8/b;-><init>(Lg8/d;Le0/g;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lb1/u;->z()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lf5/q;->c:Lf5/t;

    .line 84
    .line 85
    iget-object v0, v0, Lf5/t;->g:Lf5/o;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ly5/i;->q()Lcom/google/protobuf/a0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lx5/c;

    .line 114
    .line 115
    invoke-virtual {v2}, Lx5/c;->r()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const/4 v4, 0x1

    .line 120
    invoke-static {v3, v4}, Lcom/bumptech/glide/g;->a(II)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_0

    .line 125
    .line 126
    invoke-virtual {v2}, Lx5/c;->u()Lx5/d;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lx5/d;->o()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v2}, Lx5/c;->p()Lx5/a;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lx5/a;->o()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "Potential impressions to clear: "

    .line 150
    .line 151
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Le3/d;->m(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lf5/o;->a()Lx7/e;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    sget-object v2, Lf5/o;->c:Ly5/c;

    .line 173
    .line 174
    const-string v3, "item is null"

    .line 175
    .line 176
    invoke-static {v2, v3}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p1, v2}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v2, Lf5/f;

    .line 188
    .line 189
    const/4 v3, 0x1

    .line 190
    invoke-direct {v2, v3, v0, v1}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    new-instance v0, Li8/i;

    .line 194
    .line 195
    invoke-direct {v0, p1, v2}, Li8/i;-><init>(Lx7/e;Lf5/f;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lb1/u;->z()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lf5/q;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    iget-object v0, v1, Lf5/q;->c:Lf5/t;

    .line 13
    .line 14
    move-object/from16 v2, p1

    .line 15
    .line 16
    check-cast v2, Lx5/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lx5/c;->q()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    invoke-static {v2}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    iget-object v0, v0, Lf5/t;->g:Lf5/o;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lx5/c;->r()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static {v6, v4}, Lcom/bumptech/glide/g;->a(II)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lx5/c;->u()Lx5/d;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6}, Lx5/d;->o()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v2}, Lx5/c;->p()Lx5/a;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lx5/a;->o()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :goto_0
    invoke-virtual {v0}, Lf5/o;->a()Lx7/e;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v7, Le0/g;

    .line 70
    .line 71
    const/16 v8, 0x9

    .line 72
    .line 73
    invoke-direct {v7, v8}, Le0/g;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-instance v8, Li8/k;

    .line 77
    .line 78
    invoke-direct {v8, v0, v7, v4}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Le0/g;

    .line 82
    .line 83
    const/16 v7, 0xa

    .line 84
    .line 85
    invoke-direct {v0, v7}, Le0/g;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-instance v7, Li8/u;

    .line 89
    .line 90
    invoke-direct {v7, v5, v8}, Li8/u;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget v8, Lx7/b;->b:I

    .line 94
    .line 95
    const-string v9, "maxConcurrency"

    .line 96
    .line 97
    const v10, 0x7fffffff

    .line 98
    .line 99
    .line 100
    invoke-static {v10, v9}, Ld8/b;->b(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v9, "bufferSize"

    .line 104
    .line 105
    invoke-static {v8, v9}, Ld8/b;->b(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    instance-of v9, v7, Le8/e;

    .line 109
    .line 110
    if-eqz v9, :cond_3

    .line 111
    .line 112
    check-cast v7, Le8/e;

    .line 113
    .line 114
    invoke-interface {v7}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    if-nez v7, :cond_2

    .line 119
    .line 120
    sget-object v0, Lj8/e;->b:Lj8/e;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance v8, Lj8/l;

    .line 124
    .line 125
    invoke-direct {v8, v7, v0}, Lj8/l;-><init>(Ljava/lang/Object;Le0/g;)V

    .line 126
    .line 127
    .line 128
    move-object v0, v8

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    new-instance v9, Lj8/h;

    .line 131
    .line 132
    invoke-direct {v9, v7, v0, v8}, Lj8/h;-><init>(Lx7/g;Le0/g;I)V

    .line 133
    .line 134
    .line 135
    move-object v0, v9

    .line 136
    :goto_1
    new-instance v7, Le0/g;

    .line 137
    .line 138
    const/16 v8, 0xb

    .line 139
    .line 140
    invoke-direct {v7, v8}, Le0/g;-><init>(I)V

    .line 141
    .line 142
    .line 143
    new-instance v8, Lj8/c;

    .line 144
    .line 145
    invoke-direct {v8, v0, v7, v4}, Lj8/c;-><init>(Lx7/g;Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    const-string v0, "element is null"

    .line 149
    .line 150
    invoke-static {v6, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, La9/w;

    .line 154
    .line 155
    invoke-direct {v0, v6, v4}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    new-instance v6, Lj8/d;

    .line 159
    .line 160
    invoke-direct {v6, v8, v0}, Lj8/d;-><init>(Lj8/c;La9/w;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Le0/g;

    .line 164
    .line 165
    const/16 v7, 0x16

    .line 166
    .line 167
    invoke-direct {v0, v7}, Le0/g;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v7, Lk8/a;

    .line 171
    .line 172
    invoke-direct {v7, v6, v0, v5}, Lk8/a;-><init>(Lx7/l;Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Lk8/b;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v6, Ld8/a;

    .line 181
    .line 182
    invoke-direct {v6, v5, v0}, Ld8/a;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lk8/a;

    .line 186
    .line 187
    invoke-direct {v0, v7, v6, v3}, Lk8/a;-><init>(Lx7/l;Ljava/lang/Object;I)V

    .line 188
    .line 189
    .line 190
    new-instance v3, Lf5/p;

    .line 191
    .line 192
    invoke-direct {v3, v2}, Lf5/p;-><init>(Lx5/c;)V

    .line 193
    .line 194
    .line 195
    new-instance v6, Lk8/a;

    .line 196
    .line 197
    invoke-direct {v6, v0, v3, v4}, Lk8/a;-><init>(Lx7/l;Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Le0/g;

    .line 201
    .line 202
    const/16 v3, 0x17

    .line 203
    .line 204
    invoke-direct {v0, v3}, Le0/g;-><init>(I)V

    .line 205
    .line 206
    .line 207
    new-instance v3, Li8/g;

    .line 208
    .line 209
    invoke-direct {v3, v5, v6, v0}, Li8/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lf5/p;

    .line 213
    .line 214
    invoke-direct {v0, v2}, Lf5/p;-><init>(Lx5/c;)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Li8/k;

    .line 218
    .line 219
    invoke-direct {v2, v3, v0, v4}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 220
    .line 221
    .line 222
    move-object v0, v2

    .line 223
    :goto_2
    return-object v0

    .line 224
    :pswitch_1
    sget-object v0, Li8/d;->b:Li8/d;

    .line 225
    .line 226
    iget-object v5, v1, Lf5/q;->c:Lf5/t;

    .line 227
    .line 228
    move-object/from16 v6, p1

    .line 229
    .line 230
    check-cast v6, Lx5/c;

    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6}, Lx5/c;->r()I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-static {v7, v4}, Lcom/bumptech/glide/g;->a(II)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_4

    .line 244
    .line 245
    invoke-virtual {v6}, Lx5/c;->u()Lx5/d;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lx5/d;->o()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v6}, Lx5/c;->u()Lx5/d;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v7}, Lx5/d;->p()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    goto :goto_3

    .line 262
    :cond_4
    invoke-virtual {v6}, Lx5/c;->r()I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    invoke-static {v7, v3}, Lcom/bumptech/glide/g;->a(II)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_39

    .line 271
    .line 272
    invoke-virtual {v6}, Lx5/c;->p()Lx5/a;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-virtual {v7}, Lx5/a;->o()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v6}, Lx5/c;->p()Lx5/a;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v8}, Lx5/a;->p()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v6}, Lx5/c;->q()Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-nez v9, :cond_5

    .line 293
    .line 294
    iget-object v5, v5, Lf5/t;->l:Lf5/a;

    .line 295
    .line 296
    invoke-virtual {v6}, Lx5/c;->p()Lx5/a;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-virtual {v9}, Lx5/a;->s()Ld5/i;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    iget-object v10, v5, Lf5/a;->b:Ljava/util/concurrent/Executor;

    .line 305
    .line 306
    new-instance v11, Le0/j2;

    .line 307
    .line 308
    const/16 v12, 0x8

    .line 309
    .line 310
    invoke-direct {v11, v12, v5, v9}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    .line 315
    .line 316
    :cond_5
    move-object v5, v7

    .line 317
    move-object v7, v8

    .line 318
    :goto_3
    invoke-virtual {v6}, Lx5/c;->n()Ld5/r;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-virtual {v6}, Lx5/c;->o()Ljava/util/Map;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    const-string v6, "ImageData model must have an imageUrl"

    .line 327
    .line 328
    const-string v9, "FirebaseInAppMessaging content cannot be null."

    .line 329
    .line 330
    invoke-static {v8, v9}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const-string v9, "FirebaseInAppMessaging campaign id cannot be null."

    .line 334
    .line 335
    invoke-static {v5, v9}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string v5, "FirebaseInAppMessaging campaign name cannot be null."

    .line 339
    .line 340
    invoke-static {v7, v5}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v8}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    const-string v7, "Decoding message: "

    .line 348
    .line 349
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    invoke-static {v5}, Le3/d;->m(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v8}, Ld5/r;->r()I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    invoke-static {v5}, Lcom/bumptech/glide/g;->c(I)I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    const/4 v7, 0x0

    .line 365
    if-eqz v5, :cond_2e

    .line 366
    .line 367
    if-eq v5, v4, :cond_22

    .line 368
    .line 369
    if-eq v5, v3, :cond_1c

    .line 370
    .line 371
    if-eq v5, v2, :cond_6

    .line 372
    .line 373
    new-instance v2, Lj5/j;

    .line 374
    .line 375
    sget-object v3, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 376
    .line 377
    invoke-direct {v2, v3, v15}, Lj5/h;-><init>(Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_23

    .line 381
    .line 382
    :cond_6
    invoke-virtual {v8}, Ld5/r;->o()Ld5/q;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ld5/q;->C()Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eqz v3, :cond_7

    .line 391
    .line 392
    invoke-virtual {v2}, Ld5/q;->w()Ld5/u;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-static {v3}, Lw7/c;->g(Ld5/u;)Lj5/l;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    move-object v10, v3

    .line 401
    goto :goto_4

    .line 402
    :cond_7
    move-object v10, v7

    .line 403
    :goto_4
    invoke-virtual {v2}, Ld5/q;->x()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_8

    .line 408
    .line 409
    invoke-virtual {v2}, Ld5/q;->o()Ld5/u;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-static {v3}, Lw7/c;->g(Ld5/u;)Lj5/l;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    move-object v11, v3

    .line 418
    goto :goto_5

    .line 419
    :cond_8
    move-object v11, v7

    .line 420
    :goto_5
    invoke-virtual {v2}, Ld5/q;->n()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-nez v3, :cond_9

    .line 429
    .line 430
    invoke-virtual {v2}, Ld5/q;->n()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    move-object v14, v3

    .line 435
    goto :goto_6

    .line 436
    :cond_9
    move-object v14, v7

    .line 437
    :goto_6
    invoke-virtual {v2}, Ld5/q;->y()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-nez v3, :cond_b

    .line 442
    .line 443
    invoke-virtual {v2}, Ld5/q;->z()Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_a

    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_a
    move-object v3, v7

    .line 451
    goto :goto_8

    .line 452
    :cond_b
    :goto_7
    invoke-virtual {v2}, Ld5/q;->s()Ld5/n;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v2}, Ld5/q;->t()Ld5/p;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-static {v3, v4}, Lw7/c;->f(Ld5/n;Ld5/p;)Lj5/a;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    :goto_8
    invoke-virtual {v2}, Ld5/q;->A()Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-nez v4, :cond_d

    .line 469
    .line 470
    invoke-virtual {v2}, Ld5/q;->B()Z

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-eqz v4, :cond_c

    .line 475
    .line 476
    goto :goto_9

    .line 477
    :cond_c
    move-object v4, v7

    .line 478
    goto :goto_a

    .line 479
    :cond_d
    :goto_9
    invoke-virtual {v2}, Ld5/q;->u()Ld5/n;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-virtual {v2}, Ld5/q;->v()Ld5/p;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-static {v4, v5}, Lw7/c;->f(Ld5/n;Ld5/p;)Lj5/a;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    :goto_a
    invoke-virtual {v2}, Ld5/q;->r()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-nez v5, :cond_10

    .line 500
    .line 501
    invoke-virtual {v2}, Ld5/q;->r()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    if-nez v8, :cond_e

    .line 510
    .line 511
    goto :goto_b

    .line 512
    :cond_e
    move-object v5, v7

    .line 513
    :goto_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    if-nez v8, :cond_f

    .line 518
    .line 519
    new-instance v8, Lj5/f;

    .line 520
    .line 521
    invoke-direct {v8, v5}, Lj5/f;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    move-object v12, v8

    .line 525
    goto :goto_d

    .line 526
    :cond_f
    invoke-static {v6}, Lj1/i;->k(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    :goto_c
    move-object v0, v7

    .line 530
    goto/16 :goto_24

    .line 531
    .line 532
    :cond_10
    move-object v12, v7

    .line 533
    :goto_d
    invoke-virtual {v2}, Ld5/q;->q()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-nez v5, :cond_13

    .line 542
    .line 543
    invoke-virtual {v2}, Ld5/q;->q()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    if-nez v5, :cond_11

    .line 552
    .line 553
    goto :goto_e

    .line 554
    :cond_11
    move-object v2, v7

    .line 555
    :goto_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-nez v5, :cond_12

    .line 560
    .line 561
    new-instance v5, Lj5/f;

    .line 562
    .line 563
    invoke-direct {v5, v2}, Lj5/f;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    move-object v13, v5

    .line 567
    goto :goto_f

    .line 568
    :cond_12
    invoke-static {v6}, Lj1/i;->k(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    goto :goto_c

    .line 572
    :cond_13
    move-object v13, v7

    .line 573
    :goto_f
    if-eqz v3, :cond_1b

    .line 574
    .line 575
    iget-object v2, v3, Lj5/a;->b:Lj5/d;

    .line 576
    .line 577
    if-eqz v2, :cond_1a

    .line 578
    .line 579
    if-eqz v4, :cond_15

    .line 580
    .line 581
    iget-object v2, v4, Lj5/a;->b:Lj5/d;

    .line 582
    .line 583
    if-eqz v2, :cond_14

    .line 584
    .line 585
    goto :goto_10

    .line 586
    :cond_14
    const-string v0, "Card model secondary action must be null or have a button"

    .line 587
    .line 588
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    goto :goto_c

    .line 592
    :cond_15
    :goto_10
    if-eqz v10, :cond_19

    .line 593
    .line 594
    if-nez v12, :cond_17

    .line 595
    .line 596
    if-eqz v13, :cond_16

    .line 597
    .line 598
    goto :goto_11

    .line 599
    :cond_16
    const-string v0, "Card model must have at least one image"

    .line 600
    .line 601
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    goto :goto_c

    .line 605
    :cond_17
    :goto_11
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-nez v2, :cond_18

    .line 610
    .line 611
    new-instance v9, Lj5/e;

    .line 612
    .line 613
    move-object/from16 v16, v4

    .line 614
    .line 615
    move-object/from16 v17, v15

    .line 616
    .line 617
    move-object v15, v3

    .line 618
    invoke-direct/range {v9 .. v17}, Lj5/e;-><init>(Lj5/l;Lj5/l;Lj5/f;Lj5/f;Ljava/lang/String;Lj5/a;Lj5/a;Ljava/util/Map;)V

    .line 619
    .line 620
    .line 621
    :goto_12
    move-object v2, v9

    .line 622
    goto/16 :goto_23

    .line 623
    .line 624
    :cond_18
    const-string v0, "Card model must have a background color"

    .line 625
    .line 626
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_19
    const-string v0, "Card model must have a title"

    .line 631
    .line 632
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    goto :goto_c

    .line 636
    :cond_1a
    const-string v0, "Card model must have a primary action button"

    .line 637
    .line 638
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto :goto_c

    .line 642
    :cond_1b
    const-string v0, "Card model must have a primary action"

    .line 643
    .line 644
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    goto :goto_c

    .line 648
    :cond_1c
    invoke-virtual {v8}, Ld5/r;->q()Ld5/s;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    invoke-virtual {v2}, Ld5/s;->p()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-nez v3, :cond_1f

    .line 661
    .line 662
    invoke-virtual {v2}, Ld5/s;->p()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    if-nez v4, :cond_1d

    .line 671
    .line 672
    goto :goto_13

    .line 673
    :cond_1d
    move-object v3, v7

    .line 674
    :goto_13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    if-nez v4, :cond_1e

    .line 679
    .line 680
    new-instance v4, Lj5/f;

    .line 681
    .line 682
    invoke-direct {v4, v3}, Lj5/f;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    goto :goto_14

    .line 686
    :cond_1e
    invoke-static {v6}, Lj1/i;->k(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_c

    .line 690
    .line 691
    :cond_1f
    move-object v4, v7

    .line 692
    :goto_14
    invoke-virtual {v2}, Ld5/s;->q()Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-eqz v3, :cond_20

    .line 697
    .line 698
    invoke-virtual {v2}, Ld5/s;->n()Ld5/n;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-static {v2}, Lw7/c;->d(Ld5/n;)Landroid/support/v4/media/h;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    new-instance v3, Lj5/a;

    .line 707
    .line 708
    iget-object v5, v2, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v5, Ljava/lang/String;

    .line 711
    .line 712
    iget-object v2, v2, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v2, Lj5/d;

    .line 715
    .line 716
    invoke-direct {v3, v5, v2}, Lj5/a;-><init>(Ljava/lang/String;Lj5/d;)V

    .line 717
    .line 718
    .line 719
    goto :goto_15

    .line 720
    :cond_20
    move-object v3, v7

    .line 721
    :goto_15
    if-eqz v4, :cond_21

    .line 722
    .line 723
    new-instance v2, Lj5/g;

    .line 724
    .line 725
    sget-object v5, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 726
    .line 727
    invoke-direct {v2, v5, v15}, Lj5/h;-><init>(Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 728
    .line 729
    .line 730
    iput-object v4, v2, Lj5/g;->c:Lj5/f;

    .line 731
    .line 732
    iput-object v3, v2, Lj5/g;->d:Lj5/a;

    .line 733
    .line 734
    goto/16 :goto_23

    .line 735
    .line 736
    :cond_21
    const-string v0, "ImageOnly model must have image data"

    .line 737
    .line 738
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_c

    .line 742
    .line 743
    :cond_22
    invoke-virtual {v8}, Ld5/r;->s()Ld5/t;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v2}, Ld5/t;->p()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    if-nez v3, :cond_23

    .line 756
    .line 757
    invoke-virtual {v2}, Ld5/t;->p()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    move-object v14, v3

    .line 762
    goto :goto_16

    .line 763
    :cond_23
    move-object v14, v7

    .line 764
    :goto_16
    invoke-virtual {v2}, Ld5/t;->s()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    if-nez v3, :cond_26

    .line 773
    .line 774
    invoke-virtual {v2}, Ld5/t;->s()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    if-nez v4, :cond_24

    .line 783
    .line 784
    goto :goto_17

    .line 785
    :cond_24
    move-object v3, v7

    .line 786
    :goto_17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    if-nez v4, :cond_25

    .line 791
    .line 792
    new-instance v4, Lj5/f;

    .line 793
    .line 794
    invoke-direct {v4, v3}, Lj5/f;-><init>(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    move-object v12, v4

    .line 798
    goto :goto_18

    .line 799
    :cond_25
    invoke-static {v6}, Lj1/i;->k(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    goto/16 :goto_c

    .line 803
    .line 804
    :cond_26
    move-object v12, v7

    .line 805
    :goto_18
    invoke-virtual {v2}, Ld5/t;->u()Z

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    if-eqz v3, :cond_27

    .line 810
    .line 811
    invoke-virtual {v2}, Ld5/t;->n()Ld5/n;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    invoke-virtual {v2}, Ld5/t;->o()Ld5/p;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    invoke-static {v3, v4}, Lw7/c;->f(Ld5/n;Ld5/p;)Lj5/a;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    move-object v13, v3

    .line 824
    goto :goto_19

    .line 825
    :cond_27
    move-object v13, v7

    .line 826
    :goto_19
    invoke-virtual {v2}, Ld5/t;->v()Z

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    if-eqz v3, :cond_28

    .line 831
    .line 832
    invoke-virtual {v2}, Ld5/t;->q()Ld5/u;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    invoke-static {v3}, Lw7/c;->g(Ld5/u;)Lj5/l;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    move-object v11, v3

    .line 841
    goto :goto_1a

    .line 842
    :cond_28
    move-object v11, v7

    .line 843
    :goto_1a
    invoke-virtual {v2}, Ld5/t;->w()Z

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    if-eqz v3, :cond_29

    .line 848
    .line 849
    invoke-virtual {v2}, Ld5/t;->t()Ld5/u;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-static {v2}, Lw7/c;->g(Ld5/u;)Lj5/l;

    .line 854
    .line 855
    .line 856
    move-result-object v2

    .line 857
    move-object v10, v2

    .line 858
    goto :goto_1b

    .line 859
    :cond_29
    move-object v10, v7

    .line 860
    :goto_1b
    if-eqz v10, :cond_2d

    .line 861
    .line 862
    if-eqz v13, :cond_2b

    .line 863
    .line 864
    iget-object v2, v13, Lj5/a;->b:Lj5/d;

    .line 865
    .line 866
    if-eqz v2, :cond_2a

    .line 867
    .line 868
    goto :goto_1c

    .line 869
    :cond_2a
    const-string v0, "Modal model action must be null or have a button"

    .line 870
    .line 871
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    goto/16 :goto_c

    .line 875
    .line 876
    :cond_2b
    :goto_1c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    if-nez v2, :cond_2c

    .line 881
    .line 882
    new-instance v9, Lj5/i;

    .line 883
    .line 884
    invoke-direct/range {v9 .. v15}, Lj5/i;-><init>(Lj5/l;Lj5/l;Lj5/f;Lj5/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_12

    .line 888
    .line 889
    :cond_2c
    const-string v0, "Modal model must have a background color"

    .line 890
    .line 891
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    goto/16 :goto_c

    .line 895
    .line 896
    :cond_2d
    const-string v0, "Modal model must have a title"

    .line 897
    .line 898
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    goto/16 :goto_c

    .line 902
    .line 903
    :cond_2e
    invoke-virtual {v8}, Ld5/r;->n()Ld5/o;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    invoke-virtual {v2}, Ld5/o;->o()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    if-nez v3, :cond_2f

    .line 916
    .line 917
    invoke-virtual {v2}, Ld5/o;->o()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    move-object v14, v3

    .line 922
    goto :goto_1d

    .line 923
    :cond_2f
    move-object v14, v7

    .line 924
    :goto_1d
    invoke-virtual {v2}, Ld5/o;->r()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    if-nez v3, :cond_32

    .line 933
    .line 934
    invoke-virtual {v2}, Ld5/o;->r()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    if-nez v4, :cond_30

    .line 943
    .line 944
    goto :goto_1e

    .line 945
    :cond_30
    move-object v3, v7

    .line 946
    :goto_1e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 947
    .line 948
    .line 949
    move-result v4

    .line 950
    if-nez v4, :cond_31

    .line 951
    .line 952
    new-instance v4, Lj5/f;

    .line 953
    .line 954
    invoke-direct {v4, v3}, Lj5/f;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    move-object v12, v4

    .line 958
    goto :goto_1f

    .line 959
    :cond_31
    invoke-static {v6}, Lj1/i;->k(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    goto/16 :goto_c

    .line 963
    .line 964
    :cond_32
    move-object v12, v7

    .line 965
    :goto_1f
    invoke-virtual {v2}, Ld5/o;->t()Z

    .line 966
    .line 967
    .line 968
    move-result v3

    .line 969
    if-eqz v3, :cond_33

    .line 970
    .line 971
    invoke-virtual {v2}, Ld5/o;->n()Ld5/n;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    invoke-static {v3}, Lw7/c;->d(Ld5/n;)Landroid/support/v4/media/h;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    new-instance v4, Lj5/a;

    .line 980
    .line 981
    iget-object v5, v3, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 982
    .line 983
    check-cast v5, Ljava/lang/String;

    .line 984
    .line 985
    iget-object v3, v3, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 986
    .line 987
    check-cast v3, Lj5/d;

    .line 988
    .line 989
    invoke-direct {v4, v5, v3}, Lj5/a;-><init>(Ljava/lang/String;Lj5/d;)V

    .line 990
    .line 991
    .line 992
    move-object v13, v4

    .line 993
    goto :goto_20

    .line 994
    :cond_33
    move-object v13, v7

    .line 995
    :goto_20
    invoke-virtual {v2}, Ld5/o;->u()Z

    .line 996
    .line 997
    .line 998
    move-result v3

    .line 999
    if-eqz v3, :cond_34

    .line 1000
    .line 1001
    invoke-virtual {v2}, Ld5/o;->p()Ld5/u;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v3

    .line 1005
    invoke-static {v3}, Lw7/c;->g(Ld5/u;)Lj5/l;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    move-object v11, v3

    .line 1010
    goto :goto_21

    .line 1011
    :cond_34
    move-object v11, v7

    .line 1012
    :goto_21
    invoke-virtual {v2}, Ld5/o;->v()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    if-eqz v3, :cond_35

    .line 1017
    .line 1018
    invoke-virtual {v2}, Ld5/o;->s()Ld5/u;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    invoke-static {v2}, Lw7/c;->g(Ld5/u;)Lj5/l;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v2

    .line 1026
    move-object v10, v2

    .line 1027
    goto :goto_22

    .line 1028
    :cond_35
    move-object v10, v7

    .line 1029
    :goto_22
    if-eqz v10, :cond_38

    .line 1030
    .line 1031
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v2

    .line 1035
    if-nez v2, :cond_37

    .line 1036
    .line 1037
    new-instance v9, Lj5/c;

    .line 1038
    .line 1039
    invoke-direct/range {v9 .. v15}, Lj5/c;-><init>(Lj5/l;Lj5/l;Lj5/f;Lj5/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 1040
    .line 1041
    .line 1042
    goto/16 :goto_12

    .line 1043
    .line 1044
    :goto_23
    iget-object v2, v2, Lj5/h;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 1045
    .line 1046
    sget-object v3, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 1047
    .line 1048
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result v2

    .line 1052
    if-eqz v2, :cond_36

    .line 1053
    .line 1054
    goto :goto_24

    .line 1055
    :cond_36
    new-instance v0, Lj5/m;

    .line 1056
    .line 1057
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v0}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    goto :goto_24

    .line 1065
    :cond_37
    const-string v0, "Banner model must have a background color"

    .line 1066
    .line 1067
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    goto/16 :goto_c

    .line 1071
    .line 1072
    :cond_38
    const-string v0, "Banner model must have a title"

    .line 1073
    .line 1074
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_c

    .line 1078
    .line 1079
    :cond_39
    :goto_24
    return-object v0

    .line 1080
    :pswitch_2
    iget-object v7, v1, Lf5/q;->c:Lf5/t;

    .line 1081
    .line 1082
    move-object/from16 v8, p1

    .line 1083
    .line 1084
    check-cast v8, Ljava/lang/String;

    .line 1085
    .line 1086
    iget-object v0, v7, Lf5/t;->c:Lf5/g;

    .line 1087
    .line 1088
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1089
    .line 1090
    .line 1091
    new-instance v6, Ld7/b;

    .line 1092
    .line 1093
    invoke-direct {v6, v4, v0}, Ld7/b;-><init>(ILjava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    new-instance v9, Li8/l;

    .line 1097
    .line 1098
    invoke-direct {v9, v6}, Li8/l;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1099
    .line 1100
    .line 1101
    iget-object v6, v0, Lf5/g;->a:Lf5/y;

    .line 1102
    .line 1103
    invoke-static {}, Ly5/i;->s()Lcom/google/protobuf/x0;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v10

    .line 1107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    .line 1109
    .line 1110
    new-instance v11, Lf5/x;

    .line 1111
    .line 1112
    invoke-direct {v11, v5, v6, v10}, Lf5/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    new-instance v6, Li8/l;

    .line 1116
    .line 1117
    invoke-direct {v6, v11}, Li8/l;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1118
    .line 1119
    .line 1120
    new-instance v10, Lf5/e;

    .line 1121
    .line 1122
    invoke-direct {v10, v0, v5}, Lf5/e;-><init>(Lf5/g;I)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v11, Li8/r;

    .line 1126
    .line 1127
    sget-object v12, Ld8/b;->d:Lz3/f;

    .line 1128
    .line 1129
    invoke-direct {v11, v6, v10, v12}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v9, v11}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v6

    .line 1136
    new-instance v9, Lf5/e;

    .line 1137
    .line 1138
    invoke-direct {v9, v0, v4}, Lf5/e;-><init>(Lf5/g;I)V

    .line 1139
    .line 1140
    .line 1141
    new-instance v10, Li8/f;

    .line 1142
    .line 1143
    invoke-direct {v10, v6, v9, v5}, Li8/f;-><init>(Lx7/e;Ljava/lang/Object;I)V

    .line 1144
    .line 1145
    .line 1146
    new-instance v6, Lf5/e;

    .line 1147
    .line 1148
    invoke-direct {v6, v0, v3}, Lf5/e;-><init>(Lf5/g;I)V

    .line 1149
    .line 1150
    .line 1151
    new-instance v0, Li8/r;

    .line 1152
    .line 1153
    invoke-direct {v0, v10, v12, v6}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1154
    .line 1155
    .line 1156
    new-instance v6, Le0/g;

    .line 1157
    .line 1158
    const/16 v9, 0x18

    .line 1159
    .line 1160
    invoke-direct {v6, v9}, Le0/g;-><init>(I)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v9, Li8/r;

    .line 1164
    .line 1165
    invoke-direct {v9, v0, v6, v12}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1166
    .line 1167
    .line 1168
    new-instance v0, Le0/g;

    .line 1169
    .line 1170
    const/16 v6, 0x19

    .line 1171
    .line 1172
    invoke-direct {v0, v6}, Le0/g;-><init>(I)V

    .line 1173
    .line 1174
    .line 1175
    new-instance v6, Li8/r;

    .line 1176
    .line 1177
    invoke-direct {v6, v9, v12, v0}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1178
    .line 1179
    .line 1180
    sget-object v0, Li8/d;->b:Li8/d;

    .line 1181
    .line 1182
    invoke-virtual {v6, v0}, Lx7/e;->b(Lx7/e;)Lx7/e;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    new-instance v13, Lf5/q;

    .line 1187
    .line 1188
    const/4 v14, 0x4

    .line 1189
    invoke-direct {v13, v7, v14}, Lf5/q;-><init>(Lf5/t;I)V

    .line 1190
    .line 1191
    .line 1192
    new-instance v9, Lf5/q;

    .line 1193
    .line 1194
    const/4 v6, 0x5

    .line 1195
    invoke-direct {v9, v7, v6}, Lf5/q;-><init>(Lf5/t;I)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v10, Lf5/f;

    .line 1199
    .line 1200
    const/4 v6, 0x6

    .line 1201
    invoke-direct {v10, v6, v7, v8}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1202
    .line 1203
    .line 1204
    new-instance v11, Le0/g;

    .line 1205
    .line 1206
    const/16 v6, 0x1a

    .line 1207
    .line 1208
    invoke-direct {v11, v6}, Le0/g;-><init>(I)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v6, Lf5/s;

    .line 1212
    .line 1213
    invoke-direct/range {v6 .. v11}, Lf5/s;-><init>(Lf5/t;Ljava/lang/String;Lf5/q;Lf5/f;Le0/g;)V

    .line 1214
    .line 1215
    .line 1216
    iget-object v9, v7, Lf5/t;->g:Lf5/o;

    .line 1217
    .line 1218
    invoke-virtual {v9}, Lf5/o;->a()Lx7/e;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v9

    .line 1222
    new-instance v10, Le0/g;

    .line 1223
    .line 1224
    const/16 v11, 0x1b

    .line 1225
    .line 1226
    invoke-direct {v10, v11}, Le0/g;-><init>(I)V

    .line 1227
    .line 1228
    .line 1229
    new-instance v11, Li8/r;

    .line 1230
    .line 1231
    invoke-direct {v11, v9, v12, v10}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-static {}, Ly5/c;->p()Ly5/c;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v9

    .line 1238
    const-string v10, "item is null"

    .line 1239
    .line 1240
    invoke-static {v9, v10}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-static {v9}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v9

    .line 1247
    invoke-virtual {v11, v9}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v9

    .line 1251
    invoke-static {}, Ly5/c;->p()Ly5/c;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v10

    .line 1255
    invoke-static {v10}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v10

    .line 1259
    invoke-virtual {v9, v10}, Lx7/e;->b(Lx7/e;)Lx7/e;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v9

    .line 1263
    iget-object v10, v7, Lf5/t;->m:Ll5/e;

    .line 1264
    .line 1265
    check-cast v10, Ll5/d;

    .line 1266
    .line 1267
    invoke-virtual {v10}, Ll5/d;->c()Lo7/a;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v11

    .line 1271
    iget-object v15, v7, Lf5/t;->o:Ljava/util/concurrent/Executor;

    .line 1272
    .line 1273
    move/from16 v16, v5

    .line 1274
    .line 1275
    new-instance v5, Lf5/f;

    .line 1276
    .line 1277
    invoke-direct {v5, v14, v11, v15}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v11, Li8/c;

    .line 1281
    .line 1282
    invoke-direct {v11, v5}, Li8/c;-><init>(Lf5/f;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v10}, Ll5/d;->d()V

    .line 1286
    .line 1287
    .line 1288
    new-instance v5, Ln/p;

    .line 1289
    .line 1290
    const/16 v2, 0x11

    .line 1291
    .line 1292
    invoke-direct {v5, v2}, Ln/p;-><init>(I)V

    .line 1293
    .line 1294
    .line 1295
    new-instance v2, Ll5/g;

    .line 1296
    .line 1297
    move/from16 v18, v4

    .line 1298
    .line 1299
    iget-object v4, v10, Ll5/d;->d:Ll5/k;

    .line 1300
    .line 1301
    invoke-direct {v2, v4, v5}, Ll5/g;-><init>(Ll5/k;Ln/p;)V

    .line 1302
    .line 1303
    .line 1304
    iget-object v4, v10, Ll5/d;->g:Ljava/lang/Object;

    .line 1305
    .line 1306
    monitor-enter v4

    .line 1307
    :try_start_0
    iget-object v14, v10, Ll5/d;->l:Ljava/util/ArrayList;

    .line 1308
    .line 1309
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    iget-object v2, v5, Ln/p;->c:Ljava/lang/Object;

    .line 1314
    .line 1315
    check-cast v2, Lo7/a;

    .line 1316
    .line 1317
    iget-object v4, v10, Ll5/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 1318
    .line 1319
    new-instance v5, Ll5/c;

    .line 1320
    .line 1321
    invoke-direct {v5, v10, v3}, Ll5/c;-><init>(Ll5/d;I)V

    .line 1322
    .line 1323
    .line 1324
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1325
    .line 1326
    .line 1327
    new-instance v4, Lf5/f;

    .line 1328
    .line 1329
    const/4 v5, 0x4

    .line 1330
    invoke-direct {v4, v5, v2, v15}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1331
    .line 1332
    .line 1333
    new-instance v2, Li8/c;

    .line 1334
    .line 1335
    invoke-direct {v2, v4}, Li8/c;-><init>(Lf5/f;)V

    .line 1336
    .line 1337
    .line 1338
    new-instance v4, Le0/g;

    .line 1339
    .line 1340
    const/16 v5, 0xd

    .line 1341
    .line 1342
    invoke-direct {v4, v5}, Le0/g;-><init>(I)V

    .line 1343
    .line 1344
    .line 1345
    new-instance v5, Lp2/e;

    .line 1346
    .line 1347
    invoke-direct {v5, v4}, Lp2/e;-><init>(Le0/g;)V

    .line 1348
    .line 1349
    .line 1350
    new-array v3, v3, [Lx7/e;

    .line 1351
    .line 1352
    aput-object v11, v3, v16

    .line 1353
    .line 1354
    aput-object v2, v3, v18

    .line 1355
    .line 1356
    new-instance v2, Li8/g;

    .line 1357
    .line 1358
    move/from16 v4, v18

    .line 1359
    .line 1360
    invoke-direct {v2, v4, v3, v5}, Li8/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1361
    .line 1362
    .line 1363
    iget-object v3, v7, Lf5/t;->f:Lf5/k0;

    .line 1364
    .line 1365
    iget-object v3, v3, Lf5/k0;->a:Lx7/k;

    .line 1366
    .line 1367
    const-string v5, "scheduler is null"

    .line 1368
    .line 1369
    invoke-static {v3, v5}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    new-instance v5, Li8/f;

    .line 1373
    .line 1374
    invoke-direct {v5, v2, v3, v4}, Li8/f;-><init>(Lx7/e;Ljava/lang/Object;I)V

    .line 1375
    .line 1376
    .line 1377
    new-instance v2, Lf5/f;

    .line 1378
    .line 1379
    const/4 v3, 0x3

    .line 1380
    invoke-direct {v2, v3, v7, v5}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1381
    .line 1382
    .line 1383
    iget-object v3, v7, Lf5/t;->k:Lf5/m0;

    .line 1384
    .line 1385
    iget-boolean v4, v3, Lf5/m0;->c:Z

    .line 1386
    .line 1387
    if-eqz v4, :cond_3a

    .line 1388
    .line 1389
    const-string v4, "ON_FOREGROUND"

    .line 1390
    .line 1391
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1392
    .line 1393
    .line 1394
    move-result v4

    .line 1395
    goto :goto_25

    .line 1396
    :cond_3a
    iget-boolean v4, v3, Lf5/m0;->b:Z

    .line 1397
    .line 1398
    :goto_25
    if-eqz v4, :cond_3b

    .line 1399
    .line 1400
    iget-boolean v0, v3, Lf5/m0;->b:Z

    .line 1401
    .line 1402
    iget-boolean v3, v3, Lf5/m0;->c:Z

    .line 1403
    .line 1404
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    const-string v5, "Forcing fetch from service rather than cache. Test Device: "

    .line 1407
    .line 1408
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    .line 1414
    const-string v0, " | App Fresh Install: "

    .line 1415
    .line 1416
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    invoke-static {v0}, Le3/d;->n(Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    new-instance v0, Li8/k;

    .line 1430
    .line 1431
    move/from16 v3, v16

    .line 1432
    .line 1433
    invoke-direct {v0, v9, v2, v3}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 1434
    .line 1435
    .line 1436
    new-instance v2, Li8/k;

    .line 1437
    .line 1438
    invoke-direct {v2, v0, v6, v3}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 1439
    .line 1440
    .line 1441
    new-instance v0, Lh8/l;

    .line 1442
    .line 1443
    const/4 v5, 0x4

    .line 1444
    invoke-direct {v0, v5, v2}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 1445
    .line 1446
    .line 1447
    goto :goto_26

    .line 1448
    :cond_3b
    move/from16 v3, v16

    .line 1449
    .line 1450
    const-string v4, "Attempting to fetch campaigns using cache"

    .line 1451
    .line 1452
    invoke-static {v4}, Le3/d;->m(Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    new-instance v4, Li8/k;

    .line 1456
    .line 1457
    invoke-direct {v4, v9, v2, v3}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 1458
    .line 1459
    .line 1460
    new-instance v2, Li8/r;

    .line 1461
    .line 1462
    invoke-direct {v2, v4, v13, v12}, Li8/r;-><init>(Lx7/e;Lb8/b;Lb8/b;)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v0, v2}, Lx7/e;->e(Lx7/e;)Lx7/e;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v0

    .line 1469
    new-instance v2, Li8/k;

    .line 1470
    .line 1471
    invoke-direct {v2, v0, v6, v3}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 1472
    .line 1473
    .line 1474
    new-instance v0, Lh8/l;

    .line 1475
    .line 1476
    const/4 v5, 0x4

    .line 1477
    invoke-direct {v0, v5, v2}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 1478
    .line 1479
    .line 1480
    :goto_26
    return-object v0

    .line 1481
    :catchall_0
    move-exception v0

    .line 1482
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    throw v0

    .line 1484
    nop

    .line 1485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p1, Lx5/c;

    .line 2
    .line 3
    iget-object v0, p0, Lf5/q;->c:Lf5/t;

    .line 4
    .line 5
    iget-object v1, v0, Lf5/t;->k:Lf5/m0;

    .line 6
    .line 7
    iget-boolean v1, v1, Lf5/m0;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Lf5/t;->d:Li5/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lx5/c;->r()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1, v2}, Lcom/bumptech/glide/g;->a(II)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lx5/c;->u()Lx5/d;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lx5/d;->q()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {p1}, Lx5/c;->u()Lx5/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lx5/d;->n()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lx5/c;->r()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-static {v1, v3}, Lcom/bumptech/glide/g;->a(II)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lx5/c;->p()Lx5/a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lx5/a;->q()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {p1}, Lx5/c;->p()Lx5/a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lx5/a;->n()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    cmp-long p1, v0, v3

    .line 76
    .line 77
    if-lez p1, :cond_1

    .line 78
    .line 79
    cmp-long p1, v0, v5

    .line 80
    .line 81
    if-gez p1, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 p1, 0x0

    .line 85
    return p1

    .line 86
    :cond_2
    :goto_1
    return v2
.end method
