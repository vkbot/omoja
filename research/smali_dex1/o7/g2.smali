.class public final Lo7/g2;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final A:J

.field public static final B:J

.field public static final C:Ln/p;

.field public static final D:Ln7/q;

.field public static final E:Ln7/i;

.field public static final F:Ljava/lang/reflect/Method;

.field public static final z:Ljava/util/logging/Logger;


# instance fields
.field public final b:Ln/p;

.field public final c:Ln/p;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ln7/b1;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ln7/q;

.field public final j:Ln7/i;

.field public final k:J

.field public final l:I

.field public final m:I

.field public final n:J

.field public final o:J

.field public final p:Z

.field public final q:Ln7/x;

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Lp7/f;

.field public final y:Lp7/f;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "Unable to apply census stats"

    .line 2
    .line 3
    const-class v1, Lo7/g2;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 14
    .line 15
    const-wide/32 v1, 0x1b7740

    .line 16
    .line 17
    .line 18
    sput-wide v1, Lo7/g2;->A:J

    .line 19
    .line 20
    const-wide/16 v1, 0x3e8

    .line 21
    .line 22
    sput-wide v1, Lo7/g2;->B:J

    .line 23
    .line 24
    sget-object v1, Lo7/y0;->p:Lo7/u2;

    .line 25
    .line 26
    new-instance v2, Ln/p;

    .line 27
    .line 28
    const/4 v3, 0x5

    .line 29
    invoke-direct {v2, v3, v1}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lo7/g2;->C:Ln/p;

    .line 33
    .line 34
    sget-object v1, Ln7/q;->d:Ln7/q;

    .line 35
    .line 36
    sput-object v1, Lo7/g2;->D:Ln7/q;

    .line 37
    .line 38
    sget-object v1, Ln7/i;->b:Ln7/i;

    .line 39
    .line 40
    sput-object v1, Lo7/g2;->E:Ln7/i;

    .line 41
    .line 42
    :try_start_29
    const-string v1, "io.grpc.census.InternalCensusStatsAccessor"

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "getClientInterceptor"

    .line 49
    .line 50
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    filled-new-array {v3, v3, v3, v3}, [Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_3b} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_50

    .line 61
    :catch_3c
    move-exception v1

    .line 62
    goto :goto_40

    .line 63
    :catch_3e
    move-exception v1

    .line 64
    goto :goto_48

    .line 65
    :goto_40
    sget-object v2, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 66
    .line 67
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 68
    .line 69
    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4f

    .line 73
    :goto_48
    sget-object v2, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 74
    .line 75
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 76
    .line 77
    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_4f
    const/4 v0, 0x0

    .line 81
    :goto_50
    sput-object v0, Lo7/g2;->F:Ljava/lang/reflect/Method;

    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lp7/f;Lp7/f;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo7/g2;->C:Ln/p;

    .line 5
    .line 6
    iput-object v0, p0, Lo7/g2;->b:Ln/p;

    .line 7
    .line 8
    iput-object v0, p0, Lo7/g2;->c:Ln/p;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lo7/g2;->d:Ljava/util/ArrayList;

    .line 16
    .line 17
    sget-object v0, Ln7/b1;->d:Ljava/util/logging/Logger;

    .line 18
    .line 19
    const-class v0, Ln7/b1;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_15
    sget-object v1, Ln7/b1;->e:Ln7/b1;

    .line 23
    .line 24
    if-nez v1, :cond_9a

    .line 25
    .line 26
    const-class v1, Ln7/a1;

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_55

    .line 31
    .line 32
    .line 33
    :try_start_20
    const-class v3, Lo7/q0;

    .line 34
    .line 35
    sget-boolean v4, Lo7/q0;->a:Z

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_55

    .line 38
    .line 39
    .line 40
    goto :goto_32

    .line 41
    :catch_28
    move-exception v3

    .line 42
    :try_start_29
    sget-object v4, Ln7/b1;->d:Ljava/util/logging/Logger;

    .line 43
    .line 44
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 45
    .line 46
    const-string v6, "Unable to find DNS NameResolver"

    .line 47
    .line 48
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-class v3, Ln7/a1;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Ln7/h;

    .line 62
    .line 63
    const/16 v5, 0x9

    .line 64
    .line 65
    invoke-direct {v4, v5}, Ln7/h;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2, v3, v4}, Ln7/t;->h(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Ln7/h;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_58

    .line 77
    .line 78
    sget-object v2, Ln7/b1;->d:Ljava/util/logging/Logger;

    .line 79
    .line 80
    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_58

    .line 86
    :catchall_55
    move-exception p1

    .line 87
    goto/16 :goto_e4

    .line 88
    .line 89
    :cond_58
    :goto_58
    new-instance v2, Ln7/b1;

    .line 90
    .line 91
    invoke-direct {v2}, Ln7/b1;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v2, Ln7/b1;->e:Ln7/b1;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_95

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ln7/a1;

    .line 111
    .line 112
    sget-object v3, Ln7/b1;->d:Ljava/util/logging/Logger;

    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v5, "Service loader found "

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object v3, Ln7/b1;->e:Ln7/b1;

    .line 135
    .line 136
    monitor-enter v3
    :try_end_88
    .catchall {:try_start_29 .. :try_end_88} :catchall_55

    .line 137
    :try_start_88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object v4, v3, Ln7/b1;->b:Ljava/util/LinkedHashSet;

    .line 141
    .line 142
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_92

    .line 143
    .line 144
    .line 145
    :try_start_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_55

    .line 146
    goto :goto_63

    .line 147
    :catchall_92
    move-exception p1

    .line 148
    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    .line 149
    :try_start_94
    throw p1

    .line 150
    :cond_95
    sget-object v1, Ln7/b1;->e:Ln7/b1;

    .line 151
    .line 152
    invoke-virtual {v1}, Ln7/b1;->a()V

    .line 153
    .line 154
    .line 155
    :cond_9a
    sget-object v1, Ln7/b1;->e:Ln7/b1;
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_55

    .line 156
    .line 157
    monitor-exit v0

    .line 158
    iput-object v1, p0, Lo7/g2;->e:Ln7/b1;

    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lo7/g2;->f:Ljava/util/ArrayList;

    .line 166
    .line 167
    const-string v0, "pick_first"

    .line 168
    .line 169
    iput-object v0, p0, Lo7/g2;->h:Ljava/lang/String;

    .line 170
    .line 171
    sget-object v0, Lo7/g2;->D:Ln7/q;

    .line 172
    .line 173
    iput-object v0, p0, Lo7/g2;->i:Ln7/q;

    .line 174
    .line 175
    sget-object v0, Lo7/g2;->E:Ln7/i;

    .line 176
    .line 177
    iput-object v0, p0, Lo7/g2;->j:Ln7/i;

    .line 178
    .line 179
    sget-wide v0, Lo7/g2;->A:J

    .line 180
    .line 181
    iput-wide v0, p0, Lo7/g2;->k:J

    .line 182
    .line 183
    const/4 v0, 0x5

    .line 184
    iput v0, p0, Lo7/g2;->l:I

    .line 185
    .line 186
    iput v0, p0, Lo7/g2;->m:I

    .line 187
    .line 188
    const-wide/32 v0, 0x1000000

    .line 189
    .line 190
    .line 191
    iput-wide v0, p0, Lo7/g2;->n:J

    .line 192
    .line 193
    const-wide/32 v0, 0x100000

    .line 194
    .line 195
    .line 196
    iput-wide v0, p0, Lo7/g2;->o:J

    .line 197
    .line 198
    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lo7/g2;->p:Z

    .line 200
    .line 201
    sget-object v1, Ln7/x;->e:Ln7/x;

    .line 202
    .line 203
    iput-object v1, p0, Lo7/g2;->q:Ln7/x;

    .line 204
    .line 205
    iput-boolean v0, p0, Lo7/g2;->r:Z

    .line 206
    .line 207
    iput-boolean v0, p0, Lo7/g2;->s:Z

    .line 208
    .line 209
    iput-boolean v0, p0, Lo7/g2;->t:Z

    .line 210
    .line 211
    iput-boolean v0, p0, Lo7/g2;->u:Z

    .line 212
    .line 213
    iput-boolean v0, p0, Lo7/g2;->v:Z

    .line 214
    .line 215
    iput-boolean v0, p0, Lo7/g2;->w:Z

    .line 216
    .line 217
    const-string v0, "target"

    .line 218
    .line 219
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iput-object p1, p0, Lo7/g2;->g:Ljava/lang/String;

    .line 223
    .line 224
    iput-object p2, p0, Lo7/g2;->x:Lp7/f;

    .line 225
    .line 226
    iput-object p3, p0, Lo7/g2;->y:Lp7/f;

    .line 227
    .line 228
    return-void

    .line 229
    :goto_e4
    :try_start_e4
    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_55

    .line 230
    throw p1
.end method


# virtual methods
.method public final E()Ln7/m0;
    .registers 24

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    new-instance v8, Lo7/i2;

    .line 4
    .line 5
    new-instance v1, Lo7/f2;

    .line 6
    .line 7
    iget-object v0, v2, Lo7/g2;->x:Lp7/f;

    .line 8
    .line 9
    iget-object v0, v0, Lp7/f;->a:Lp7/h;

    .line 10
    .line 11
    iget-wide v3, v0, Lp7/h;->i:J

    .line 12
    .line 13
    const-wide v5, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v3, v3, v5

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_18

    .line 22
    .line 23
    move v15, v5

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v15, 0x0

    .line 26
    :goto_19
    new-instance v3, Lp7/g;

    .line 27
    .line 28
    iget-object v10, v0, Lp7/h;->d:Ln/p;

    .line 29
    .line 30
    iget-object v11, v0, Lp7/h;->e:Ln/p;

    .line 31
    .line 32
    iget v6, v0, Lp7/h;->h:I

    .line 33
    .line 34
    invoke-static {v6}, Lcom/bumptech/glide/g;->c(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v9, 0x0

    .line 39
    if-eqz v7, :cond_3a

    .line 40
    .line 41
    if-ne v7, v5, :cond_2c

    .line 42
    .line 43
    move-object v12, v9

    .line 44
    goto :goto_56

    .line 45
    :cond_2c
    invoke-static {v6}, Lkotlin/collections/unsigned/a;->h(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "Unknown negotiation type: "

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v9

    .line 59
    :cond_3a
    :try_start_3a
    iget-object v5, v0, Lp7/h;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 60
    .line 61
    if-nez v5, :cond_53

    .line 62
    .line 63
    const-string v5, "Default"

    .line 64
    .line 65
    sget-object v6, Lq7/k;->d:Lq7/k;

    .line 66
    .line 67
    iget-object v6, v6, Lq7/k;->a:Ljava/security/Provider;

    .line 68
    .line 69
    invoke-static {v5, v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iput-object v5, v0, Lp7/h;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 78
    .line 79
    goto :goto_53

    .line 80
    :catch_4f
    move-exception v0

    .line 81
    move-object v7, v9

    .line 82
    goto/16 :goto_12d

    .line 83
    .line 84
    :cond_53
    :goto_53
    iget-object v5, v0, Lp7/h;->f:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_55
    .catch Ljava/security/GeneralSecurityException; {:try_start_3a .. :try_end_55} :catch_4f

    .line 85
    .line 86
    move-object v12, v5

    .line 87
    :goto_56
    iget-object v13, v0, Lp7/h;->g:Lq7/c;

    .line 88
    .line 89
    iget v14, v0, Lp7/h;->l:I

    .line 90
    .line 91
    iget-wide v5, v0, Lp7/h;->i:J

    .line 92
    .line 93
    move-object/from16 v16, v10

    .line 94
    .line 95
    iget-wide v9, v0, Lp7/h;->j:J

    .line 96
    .line 97
    iget v7, v0, Lp7/h;->k:I

    .line 98
    .line 99
    iget v4, v0, Lp7/h;->m:I

    .line 100
    .line 101
    iget-object v0, v0, Lp7/h;->c:Lo7/u2;

    .line 102
    .line 103
    move-object/from16 v22, v0

    .line 104
    .line 105
    move/from16 v21, v4

    .line 106
    .line 107
    move/from16 v20, v7

    .line 108
    .line 109
    move-wide/from16 v18, v9

    .line 110
    .line 111
    move-object/from16 v10, v16

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    move-object v9, v3

    .line 115
    move-wide/from16 v16, v5

    .line 116
    .line 117
    invoke-direct/range {v9 .. v22}, Lp7/g;-><init>(Ln/p;Ln/p;Ljavax/net/ssl/SSLSocketFactory;Lq7/c;IZJJIILo7/u2;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lo7/u2;

    .line 121
    .line 122
    const/16 v0, 0x9

    .line 123
    .line 124
    invoke-direct {v4, v0}, Lo7/u2;-><init>(I)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Lo7/y0;->p:Lo7/u2;

    .line 128
    .line 129
    new-instance v5, Ln/p;

    .line 130
    .line 131
    const/4 v6, 0x5

    .line 132
    invoke-direct {v5, v6, v0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v6, Lo7/y0;->r:Lo7/u2;

    .line 136
    .line 137
    new-instance v9, Ljava/util/ArrayList;

    .line 138
    .line 139
    iget-object v0, v2, Lo7/g2;->d:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    .line 143
    .line 144
    const-class v0, Ln7/t;

    .line 145
    .line 146
    monitor-enter v0

    .line 147
    monitor-exit v0

    .line 148
    iget-boolean v0, v2, Lo7/g2;->s:Z

    .line 149
    .line 150
    if-eqz v0, :cond_d8

    .line 151
    .line 152
    sget-object v0, Lo7/g2;->F:Ljava/lang/reflect/Method;

    .line 153
    .line 154
    if-eqz v0, :cond_d1

    .line 155
    .line 156
    :try_start_9b
    iget-boolean v10, v2, Lo7/g2;->t:Z

    .line 157
    .line 158
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    iget-boolean v11, v2, Lo7/g2;->u:Z

    .line 163
    .line 164
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 169
    .line 170
    iget-boolean v13, v2, Lo7/g2;->v:Z

    .line 171
    .line 172
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v0, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lu7/g;
    :try_end_b9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9b .. :try_end_b9} :catch_bc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9b .. :try_end_b9} :catch_ba

    .line 185
    .line 186
    goto :goto_d2

    .line 187
    :catch_ba
    move-exception v0

    .line 188
    goto :goto_be

    .line 189
    :catch_bc
    move-exception v0

    .line 190
    goto :goto_c8

    .line 191
    :goto_be
    sget-object v10, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 192
    .line 193
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 194
    .line 195
    const-string v12, "Unable to apply census stats"

    .line 196
    .line 197
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_d1

    .line 201
    :goto_c8
    sget-object v10, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 202
    .line 203
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 204
    .line 205
    const-string v12, "Unable to apply census stats"

    .line 206
    .line 207
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :cond_d1
    :goto_d1
    move-object v0, v7

    .line 211
    :goto_d2
    if-eqz v0, :cond_d8

    .line 212
    .line 213
    const/4 v10, 0x0

    .line 214
    invoke-virtual {v9, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_d8
    iget-boolean v0, v2, Lo7/g2;->w:Z

    .line 218
    .line 219
    if-eqz v0, :cond_125

    .line 220
    .line 221
    :try_start_dc
    const-string v0, "io.grpc.census.InternalCensusTracingAccessor"

    .line 222
    .line 223
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const-string v10, "getClientInterceptor"

    .line 228
    .line 229
    invoke-virtual {v0, v10, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lu7/g;
    :try_end_ee
    .catch Ljava/lang/ClassNotFoundException; {:try_start_dc .. :try_end_ee} :catch_f5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_dc .. :try_end_ee} :catch_f3
    .catch Ljava/lang/IllegalAccessException; {:try_start_dc .. :try_end_ee} :catch_f1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_dc .. :try_end_ee} :catch_ef

    .line 238
    .line 239
    goto :goto_11f

    .line 240
    :catch_ef
    move-exception v0

    .line 241
    goto :goto_f7

    .line 242
    :catch_f1
    move-exception v0

    .line 243
    goto :goto_101

    .line 244
    :catch_f3
    move-exception v0

    .line 245
    goto :goto_10b

    .line 246
    :catch_f5
    move-exception v0

    .line 247
    goto :goto_115

    .line 248
    :goto_f7
    sget-object v10, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 249
    .line 250
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 251
    .line 252
    const-string v12, "Unable to apply census stats"

    .line 253
    .line 254
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    goto :goto_11e

    .line 258
    :goto_101
    sget-object v10, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 259
    .line 260
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 261
    .line 262
    const-string v12, "Unable to apply census stats"

    .line 263
    .line 264
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    goto :goto_11e

    .line 268
    :goto_10b
    sget-object v10, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 269
    .line 270
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 271
    .line 272
    const-string v12, "Unable to apply census stats"

    .line 273
    .line 274
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    goto :goto_11e

    .line 278
    :goto_115
    sget-object v10, Lo7/g2;->z:Ljava/util/logging/Logger;

    .line 279
    .line 280
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 281
    .line 282
    const-string v12, "Unable to apply census stats"

    .line 283
    .line 284
    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    :goto_11e
    move-object v0, v7

    .line 288
    :goto_11f
    if-eqz v0, :cond_125

    .line 289
    .line 290
    const/4 v10, 0x0

    .line 291
    invoke-virtual {v9, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_125
    move-object v7, v9

    .line 295
    invoke-direct/range {v1 .. v7}, Lo7/f2;-><init>(Lo7/g2;Lp7/g;Lo7/u2;Ln/p;Lo7/u2;Ljava/util/ArrayList;)V

    .line 296
    .line 297
    .line 298
    invoke-direct {v8, v1}, Lo7/i2;-><init>(Lo7/f2;)V

    .line 299
    .line 300
    .line 301
    return-object v8

    .line 302
    :goto_12d
    const-string v1, "TLS Provider failure"

    .line 303
    .line 304
    invoke-static {v1, v0}, Lai/onnxruntime/b;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    return-object v7
.end method
