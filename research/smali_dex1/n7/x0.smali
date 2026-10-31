.class public final Ln7/x0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ln7/w0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lt7/b;

.field public final e:Lt7/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lt7/b;Lt7/b;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Ln7/w0;->b:Ln7/w0;

    .line 11
    .line 12
    iput-object v0, p0, Ln7/x0;->a:Ln7/w0;

    .line 13
    .line 14
    iput-object p1, p0, Ln7/x0;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0x2f

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-ne v0, v1, :cond_1a

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1f
    iput-object p1, p0, Ln7/x0;->c:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Ln7/x0;->d:Lt7/b;

    .line 35
    .line 36
    iput-object p3, p0, Ln7/x0;->e:Lt7/b;

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Ln7/x0;->f:Z

    .line 40
    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "fullServiceName"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "/"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "methodName"

    .line 20
    .line 21
    invoke-static {p1, p0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/io/InputStream;)Lcom/google/protobuf/a;
    .registers 9

    .line 1
    iget-object v0, p0, Ln7/x0;->e:Lt7/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Lt7/a;

    .line 7
    .line 8
    if-eqz v1, :cond_22

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lt7/a;

    .line 12
    .line 13
    iget-object v1, v1, Lt7/a;->c:Lcom/google/protobuf/x0;

    .line 14
    .line 15
    iget-object v2, v0, Lt7/b;->a:Lcom/google/protobuf/x0;

    .line 16
    .line 17
    if-ne v1, v2, :cond_22

    .line 18
    .line 19
    :try_start_12
    move-object v1, p1

    .line 20
    check-cast v1, Lt7/a;

    .line 21
    .line 22
    iget-object v1, v1, Lt7/a;->b:Ly5/g;

    .line 23
    .line 24
    if-eqz v1, :cond_1a

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "message not available"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_22} :catch_22

    .line 35
    :catch_22
    :cond_22
    :try_start_22
    instance-of v1, p1, Ln7/d0;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_90

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_8b

    .line 45
    .line 46
    const/high16 v3, 0x400000

    .line 47
    .line 48
    if-gt v1, v3, :cond_8b

    .line 49
    .line 50
    sget-object v3, Lt7/b;->d:Ljava/lang/ThreadLocal;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/ref/Reference;

    .line 57
    .line 58
    if-eqz v4, :cond_4a

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, [B

    .line 65
    .line 66
    if-eqz v4, :cond_4a

    .line 67
    .line 68
    array-length v5, v4

    .line 69
    if-ge v5, v1, :cond_54

    .line 70
    .line 71
    goto :goto_4a

    .line 72
    :catch_47
    move-exception p1

    .line 73
    goto/16 :goto_e2

    .line 74
    .line 75
    :cond_4a
    :goto_4a
    new-array v4, v1, [B

    .line 76
    .line 77
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_54
    move v3, v1

    .line 86
    :goto_55
    if-lez v3, :cond_63

    .line 87
    .line 88
    sub-int v5, v1, v3

    .line 89
    .line 90
    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/4 v6, -0x1

    .line 95
    if-ne v5, v6, :cond_61

    .line 96
    .line 97
    goto :goto_63

    .line 98
    :cond_61
    sub-int/2addr v3, v5

    .line 99
    goto :goto_55

    .line 100
    :cond_63
    :goto_63
    if-nez v3, :cond_6a

    .line 101
    .line 102
    invoke-static {v4, v2, v1, v2}, Lcom/google/protobuf/j;->d([BIIZ)Lcom/google/protobuf/h;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_91

    .line 107
    :cond_6a
    sub-int p1, v1, v3

    .line 108
    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "size inaccurate: "

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " != "

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_8b
    if-nez v1, :cond_90

    .line 141
    .line 142
    iget-object p1, v0, Lt7/b;->b:Lcom/google/protobuf/a;
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_8f} :catch_47

    .line 143
    .line 144
    goto :goto_c0

    .line 145
    :cond_90
    const/4 v1, 0x0

    .line 146
    :goto_91
    if-nez v1, :cond_98

    .line 147
    .line 148
    new-instance v1, Lcom/google/protobuf/i;

    .line 149
    .line 150
    invoke-direct {v1, p1}, Lcom/google/protobuf/i;-><init>(Ljava/io/InputStream;)V

    .line 151
    .line 152
    .line 153
    :cond_98
    iget p1, v0, Lt7/b;->c:I

    .line 154
    .line 155
    if-ltz p1, :cond_ac

    .line 156
    .line 157
    if-ltz p1, :cond_a1

    .line 158
    .line 159
    iput p1, v1, Lcom/google/protobuf/j;->b:I

    .line 160
    .line 161
    goto :goto_ac

    .line 162
    :cond_a1
    const-string v0, "Recursion limit cannot be negative: "

    .line 163
    .line 164
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_aa
    const/4 p1, 0x0

    .line 172
    return-object p1

    .line 173
    :cond_ac
    :goto_ac
    :try_start_ac
    iget-object p1, v0, Lt7/b;->a:Lcom/google/protobuf/x0;

    .line 174
    .line 175
    sget-object v0, Lt7/c;->a:Lcom/google/protobuf/p;

    .line 176
    .line 177
    check-cast p1, Lcom/google/protobuf/x;

    .line 178
    .line 179
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/x;->a(Lcom/google/protobuf/j;Lcom/google/protobuf/p;)Lcom/google/protobuf/y;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const/4 v0, 0x1

    .line 184
    invoke-static {p1, v0}, Lcom/google/protobuf/y;->h(Lcom/google/protobuf/y;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c1

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Lcom/google/protobuf/j;->a(I)V

    .line 191
    .line 192
    .line 193
    :goto_c0
    return-object p1

    .line 194
    :cond_c1
    new-instance p1, Lcom/google/protobuf/i1;

    .line 195
    .line 196
    invoke-direct {p1}, Lcom/google/protobuf/i1;-><init>()V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/google/protobuf/d0;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0
    :try_end_d0
    .catch Lcom/google/protobuf/d0; {:try_start_ac .. :try_end_d0} :catch_d0

    .line 209
    :catch_d0
    move-exception p1

    .line 210
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 211
    .line 212
    const-string v1, "Invalid protobuf byte sequence"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    throw p1

    .line 227
    :goto_e2
    invoke-static {p1}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    goto :goto_aa
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fullMethodName"

    .line 6
    .line 7
    iget-object v2, p0, Ln7/x0;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "type"

    .line 13
    .line 14
    iget-object v2, p0, Ln7/x0;->a:Ln7/w0;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "idempotent"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->d(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const-string v1, "safe"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->d(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string v1, "sampledToLocalTracing"

    .line 31
    .line 32
    iget-boolean v2, p0, Ln7/x0;->f:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->d(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v1, "requestMarshaller"

    .line 38
    .line 39
    iget-object v2, p0, Ln7/x0;->d:Lt7/b;

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "responseMarshaller"

    .line 45
    .line 46
    iget-object v2, p0, Ln7/x0;->e:Lt7/b;

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "schemaDescriptor"

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
