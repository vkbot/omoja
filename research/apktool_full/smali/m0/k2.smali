.class public Lm0/k2;
.super Ll0/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Le4/o;

.field public d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

.field public e:Lm0/i2;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public final i:Ljava/util/ArrayList;

.field public j:I

.field public k:[Landroid/view/Display;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le4/o;

    .line 5
    .line 6
    invoke-direct {v0}, Le4/o;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/k2;->c:Le4/o;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm0/k2;->i:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lm0/k2;->j:I

    .line 20
    .line 21
    return-void
.end method

.method public static t(Lm0/k2;Le4/o;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lm0/k2;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p1, :cond_9

    .line 4
    .line 5
    iget-object v0, p1, Le4/o;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, La5/h;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget-object v0, p1, Le4/o;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, La5/h;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    :goto_0
    const/4 v2, 0x2

    .line 26
    if-ltz v0, :cond_5

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lm0/j2;

    .line 33
    .line 34
    iget-boolean v4, v3, Lm0/j2;->a:Z

    .line 35
    .line 36
    if-eqz v4, :cond_4

    .line 37
    .line 38
    iget-object v3, v3, Lm0/j2;->c:Le4/o;

    .line 39
    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    iget-object v4, v3, Le4/o;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, La5/h;

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    iget-object v4, v3, Le4/o;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, La5/h;

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    iget-object v4, p1, Le4/o;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, La5/h;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iget-object v4, p1, Le4/o;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, La5/h;

    .line 63
    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    iget v4, v3, Le4/o;->a:I

    .line 68
    .line 69
    if-ne v4, v2, :cond_2

    .line 70
    .line 71
    move v4, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v4, v1

    .line 74
    :goto_1
    iget v5, p1, Le4/o;->a:I

    .line 75
    .line 76
    if-ne v5, v2, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v2, v1

    .line 80
    :goto_2
    if-ne v4, v2, :cond_4

    .line 81
    .line 82
    iget v2, v3, Le4/o;->b:I

    .line 83
    .line 84
    invoke-static {v2}, Lm0/k2;->w(I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget v4, p1, Le4/o;->b:I

    .line 89
    .line 90
    invoke-static {v4}, Lm0/k2;->w(I)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ne v2, v4, :cond_4

    .line 95
    .line 96
    iget-object v2, v3, Le4/o;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, La5/h;

    .line 99
    .line 100
    iget-object v2, v2, La5/h;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v2, Ljava/lang/String;

    .line 103
    .line 104
    iget-object v3, v3, Le4/o;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, La5/h;

    .line 107
    .line 108
    iget-object v3, v3, La5/h;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    iget-object v4, p1, Le4/o;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, La5/h;

    .line 115
    .line 116
    iget-object v4, v4, La5/h;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Ljava/lang/String;

    .line 119
    .line 120
    iget-object v5, p1, Le4/o;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v5, La5/h;

    .line 123
    .line 124
    iget-object v5, v5, La5/h;->d:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v2, v3, v4, v5}, Lm0/k2;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    new-instance v0, Lm0/j2;

    .line 141
    .line 142
    new-instance v3, Le4/o;

    .line 143
    .line 144
    invoke-direct {v3}, Le4/o;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v4, p1, Le4/o;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v4, La5/h;

    .line 150
    .line 151
    iput-object v4, v3, Le4/o;->c:Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v4, p1, Le4/o;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v4, La5/h;

    .line 156
    .line 157
    iput-object v4, v3, Le4/o;->d:Ljava/lang/Object;

    .line 158
    .line 159
    iget v4, p1, Le4/o;->a:I

    .line 160
    .line 161
    if-ne v4, v2, :cond_6

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    move v2, v1

    .line 165
    :goto_4
    iput v2, v3, Le4/o;->a:I

    .line 166
    .line 167
    iget p1, p1, Le4/o;->b:I

    .line 168
    .line 169
    invoke-static {p1}, Lm0/k2;->w(I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, v3, Le4/o;->b:I

    .line 174
    .line 175
    const/4 p1, 0x0

    .line 176
    invoke-direct {v0, v1, p1, v3}, Lm0/j2;-><init>(ZLa5/h;Le4/o;)V

    .line 177
    .line 178
    .line 179
    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    move v0, p1

    .line 184
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-ge p1, v2, :cond_9

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Lm0/j2;

    .line 195
    .line 196
    iget-boolean v2, v2, Lm0/j2;->a:Z

    .line 197
    .line 198
    if-nez v2, :cond_7

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 202
    .line 203
    const/16 v2, 0x8

    .line 204
    .line 205
    if-le v0, v2, :cond_8

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    add-int/lit8 p1, p1, -0x1

    .line 211
    .line 212
    :cond_8
    :goto_6
    add-int/2addr p1, v1

    .line 213
    goto :goto_5

    .line 214
    :cond_9
    :goto_7
    return-void
.end method

.method public static u(Lm0/k2;Le4/o;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Le4/o;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, La5/h;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p1, Le4/o;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, La5/h;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    const/16 v0, 0x25

    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    new-array v2, v1, [B

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, ""

    .line 40
    .line 41
    invoke-virtual {v2, v0, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const/4 v5, 0x1

    .line 55
    const/4 v6, 0x0

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    new-array v4, v5, [B

    .line 59
    .line 60
    const/16 v7, -0x6a

    .line 61
    .line 62
    aput-byte v7, v4, v6

    .line 63
    .line 64
    new-array v7, v1, [B

    .line 65
    .line 66
    fill-array-data v7, :array_2

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v4, p1, Le4/o;->c:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v4, La5/h;

    .line 92
    .line 93
    iget-object v4, v4, La5/h;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    new-array v4, v5, [B

    .line 101
    .line 102
    const/16 v7, 0x5f

    .line 103
    .line 104
    aput-byte v7, v4, v6

    .line 105
    .line 106
    new-array v7, v1, [B

    .line 107
    .line 108
    fill-array-data v7, :array_3

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v4, p1, Le4/o;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, La5/h;

    .line 121
    .line 122
    iget-object v4, v4, La5/h;->d:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v4, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    new-array v4, v5, [B

    .line 130
    .line 131
    const/4 v7, 0x6

    .line 132
    aput-byte v7, v4, v6

    .line 133
    .line 134
    new-array v7, v1, [B

    .line 135
    .line 136
    fill-array-data v7, :array_4

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget v4, p1, Le4/o;->a:I

    .line 147
    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    new-array v4, v5, [B

    .line 152
    .line 153
    const/16 v7, 0x61

    .line 154
    .line 155
    aput-byte v7, v4, v6

    .line 156
    .line 157
    new-array v7, v1, [B

    .line 158
    .line 159
    fill-array-data v7, :array_5

    .line 160
    .line 161
    .line 162
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget v4, p1, Le4/o;->b:I

    .line 170
    .line 171
    invoke-static {v4}, Lm0/k2;->w(I)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v4, Li7/c;

    .line 183
    .line 184
    invoke-direct {v4, v5, p0, p1}, Li7/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-le p0, v1, :cond_2

    .line 198
    .line 199
    invoke-virtual {v3, v6, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :cond_2
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    new-array p1, v5, [B

    .line 208
    .line 209
    const/16 v2, -0x59

    .line 210
    .line 211
    aput-byte v2, p1, v6

    .line 212
    .line 213
    new-array v1, v1, [B

    .line 214
    .line 215
    fill-array-data v1, :array_6

    .line 216
    .line 217
    .line 218
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_3

    .line 236
    .line 237
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/lang/CharSequence;

    .line 242
    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_3

    .line 251
    .line 252
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p0, v0, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_4
    :goto_1
    return-void

    .line 264
    nop

    .line 265
    :array_0
    .array-data 1
        -0x8t
        -0x19t
        0x7dt
        0x4ft
        -0x5ct
        0x4dt
        0x60t
        -0x44t
        -0x25t
        -0x1ct
        0x45t
        0x67t
        -0x7et
        0x66t
        0x67t
        -0x42t
        -0x36t
        -0x30t
        0x5ct
        0x63t
        -0x62t
        0x66t
        0x7et
        -0x61t
        -0x36t
        -0x3ft
        0x54t
        0x40t
        -0x61t
        0x60t
        0x44t
        -0x46t
        -0x32t
        -0x3bt
        0x70t
        0x76t
        -0x80t
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
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_1
    .array-data 1
        -0x55t
        -0x49t
        0x31t
        0x6t
        -0x10t
        0x12t
        0x21t
        -0x34t
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_2
    .array-data 1
        -0x53t
        -0x5at
        0x2dt
        -0xct
        -0x36t
        -0x41t
        -0x31t
        0x4ct
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :array_3
    .array-data 1
        0x73t
        -0x2bt
        -0x33t
        0x79t
        0x71t
        0x5bt
        -0x42t
        -0x35t
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_4
    .array-data 1
        0x2at
        0x1et
        0x76t
        0x46t
        0x36t
        -0x59t
        0xdt
        -0x7t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_5
    .array-data 1
        0x4dt
        0x0t
        0x41t
        -0x36t
        -0x28t
        0x22t
        0x33t
        -0x14t
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_6
    .array-data 1
        -0x64t
        0x7bt
        -0x3at
        0x18t
        -0x7et
        -0x59t
        0x3et
        -0x32t
    .end array-data
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static w(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x46

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p0, 0x32

    .line 11
    .line 12
    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    const p3, 0x7f0c0058

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/16 p3, 0x8

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    new-array v1, v1, [B

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    new-array v2, p3, [B

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p0, Lm0/k2;->j:I

    .line 37
    .line 38
    :cond_0
    const p2, 0x7f0903eb

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 46
    .line 47
    iput-object p2, p0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 48
    .line 49
    const p2, 0x7f090114

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object p2, p0, Lm0/k2;->f:Landroid/widget/ImageView;

    .line 59
    .line 60
    const p2, 0x7f09010c

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object p2, p0, Lm0/k2;->g:Landroid/widget/ImageView;

    .line 70
    .line 71
    const p2, 0x7f09049c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 79
    .line 80
    iput-object p2, p0, Lm0/k2;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 81
    .line 82
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/16 v1, 0xc

    .line 87
    .line 88
    new-array v1, v1, [B

    .line 89
    .line 90
    fill-array-data v1, :array_2

    .line 91
    .line 92
    .line 93
    new-array v2, p3, [B

    .line 94
    .line 95
    fill-array-data v2, :array_3

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p2, v1, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/16 v3, 0xb

    .line 112
    .line 113
    new-array v3, v3, [B

    .line 114
    .line 115
    fill-array-data v3, :array_4

    .line 116
    .line 117
    .line 118
    new-array p3, p3, [B

    .line 119
    .line 120
    fill-array-data p3, :array_5

    .line 121
    .line 122
    .line 123
    invoke-static {v3, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    const/16 v3, 0x32

    .line 128
    .line 129
    invoke-virtual {v1, p3, v3}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    invoke-virtual {p0, p2}, Lm0/k2;->x(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p3}, Lm0/k2;->y(I)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lm0/k2;->f:Landroid/widget/ImageView;

    .line 140
    .line 141
    new-instance p3, Lm0/f2;

    .line 142
    .line 143
    invoke-direct {p3, p0, v0}, Lm0/f2;-><init>(Lm0/k2;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lm0/k2;->g:Landroid/widget/ImageView;

    .line 150
    .line 151
    new-instance p3, Lm0/f2;

    .line 152
    .line 153
    invoke-direct {p3, p0, v2}, Lm0/f2;-><init>(Lm0/k2;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lm0/k2;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 160
    .line 161
    new-instance p3, Lm0/g2;

    .line 162
    .line 163
    invoke-direct {p3, p0}, Lm0/g2;-><init>(Lm0/k2;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p2, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:Ljava/util/LinkedHashSet;

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    return-object p1

    .line 172
    nop

    .line 173
    :array_0
    .array-data 1
        -0x55t
        -0x2t
        0x46t
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 1
        -0x31t
        -0x69t
        0x35t
        0x4bt
        -0x67t
        -0x1ct
        0x2bt
        -0x5ft
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 1
        -0x53t
        -0x64t
        -0x50t
        -0x6ft
        -0x4ct
        0x7t
        -0x4at
        0x5bt
        -0x49t
        -0x77t
        -0x4et
        -0x74t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_3
    .array-data 1
        -0x2t
        -0x34t
        -0x4t
        -0x28t
        -0x20t
        0x58t
        -0x7t
        0x9t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_4
    .array-data 1
        -0x6t
        -0x3dt
        0x2t
        0x28t
        0x7at
        -0x42t
        -0x13t
        0x6t
        -0x3t
        -0x26t
        0x1t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_5
    .array-data 1
        -0x57t
        -0x6dt
        0x4et
        0x61t
        0x2et
        -0x1ft
        -0x41t
        0x47t
    .end array-data
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ll0/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super {v0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x7

    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    new-array v4, v3, [B

    .line 19
    .line 20
    fill-array-data v4, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lm0/k2;->k:[Landroid/view/Display;

    .line 38
    .line 39
    if-eqz v1, :cond_9

    .line 40
    .line 41
    iget v2, v0, Lm0/k2;->j:I

    .line 42
    .line 43
    if-ltz v2, :cond_9

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    if-ge v2, v1, :cond_9

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, v0, Lm0/k2;->k:[Landroid/view/Display;

    .line 53
    .line 54
    iget v4, v0, Lm0/k2;->j:I

    .line 55
    .line 56
    aget-object v2, v2, v4

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x6

    .line 63
    new-array v2, v2, [B

    .line 64
    .line 65
    fill-array-data v2, :array_2

    .line 66
    .line 67
    .line 68
    new-array v4, v3, [B

    .line 69
    .line 70
    fill-array-data v4, :array_3

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/view/WindowManager;

    .line 82
    .line 83
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Landroid/graphics/Point;

    .line 88
    .line 89
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 93
    .line 94
    .line 95
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 96
    .line 97
    int-to-double v4, v1

    .line 98
    const-wide v6, 0x3fe3333333333333L    # 0.6

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    mul-double/2addr v4, v6

    .line 104
    double-to-int v1, v4

    .line 105
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 106
    .line 107
    int-to-double v4, v2

    .line 108
    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    mul-double/2addr v4, v6

    .line 114
    double-to-int v2, v4

    .line 115
    iget-object v4, v0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .line 123
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 124
    .line 125
    const/4 v1, -0x2

    .line 126
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 141
    .line 142
    iget-object v6, v0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 143
    .line 144
    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 145
    .line 146
    const/4 v8, 0x3

    .line 147
    invoke-direct {v7, v1, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 151
    .line 152
    .line 153
    iget-object v6, v0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 154
    .line 155
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    iget-object v4, v0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 159
    .line 160
    invoke-virtual {v4, v2}, Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;->setMaxHeight(I)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Lm0/i2;

    .line 164
    .line 165
    invoke-direct {v2, v0}, Lm0/i2;-><init>(Lm0/k2;)V

    .line 166
    .line 167
    .line 168
    iput-object v2, v0, Lm0/k2;->e:Lm0/i2;

    .line 169
    .line 170
    iget-object v4, v0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 171
    .line 172
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, v0, Lm0/k2;->c:Le4/o;

    .line 176
    .line 177
    const/4 v4, 0x0

    .line 178
    iput-object v4, v2, Le4/o;->c:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v4, v2, Le4/o;->d:Ljava/lang/Object;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const/16 v6, 0x80

    .line 191
    .line 192
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    iget-object v7, v0, Lm0/k2;->i:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const/16 v10, 0x25

    .line 206
    .line 207
    new-array v10, v10, [B

    .line 208
    .line 209
    fill-array-data v10, :array_4

    .line 210
    .line 211
    .line 212
    new-array v11, v3, [B

    .line 213
    .line 214
    fill-array-data v11, :array_5

    .line 215
    .line 216
    .line 217
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    const-string v11, ""

    .line 222
    .line 223
    invoke-virtual {v9, v10, v11}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    const/4 v12, 0x1

    .line 232
    const/4 v13, 0x0

    .line 233
    if-eqz v10, :cond_1

    .line 234
    .line 235
    :cond_0
    move-object/from16 v21, v6

    .line 236
    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :cond_1
    new-array v10, v12, [B

    .line 240
    .line 241
    const/16 v14, -0x14

    .line 242
    .line 243
    aput-byte v14, v10, v13

    .line 244
    .line 245
    new-array v14, v3, [B

    .line 246
    .line 247
    fill-array-data v14, :array_6

    .line 248
    .line 249
    .line 250
    invoke-static {v10, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    array-length v14, v9

    .line 267
    move v15, v13

    .line 268
    :goto_0
    if-ge v15, v14, :cond_0

    .line 269
    .line 270
    aget-object v4, v9, v15

    .line 271
    .line 272
    new-array v11, v12, [B

    .line 273
    .line 274
    const/16 v16, -0xf

    .line 275
    .line 276
    aput-byte v16, v11, v13

    .line 277
    .line 278
    move/from16 v16, v12

    .line 279
    .line 280
    new-array v12, v3, [B

    .line 281
    .line 282
    fill-array-data v12, :array_7

    .line 283
    .line 284
    .line 285
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    array-length v11, v4

    .line 294
    if-ge v11, v8, :cond_2

    .line 295
    .line 296
    :catch_0
    move-object/from16 v21, v6

    .line 297
    .line 298
    move/from16 v18, v8

    .line 299
    .line 300
    :goto_1
    move-object/from16 v22, v9

    .line 301
    .line 302
    goto/16 :goto_6

    .line 303
    .line 304
    :cond_2
    aget-object v11, v4, v13

    .line 305
    .line 306
    aget-object v12, v4, v16

    .line 307
    .line 308
    const/4 v3, 0x2

    .line 309
    :try_start_0
    aget-object v17, v4, v3

    .line 310
    .line 311
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    move/from16 v18, v8

    .line 316
    .line 317
    :try_start_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    array-length v3, v4

    .line 322
    const/4 v13, 0x4

    .line 323
    if-lt v3, v13, :cond_3

    .line 324
    .line 325
    aget-object v3, v4, v18

    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 335
    goto :goto_2

    .line 336
    :cond_3
    const/16 v3, 0x32

    .line 337
    .line 338
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    const/4 v13, 0x0

    .line 347
    :try_start_2
    invoke-virtual {v4, v11, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 348
    .line 349
    .line 350
    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 351
    goto :goto_3

    .line 352
    :catch_1
    const/4 v4, 0x0

    .line 353
    :goto_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 354
    .line 355
    .line 356
    move-result-object v19

    .line 357
    move/from16 v20, v3

    .line 358
    .line 359
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    :try_start_3
    invoke-virtual {v3, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 364
    .line 365
    .line 366
    move-result-object v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 367
    goto :goto_4

    .line 368
    :catch_2
    const/4 v3, 0x0

    .line 369
    :goto_4
    if-eqz v4, :cond_4

    .line 370
    .line 371
    if-nez v3, :cond_5

    .line 372
    .line 373
    :catch_3
    :cond_4
    move-object/from16 v21, v6

    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_5
    new-instance v13, La5/h;

    .line 377
    .line 378
    move-object/from16 v21, v6

    .line 379
    .line 380
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 381
    .line 382
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 391
    .line 392
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    move-object/from16 v22, v9

    .line 397
    .line 398
    const/16 v9, 0x11

    .line 399
    .line 400
    invoke-direct {v13, v6, v11, v4, v9}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 401
    .line 402
    .line 403
    new-instance v4, La5/h;

    .line 404
    .line 405
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 406
    .line 407
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 416
    .line 417
    invoke-virtual {v10, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-direct {v4, v6, v12, v3, v9}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 422
    .line 423
    .line 424
    new-instance v3, Le4/o;

    .line 425
    .line 426
    invoke-direct {v3}, Le4/o;-><init>()V

    .line 427
    .line 428
    .line 429
    iput-object v13, v3, Le4/o;->c:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v4, v3, Le4/o;->d:Ljava/lang/Object;

    .line 432
    .line 433
    const/4 v4, 0x2

    .line 434
    if-ne v8, v4, :cond_6

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_6
    move/from16 v4, v16

    .line 438
    .line 439
    :goto_5
    iput v4, v3, Le4/o;->a:I

    .line 440
    .line 441
    invoke-static/range {v20 .. v20}, Lm0/k2;->w(I)I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    iput v4, v3, Le4/o;->b:I

    .line 446
    .line 447
    new-instance v4, Lm0/j2;

    .line 448
    .line 449
    move/from16 v6, v16

    .line 450
    .line 451
    const/4 v8, 0x0

    .line 452
    invoke-direct {v4, v6, v8, v3}, Lm0/j2;-><init>(ZLa5/h;Le4/o;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 459
    .line 460
    move/from16 v8, v18

    .line 461
    .line 462
    move-object/from16 v6, v21

    .line 463
    .line 464
    move-object/from16 v9, v22

    .line 465
    .line 466
    const/16 v3, 0x8

    .line 467
    .line 468
    const/4 v4, 0x0

    .line 469
    const/4 v12, 0x1

    .line 470
    const/4 v13, 0x0

    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-eqz v4, :cond_8

    .line 482
    .line 483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 488
    .line 489
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 490
    .line 491
    const/16 v16, 0x1

    .line 492
    .line 493
    and-int/lit8 v6, v6, 0x1

    .line 494
    .line 495
    if-nez v6, :cond_7

    .line 496
    .line 497
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    if-eqz v6, :cond_7

    .line 504
    .line 505
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    new-instance v9, Lm0/j2;

    .line 518
    .line 519
    new-instance v10, La5/h;

    .line 520
    .line 521
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 522
    .line 523
    const/16 v11, 0x11

    .line 524
    .line 525
    invoke-direct {v10, v6, v4, v8, v11}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 526
    .line 527
    .line 528
    const/4 v8, 0x0

    .line 529
    const/4 v13, 0x0

    .line 530
    invoke-direct {v9, v13, v10, v8}, Lm0/j2;-><init>(ZLa5/h;Le4/o;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_8

    .line 537
    :cond_7
    const/4 v8, 0x0

    .line 538
    const/16 v11, 0x11

    .line 539
    .line 540
    const/4 v13, 0x0

    .line 541
    goto :goto_8

    .line 542
    :cond_8
    iget-object v2, v0, Lm0/k2;->e:Lm0/i2;

    .line 543
    .line 544
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 545
    .line 546
    .line 547
    iget-object v2, v0, Lm0/k2;->d:Lcom/example/navistart/DialogUni/Fragmenti/MaxHeightRecyclerView;

    .line 548
    .line 549
    new-instance v3, Lm0/j;

    .line 550
    .line 551
    const/4 v6, 0x1

    .line 552
    invoke-direct {v3, v0, v5, v1, v6}, Lm0/j;-><init>(Ll0/b;FLandroid/content/Context;I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 556
    .line 557
    .line 558
    :cond_9
    return-void

    .line 559
    :array_0
    .array-data 1
        -0x78t
        -0x20t
        0x4at
        0x6et
        0xbt
        -0x64t
        0x40t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_1
    .array-data 1
        -0x14t
        -0x77t
        0x39t
        0x1et
        0x67t
        -0x3t
        0x39t
        -0x22t
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_2
    .array-data 1
        0x6bt
        0x5ct
        0x58t
        -0xbt
        -0x17t
        0x6ft
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    nop

    .line 583
    :array_3
    .array-data 1
        0x1ct
        0x35t
        0x36t
        -0x6ft
        -0x7at
        0x18t
        0x69t
        0x46t
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_4
    .array-data 1
        0x24t
        -0x21t
        0x4at
        -0x61t
        -0x1t
        0x3bt
        -0x46t
        0x31t
        0x7t
        -0x24t
        0x72t
        -0x49t
        -0x27t
        0x10t
        -0x43t
        0x33t
        0x16t
        -0x18t
        0x6bt
        -0x4dt
        -0x3bt
        0x10t
        -0x5ct
        0x12t
        0x16t
        -0x7t
        0x63t
        -0x70t
        -0x3ct
        0x16t
        -0x62t
        0x37t
        0x12t
        -0x3t
        0x47t
        -0x5at
        -0x25t
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    nop

    .line 615
    :array_5
    .array-data 1
        0x77t
        -0x71t
        0x6t
        -0x2at
        -0x55t
        0x64t
        -0x5t
        0x41t
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_6
    .array-data 1
        -0x29t
        -0xbt
        -0x38t
        -0x1ct
        -0x4t
        -0x1et
        0x2ft
        -0x3t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_7
    .array-data 1
        -0x23t
        -0x11t
        -0x2ft
        0x5dt
        0x35t
        0x47t
        -0x73t
        0x35t
    .end array-data
.end method

.method public final x(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/k2;->c:Le4/o;

    .line 2
    .line 3
    iput p1, v0, Le4/o;->a:I

    .line 4
    .line 5
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, p1}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lm0/k2;->f:Landroid/widget/ImageView;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne p1, v1, :cond_0

    .line 34
    .line 35
    const v1, 0x7f070137

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const v1, 0x7f070136

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lm0/k2;->g:Landroid/widget/ImageView;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne p1, v1, :cond_1

    .line 49
    .line 50
    const p1, 0x7f070135

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const p1, 0x7f070134

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 1
        0x51t
        -0x2bt
        0x7t
        0x74t
        -0x6ft
        0x3t
        0x19t
        0x4et
        0x4bt
        -0x40t
        0x5t
        0x69t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_1
    .array-data 1
        0x2t
        -0x7bt
        0x4bt
        0x3dt
        -0x3bt
        0x5ct
        0x56t
        0x1ct
    .end array-data
.end method

.method public final y(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lm0/k2;->w(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lm0/k2;->c:Le4/o;

    .line 6
    .line 7
    iput p1, v0, Le4/o;->b:I

    .line 8
    .line 9
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Le4/o;->b:I

    .line 32
    .line 33
    invoke-virtual {p1, v1, v2}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget p1, v0, Le4/o;->b:I

    .line 37
    .line 38
    const/16 v0, 0x1e

    .line 39
    .line 40
    if-ne p1, v0, :cond_0

    .line 41
    .line 42
    const p1, 0x7f090499

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v0, 0x46

    .line 47
    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    const p1, 0x7f09049b

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const p1, 0x7f09049a

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lm0/k2;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonId()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eq v0, p1, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lm0/k2;->h:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f(IZ)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 1
        -0x49t
        -0x4t
        0x34t
        -0x71t
        -0xdt
        -0x69t
        -0x6ft
        -0x46t
        -0x50t
        -0x1bt
        0x37t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 1
        -0x1ct
        -0x54t
        0x78t
        -0x3at
        -0x59t
        -0x38t
        -0x3dt
        -0x5t
    .end array-data
.end method
