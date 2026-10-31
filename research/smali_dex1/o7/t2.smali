.class public final Lo7/t2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v0;


# instance fields
.field public final a:Lo7/b;

.field public b:I

.field public c:Lp7/u;

.field public d:Ln7/h;

.field public final e:Lo7/s2;

.field public final f:Ljava/nio/ByteBuffer;

.field public final g:Lc5/e;

.field public final h:Lo7/t4;

.field public i:Z

.field public j:I

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Lo7/b;Lc5/e;Lo7/t4;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lo7/t2;->b:I

    .line 6
    .line 7
    sget-object v1, Ln7/h;->c:Ln7/h;

    .line 8
    .line 9
    iput-object v1, p0, Lo7/t2;->d:Ln7/h;

    .line 10
    .line 11
    new-instance v1, Lo7/s2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lo7/s2;-><init>(Lo7/t2;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lo7/t2;->e:Lo7/s2;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lo7/t2;->f:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    iput v0, p0, Lo7/t2;->k:I

    .line 26
    .line 27
    iput-object p1, p0, Lo7/t2;->a:Lo7/b;

    .line 28
    .line 29
    iput-object p2, p0, Lo7/t2;->g:Lc5/e;

    .line 30
    .line 31
    iput-object p3, p0, Lo7/t2;->h:Lo7/t4;

    .line 32
    .line 33
    return-void
.end method

.method public static g(Lt7/a;Ljava/io/OutputStream;)I
    .registers 10

    .line 1
    iget-object v0, p0, Lt7/a;->b:Ly5/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2b

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lt7/a;->b:Ly5/g;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sget-object v4, Lcom/google/protobuf/n;->b:Ljava/util/logging/Logger;

    .line 20
    .line 21
    const/16 v4, 0x1000

    .line 22
    .line 23
    if-le v3, v4, :cond_19

    .line 24
    .line 25
    move v3, v4

    .line 26
    :cond_19
    new-instance v4, Lcom/google/protobuf/m;

    .line 27
    .line 28
    invoke-direct {v4, p1, v3}, Lcom/google/protobuf/m;-><init>(Ljava/io/OutputStream;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v4}, Lcom/google/protobuf/y;->c(Lcom/google/protobuf/n;)V

    .line 32
    .line 33
    .line 34
    iget p1, v4, Lcom/google/protobuf/m;->f:I

    .line 35
    .line 36
    if-lez p1, :cond_28

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/google/protobuf/m;->G()V

    .line 39
    .line 40
    .line 41
    :cond_28
    iput-object v1, p0, Lt7/a;->b:Ly5/g;

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2b
    iget-object v0, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_4e

    .line 48
    .line 49
    sget-object v3, Lt7/c;->a:Lcom/google/protobuf/p;

    .line 50
    .line 51
    const-string v3, "outputStream cannot be null!"

    .line 52
    .line 53
    invoke-static {p1, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 v3, 0x2000

    .line 57
    .line 58
    new-array v3, v3, [B

    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    :goto_3d
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const/4 v7, -0x1

    .line 67
    if-ne v6, v7, :cond_48

    .line 68
    .line 69
    long-to-int p1, v4

    .line 70
    iput-object v1, p0, Lt7/a;->d:Ljava/io/ByteArrayInputStream;

    .line 71
    .line 72
    return p1

    .line 73
    :cond_48
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    .line 75
    .line 76
    int-to-long v6, v6

    .line 77
    add-long/2addr v4, v6

    .line 78
    goto :goto_3d

    .line 79
    :cond_4e
    return v2
.end method


# virtual methods
.method public final a(Ln7/h;)Lo7/v0;
    .registers 2

    .line 1
    iput-object p1, p0, Lo7/t2;->d:Ln7/h;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lt7/a;)V
    .registers 12

    .line 1
    const-string v1, "Failed to frame message"

    .line 2
    .line 3
    iget-boolean v0, p0, Lo7/t2;->i:Z

    .line 4
    .line 5
    if-nez v0, :cond_b4

    .line 6
    .line 7
    iget v0, p0, Lo7/t2;->j:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    add-int/2addr v0, v2

    .line 11
    iput v0, p0, Lo7/t2;->j:I

    .line 12
    .line 13
    iget v0, p0, Lo7/t2;->k:I

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    iput v0, p0, Lo7/t2;->k:I

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    iput-wide v3, p0, Lo7/t2;->l:J

    .line 21
    .line 22
    iget-object v3, p0, Lo7/t2;->h:Lo7/t4;

    .line 23
    .line 24
    iget-object v4, v3, Lo7/t4;->a:[Ln7/e;

    .line 25
    .line 26
    iget-object v5, v3, Lo7/t4;->a:[Ln7/e;

    .line 27
    .line 28
    array-length v6, v4

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, v7

    .line 31
    :goto_1e
    if-ge v8, v6, :cond_28

    .line 32
    .line 33
    aget-object v9, v4, v8

    .line 34
    .line 35
    invoke-virtual {v9, v0}, Ln7/e;->t(I)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v8, v8, 0x1

    .line 39
    .line 40
    goto :goto_1e

    .line 41
    :cond_28
    iget-object v0, p0, Lo7/t2;->d:Ln7/h;

    .line 42
    .line 43
    sget-object v4, Ln7/h;->c:Ln7/h;

    .line 44
    .line 45
    if-eq v0, v4, :cond_2f

    .line 46
    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v2, v7

    .line 49
    :goto_30
    :try_start_30
    invoke-virtual {p1}, Lt7/a;->available()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_47

    .line 54
    .line 55
    if-eqz v2, :cond_47

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lo7/t2;->e(Lt7/a;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_4b

    .line 62
    :catch_3d
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    goto :goto_95

    .line 65
    :catch_40
    move-exception v0

    .line 66
    move-object p1, v0

    .line 67
    goto/16 :goto_a4

    .line 68
    .line 69
    :catch_44
    move-exception v0

    .line 70
    move-object p1, v0

    .line 71
    goto :goto_a5

    .line 72
    :cond_47
    invoke-virtual {p0, p1, v0}, Lo7/t2;->h(Lt7/a;I)I

    .line 73
    .line 74
    .line 75
    move-result p1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4b} :catch_44
    .catch Ln7/h1; {:try_start_30 .. :try_end_4b} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_4b} :catch_3d

    .line 76
    :goto_4b
    const/4 v1, -0x1

    .line 77
    if-eq v0, v1, :cond_64

    .line 78
    .line 79
    if-ne p1, v0, :cond_51

    .line 80
    .line 81
    goto :goto_64

    .line 82
    :cond_51
    const-string v1, "Message length inaccurate "

    .line 83
    .line 84
    const-string v2, " != "

    .line 85
    .line 86
    invoke-static {p1, v1, v2, v0}, Lai/onnxruntime/a;->g(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :cond_64
    :goto_64
    int-to-long v0, p1

    .line 102
    array-length p1, v5

    .line 103
    move v2, v7

    .line 104
    :goto_67
    if-ge v2, p1, :cond_71

    .line 105
    .line 106
    aget-object v4, v5, v2

    .line 107
    .line 108
    invoke-virtual {v4, v0, v1}, Ln7/e;->v(J)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_67

    .line 114
    :cond_71
    iget-wide v8, p0, Lo7/t2;->l:J

    .line 115
    .line 116
    array-length p1, v5

    .line 117
    move v2, v7

    .line 118
    :goto_75
    if-ge v2, p1, :cond_7f

    .line 119
    .line 120
    aget-object v4, v5, v2

    .line 121
    .line 122
    invoke-virtual {v4, v8, v9}, Ln7/e;->w(J)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_75

    .line 128
    :cond_7f
    iget p1, p0, Lo7/t2;->k:I

    .line 129
    .line 130
    move-object v4, v3

    .line 131
    iget-wide v2, p0, Lo7/t2;->l:J

    .line 132
    .line 133
    iget-object v6, v4, Lo7/t4;->a:[Ln7/e;

    .line 134
    .line 135
    array-length v8, v6

    .line 136
    :goto_87
    if-ge v7, v8, :cond_94

    .line 137
    .line 138
    move-wide v4, v0

    .line 139
    aget-object v0, v6, v7

    .line 140
    .line 141
    move v1, p1

    .line 142
    invoke-virtual/range {v0 .. v5}, Ln7/e;->u(IJJ)V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    move-wide v0, v4

    .line 148
    goto :goto_87

    .line 149
    :cond_94
    return-void

    .line 150
    :goto_95
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    throw p1

    .line 165
    :goto_a4
    throw p1

    .line 166
    :goto_a5
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    throw p1

    .line 181
    :cond_b4
    const-string p1, "Framer already closed"

    .line 182
    .line 183
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final c(I)V
    .registers 4

    .line 1
    iget v0, p0, Lo7/t2;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const-string v1, "max size already set"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lo7/t2;->b:I

    .line 15
    .line 16
    return-void
.end method

.method public final close()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lo7/t2;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_20

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lo7/t2;->i:Z

    .line 7
    .line 8
    iget-object v1, p0, Lo7/t2;->c:Lp7/u;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_12

    .line 12
    .line 13
    iget v1, v1, Lp7/u;->c:I

    .line 14
    .line 15
    if-nez v1, :cond_12

    .line 16
    .line 17
    iput-object v2, p0, Lo7/t2;->c:Lp7/u;

    .line 18
    .line 19
    :cond_12
    iget-object v1, p0, Lo7/t2;->c:Lp7/u;

    .line 20
    .line 21
    iput-object v2, p0, Lo7/t2;->c:Lp7/u;

    .line 22
    .line 23
    iget-object v2, p0, Lo7/t2;->a:Lo7/b;

    .line 24
    .line 25
    iget v3, p0, Lo7/t2;->j:I

    .line 26
    .line 27
    invoke-virtual {v2, v1, v0, v0, v3}, Lo7/b;->b(Lp7/u;ZZI)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lo7/t2;->j:I

    .line 32
    .line 33
    :cond_20
    return-void
.end method

.method public final d(Lo7/r2;Z)V
    .registers 8

    .line 1
    iget-object p1, p1, Lo7/r2;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_9
    if-ge v3, v0, :cond_17

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    check-cast v4, Lp7/u;

    .line 19
    .line 20
    iget v4, v4, Lp7/u;->c:I

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    iget v0, p0, Lo7/t2;->b:I

    .line 25
    .line 26
    if-ltz v0, :cond_41

    .line 27
    .line 28
    if-gt v2, v0, :cond_1e

    .line 29
    .line 30
    goto :goto_41

    .line 31
    :cond_1e
    sget-object p1, Ln7/f1;->j:Ln7/f1;

    .line 32
    .line 33
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "message too large "

    .line 38
    .line 39
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " > "

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    throw p1

    .line 66
    :cond_41
    :goto_41
    iget-object v0, p0, Lo7/t2;->f:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lo7/t2;->g:Lc5/e;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const/4 p2, 0x5

    .line 84
    invoke-static {p2}, Lc5/e;->o(I)Lp7/u;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {p2, v3, v1, v0}, Lp7/u;->a([BII)V

    .line 97
    .line 98
    .line 99
    if-nez v2, :cond_67

    .line 100
    .line 101
    iput-object p2, p0, Lo7/t2;->c:Lp7/u;

    .line 102
    .line 103
    return-void

    .line 104
    :cond_67
    iget v0, p0, Lo7/t2;->j:I

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    sub-int/2addr v0, v3

    .line 108
    iget-object v4, p0, Lo7/t2;->a:Lo7/b;

    .line 109
    .line 110
    invoke-virtual {v4, p2, v1, v1, v0}, Lo7/b;->b(Lp7/u;ZZI)V

    .line 111
    .line 112
    .line 113
    iput v3, p0, Lo7/t2;->j:I

    .line 114
    .line 115
    move p2, v1

    .line 116
    :goto_73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    sub-int/2addr v0, v3

    .line 121
    if-ge p2, v0, :cond_86

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lp7/u;

    .line 128
    .line 129
    invoke-virtual {v4, v0, v1, v1, v1}, Lo7/b;->b(Lp7/u;ZZI)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 p2, p2, 0x1

    .line 133
    .line 134
    goto :goto_73

    .line 135
    :cond_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    sub-int/2addr p2, v3

    .line 140
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lp7/u;

    .line 145
    .line 146
    iput-object p1, p0, Lo7/t2;->c:Lp7/u;

    .line 147
    .line 148
    int-to-long p1, v2

    .line 149
    iput-wide p1, p0, Lo7/t2;->l:J

    .line 150
    .line 151
    return-void
.end method

.method public final e(Lt7/a;)I
    .registers 6

    .line 1
    new-instance v0, Lo7/r2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lo7/r2;-><init>(Lo7/t2;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo7/t2;->d:Ln7/h;

    .line 7
    .line 8
    iget v1, v1, Ln7/h;->b:I

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_4e

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    goto :goto_13

    .line 19
    :pswitch_12
    move-object v1, v0

    .line 20
    :goto_13
    :try_start_13
    invoke-static {p1, v1}, Lo7/t2;->g(Lt7/a;Ljava/io/OutputStream;)I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_49

    .line 24
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lo7/t2;->b:I

    .line 28
    .line 29
    if-ltz v1, :cond_44

    .line 30
    .line 31
    if-gt p1, v1, :cond_21

    .line 32
    .line 33
    goto :goto_44

    .line 34
    :cond_21
    sget-object v0, Ln7/f1;->j:Ln7/f1;

    .line 35
    .line 36
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "message too large "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " > "

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    throw p1

    .line 69
    :cond_44
    :goto_44
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, v0, v1}, Lo7/t2;->d(Lo7/r2;Z)V

    .line 71
    .line 72
    .line 73
    return p1

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public final f([BII)V
    .registers 8

    .line 1
    :goto_0
    if-lez p3, :cond_36

    .line 2
    .line 3
    iget-object v0, p0, Lo7/t2;->c:Lp7/u;

    .line 4
    .line 5
    if-eqz v0, :cond_17

    .line 6
    .line 7
    iget v1, v0, Lp7/u;->b:I

    .line 8
    .line 9
    if-nez v1, :cond_17

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lo7/t2;->c:Lp7/u;

    .line 13
    .line 14
    iget-object v1, p0, Lo7/t2;->a:Lo7/b;

    .line 15
    .line 16
    iget v2, p0, Lo7/t2;->j:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v0, v3, v3, v2}, Lo7/b;->b(Lp7/u;ZZI)V

    .line 20
    .line 21
    .line 22
    iput v3, p0, Lo7/t2;->j:I

    .line 23
    .line 24
    :cond_17
    iget-object v0, p0, Lo7/t2;->c:Lp7/u;

    .line 25
    .line 26
    if-nez v0, :cond_26

    .line 27
    .line 28
    iget-object v0, p0, Lo7/t2;->g:Lc5/e;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Lc5/e;->o(I)Lp7/u;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lo7/t2;->c:Lp7/u;

    .line 38
    .line 39
    :cond_26
    iget-object v0, p0, Lo7/t2;->c:Lp7/u;

    .line 40
    .line 41
    iget v0, v0, Lp7/u;->b:I

    .line 42
    .line 43
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lo7/t2;->c:Lp7/u;

    .line 48
    .line 49
    invoke-virtual {v1, p1, p2, v0}, Lp7/u;->a([BII)V

    .line 50
    .line 51
    .line 52
    add-int/2addr p2, v0

    .line 53
    sub-int/2addr p3, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_36
    return-void
.end method

.method public final flush()V
    .registers 6

    .line 1
    iget-object v0, p0, Lo7/t2;->c:Lp7/u;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    iget v1, v0, Lp7/u;->c:I

    .line 6
    .line 7
    if-lez v1, :cond_16

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lo7/t2;->c:Lp7/u;

    .line 11
    .line 12
    iget-object v1, p0, Lo7/t2;->a:Lo7/b;

    .line 13
    .line 14
    iget v2, p0, Lo7/t2;->j:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v1, v0, v3, v4, v2}, Lo7/b;->b(Lp7/u;ZZI)V

    .line 19
    .line 20
    .line 21
    iput v3, p0, Lo7/t2;->j:I

    .line 22
    .line 23
    :cond_16
    return-void
.end method

.method public final h(Lt7/a;I)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_63

    .line 4
    .line 5
    int-to-long v2, p2

    .line 6
    iput-wide v2, p0, Lo7/t2;->l:J

    .line 7
    .line 8
    iget v0, p0, Lo7/t2;->b:I

    .line 9
    .line 10
    if-ltz v0, :cond_31

    .line 11
    .line 12
    if-gt p2, v0, :cond_e

    .line 13
    .line 14
    goto :goto_31

    .line 15
    :cond_e
    sget-object p1, Ln7/f1;->j:Ln7/f1;

    .line 16
    .line 17
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "message too large "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, " > "

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_31
    :goto_31
    iget-object v0, p0, Lo7/t2;->f:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lo7/t2;->c:Lp7/u;

    .line 63
    .line 64
    if-nez v2, :cond_51

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/2addr v2, p2

    .line 71
    iget-object p2, p0, Lo7/t2;->g:Lc5/e;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lc5/e;->o(I)Lp7/u;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iput-object p2, p0, Lo7/t2;->c:Lp7/u;

    .line 81
    .line 82
    :cond_51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p0, p2, v1, v0}, Lo7/t2;->f([BII)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lo7/t2;->e:Lo7/s2;

    .line 94
    .line 95
    invoke-static {p1, p2}, Lo7/t2;->g(Lt7/a;Ljava/io/OutputStream;)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1

    .line 100
    :cond_63
    new-instance p2, Lo7/r2;

    .line 101
    .line 102
    invoke-direct {p2, p0}, Lo7/r2;-><init>(Lo7/t2;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lo7/t2;->g(Lt7/a;Ljava/io/OutputStream;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p2, v1}, Lo7/t2;->d(Lo7/r2;Z)V

    .line 110
    .line 111
    .line 112
    return p1
.end method

.method public final isClosed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lo7/t2;->i:Z

    .line 2
    .line 3
    return v0
.end method
