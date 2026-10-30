.class public final Lp7/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/c0;


# static fields
.field public static final P:Ljava/util/Map;

.field public static final Q:Ljava/util/logging/Logger;


# instance fields
.field public final A:Ljavax/net/SocketFactory;

.field public final B:Ljavax/net/ssl/SSLSocketFactory;

.field public C:I

.field public final D:Ljava/util/LinkedList;

.field public final E:Lq7/c;

.field public F:Lo7/p1;

.field public G:Z

.field public H:J

.field public I:J

.field public final J:Lcom/bumptech/glide/m;

.field public final K:I

.field public final L:Lo7/w4;

.field public final M:Lo7/e1;

.field public final N:Ln7/u;

.field public final O:I

.field public final a:Ljava/net/InetSocketAddress;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Random;

.field public final e:Lo7/u2;

.field public final f:I

.field public final g:Lr7/j;

.field public h:Lcom/bumptech/glide/manager/t;

.field public i:Lp7/d;

.field public j:Lb7/p;

.field public final k:Ljava/lang/Object;

.field public final l:Ln7/a0;

.field public m:I

.field public final n:Ljava/util/HashMap;

.field public final o:Ljava/util/concurrent/Executor;

.field public final p:Lo7/m4;

.field public final q:Ljava/util/concurrent/ScheduledExecutorService;

.field public final r:I

.field public s:I

.field public t:Lp7/m;

.field public u:Ln7/b;

.field public v:Ln7/f1;

.field public w:Z

.field public x:Lo7/d1;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lr7/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Ln7/f1;->l:Ln7/f1;

    .line 9
    .line 10
    const-string v2, "No error: A GRPC status of OK should have been sent"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lr7/a;->c:Lr7/a;

    .line 17
    .line 18
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v2, "Protocol error"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lr7/a;->d:Lr7/a;

    .line 28
    .line 29
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v2, "Internal error"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lr7/a;->e:Lr7/a;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v2, "Flow control error"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lr7/a;->f:Lr7/a;

    .line 50
    .line 51
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v2, "Stream closed"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Lr7/a;->g:Lr7/a;

    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v2, "Frame too large"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v3, Lr7/a;->h:Lr7/a;

    .line 72
    .line 73
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    sget-object v2, Ln7/f1;->m:Ln7/f1;

    .line 77
    .line 78
    const-string v3, "Refused stream"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    sget-object v3, Lr7/a;->i:Lr7/a;

    .line 85
    .line 86
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    sget-object v2, Ln7/f1;->f:Ln7/f1;

    .line 90
    .line 91
    const-string v3, "Cancelled"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v3, Lr7/a;->j:Lr7/a;

    .line 98
    .line 99
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v2, "Compression error"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    sget-object v3, Lr7/a;->k:Lr7/a;

    .line 109
    .line 110
    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v2, "Connect error"

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v2, Lr7/a;->l:Lr7/a;

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    sget-object v1, Ln7/f1;->j:Ln7/f1;

    .line 125
    .line 126
    const-string v2, "Enhance your calm"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v2, Lr7/a;->m:Lr7/a;

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    sget-object v1, Ln7/f1;->i:Ln7/f1;

    .line 138
    .line 139
    const-string v2, "Inadequate security"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sget-object v2, Lr7/a;->n:Lr7/a;

    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lp7/n;->P:Ljava/util/Map;

    .line 155
    .line 156
    const-class v0, Lp7/n;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sput-object v0, Lp7/n;->Q:Ljava/util/logging/Logger;

    .line 167
    .line 168
    return-void
.end method

