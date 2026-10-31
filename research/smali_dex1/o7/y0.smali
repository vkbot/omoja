.class public abstract Lo7/y0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/util/Set;

.field public static final c:Ln7/q0;

.field public static final d:Ln7/q0;

.field public static final e:Ln7/t0;

.field public static final f:Ln7/q0;

.field public static final g:Ln7/t0;

.field public static final h:Ln7/q0;

.field public static final i:Ln7/q0;

.field public static final j:Ln7/q0;

.field public static final k:Ln7/q0;

.field public static final l:J

.field public static final m:Lo7/h3;

.field public static final n:La9/w;

.field public static final o:Lo7/w0;

.field public static final p:Lo7/u2;

.field public static final q:Lo7/u2;

.field public static final r:Lo7/u2;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const-class v0, Lo7/y0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/y0;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-object v0, Ln7/e1;->d:Ln7/e1;

    .line 14
    .line 15
    sget-object v1, Ln7/e1;->g:Ln7/e1;

    .line 16
    .line 17
    sget-object v2, Ln7/e1;->i:Ln7/e1;

    .line 18
    .line 19
    sget-object v3, Ln7/e1;->j:Ln7/e1;

    .line 20
    .line 21
    sget-object v4, Ln7/e1;->m:Ln7/e1;

    .line 22
    .line 23
    sget-object v5, Ln7/e1;->n:Ln7/e1;

    .line 24
    .line 25
    sget-object v6, Ln7/e1;->o:Ln7/e1;

    .line 26
    .line 27
    sget-object v7, Ln7/e1;->s:Ln7/e1;

    .line 28
    .line 29
    filled-new-array/range {v1 .. v7}, [Ln7/e1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lo7/y0;->b:Ljava/util/Set;

    .line 42
    .line 43
    const-string v0, "US-ASCII"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lo7/u2;

    .line 49
    .line 50
    const/16 v1, 0xe

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ln7/q0;

    .line 56
    .line 57
    const-string v2, "grpc-timeout"

    .line 58
    .line 59
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 60
    .line 61
    .line 62
    sput-object v1, Lo7/y0;->c:Ln7/q0;

    .line 63
    .line 64
    sget-object v0, Ln7/v0;->d:Ln7/h;

    .line 65
    .line 66
    new-instance v1, Ln7/q0;

    .line 67
    .line 68
    const-string v2, "grpc-encoding"

    .line 69
    .line 70
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 71
    .line 72
    .line 73
    sput-object v1, Lo7/y0;->d:Ln7/q0;

    .line 74
    .line 75
    new-instance v1, Lo7/u2;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    invoke-direct {v1, v2}, Lo7/u2;-><init>(I)V

    .line 80
    .line 81
    .line 82
    const-string v2, "grpc-accept-encoding"

    .line 83
    .line 84
    invoke-static {v2, v1}, Ln7/b0;->a(Ljava/lang/String;Lo7/u2;)Ln7/t0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sput-object v1, Lo7/y0;->e:Ln7/t0;

    .line 89
    .line 90
    new-instance v1, Ln7/q0;

    .line 91
    .line 92
    const-string v2, "content-encoding"

    .line 93
    .line 94
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 95
    .line 96
    .line 97
    sput-object v1, Lo7/y0;->f:Ln7/q0;

    .line 98
    .line 99
    new-instance v1, Lo7/u2;

    .line 100
    .line 101
    const/16 v2, 0xd

    .line 102
    .line 103
    invoke-direct {v1, v2}, Lo7/u2;-><init>(I)V

    .line 104
    .line 105
    .line 106
    const-string v2, "accept-encoding"

    .line 107
    .line 108
    invoke-static {v2, v1}, Ln7/b0;->a(Ljava/lang/String;Lo7/u2;)Ln7/t0;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sput-object v1, Lo7/y0;->g:Ln7/t0;

    .line 113
    .line 114
    new-instance v1, Ln7/q0;

    .line 115
    .line 116
    const-string v2, "content-length"

    .line 117
    .line 118
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 119
    .line 120
    .line 121
    sput-object v1, Lo7/y0;->h:Ln7/q0;

    .line 122
    .line 123
    new-instance v1, Ln7/q0;

    .line 124
    .line 125
    const-string v2, "content-type"

    .line 126
    .line 127
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 128
    .line 129
    .line 130
    sput-object v1, Lo7/y0;->i:Ln7/q0;

    .line 131
    .line 132
    new-instance v1, Ln7/q0;

    .line 133
    .line 134
    const-string v2, "te"

    .line 135
    .line 136
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 137
    .line 138
    .line 139
    sput-object v1, Lo7/y0;->j:Ln7/q0;

    .line 140
    .line 141
    new-instance v1, Ln7/q0;

    .line 142
    .line 143
    const-string v2, "user-agent"

    .line 144
    .line 145
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 146
    .line 147
    .line 148
    sput-object v1, Lo7/y0;->k:Ln7/q0;

    .line 149
    .line 150
    sget-object v0, Li4/a;->c:Li4/a;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const-wide v0, 0x4a817c800L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    sput-wide v0, Lo7/y0;->l:J

    .line 161
    .line 162
    new-instance v0, Lo7/h3;

    .line 163
    .line 164
    invoke-direct {v0}, Lo7/h3;-><init>()V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lo7/y0;->m:Lo7/h3;

    .line 168
    .line 169
    new-instance v0, La9/w;

    .line 170
    .line 171
    const/4 v1, 0x3

    .line 172
    const-string v2, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    .line 173
    .line 174
    invoke-direct {v0, v2, v1}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    sput-object v0, Lo7/y0;->n:La9/w;

    .line 178
    .line 179
    new-instance v0, Lo7/w0;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    sput-object v0, Lo7/y0;->o:Lo7/w0;

    .line 185
    .line 186
    new-instance v0, Lo7/u2;

    .line 187
    .line 188
    const/16 v1, 0xa

    .line 189
    .line 190
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 191
    .line 192
    .line 193
    sput-object v0, Lo7/y0;->p:Lo7/u2;

    .line 194
    .line 195
    new-instance v0, Lo7/u2;

    .line 196
    .line 197
    const/16 v1, 0xb

    .line 198
    .line 199
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Lo7/y0;->q:Lo7/u2;

    .line 203
    .line 204
    new-instance v0, Lo7/u2;

    .line 205
    .line 206
    const/16 v1, 0xc

    .line 207
    .line 208
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lo7/y0;->r:Lo7/u2;

    .line 212
    .line 213
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .registers 8

    .line 1
    const-string v0, "authority"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    new-instance v1, Ljava/net/URI;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_7} :catch_13

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v3, p0

    .line 13
    :try_start_c
    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_f} :catch_10

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :catch_10
    move-exception v0

    .line 18
    :goto_11
    move-object p0, v0

    .line 19
    goto :goto_16

    .line 20
    :catch_13
    move-exception v0

    .line 21
    move-object v3, p0

    .line 22
    goto :goto_11

    .line 23
    :goto_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Invalid authority: "

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public static b(Ljava/io/Closeable;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_4
    move-exception p0

    .line 6
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 7
    .line 8
    const-string v1, "exception caught in closeQuietly"

    .line 9
    .line 10
    sget-object v2, Lo7/y0;->a:Ljava/util/logging/Logger;

    .line 11
    .line 12
    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static c(Ln7/c;Ln7/v0;IZ)[Ln7/e;
    .registers 8

    .line 1
    iget-object v0, p0, Ln7/c;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    new-array v2, v2, [Ln7/e;

    .line 10
    .line 11
    sget-object v3, Ln7/c;->h:Ln7/c;

    .line 12
    .line 13
    new-instance v3, Lj4/b;

    .line 14
    .line 15
    invoke-direct {v3, p0, p2, p3}, Lj4/b;-><init>(Ln7/c;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-ge p0, p2, :cond_27

    .line 24
    .line 25
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ln7/g;

    .line 30
    .line 31
    invoke-virtual {p2, v3, p1}, Ln7/g;->a(Lj4/b;Ln7/v0;)Ln7/e;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    aput-object p2, v2, p0

    .line 36
    .line 37
    add-int/lit8 p0, p0, 0x1

    .line 38
    .line 39
    goto :goto_12

    .line 40
    :cond_27
    sget-object p0, Lo7/y0;->o:Lo7/w0;

    .line 41
    .line 42
    aput-object p0, v2, v1

    .line 43
    .line 44
    return-object v2
.end method

.method public static d(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    const-string v1, "getHostString"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_10

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_10
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lm4/p;
    .registers 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lm4/p;

    .line 29
    .line 30
    invoke-direct {v3, v1, p0, v2, v0}, Lm4/p;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;)V

    .line 31
    .line 32
    .line 33
    return-object v3
.end method

.method public static f(Ln7/f0;Z)Lo7/x;
    .registers 8

    .line 1
    iget-object v0, p0, Ln7/f0;->a:Ln7/t;

    .line 2
    .line 3
    iget-object v1, p0, Ln7/f0;->c:Ln7/f1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1d

    .line 7
    .line 8
    invoke-virtual {v0}, Ln7/t;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo7/k1;

    .line 13
    .line 14
    iget-object v3, v0, Lo7/k1;->v:Lo7/g1;

    .line 15
    .line 16
    if-eqz v3, :cond_12

    .line 17
    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    iget-object v3, v0, Lo7/k1;->k:Ln7/k1;

    .line 20
    .line 21
    new-instance v4, Lo7/f1;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v4, v0, v5}, Lo7/f1;-><init>(Lo7/k1;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    move-object v3, v2

    .line 31
    :goto_1e
    if-eqz v3, :cond_2b

    .line 32
    .line 33
    iget-object p0, p0, Ln7/f0;->b:Ln7/g;

    .line 34
    .line 35
    if-nez p0, :cond_25

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_25
    new-instance p1, Lo7/t0;

    .line 39
    .line 40
    invoke-direct {p1, p0, v3}, Lo7/t0;-><init>(Ln7/g;Lo7/n2;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ln7/f1;->f()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4f

    .line 49
    .line 50
    iget-boolean p0, p0, Ln7/f0;->d:Z

    .line 51
    .line 52
    if-eqz p0, :cond_41

    .line 53
    .line 54
    new-instance p0, Lo7/t0;

    .line 55
    .line 56
    invoke-static {v1}, Lo7/y0;->h(Ln7/f1;)Ln7/f1;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Lo7/v;->d:Lo7/v;

    .line 61
    .line 62
    invoke-direct {p0, p1, v0}, Lo7/t0;-><init>(Ln7/f1;Lo7/v;)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_41
    if-nez p1, :cond_4f

    .line 67
    .line 68
    new-instance p0, Lo7/t0;

    .line 69
    .line 70
    invoke-static {v1}, Lo7/y0;->h(Ln7/f1;)Ln7/f1;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v0, Lo7/v;->b:Lo7/v;

    .line 75
    .line 76
    invoke-direct {p0, p1, v0}, Lo7/t0;-><init>(Ln7/f1;Lo7/v;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_4f
    return-object v2
.end method

.method public static g(I)Ln7/f1;
    .registers 4

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-lt p0, v0, :cond_b

    .line 4
    .line 5
    const/16 v0, 0xc8

    .line 6
    .line 7
    if-ge p0, v0, :cond_b

    .line 8
    .line 9
    sget-object v0, Ln7/e1;->q:Ln7/e1;

    .line 10
    .line 11
    goto :goto_37

    .line 12
    :cond_b
    const/16 v0, 0x190

    .line 13
    .line 14
    if-eq p0, v0, :cond_35

    .line 15
    .line 16
    const/16 v0, 0x191

    .line 17
    .line 18
    if-eq p0, v0, :cond_32

    .line 19
    .line 20
    const/16 v0, 0x193

    .line 21
    .line 22
    if-eq p0, v0, :cond_2f

    .line 23
    .line 24
    const/16 v0, 0x194

    .line 25
    .line 26
    if-eq p0, v0, :cond_2c

    .line 27
    .line 28
    const/16 v0, 0x1ad

    .line 29
    .line 30
    if-eq p0, v0, :cond_29

    .line 31
    .line 32
    const/16 v0, 0x1af

    .line 33
    .line 34
    if-eq p0, v0, :cond_35

    .line 35
    .line 36
    packed-switch p0, :pswitch_data_4e

    .line 37
    .line 38
    .line 39
    sget-object v0, Ln7/e1;->f:Ln7/e1;

    .line 40
    .line 41
    goto :goto_37

    .line 42
    :cond_29
    :pswitch_29
    sget-object v0, Ln7/e1;->r:Ln7/e1;

    .line 43
    .line 44
    goto :goto_37

    .line 45
    :cond_2c
    sget-object v0, Ln7/e1;->p:Ln7/e1;

    .line 46
    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    sget-object v0, Ln7/e1;->k:Ln7/e1;

    .line 49
    .line 50
    goto :goto_37

    .line 51
    :cond_32
    sget-object v0, Ln7/e1;->t:Ln7/e1;

    .line 52
    .line 53
    goto :goto_37

    .line 54
    :cond_35
    sget-object v0, Ln7/e1;->q:Ln7/e1;

    .line 55
    .line 56
    :goto_37
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "HTTP status code "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_data_4e
    .packed-switch 0x1f6
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static h(Ln7/f1;)Ln7/f1;
    .registers 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-static {v0}, Lo4/b;->f(Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lo7/y0;->b:Ljava/util/Set;

    .line 10
    .line 11
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_38

    .line 18
    .line 19
    sget-object v0, Ln7/f1;->l:Ln7/f1;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Inappropriate status code from control plane: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Ln7/f1;->a:Ln7/e1;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object p0, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :cond_38
    return-object p0
.end method
