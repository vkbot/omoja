.class public final Ll9/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:Ll9/l;

.field public c:Z

.field public d:Ll9/b0;

.field public e:J

.field public f:[B

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Ll9/j;->e:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ll9/j;->g:I

    .line 10
    .line 11
    iput v0, p0, Ll9/j;->h:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(J)V
    .registers 17

    .line 1
    move-wide v0, p1

    .line 2
    iget-object v2, p0, Ll9/j;->b:Ll9/l;

    .line 3
    .line 4
    if-eqz v2, :cond_92

    .line 5
    .line 6
    iget-boolean v3, p0, Ll9/j;->c:Z

    .line 7
    .line 8
    if-eqz v3, :cond_8c

    .line 9
    .line 10
    iget-wide v3, v2, Ll9/l;->c:J

    .line 11
    .line 12
    cmp-long v5, v0, v3

    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    if-gtz v5, :cond_55

    .line 17
    .line 18
    cmp-long v5, v0, v6

    .line 19
    .line 20
    if-ltz v5, :cond_4b

    .line 21
    .line 22
    sub-long/2addr v3, v0

    .line 23
    :goto_16
    cmp-long v5, v3, v6

    .line 24
    .line 25
    if-lez v5, :cond_3e

    .line 26
    .line 27
    iget-object v5, v2, Ll9/l;->b:Ll9/b0;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v5, v5, Ll9/b0;->g:Ll9/b0;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget v8, v5, Ll9/b0;->c:I

    .line 38
    .line 39
    iget v9, v5, Ll9/b0;->b:I

    .line 40
    .line 41
    sub-int v9, v8, v9

    .line 42
    .line 43
    int-to-long v9, v9

    .line 44
    cmp-long v11, v9, v3

    .line 45
    .line 46
    if-gtz v11, :cond_3a

    .line 47
    .line 48
    invoke-virtual {v5}, Ll9/b0;->a()Ll9/b0;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iput-object v8, v2, Ll9/l;->b:Ll9/b0;

    .line 53
    .line 54
    invoke-static {v5}, Ll9/c0;->a(Ll9/b0;)V

    .line 55
    .line 56
    .line 57
    sub-long/2addr v3, v9

    .line 58
    goto :goto_16

    .line 59
    :cond_3a
    long-to-int v3, v3

    .line 60
    sub-int/2addr v8, v3

    .line 61
    iput v8, v5, Ll9/b0;->c:I

    .line 62
    .line 63
    :cond_3e
    const/4 v3, 0x0

    .line 64
    iput-object v3, p0, Ll9/j;->d:Ll9/b0;

    .line 65
    .line 66
    iput-wide v0, p0, Ll9/j;->e:J

    .line 67
    .line 68
    iput-object v3, p0, Ll9/j;->f:[B

    .line 69
    .line 70
    const/4 v3, -0x1

    .line 71
    iput v3, p0, Ll9/j;->g:I

    .line 72
    .line 73
    iput v3, p0, Ll9/j;->h:I

    .line 74
    .line 75
    goto :goto_89

    .line 76
    :cond_4b
    const-string v2, "newSize < 0: "

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_55
    if-lez v5, :cond_89

    .line 87
    .line 88
    sub-long v8, v0, v3

    .line 89
    .line 90
    const/4 v5, 0x1

    .line 91
    move v10, v5

    .line 92
    :goto_5b
    cmp-long v11, v8, v6

    .line 93
    .line 94
    if-lez v11, :cond_89

    .line 95
    .line 96
    invoke-virtual {v2, v5}, Ll9/l;->k0(I)Ll9/b0;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    iget v12, v11, Ll9/b0;->c:I

    .line 101
    .line 102
    rsub-int v12, v12, 0x2000

    .line 103
    .line 104
    int-to-long v12, v12

    .line 105
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v12

    .line 109
    long-to-int v12, v12

    .line 110
    iget v13, v11, Ll9/b0;->c:I

    .line 111
    .line 112
    add-int/2addr v13, v12

    .line 113
    iput v13, v11, Ll9/b0;->c:I

    .line 114
    .line 115
    int-to-long v5, v12

    .line 116
    sub-long/2addr v8, v5

    .line 117
    if-eqz v10, :cond_85

    .line 118
    .line 119
    iput-object v11, p0, Ll9/j;->d:Ll9/b0;

    .line 120
    .line 121
    iput-wide v3, p0, Ll9/j;->e:J

    .line 122
    .line 123
    iget-object v5, v11, Ll9/b0;->a:[B

    .line 124
    .line 125
    iput-object v5, p0, Ll9/j;->f:[B

    .line 126
    .line 127
    sub-int v5, v13, v12

    .line 128
    .line 129
    iput v5, p0, Ll9/j;->g:I

    .line 130
    .line 131
    iput v13, p0, Ll9/j;->h:I

    .line 132
    .line 133
    const/4 v10, 0x0

    .line 134
    :cond_85
    const/4 v5, 0x1

    .line 135
    const-wide/16 v6, 0x0

    .line 136
    .line 137
    goto :goto_5b

    .line 138
    :cond_89
    :goto_89
    iput-wide v0, v2, Ll9/l;->c:J

    .line 139
    .line 140
    return-void

    .line 141
    :cond_8c
    const-string v0, "resizeBuffer() only permitted for read/write buffers"

    .line 142
    .line 143
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_92
    const-string v0, "not attached to a buffer"

    .line 148
    .line 149
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final c(J)I
    .registers 16

    .line 1
    iget-object v0, p0, Ll9/j;->b:Ll9/l;

    .line 2
    .line 3
    if-eqz v0, :cond_d5

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    cmp-long v1, p1, v1

    .line 8
    .line 9
    if-ltz v1, :cond_b7

    .line 10
    .line 11
    iget-wide v2, v0, Ll9/l;->c:J

    .line 12
    .line 13
    cmp-long v4, p1, v2

    .line 14
    .line 15
    if-gtz v4, :cond_b7

    .line 16
    .line 17
    if-eqz v1, :cond_aa

    .line 18
    .line 19
    if-nez v4, :cond_16

    .line 20
    .line 21
    goto/16 :goto_aa

    .line 22
    .line 23
    :cond_16
    iget-object v1, v0, Ll9/l;->b:Ll9/b0;

    .line 24
    .line 25
    iget-object v4, p0, Ll9/j;->d:Ll9/b0;

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    if-eqz v4, :cond_32

    .line 30
    .line 31
    iget-wide v7, p0, Ll9/j;->e:J

    .line 32
    .line 33
    iget v9, p0, Ll9/j;->g:I

    .line 34
    .line 35
    iget v10, v4, Ll9/b0;->b:I

    .line 36
    .line 37
    sub-int/2addr v9, v10

    .line 38
    int-to-long v9, v9

    .line 39
    sub-long/2addr v7, v9

    .line 40
    cmp-long v9, v7, p1

    .line 41
    .line 42
    if-lez v9, :cond_30

    .line 43
    .line 44
    move-object v2, v4

    .line 45
    move-object v4, v1

    .line 46
    move-object v1, v2

    .line 47
    move-wide v2, v7

    .line 48
    goto :goto_33

    .line 49
    :cond_30
    move-wide v5, v7

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move-object v4, v1

    .line 52
    :goto_33
    sub-long v7, v2, p1

    .line 53
    .line 54
    sub-long v9, p1, v5

    .line 55
    .line 56
    cmp-long v7, v7, v9

    .line 57
    .line 58
    if-lez v7, :cond_4d

    .line 59
    .line 60
    :goto_3b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget v1, v4, Ll9/b0;->c:I

    .line 64
    .line 65
    iget v2, v4, Ll9/b0;->b:I

    .line 66
    .line 67
    sub-int/2addr v1, v2

    .line 68
    int-to-long v1, v1

    .line 69
    add-long/2addr v1, v5

    .line 70
    cmp-long v3, p1, v1

    .line 71
    .line 72
    if-ltz v3, :cond_63

    .line 73
    .line 74
    iget-object v4, v4, Ll9/b0;->f:Ll9/b0;

    .line 75
    .line 76
    move-wide v5, v1

    .line 77
    goto :goto_3b

    .line 78
    :cond_4d
    :goto_4d
    cmp-long v4, v2, p1

    .line 79
    .line 80
    if-lez v4, :cond_61

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v1, v1, Ll9/b0;->g:Ll9/b0;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget v4, v1, Ll9/b0;->c:I

    .line 91
    .line 92
    iget v5, v1, Ll9/b0;->b:I

    .line 93
    .line 94
    sub-int/2addr v4, v5

    .line 95
    int-to-long v4, v4

    .line 96
    sub-long/2addr v2, v4

    .line 97
    goto :goto_4d

    .line 98
    :cond_61
    move-object v4, v1

    .line 99
    move-wide v5, v2

    .line 100
    :cond_63
    iget-boolean v1, p0, Ll9/j;->c:Z

    .line 101
    .line 102
    if-eqz v1, :cond_92

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-boolean v1, v4, Ll9/b0;->d:Z

    .line 108
    .line 109
    if-eqz v1, :cond_92

    .line 110
    .line 111
    new-instance v7, Ll9/b0;

    .line 112
    .line 113
    iget-object v1, v4, Ll9/b0;->a:[B

    .line 114
    .line 115
    array-length v2, v1

    .line 116
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    iget v9, v4, Ll9/b0;->b:I

    .line 121
    .line 122
    iget v10, v4, Ll9/b0;->c:I

    .line 123
    .line 124
    const/4 v11, 0x0

    .line 125
    const/4 v12, 0x1

    .line 126
    invoke-direct/range {v7 .. v12}, Ll9/b0;-><init>([BIIZZ)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Ll9/l;->b:Ll9/b0;

    .line 130
    .line 131
    if-ne v1, v4, :cond_86

    .line 132
    .line 133
    iput-object v7, v0, Ll9/l;->b:Ll9/b0;

    .line 134
    .line 135
    :cond_86
    invoke-virtual {v4, v7}, Ll9/b0;->b(Ll9/b0;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v7, Ll9/b0;->g:Ll9/b0;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ll9/b0;->a()Ll9/b0;

    .line 144
    .line 145
    .line 146
    move-object v4, v7

    .line 147
    :cond_92
    iput-object v4, p0, Ll9/j;->d:Ll9/b0;

    .line 148
    .line 149
    iput-wide p1, p0, Ll9/j;->e:J

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object v0, v4, Ll9/b0;->a:[B

    .line 155
    .line 156
    iput-object v0, p0, Ll9/j;->f:[B

    .line 157
    .line 158
    iget v0, v4, Ll9/b0;->b:I

    .line 159
    .line 160
    sub-long/2addr p1, v5

    .line 161
    long-to-int p1, p1

    .line 162
    add-int/2addr v0, p1

    .line 163
    iput v0, p0, Ll9/j;->g:I

    .line 164
    .line 165
    iget p1, v4, Ll9/b0;->c:I

    .line 166
    .line 167
    iput p1, p0, Ll9/j;->h:I

    .line 168
    .line 169
    sub-int/2addr p1, v0

    .line 170
    return p1

    .line 171
    :cond_aa
    :goto_aa
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Ll9/j;->d:Ll9/b0;

    .line 173
    .line 174
    iput-wide p1, p0, Ll9/j;->e:J

    .line 175
    .line 176
    iput-object v0, p0, Ll9/j;->f:[B

    .line 177
    .line 178
    const/4 p1, -0x1

    .line 179
    iput p1, p0, Ll9/j;->g:I

    .line 180
    .line 181
    iput p1, p0, Ll9/j;->h:I

    .line 182
    .line 183
    return p1

    .line 184
    :cond_b7
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 185
    .line 186
    iget-wide v2, v0, Ll9/l;->c:J

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v4, "offset="

    .line 191
    .line 192
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p1, " > size="

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_d5
    const-string p1, "not attached to a buffer"

    .line 215
    .line 216
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/4 p1, 0x0

    .line 220
    return p1
.end method

.method public final close()V
    .registers 4

    .line 1
    iget-object v0, p0, Ll9/j;->b:Ll9/l;

    .line 2
    .line 3
    if-eqz v0, :cond_15

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ll9/j;->b:Ll9/l;

    .line 7
    .line 8
    iput-object v0, p0, Ll9/j;->d:Ll9/b0;

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    iput-wide v1, p0, Ll9/j;->e:J

    .line 13
    .line 14
    iput-object v0, p0, Ll9/j;->f:[B

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Ll9/j;->g:I

    .line 18
    .line 19
    iput v0, p0, Ll9/j;->h:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    const-string v0, "not attached to a buffer"

    .line 23
    .line 24
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