.method public constructor <init>(Lp7/g;Ljava/net/InetSocketAddress;Ljava/lang/String;Ln7/b;Ln7/u;Lcom/bumptech/glide/m;)V
    .locals 5

    .line 1
    sget-object v0, Lo7/y0;->r:Lo7/u2;

    .line 2
    .line 3
    new-instance v1, Lr7/j;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/Random;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lp7/n;->d:Ljava/util/Random;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v3, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iput v3, p0, Lp7/n;->C:I

    .line 34
    .line 35
    new-instance v3, Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 41
    .line 42
    new-instance v3, Lo7/e1;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v3, p0, v4}, Lo7/e1;-><init>(Ln7/z;I)V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lp7/n;->M:Lo7/e1;

    .line 49
    .line 50
    const/16 v3, 0x7530

    .line 51
    .line 52
    iput v3, p0, Lp7/n;->O:I

    .line 53
    .line 54
    const-string v3, "address"

    .line 55
    .line 56
    invoke-static {p2, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lp7/n;->a:Ljava/net/InetSocketAddress;

    .line 60
    .line 61
    iput-object p3, p0, Lp7/n;->b:Ljava/lang/String;

    .line 62
    .line 63
    iget p3, p1, Lp7/g;->i:I

    .line 64
    .line 65
    iput p3, p0, Lp7/n;->r:I

    .line 66
    .line 67
    iget p3, p1, Lp7/g;->m:I

    .line 68
    .line 69
    iput p3, p0, Lp7/n;->f:I

    .line 70
    .line 71
    iget-object p3, p1, Lp7/g;->c:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    const-string v3, "executor"

    .line 74
    .line 75
    invoke-static {p3, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object p3, p0, Lp7/n;->o:Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    new-instance p3, Lo7/m4;

    .line 81
    .line 82
    iget-object v3, p1, Lp7/g;->c:Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    invoke-direct {p3, v3}, Lo7/m4;-><init>(Ljava/util/concurrent/Executor;)V

    .line 85
    .line 86
    .line 87
    iput-object p3, p0, Lp7/n;->p:Lo7/m4;

    .line 88
    .line 89
    iget-object p3, p1, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .line 91
    const-string v3, "scheduledExecutorService"

    .line 92
    .line 93
    invoke-static {p3, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iput-object p3, p0, Lp7/n;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 97
    .line 98
    const/4 p3, 0x3

    .line 99
    iput p3, p0, Lp7/n;->m:I

    .line 100
    .line 101
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    iput-object p3, p0, Lp7/n;->A:Ljavax/net/SocketFactory;

    .line 106
    .line 107
    iget-object p3, p1, Lp7/g;->g:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    .line 109
    iput-object p3, p0, Lp7/n;->B:Ljavax/net/ssl/SSLSocketFactory;

    .line 110
    .line 111
    iget-object p3, p1, Lp7/g;->h:Lq7/c;

    .line 112
    .line 113
    const-string v3, "connectionSpec"

    .line 114
    .line 115
    invoke-static {p3, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object p3, p0, Lp7/n;->E:Lq7/c;

    .line 119
    .line 120
    const-string p3, "stopwatchFactory"

    .line 121
    .line 122
    invoke-static {v0, p3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lp7/n;->e:Lo7/u2;

    .line 126
    .line 127
    iput-object v1, p0, Lp7/n;->g:Lr7/j;

    .line 128
    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v0, "grpc-java-okhttp/1.62.2"

    .line 135
    .line 136
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    iput-object p3, p0, Lp7/n;->c:Ljava/lang/String;

    .line 144
    .line 145
    iput-object p5, p0, Lp7/n;->N:Ln7/u;

    .line 146
    .line 147
    iput-object p6, p0, Lp7/n;->J:Lcom/bumptech/glide/m;

    .line 148
    .line 149
    iget p3, p1, Lp7/g;->n:I

    .line 150
    .line 151
    iput p3, p0, Lp7/n;->K:I

    .line 152
    .line 153
    iget-object p1, p1, Lp7/g;->f:Lo7/u2;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance p1, Lo7/w4;

    .line 159
    .line 160
    invoke-direct {p1}, Lo7/w4;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lp7/n;->L:Lo7/w4;

    .line 164
    .line 165
    const-class p1, Lp7/n;

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p1, p2}, Ln7/a0;->a(Ljava/lang/Class;Ljava/lang/String;)Ln7/a0;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lp7/n;->l:Ln7/a0;

    .line 176
    .line 177
    sget-object p1, Ln7/b;->b:Ln7/b;

    .line 178
    .line 179
    sget-object p2, Lo7/p4;->b:Ln7/a;

    .line 180
    .line 181
    new-instance p3, Ljava/util/IdentityHashMap;

    .line 182
    .line 183
    const/4 p5, 0x1

    .line 184
    invoke-direct {p3, p5}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p2, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget-object p1, p1, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_1

    .line 205
    .line 206
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    check-cast p2, Ljava/util/Map$Entry;

    .line 211
    .line 212
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    invoke-virtual {p3, p4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p4

    .line 220
    if-nez p4, :cond_0

    .line 221
    .line 222
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    check-cast p4, Ln7/a;

    .line 227
    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p3, p4, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_1
    new-instance p1, Ln7/b;

    .line 237
    .line 238
    invoke-direct {p1, p3}, Ln7/b;-><init>(Ljava/util/IdentityHashMap;)V

    .line 239
    .line 240
    .line 241
    iput-object p1, p0, Lp7/n;->u:Ln7/b;

    .line 242
    .line 243
    monitor-enter v2

    .line 244
    :try_start_0
    monitor-exit v2

    .line 245
    return-void

    .line 246
    :catchall_0
    move-exception p1

    .line 247
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    throw p1
.end method

.method public static e(Lp7/n;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lr7/a;->d:Lr7/a;

    .line 2
    .line 3
    invoke-static {v0}, Lp7/n;->v(Lr7/a;)Ln7/f1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, v0, p1}, Lp7/n;->r(ILr7/a;Ln7/f1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static f(Lp7/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 6

    .line 1
    const-string v0, "\r\n"

    .line 2
    .line 3
    const-string v1, "CONNECT "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 7
    .line 8
    .line 9
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object v4, p0, Lp7/n;->A:Ljavax/net/SocketFactory;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {v4, v3, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto/16 :goto_9

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {v4, v3, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 39
    .line 40
    .line 41
    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    :goto_0
    const/4 v3, 0x1

    .line 43
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 44
    .line 45
    .line 46
    iget v3, p0, Lp7/n;->O:I

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Ll9/b;->h(Ljava/net/Socket;)Ll9/g0;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {p2}, Ll9/b;->g(Ljava/net/Socket;)Ll9/e0;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Ll9/b;->a(Ll9/e0;)Ll9/z;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p0, p1, p3, p4}, Lp7/n;->g(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ll/d;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p1, p0, Ll/d;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Ln/p;

    .line 70
    .line 71
    iget-object p0, p0, Ll/d;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ls7/a;

    .line 74
    .line 75
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    .line 77
    iget-object p3, p0, Ls7/a;->a:Ljava/lang/String;

    .line 78
    .line 79
    iget p0, p0, Ls7/a;->b:I

    .line 80
    .line 81
    new-instance p4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, ":"

    .line 90
    .line 91
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p0, " HTTP/1.1"

    .line 98
    .line 99
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v4, p0}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v0}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 110
    .line 111
    .line 112
    iget-object p0, p1, Ln/p;->c:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, [Ljava/lang/String;

    .line 115
    .line 116
    iget-object p1, p1, Ln/p;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, [Ljava/lang/String;

    .line 119
    .line 120
    array-length p0, p0

    .line 121
    div-int/lit8 p0, p0, 0x2

    .line 122
    .line 123
    const/4 p3, 0x0

    .line 124
    move p4, p3

    .line 125
    :goto_1
    if-ge p4, p0, :cond_5

    .line 126
    .line 127
    mul-int/lit8 v1, p4, 0x2

    .line 128
    .line 129
    if-ltz v1, :cond_2

    .line 130
    .line 131
    array-length v5, p1

    .line 132
    if-lt v1, v5, :cond_1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_1
    aget-object v5, p1, v1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :goto_2
    move-object v2, p2

    .line 139
    goto/16 :goto_9

    .line 140
    .line 141
    :cond_2
    :goto_3
    move-object v5, v2

    .line 142
    :goto_4
    invoke-virtual {v4, v5}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 143
    .line 144
    .line 145
    const-string v5, ": "

    .line 146
    .line 147
    invoke-virtual {v4, v5}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    if-ltz v1, :cond_4

    .line 153
    .line 154
    array-length v5, p1

    .line 155
    if-lt v1, v5, :cond_3

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_3
    aget-object v1, p1, v1

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_4
    :goto_5
    move-object v1, v2

    .line 162
    :goto_6
    invoke-virtual {v4, v1}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 166
    .line 167
    .line 168
    add-int/lit8 p4, p4, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_1
    move-exception p0

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {v4, v0}, Ll9/z;->A(Ljava/lang/String;)Ll9/m;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Ll9/z;->flush()V

    .line 177
    .line 178
    .line 179
    invoke-static {v3}, Lp7/n;->o(Ll9/g0;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Lc7/l;->b(Ljava/lang/String;)Lc7/l;

    .line 184
    .line 185
    .line 186
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    iget p1, p0, Lc7/l;->b:I

    .line 188
    .line 189
    :goto_7
    :try_start_3
    invoke-static {v3}, Lp7/n;->o(Ll9/g0;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    const-string v0, ""

    .line 194
    .line 195
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p4

    .line 199
    if-nez p4, :cond_6

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_6
    const/16 p4, 0xc8

    .line 203
    .line 204
    if-lt p1, p4, :cond_7

    .line 205
    .line 206
    const/16 p4, 0x12c

    .line 207
    .line 208
    if-ge p1, p4, :cond_7

    .line 209
    .line 210
    invoke-virtual {p2, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 211
    .line 212
    .line 213
    return-object p2

    .line 214
    :cond_7
    new-instance p3, Ll9/l;

    .line 215
    .line 216
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 217
    .line 218
    .line 219
    :try_start_4
    invoke-virtual {p2}, Ljava/net/Socket;->shutdownOutput()V

    .line 220
    .line 221
    .line 222
    const-wide/16 v0, 0x400

    .line 223
    .line 224
    invoke-interface {v3, p3, v0, v1}, Ll9/g0;->read(Ll9/l;J)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 225
    .line 226
    .line 227
    goto :goto_8

    .line 228
    :catch_2
    move-exception p4

    .line 229
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v1, "Unable to read body: "

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p4

    .line 243
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p4

    .line 250
    invoke-virtual {p3, p4}, Ll9/l;->u0(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 251
    .line 252
    .line 253
    :goto_8
    :try_start_6
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 254
    .line 255
    .line 256
    :catch_3
    :try_start_7
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 257
    .line 258
    iget-object p0, p0, Lc7/l;->d:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p0, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {p3}, Ll9/l;->h0()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    new-instance p4, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v0, "Response returned from proxy was not successful (expected 2xx, got "

    .line 272
    .line 273
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string p1, " "

    .line 280
    .line 281
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p0, "). Response body:\n"

    .line 288
    .line 289
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    sget-object p1, Ln7/f1;->m:Ln7/f1;

    .line 300
    .line 301
    invoke-virtual {p1, p0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    new-instance p1, Ln7/g1;

    .line 306
    .line 307
    invoke-direct {p1, p0}, Ln7/g1;-><init>(Ln7/f1;)V

    .line 308
    .line 309
    .line 310
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 311
    :goto_9
    if-eqz v2, :cond_8

    .line 312
    .line 313
    invoke-static {v2}, Lo7/y0;->b(Ljava/io/Closeable;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    sget-object p1, Ln7/f1;->m:Ln7/f1;

    .line 317
    .line 318
    const-string p2, "Failed trying to connect with proxy"

    .line 319
    .line 320
    invoke-virtual {p1, p2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p1, p0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    new-instance p1, Ln7/g1;

    .line 329
    .line 330
    invoke-direct {p1, p0}, Ln7/g1;-><init>(Ln7/f1;)V

    .line 331
    .line 332
    .line 333
    throw p1
.end method

.method public static o(Ll9/g0;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ll9/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-interface {p0, v0, v1, v2}, Ll9/g0;->read(Ll9/l;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, -0x1

    .line 13
    .line 14
    cmp-long v3, v3, v5

    .line 15
    .line 16
    iget-wide v4, v0, Ll9/l;->c:J

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    sub-long/2addr v4, v1

    .line 21
    invoke-virtual {v0, v4, v5}, Ll9/l;->V(J)B

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const-wide v1, 0x7fffffffffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ll9/l;->p(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 40
    .line 41
    invoke-virtual {v0, v4, v5}, Ll9/l;->f(J)Ll9/o;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ll9/o;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "\\n not found: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public static v(Lr7/a;)Ln7/f1;
    .locals 3

    .line 1
    sget-object v0, Lp7/n;->P:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln7/f1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Ln7/f1;->g:Ln7/f1;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Unknown http2 error code: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p0, p0, Lr7/a;->b:I

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final a(Ln7/f1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp7/n;->v:Ln7/f1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lp7/n;->v:Ln7/f1;

    .line 13
    .line 14
    iget-object v1, p0, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/t;->k(Ln7/f1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lp7/n;->u()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public final b(Lo7/m2;)Ljava/lang/Runnable;
    .locals 7

    .line 1
    check-cast p1, Lcom/bumptech/glide/manager/t;

    .line 2
    .line 3
    iput-object p1, p0, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 4
    .line 5
    iget-boolean p1, p0, Lp7/n;->G:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lo7/p1;

    .line 10
    .line 11
    new-instance v1, Ln/p;

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-direct {v1, p1, p0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lp7/n;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    iget-wide v3, p0, Lp7/n;->H:J

    .line 20
    .line 21
    iget-wide v5, p0, Lp7/n;->I:J

    .line 22
    .line 23
    invoke-direct/range {v0 .. v6}, Lo7/p1;-><init>(Ln/p;Ljava/util/concurrent/ScheduledExecutorService;JJ)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lp7/n;->F:Lo7/p1;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    monitor-exit v0

    .line 30
    :cond_0
    iget-object p1, p0, Lp7/n;->p:Lo7/m4;

    .line 31
    .line 32
    new-instance v0, Lp7/c;

    .line 33
    .line 34
    invoke-direct {v0, p1, p0}, Lp7/c;-><init>(Lo7/m4;Lp7/n;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lp7/n;->g:Lr7/j;

    .line 38
    .line 39
    new-instance v1, Ll9/z;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ll9/z;-><init>(Ll9/e0;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance p1, Lr7/i;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lr7/i;-><init>(Ll9/z;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lp7/b;

    .line 53
    .line 54
    invoke-direct {v1, v0, p1}, Lp7/b;-><init>(Lp7/c;Lr7/i;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter p1

    .line 60
    :try_start_0
    new-instance v2, Lp7/d;

    .line 61
    .line 62
    invoke-direct {v2, p0, v1}, Lp7/d;-><init>(Lp7/n;Lp7/b;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lp7/n;->i:Lp7/d;

    .line 66
    .line 67
    new-instance v1, Lb7/p;

    .line 68
    .line 69
    invoke-direct {v1, p0, v2}, Lb7/p;-><init>(Lp7/n;Lp7/d;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lp7/n;->j:Lb7/p;

    .line 73
    .line 74
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lp7/n;->p:Lo7/m4;

    .line 82
    .line 83
    new-instance v2, Lc3/e;

    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    invoke-direct {v2, p0, p1, v0, v3}, Lc3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lo7/m4;->execute(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    :try_start_1
    invoke-virtual {p0}, Lp7/n;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lp7/n;->p:Lo7/m4;

    .line 99
    .line 100
    new-instance v0, Lcom/bumptech/glide/m;

    .line 101
    .line 102
    const/16 v1, 0x19

    .line 103
    .line 104
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lo7/m4;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    return-object p1

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    throw v0
.end method

.method public final c()Ln7/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/n;->l:Ln7/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;
    .locals 15

    .line 1
    move-object/from16 v2, p2

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    const-string v1, "method"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "headers"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lp7/n;->u:Ln7/b;

    .line 18
    .line 19
    new-instance v11, Lo7/t4;

    .line 20
    .line 21
    invoke-direct {v11, v0}, Lo7/t4;-><init>([Ln7/e;)V

    .line 22
    .line 23
    .line 24
    array-length v4, v0

    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_0
    if-ge v5, v4, :cond_0

    .line 27
    .line 28
    aget-object v6, v0, v5

    .line 29
    .line 30
    invoke-virtual {v6, v1, v2}, Ln7/e;->C(Ln7/b;Ln7/v0;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v14, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v14

    .line 39
    :try_start_0
    new-instance v0, Lp7/k;

    .line 40
    .line 41
    iget-object v3, p0, Lp7/n;->i:Lp7/d;

    .line 42
    .line 43
    iget-object v5, p0, Lp7/n;->j:Lb7/p;

    .line 44
    .line 45
    iget-object v6, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 46
    .line 47
    iget v7, p0, Lp7/n;->r:I

    .line 48
    .line 49
    iget v8, p0, Lp7/n;->f:I

    .line 50
    .line 51
    iget-object v9, p0, Lp7/n;->b:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v10, p0, Lp7/n;->c:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v12, p0, Lp7/n;->L:Lo7/w4;

    .line 56
    .line 57
    move-object v4, p0

    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    move-object/from16 v13, p3

    .line 61
    .line 62
    invoke-direct/range {v0 .. v13}, Lp7/k;-><init>(Ln7/x0;Ln7/v0;Lp7/d;Lp7/n;Lb7/p;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lo7/t4;Lo7/w4;Ln7/c;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v14

    .line 66
    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw v0
.end method

.method public final g(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ll/d;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Lq0/g;

    .line 6
    .line 7
    invoke-direct {v2}, Lq0/g;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    iput v3, v2, Lq0/g;->d:I

    .line 12
    .line 13
    const-string v4, "https"

    .line 14
    .line 15
    iput-object v4, v2, Lq0/g;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "host == null"

    .line 22
    .line 23
    if-eqz v4, :cond_31

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, v7

    .line 31
    :goto_0
    if-ge v8, v6, :cond_3

    .line 32
    .line 33
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/16 v10, 0x25

    .line 38
    .line 39
    if-eq v9, v10, :cond_0

    .line 40
    .line 41
    add-int/lit8 v8, v8, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v9, Ll9/l;

    .line 45
    .line 46
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9, v7, v8, v4}, Ll9/l;->t0(IILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    if-ge v8, v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-ne v11, v10, :cond_1

    .line 59
    .line 60
    add-int/lit8 v12, v8, 0x2

    .line 61
    .line 62
    if-ge v12, v6, :cond_1

    .line 63
    .line 64
    add-int/lit8 v13, v8, 0x1

    .line 65
    .line 66
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    invoke-static {v13}, Ls7/a;->a(C)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    invoke-static {v14}, Ls7/a;->a(C)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-eq v13, v3, :cond_1

    .line 83
    .line 84
    if-eq v14, v3, :cond_1

    .line 85
    .line 86
    shl-int/lit8 v8, v13, 0x4

    .line 87
    .line 88
    add-int/2addr v8, v14

    .line 89
    invoke-virtual {v9, v8}, Ll9/l;->m0(I)V

    .line 90
    .line 91
    .line 92
    move v8, v12

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {v9, v11}, Ll9/l;->v0(I)V

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    add-int/2addr v8, v11

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v9}, Ll9/l;->h0()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    :goto_3
    const-string v8, "["

    .line 113
    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    const-string v9, ":"

    .line 119
    .line 120
    if-eqz v8, :cond_27

    .line 121
    .line 122
    const-string v8, "]"

    .line 123
    .line 124
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_27

    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    const/4 v11, 0x1

    .line 135
    sub-int/2addr v8, v11

    .line 136
    const/16 v12, 0x10

    .line 137
    .line 138
    new-array v13, v12, [B

    .line 139
    .line 140
    move v10, v3

    .line 141
    move/from16 v16, v10

    .line 142
    .line 143
    move v15, v7

    .line 144
    move v14, v11

    .line 145
    :goto_4
    if-ge v14, v8, :cond_1a

    .line 146
    .line 147
    if-ne v15, v12, :cond_5

    .line 148
    .line 149
    :cond_4
    :goto_5
    move-object/from16 v18, v5

    .line 150
    .line 151
    move v3, v7

    .line 152
    :goto_6
    const/4 v5, 0x0

    .line 153
    goto/16 :goto_13

    .line 154
    .line 155
    :cond_5
    add-int/lit8 v11, v14, 0x2

    .line 156
    .line 157
    const/4 v12, 0x2

    .line 158
    if-gt v11, v8, :cond_8

    .line 159
    .line 160
    const-string v3, "::"

    .line 161
    .line 162
    invoke-virtual {v6, v14, v3, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_8

    .line 167
    .line 168
    const/4 v3, -0x1

    .line 169
    if-eq v10, v3, :cond_6

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_6
    add-int/lit8 v15, v15, 0x2

    .line 173
    .line 174
    move-object/from16 v18, v5

    .line 175
    .line 176
    if-ne v11, v8, :cond_7

    .line 177
    .line 178
    move v10, v15

    .line 179
    :goto_7
    const/16 v14, 0x10

    .line 180
    .line 181
    goto/16 :goto_11

    .line 182
    .line 183
    :cond_7
    move v14, v11

    .line 184
    move v10, v15

    .line 185
    :goto_8
    const/4 v3, 0x1

    .line 186
    goto/16 :goto_e

    .line 187
    .line 188
    :cond_8
    if-eqz v15, :cond_16

    .line 189
    .line 190
    const/4 v3, 0x1

    .line 191
    invoke-virtual {v6, v14, v9, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_9

    .line 196
    .line 197
    add-int/lit8 v14, v14, 0x1

    .line 198
    .line 199
    move-object/from16 v18, v5

    .line 200
    .line 201
    goto/16 :goto_e

    .line 202
    .line 203
    :cond_9
    const-string v11, "."

    .line 204
    .line 205
    invoke-virtual {v6, v14, v11, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_4

    .line 210
    .line 211
    add-int/lit8 v3, v15, -0x2

    .line 212
    .line 213
    move v12, v3

    .line 214
    move/from16 v11, v16

    .line 215
    .line 216
    :goto_9
    if-ge v11, v8, :cond_13

    .line 217
    .line 218
    const/16 v14, 0x10

    .line 219
    .line 220
    if-ne v12, v14, :cond_a

    .line 221
    .line 222
    :goto_a
    move-object/from16 v18, v5

    .line 223
    .line 224
    goto :goto_d

    .line 225
    :cond_a
    if-eq v12, v3, :cond_c

    .line 226
    .line 227
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    const/16 v7, 0x2e

    .line 232
    .line 233
    if-eq v14, v7, :cond_b

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 237
    .line 238
    :cond_c
    move v7, v11

    .line 239
    const/4 v14, 0x0

    .line 240
    :goto_b
    move/from16 v17, v3

    .line 241
    .line 242
    if-ge v7, v8, :cond_10

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    move-object/from16 v18, v5

    .line 249
    .line 250
    const/16 v5, 0x30

    .line 251
    .line 252
    if-lt v3, v5, :cond_11

    .line 253
    .line 254
    move/from16 v19, v5

    .line 255
    .line 256
    const/16 v5, 0x39

    .line 257
    .line 258
    if-le v3, v5, :cond_d

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_d
    if-nez v14, :cond_e

    .line 262
    .line 263
    if-eq v11, v7, :cond_e

    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_e
    mul-int/lit8 v14, v14, 0xa

    .line 267
    .line 268
    add-int/2addr v14, v3

    .line 269
    add-int/lit8 v14, v14, -0x30

    .line 270
    .line 271
    const/16 v3, 0xff

    .line 272
    .line 273
    if-le v14, v3, :cond_f

    .line 274
    .line 275
    goto :goto_d

    .line 276
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 277
    .line 278
    move/from16 v3, v17

    .line 279
    .line 280
    move-object/from16 v5, v18

    .line 281
    .line 282
    goto :goto_b

    .line 283
    :cond_10
    move-object/from16 v18, v5

    .line 284
    .line 285
    :cond_11
    :goto_c
    sub-int v3, v7, v11

    .line 286
    .line 287
    if-nez v3, :cond_12

    .line 288
    .line 289
    goto :goto_d

    .line 290
    :cond_12
    add-int/lit8 v3, v12, 0x1

    .line 291
    .line 292
    int-to-byte v5, v14

    .line 293
    aput-byte v5, v13, v12

    .line 294
    .line 295
    move v12, v3

    .line 296
    move v11, v7

    .line 297
    move/from16 v3, v17

    .line 298
    .line 299
    move-object/from16 v5, v18

    .line 300
    .line 301
    const/4 v7, 0x0

    .line 302
    goto :goto_9

    .line 303
    :cond_13
    move-object/from16 v18, v5

    .line 304
    .line 305
    add-int/lit8 v3, v15, 0x2

    .line 306
    .line 307
    if-eq v12, v3, :cond_15

    .line 308
    .line 309
    :cond_14
    :goto_d
    const/4 v3, 0x0

    .line 310
    goto/16 :goto_6

    .line 311
    .line 312
    :cond_15
    add-int/lit8 v15, v15, 0x2

    .line 313
    .line 314
    goto/16 :goto_7

    .line 315
    .line 316
    :cond_16
    move-object/from16 v18, v5

    .line 317
    .line 318
    goto/16 :goto_8

    .line 319
    .line 320
    :goto_e
    move v5, v14

    .line 321
    const/4 v7, 0x0

    .line 322
    :goto_f
    if-ge v5, v8, :cond_18

    .line 323
    .line 324
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    invoke-static {v11}, Ls7/a;->a(C)I

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    const/4 v3, -0x1

    .line 333
    if-ne v11, v3, :cond_17

    .line 334
    .line 335
    goto :goto_10

    .line 336
    :cond_17
    shl-int/lit8 v3, v7, 0x4

    .line 337
    .line 338
    add-int v7, v3, v11

    .line 339
    .line 340
    add-int/lit8 v5, v5, 0x1

    .line 341
    .line 342
    const/4 v3, 0x1

    .line 343
    goto :goto_f

    .line 344
    :cond_18
    :goto_10
    sub-int v3, v5, v14

    .line 345
    .line 346
    if-eqz v3, :cond_14

    .line 347
    .line 348
    const/4 v11, 0x4

    .line 349
    if-le v3, v11, :cond_19

    .line 350
    .line 351
    goto :goto_d

    .line 352
    :cond_19
    add-int/lit8 v3, v15, 0x1

    .line 353
    .line 354
    ushr-int/lit8 v11, v7, 0x8

    .line 355
    .line 356
    move/from16 v19, v12

    .line 357
    .line 358
    const/16 v12, 0xff

    .line 359
    .line 360
    and-int/2addr v11, v12

    .line 361
    int-to-byte v11, v11

    .line 362
    aput-byte v11, v13, v15

    .line 363
    .line 364
    add-int/lit8 v15, v15, 0x2

    .line 365
    .line 366
    and-int/lit16 v7, v7, 0xff

    .line 367
    .line 368
    int-to-byte v7, v7

    .line 369
    aput-byte v7, v13, v3

    .line 370
    .line 371
    move/from16 v16, v14

    .line 372
    .line 373
    const/4 v3, -0x1

    .line 374
    const/4 v7, 0x0

    .line 375
    const/16 v12, 0x10

    .line 376
    .line 377
    move v14, v5

    .line 378
    move-object/from16 v5, v18

    .line 379
    .line 380
    goto/16 :goto_4

    .line 381
    .line 382
    :cond_1a
    move-object/from16 v18, v5

    .line 383
    .line 384
    move v14, v12

    .line 385
    :goto_11
    if-eq v15, v14, :cond_1c

    .line 386
    .line 387
    const/4 v3, -0x1

    .line 388
    if-ne v10, v3, :cond_1b

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_1b
    sub-int v3, v15, v10

    .line 392
    .line 393
    rsub-int/lit8 v5, v3, 0x10

    .line 394
    .line 395
    invoke-static {v13, v10, v13, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    .line 397
    .line 398
    rsub-int/lit8 v12, v15, 0x10

    .line 399
    .line 400
    add-int/2addr v12, v10

    .line 401
    const/4 v3, 0x0

    .line 402
    invoke-static {v13, v10, v12, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 403
    .line 404
    .line 405
    goto :goto_12

    .line 406
    :cond_1c
    const/4 v3, 0x0

    .line 407
    :goto_12
    :try_start_0
    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 408
    .line 409
    .line 410
    move-result-object v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
    :goto_13
    if-nez v5, :cond_1e

    .line 412
    .line 413
    :catch_0
    :cond_1d
    :goto_14
    const/4 v10, 0x0

    .line 414
    goto/16 :goto_19

    .line 415
    .line 416
    :cond_1e
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    array-length v6, v5

    .line 421
    const/16 v14, 0x10

    .line 422
    .line 423
    if-ne v6, v14, :cond_26

    .line 424
    .line 425
    move v7, v3

    .line 426
    move v8, v7

    .line 427
    const/4 v6, -0x1

    .line 428
    :goto_15
    array-length v10, v5

    .line 429
    if-ge v7, v10, :cond_21

    .line 430
    .line 431
    move v10, v7

    .line 432
    :goto_16
    if-ge v10, v14, :cond_1f

    .line 433
    .line 434
    aget-byte v11, v5, v10

    .line 435
    .line 436
    if-nez v11, :cond_1f

    .line 437
    .line 438
    add-int/lit8 v11, v10, 0x1

    .line 439
    .line 440
    aget-byte v11, v5, v11

    .line 441
    .line 442
    if-nez v11, :cond_1f

    .line 443
    .line 444
    add-int/lit8 v10, v10, 0x2

    .line 445
    .line 446
    const/16 v14, 0x10

    .line 447
    .line 448
    goto :goto_16

    .line 449
    :cond_1f
    sub-int v11, v10, v7

    .line 450
    .line 451
    if-le v11, v8, :cond_20

    .line 452
    .line 453
    move v6, v7

    .line 454
    move v8, v11

    .line 455
    :cond_20
    add-int/lit8 v7, v10, 0x2

    .line 456
    .line 457
    const/16 v14, 0x10

    .line 458
    .line 459
    goto :goto_15

    .line 460
    :cond_21
    new-instance v7, Ll9/l;

    .line 461
    .line 462
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 463
    .line 464
    .line 465
    :cond_22
    :goto_17
    array-length v10, v5

    .line 466
    if-ge v3, v10, :cond_25

    .line 467
    .line 468
    const/16 v10, 0x3a

    .line 469
    .line 470
    if-ne v3, v6, :cond_23

    .line 471
    .line 472
    invoke-virtual {v7, v10}, Ll9/l;->m0(I)V

    .line 473
    .line 474
    .line 475
    add-int/2addr v3, v8

    .line 476
    const/16 v14, 0x10

    .line 477
    .line 478
    if-ne v3, v14, :cond_22

    .line 479
    .line 480
    invoke-virtual {v7, v10}, Ll9/l;->m0(I)V

    .line 481
    .line 482
    .line 483
    goto :goto_17

    .line 484
    :cond_23
    const/16 v14, 0x10

    .line 485
    .line 486
    if-lez v3, :cond_24

    .line 487
    .line 488
    invoke-virtual {v7, v10}, Ll9/l;->m0(I)V

    .line 489
    .line 490
    .line 491
    :cond_24
    aget-byte v10, v5, v3

    .line 492
    .line 493
    const/16 v12, 0xff

    .line 494
    .line 495
    and-int/2addr v10, v12

    .line 496
    shl-int/lit8 v10, v10, 0x8

    .line 497
    .line 498
    add-int/lit8 v11, v3, 0x1

    .line 499
    .line 500
    aget-byte v11, v5, v11

    .line 501
    .line 502
    and-int/2addr v11, v12

    .line 503
    or-int/2addr v10, v11

    .line 504
    int-to-long v10, v10

    .line 505
    invoke-virtual {v7, v10, v11}, Ll9/l;->o0(J)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v3, v3, 0x2

    .line 509
    .line 510
    goto :goto_17

    .line 511
    :cond_25
    invoke-virtual {v7}, Ll9/l;->h0()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    goto :goto_19

    .line 516
    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    .line 517
    .line 518
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 519
    .line 520
    .line 521
    throw v0

    .line 522
    :catch_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 523
    .line 524
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 525
    .line 526
    .line 527
    throw v0

    .line 528
    :cond_27
    move-object/from16 v18, v5

    .line 529
    .line 530
    move v3, v7

    .line 531
    :try_start_1
    invoke-static {v6}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 536
    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    if-eqz v6, :cond_28

    .line 546
    .line 547
    goto/16 :goto_14

    .line 548
    .line 549
    :cond_28
    move v7, v3

    .line 550
    :goto_18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    if-ge v7, v3, :cond_2b

    .line 555
    .line 556
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    const/16 v6, 0x1f

    .line 561
    .line 562
    if-le v3, v6, :cond_1d

    .line 563
    .line 564
    const/16 v6, 0x7f

    .line 565
    .line 566
    if-lt v3, v6, :cond_29

    .line 567
    .line 568
    goto/16 :goto_14

    .line 569
    .line 570
    :cond_29
    const-string v6, " #%/:?@[\\]"

    .line 571
    .line 572
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    .line 573
    .line 574
    .line 575
    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    const/4 v6, -0x1

    .line 577
    if-eq v3, v6, :cond_2a

    .line 578
    .line 579
    goto/16 :goto_14

    .line 580
    .line 581
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 582
    .line 583
    goto :goto_18

    .line 584
    :cond_2b
    move-object v10, v5

    .line 585
    :goto_19
    if-eqz v10, :cond_30

    .line 586
    .line 587
    iput-object v10, v2, Lq0/g;->c:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    if-lez v3, :cond_2f

    .line 594
    .line 595
    const v4, 0xffff

    .line 596
    .line 597
    .line 598
    if-gt v3, v4, :cond_2f

    .line 599
    .line 600
    iput v3, v2, Lq0/g;->d:I

    .line 601
    .line 602
    iget-object v3, v2, Lq0/g;->c:Ljava/lang/String;

    .line 603
    .line 604
    if-eqz v3, :cond_2e

    .line 605
    .line 606
    new-instance v3, Ls7/a;

    .line 607
    .line 608
    invoke-direct {v3, v2}, Ls7/a;-><init>(Lq0/g;)V

    .line 609
    .line 610
    .line 611
    new-instance v2, Ll/d;

    .line 612
    .line 613
    const/16 v4, 0xf

    .line 614
    .line 615
    invoke-direct {v2, v4}, Ll/d;-><init>(I)V

    .line 616
    .line 617
    .line 618
    new-instance v4, Li7/i;

    .line 619
    .line 620
    const/4 v5, 0x2

    .line 621
    invoke-direct {v4, v5}, Li7/i;-><init>(I)V

    .line 622
    .line 623
    .line 624
    iput-object v4, v2, Ll/d;->d:Ljava/lang/Object;

    .line 625
    .line 626
    iput-object v3, v2, Ll/d;->c:Ljava/lang/Object;

    .line 627
    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    iget-object v5, v3, Ls7/a;->a:Ljava/lang/String;

    .line 634
    .line 635
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    iget v3, v3, Ls7/a;->b:I

    .line 642
    .line 643
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    const-string v4, "Host"

    .line 651
    .line 652
    invoke-virtual {v2, v4, v3}, Ll/d;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    const-string v3, "User-Agent"

    .line 656
    .line 657
    move-object/from16 v5, p0

    .line 658
    .line 659
    iget-object v4, v5, Lp7/n;->c:Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {v2, v3, v4}, Ll/d;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    if-eqz v0, :cond_2c

    .line 665
    .line 666
    if-eqz v1, :cond_2c

    .line 667
    .line 668
    const-string v3, "Basic "

    .line 669
    .line 670
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    const-string v1, "ISO-8859-1"

    .line 689
    .line 690
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-static {v0}, Ll9/o;->g([B)Ll9/o;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {v0}, Ll9/o;->a()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 714
    const-string v1, "Proxy-Authorization"

    .line 715
    .line 716
    invoke-virtual {v2, v1, v0}, Ll/d;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    goto :goto_1a

    .line 720
    :catch_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 721
    .line 722
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 723
    .line 724
    .line 725
    throw v0

    .line 726
    :cond_2c
    :goto_1a
    iget-object v0, v2, Ll/d;->c:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v0, Ls7/a;

    .line 729
    .line 730
    if-eqz v0, :cond_2d

    .line 731
    .line 732
    new-instance v0, Ll/d;

    .line 733
    .line 734
    invoke-direct {v0, v2}, Ll/d;-><init>(Ll/d;)V

    .line 735
    .line 736
    .line 737
    return-object v0

    .line 738
    :cond_2d
    const-string v0, "url == null"

    .line 739
    .line 740
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    const/4 v0, 0x0

    .line 744
    return-object v0

    .line 745
    :cond_2e
    move-object/from16 v5, p0

    .line 746
    .line 747
    invoke-static/range {v18 .. v18}, Lj1/i;->l(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    const/4 v0, 0x0

    .line 751
    return-object v0

    .line 752
    :cond_2f
    move-object/from16 v5, p0

    .line 753
    .line 754
    const-string v0, "unexpected port: "

    .line 755
    .line 756
    invoke-static {v3, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    const/4 v0, 0x0

    .line 764
    return-object v0

    .line 765
    :cond_30
    move-object/from16 v5, p0

    .line 766
    .line 767
    const-string v0, "unexpected host: "

    .line 768
    .line 769
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    const/4 v0, 0x0

    .line 777
    return-object v0

    .line 778
    :cond_31
    move-object/from16 v18, v5

    .line 779
    .line 780
    move-object/from16 v5, p0

    .line 781
    .line 782
    invoke-static/range {v18 .. v18}, Lj1/i;->k(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    const/4 v0, 0x0

    .line 786
    return-object v0
.end method

.method public final getAttributes()Ln7/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/n;->u:Ln7/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(ILn7/f1;Lo7/v;ZLr7/a;Ln7/v0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lp7/k;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    if-eqz p5, :cond_0

    .line 19
    .line 20
    iget-object p5, p0, Lp7/n;->i:Lp7/d;

    .line 21
    .line 22
    sget-object v2, Lr7/a;->j:Lr7/a;

    .line 23
    .line 24
    invoke-virtual {p5, p1, v2}, Lp7/d;->S(ILr7/a;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p1, v1, Lp7/k;->m:Lp7/j;

    .line 33
    .line 34
    if-eqz p6, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance p6, Ln7/v0;

    .line 38
    .line 39
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1, p2, p3, p4, p6}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Lp7/n;->s()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lp7/n;->u()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lp7/n;->m(Lp7/k;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p1
.end method

.method public final i()[Lp7/v;
    .locals 7

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Lp7/v;

    .line 11
    .line 12
    iget-object v2, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lp7/k;

    .line 34
    .line 35
    add-int/lit8 v5, v3, 0x1

    .line 36
    .line 37
    iget-object v4, v4, Lp7/k;->m:Lp7/j;

    .line 38
    .line 39
    iget-object v6, v4, Lp7/j;->w:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v4, v4, Lp7/j;->J:Lp7/v;

    .line 43
    .line 44
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    aput-object v4, v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    move v3, v5

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :try_start_4
    throw v1

    .line 54
    :cond_0
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    throw v1
.end method

.method public final j()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp7/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lo7/y0;->a(Ljava/lang/String;)Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lp7/n;->a:Ljava/net/InetSocketAddress;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public final k()Ln7/g1;
    .locals 3

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp7/n;->v:Ln7/f1;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Ln7/g1;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ln7/g1;-><init>(Ln7/f1;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v2

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 18
    .line 19
    const-string v2, "Connection closed"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ln7/g1;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Ln7/g1;-><init>(Ln7/f1;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method public final l(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp7/n;->m:I

    .line 5
    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr p1, v1

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public final m(Lp7/k;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp7/n;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iput-boolean v1, p0, Lp7/n;->z:Z

    .line 23
    .line 24
    iget-object v0, p0, Lp7/n;->F:Lo7/p1;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget v2, v0, Lo7/p1;->d:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    :cond_0
    const/4 v2, 0x1

    .line 38
    iput v2, v0, Lo7/p1;->d:I

    .line 39
    .line 40
    :cond_1
    iget v2, v0, Lo7/p1;->d:I

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x5

    .line 46
    iput v2, v0, Lo7/p1;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    monitor-exit v0

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1

    .line 55
    :cond_3
    :goto_2
    iget-boolean v0, p1, Lo7/b;->d:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lp7/n;->M:Lo7/e1;

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public final n(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-object v0, Ln7/f1;->m:Ln7/f1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    sget-object v1, Lr7/a;->e:Lr7/a;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, p1}, Lp7/n;->r(ILr7/a;Ln7/f1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp7/n;->i:Lp7/d;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    iget-object v2, v1, Lp7/d;->c:Lp7/b;

    .line 10
    .line 11
    invoke-virtual {v2}, Lp7/b;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v2

    .line 16
    :try_start_2
    iget-object v1, v1, Lp7/d;->b:Lp7/n;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    new-instance v1, Lj/i;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-direct {v1, v2}, Lj/i;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lp7/n;->f:I

    .line 28
    .line 29
    const/4 v3, 0x7

    .line 30
    invoke-virtual {v1, v3, v2}, Lj/i;->c(II)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lp7/n;->i:Lp7/d;

    .line 34
    .line 35
    iget-object v3, v2, Lp7/d;->d:Ll/d;

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-virtual {v3, v4, v1}, Ll/d;->F(ILj/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_3
    iget-object v3, v2, Lp7/d;->c:Lp7/b;

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Lp7/b;->c0(Lj/i;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception v1

    .line 48
    :try_start_4
    iget-object v2, v2, Lp7/d;->b:Lp7/n;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget v1, p0, Lp7/n;->f:I

    .line 54
    .line 55
    const v2, 0xffff

    .line 56
    .line 57
    .line 58
    if-le v1, v2, :cond_0

    .line 59
    .line 60
    iget-object v3, p0, Lp7/n;->i:Lp7/d;

    .line 61
    .line 62
    sub-int/2addr v1, v2

    .line 63
    int-to-long v1, v1

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v3, v4, v1, v2}, Lp7/d;->V(IJ)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    goto :goto_3

    .line 71
    :cond_0
    :goto_2
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    throw v1
.end method

.method public final q(Ln7/f1;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lp7/n;->a(Ln7/f1;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lp7/k;

    .line 37
    .line 38
    iget-object v3, v3, Lp7/k;->m:Lp7/j;

    .line 39
    .line 40
    new-instance v4, Ln7/v0;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v3, p1, v5, v4}, Lo7/b1;->h(Ln7/f1;ZLn7/v0;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lp7/k;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lp7/n;->m(Lp7/k;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    iget-object v1, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lp7/k;

    .line 78
    .line 79
    iget-object v3, v2, Lp7/k;->m:Lp7/j;

    .line 80
    .line 81
    sget-object v4, Lo7/v;->e:Lo7/v;

    .line 82
    .line 83
    new-instance v5, Ln7/v0;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    invoke-virtual {v3, p1, v4, v6, v5}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Lp7/n;->m(Lp7/k;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-object p1, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lp7/n;->u()V

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p1
.end method

.method public final r(ILr7/a;Ln7/f1;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lp7/n;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp7/n;->v:Ln7/f1;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-object p3, p0, Lp7/n;->v:Ln7/f1;

    .line 9
    .line 10
    iget-object v1, p0, Lp7/n;->h:Lcom/bumptech/glide/manager/t;

    .line 11
    .line 12
    invoke-virtual {v1, p3}, Lcom/bumptech/glide/manager/t;->k(Ln7/f1;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-boolean v3, p0, Lp7/n;->w:Z

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iput-boolean v1, p0, Lp7/n;->w:Z

    .line 28
    .line 29
    iget-object v3, p0, Lp7/n;->i:Lp7/d;

    .line 30
    .line 31
    new-array v4, v2, [B

    .line 32
    .line 33
    invoke-virtual {v3, p2, v4}, Lp7/d;->c(Lr7/a;[B)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p2, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/util/Map$Entry;

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-le v4, p1, :cond_2

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lp7/k;

    .line 78
    .line 79
    iget-object v4, v4, Lp7/k;->m:Lp7/j;

    .line 80
    .line 81
    sget-object v5, Lo7/v;->c:Lo7/v;

    .line 82
    .line 83
    new-instance v6, Ln7/v0;

    .line 84
    .line 85
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p3, v5, v2, v6}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lp7/k;

    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lp7/n;->m(Lp7/k;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Lp7/k;

    .line 118
    .line 119
    iget-object v2, p2, Lp7/k;->m:Lp7/j;

    .line 120
    .line 121
    sget-object v3, Lo7/v;->e:Lo7/v;

    .line 122
    .line 123
    new-instance v4, Ln7/v0;

    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p3, v3, v1, v4}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2}, Lp7/n;->m(Lp7/k;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    iget-object p1, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lp7/n;->u()V

    .line 141
    .line 142
    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 145
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p1
.end method

.method public final s()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lp7/n;->C:I

    .line 17
    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lp7/k;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lp7/n;->t(Lp7/k;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v0
.end method

.method public final t(Lp7/k;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lp7/k;->m:Lp7/j;

    .line 2
    .line 3
    iget v0, v0, Lp7/j;->K:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    const-string v4, "StreamId already assigned"

    .line 14
    .line 15
    invoke-static {v0, v4}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 19
    .line 20
    iget v4, p0, Lp7/n;->m:I

    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lp7/n;->z:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iput-boolean v2, p0, Lp7/n;->z:Z

    .line 34
    .line 35
    iget-object v0, p0, Lp7/n;->F:Lo7/p1;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lo7/p1;->b()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-boolean v0, p1, Lo7/b;->d:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lp7/n;->M:Lo7/e1;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v0, p1, Lp7/k;->m:Lp7/j;

    .line 52
    .line 53
    iget v4, p0, Lp7/n;->m:I

    .line 54
    .line 55
    iget v5, v0, Lp7/j;->K:I

    .line 56
    .line 57
    if-ne v5, v3, :cond_3

    .line 58
    .line 59
    move v3, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v3, v1

    .line 62
    :goto_1
    const-string v5, "the stream has been started with id %s"

    .line 63
    .line 64
    if-eqz v3, :cond_e

    .line 65
    .line 66
    iput v4, v0, Lp7/j;->K:I

    .line 67
    .line 68
    iget-object v3, v0, Lp7/j;->F:Lb7/p;

    .line 69
    .line 70
    new-instance v5, Lp7/v;

    .line 71
    .line 72
    iget v6, v3, Lb7/p;->b:I

    .line 73
    .line 74
    invoke-direct {v5, v3, v4, v6, v0}, Lp7/v;-><init>(Lb7/p;IILp7/j;)V

    .line 75
    .line 76
    .line 77
    iput-object v5, v0, Lp7/j;->J:Lp7/v;

    .line 78
    .line 79
    iget-object v3, v0, Lp7/j;->L:Lp7/k;

    .line 80
    .line 81
    iget-object v3, v3, Lp7/k;->m:Lp7/j;

    .line 82
    .line 83
    iget-object v4, v3, Lo7/b1;->j:Lo7/w;

    .line 84
    .line 85
    if-eqz v4, :cond_d

    .line 86
    .line 87
    iget-object v4, v3, Lo7/b1;->b:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v4

    .line 90
    :try_start_0
    iget-boolean v5, v3, Lo7/b1;->f:Z

    .line 91
    .line 92
    xor-int/2addr v5, v2

    .line 93
    const-string v6, "Already allocated"

    .line 94
    .line 95
    invoke-static {v5, v6}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-boolean v2, v3, Lo7/b1;->f:Z

    .line 99
    .line 100
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    iget-object v2, v3, Lo7/b1;->b:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter v2

    .line 104
    :try_start_1
    invoke-virtual {v3}, Lo7/b1;->f()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    iget-object v2, v3, Lo7/b1;->j:Lo7/w;

    .line 112
    .line 113
    invoke-interface {v2}, Lo7/w;->j()V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v2, v3, Lo7/b1;->c:Lo7/w4;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lo7/w4;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lo7/u2;

    .line 124
    .line 125
    invoke-virtual {v2}, Lo7/u2;->q()J

    .line 126
    .line 127
    .line 128
    iget-boolean v2, v0, Lp7/j;->H:Z

    .line 129
    .line 130
    if-eqz v2, :cond_8

    .line 131
    .line 132
    iget-object v2, v0, Lp7/j;->E:Lp7/d;

    .line 133
    .line 134
    iget-object v3, v0, Lp7/j;->L:Lp7/k;

    .line 135
    .line 136
    iget-boolean v3, v3, Lp7/k;->p:Z

    .line 137
    .line 138
    iget v4, v0, Lp7/j;->K:I

    .line 139
    .line 140
    iget-object v5, v0, Lp7/j;->x:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    :try_start_2
    iget-object v6, v2, Lp7/d;->c:Lp7/b;

    .line 146
    .line 147
    iget-object v6, v6, Lp7/b;->b:Lr7/i;

    .line 148
    .line 149
    monitor-enter v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    :try_start_3
    iget-boolean v7, v6, Lr7/i;->f:Z

    .line 151
    .line 152
    if-nez v7, :cond_5

    .line 153
    .line 154
    invoke-virtual {v6, v3, v4, v5}, Lr7/i;->c(ZILjava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .line 156
    .line 157
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v3

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    .line 162
    .line 163
    const-string v4, "closed"

    .line 164
    .line 165
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v3

    .line 169
    :goto_2
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 171
    :catch_0
    move-exception v3

    .line 172
    iget-object v2, v2, Lp7/d;->b:Lp7/n;

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 175
    .line 176
    .line 177
    :goto_3
    iget-object v2, v0, Lp7/j;->L:Lp7/k;

    .line 178
    .line 179
    iget-object v2, v2, Lp7/k;->k:Lo7/t4;

    .line 180
    .line 181
    iget-object v2, v2, Lo7/t4;->a:[Ln7/e;

    .line 182
    .line 183
    array-length v3, v2

    .line 184
    move v4, v1

    .line 185
    :goto_4
    if-ge v4, v3, :cond_6

    .line 186
    .line 187
    aget-object v5, v2, v4

    .line 188
    .line 189
    invoke-virtual {v5}, Ln7/e;->s()V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_6
    const/4 v2, 0x0

    .line 196
    iput-object v2, v0, Lp7/j;->x:Ljava/util/ArrayList;

    .line 197
    .line 198
    iget-object v2, v0, Lp7/j;->y:Ll9/l;

    .line 199
    .line 200
    iget-wide v3, v2, Ll9/l;->c:J

    .line 201
    .line 202
    const-wide/16 v5, 0x0

    .line 203
    .line 204
    cmp-long v3, v3, v5

    .line 205
    .line 206
    if-lez v3, :cond_7

    .line 207
    .line 208
    iget-object v3, v0, Lp7/j;->F:Lb7/p;

    .line 209
    .line 210
    iget-boolean v4, v0, Lp7/j;->z:Z

    .line 211
    .line 212
    iget-object v5, v0, Lp7/j;->J:Lp7/v;

    .line 213
    .line 214
    iget-boolean v6, v0, Lp7/j;->A:Z

    .line 215
    .line 216
    invoke-virtual {v3, v4, v5, v2, v6}, Lb7/p;->c(ZLp7/v;Ll9/l;Z)V

    .line 217
    .line 218
    .line 219
    :cond_7
    iput-boolean v1, v0, Lp7/j;->H:Z

    .line 220
    .line 221
    :cond_8
    iget-object v0, p1, Lp7/k;->i:Ln7/x0;

    .line 222
    .line 223
    iget-object v0, v0, Ln7/x0;->a:Ln7/w0;

    .line 224
    .line 225
    sget-object v1, Ln7/w0;->b:Ln7/w0;

    .line 226
    .line 227
    if-eq v0, v1, :cond_9

    .line 228
    .line 229
    sget-object v1, Ln7/w0;->c:Ln7/w0;

    .line 230
    .line 231
    if-ne v0, v1, :cond_a

    .line 232
    .line 233
    :cond_9
    iget-boolean p1, p1, Lp7/k;->p:Z

    .line 234
    .line 235
    if-eqz p1, :cond_b

    .line 236
    .line 237
    :cond_a
    iget-object p1, p0, Lp7/n;->i:Lp7/d;

    .line 238
    .line 239
    invoke-virtual {p1}, Lp7/d;->flush()V

    .line 240
    .line 241
    .line 242
    :cond_b
    iget p1, p0, Lp7/n;->m:I

    .line 243
    .line 244
    const v0, 0x7ffffffd

    .line 245
    .line 246
    .line 247
    if-lt p1, v0, :cond_c

    .line 248
    .line 249
    const p1, 0x7fffffff

    .line 250
    .line 251
    .line 252
    iput p1, p0, Lp7/n;->m:I

    .line 253
    .line 254
    sget-object v0, Lr7/a;->c:Lr7/a;

    .line 255
    .line 256
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 257
    .line 258
    const-string v2, "Stream ids exhausted"

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p0, p1, v0, v1}, Lp7/n;->r(ILr7/a;Ln7/f1;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_c
    add-int/lit8 p1, p1, 0x2

    .line 269
    .line 270
    iput p1, p0, Lp7/n;->m:I

    .line 271
    .line 272
    return-void

    .line 273
    :catchall_1
    move-exception p1

    .line 274
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 275
    throw p1

    .line 276
    :catchall_2
    move-exception p1

    .line 277
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 278
    throw p1

    .line 279
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {v5, p1}, Le3/d;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lp7/n;->l:Ln7/a0;

    .line 6
    .line 7
    iget-wide v1, v1, Ln7/a0;->c:J

    .line 8
    .line 9
    const-string v3, "logId"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/manager/s;->b(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "address"

    .line 15
    .line 16
    iget-object v2, p0, Lp7/n;->a:Ljava/net/InetSocketAddress;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final u()V
    .locals 9

    .line 1
    iget-object v0, p0, Lp7/n;->v:Ln7/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Lp7/n;->n:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    iget-object v0, p0, Lp7/n;->D:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lp7/n;->y:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lp7/n;->y:Z

    .line 31
    .line 32
    iget-object v1, p0, Lp7/n;->F:Lo7/p1;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    iget v4, v1, Lo7/p1;->d:I

    .line 40
    .line 41
    const/4 v5, 0x6

    .line 42
    if-eq v4, v5, :cond_3

    .line 43
    .line 44
    iput v5, v1, Lo7/p1;->d:I

    .line 45
    .line 46
    iget-object v4, v1, Lo7/p1;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    iget-object v4, v1, Lo7/p1;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 61
    .line 62
    .line 63
    iput-object v2, v1, Lo7/p1;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    :cond_3
    monitor-exit v1

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v0

    .line 69
    :cond_4
    :goto_2
    iget-object v1, p0, Lp7/n;->x:Lo7/d1;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {p0}, Lp7/n;->k()Ln7/g1;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    monitor-enter v1

    .line 78
    :try_start_2
    iget-boolean v5, v1, Lo7/d1;->d:Z

    .line 79
    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    monitor-exit v1

    .line 83
    goto :goto_4

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    iput-boolean v0, v1, Lo7/d1;->d:Z

    .line 87
    .line 88
    iput-object v4, v1, Lo7/d1;->e:Ln7/g1;

    .line 89
    .line 90
    iget-object v5, v1, Lo7/d1;->c:Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    iput-object v2, v1, Lo7/d1;->c:Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Lo7/o1;

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 126
    .line 127
    new-instance v7, Lo7/c1;

    .line 128
    .line 129
    invoke-direct {v7, v6, v4}, Lo7/c1;-><init>(Lo7/o1;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :try_start_3
    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catchall_2
    move-exception v5

    .line 137
    sget-object v6, Lo7/d1;->g:Ljava/util/logging/Logger;

    .line 138
    .line 139
    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 140
    .line 141
    const-string v8, "Failed to execute PingCallback"

    .line 142
    .line 143
    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    :goto_4
    iput-object v2, p0, Lp7/n;->x:Lo7/d1;

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    throw v0

    .line 152
    :cond_7
    :goto_6
    iget-boolean v1, p0, Lp7/n;->w:Z

    .line 153
    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    iput-boolean v0, p0, Lp7/n;->w:Z

    .line 157
    .line 158
    iget-object v0, p0, Lp7/n;->i:Lp7/d;

    .line 159
    .line 160
    sget-object v1, Lr7/a;->c:Lr7/a;

    .line 161
    .line 162
    new-array v2, v3, [B

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lp7/d;->c(Lr7/a;[B)V

    .line 165
    .line 166
    .line 167
    :cond_8
    iget-object v0, p0, Lp7/n;->i:Lp7/d;

    .line 168
    .line 169
    invoke-virtual {v0}, Lp7/d;->close()V

    .line 170
    .line 171
    .line 172
    :cond_9
    :goto_7
    return-void
.end method
