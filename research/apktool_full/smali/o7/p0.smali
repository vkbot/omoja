.class public final Lo7/p0;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final t:Ljava/util/logging/Logger;

.field public static final u:Ljava/util/Set;

.field public static final v:Z

.field public static final w:Z

.field public static final x:Z

.field public static y:Ljava/lang/String;


# instance fields
.field public final b:Lo7/h3;

.field public final c:Ljava/util/Random;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lo7/r4;

.field public final i:J

.field public final j:Ln7/k1;

.field public final k:Li4/f;

.field public l:Z

.field public m:Z

.field public n:Ljava/util/concurrent/Executor;

.field public final o:Z

.field public final p:Lo7/i4;

.field public q:Z

.field public r:Ln7/t;

.field public volatile s:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lo7/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lo7/p0;->t:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v2, Ljava/util/HashSet;

    .line 14
    .line 15
    const-string v3, "clientHostname"

    .line 16
    .line 17
    const-string v4, "serviceConfig"

    .line 18
    .line 19
    const-string v5, "clientLanguage"

    .line 20
    .line 21
    const-string v6, "percentage"

    .line 22
    .line 23
    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sput-object v2, Lo7/p0;->u:Ljava/util/Set;

    .line 39
    .line 40
    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    .line 41
    .line 42
    const-string v3, "true"

    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    .line 49
    .line 50
    const-string v4, "false"

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    .line 57
    .line 58
    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sput-boolean v2, Lo7/p0;->v:Z

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sput-boolean v2, Lo7/p0;->w:Z

    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sput-boolean v2, Lo7/p0;->x:Z

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :try_start_0
    const-string v2, "o7.l1"

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-class v2, Lo7/l1;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    const/4 v2, 0x0

    .line 98
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 99
    .line 100
    .line 101
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    if-nez v0, :cond_0

    .line 107
    .line 108
    throw v2

    .line 109
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/ClassCastException;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 112
    .line 113
    .line 114
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 117
    .line 118
    const-string v3, "Can\'t construct JndiResourceResolverFactory, skipping."

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception v0

    .line 125
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 126
    .line 127
    const-string v3, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    .line 128
    .line 129
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_2
    move-exception v0

    .line 134
    goto :goto_0

    .line 135
    :catch_3
    move-exception v0

    .line 136
    goto :goto_1

    .line 137
    :goto_0
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 138
    .line 139
    const-string v3, "Unable to cast JndiResourceResolverFactory, skipping."

    .line 140
    .line 141
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_1
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 146
    .line 147
    const-string v3, "Unable to find JndiResourceResolverFactory, skipping."

    .line 148
    .line 149
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lm5/a;Lo7/r4;Li4/f;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo7/p0;->c:Ljava/util/Random;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lo7/p0;->s:I

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lo7/p0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    const-string v1, "args"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lo7/p0;->h:Lo7/r4;

    .line 27
    .line 28
    const-string p3, "//"

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    move v1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v2

    .line 48
    :goto_0
    const-string v3, "Invalid DNS name: %s"

    .line 49
    .line 50
    invoke-static {v3, v1, p1}, Lo4/b;->e(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    iput-object p1, p0, Lo7/p0;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lo7/p0;->f:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v1, -0x1

    .line 72
    if-ne p1, v1, :cond_1

    .line 73
    .line 74
    iget p1, p2, Lm5/a;->b:I

    .line 75
    .line 76
    iput p1, p0, Lo7/p0;->g:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lo7/p0;->g:I

    .line 84
    .line 85
    :goto_1
    iget-object p1, p2, Lm5/a;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lo7/h3;

    .line 88
    .line 89
    const-string p3, "proxyDetector"

    .line 90
    .line 91
    invoke-static {p1, p3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lo7/p0;->b:Lo7/h3;

    .line 95
    .line 96
    const-wide/16 v3, 0x0

    .line 97
    .line 98
    if-eqz p5, :cond_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    const-string p1, "networkaddress.cache.ttl"

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    const-wide/16 v5, 0x1e

    .line 108
    .line 109
    if-eqz p3, :cond_3

    .line 110
    .line 111
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    sget-object p5, Lo7/p0;->t:Ljava/util/logging/Logger;

    .line 117
    .line 118
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 119
    .line 120
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    filled-new-array {p1, p3, v7}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p3, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    .line 129
    .line 130
    invoke-virtual {p5, v1, p3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_2
    cmp-long p1, v5, v3

    .line 134
    .line 135
    if-lez p1, :cond_4

    .line 136
    .line 137
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 138
    .line 139
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    move-wide v3, v5

    .line 145
    :goto_3
    iput-wide v3, p0, Lo7/p0;->i:J

    .line 146
    .line 147
    iput-object p4, p0, Lo7/p0;->k:Li4/f;

    .line 148
    .line 149
    iget-object p1, p2, Lm5/a;->d:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Ln7/k1;

    .line 152
    .line 153
    const-string p3, "syncContext"

    .line 154
    .line 155
    invoke-static {p1, p3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Lo7/p0;->j:Ln7/k1;

    .line 159
    .line 160
    iget-object p1, p2, Lm5/a;->h:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, Lo7/x1;

    .line 163
    .line 164
    iput-object p1, p0, Lo7/p0;->n:Ljava/util/concurrent/Executor;

    .line 165
    .line 166
    if-nez p1, :cond_5

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    move v0, v2

    .line 170
    :goto_4
    iput-boolean v0, p0, Lo7/p0;->o:Z

    .line 171
    .line 172
    iget-object p1, p2, Lm5/a;->e:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p1, Lo7/i4;

    .line 175
    .line 176
    const-string p2, "serviceConfigParser"

    .line 177
    .line 178
    invoke-static {p1, p2}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lo7/p0;->p:Lo7/i4;

    .line 182
    .line 183
    return-void

    .line 184
    :cond_6
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string p2, "nameUri (%s) doesn\'t have an authority"

    .line 189
    .line 190
    invoke-static {p2, p1}, Le3/d;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 p1, 0x0

    .line 198
    throw p1
.end method

.method public static F(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    .line 21
    sget-object v2, Lo7/p0;->u:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "Bad key: %s"

    .line 32
    .line 33
    invoke-static {v3, v2, v1}, Ly5/k;->z(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "clientLanguage"

    .line 38
    .line 39
    invoke-static {v0, p0}, Lo7/p4;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "java"

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    :cond_2
    const-string v0, "percentage"

    .line 76
    .line 77
    invoke-static {v0, p0}, Lo7/p4;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/16 v2, 0x64

    .line 88
    .line 89
    if-ltz v1, :cond_3

    .line 90
    .line 91
    if-gt v1, v2, :cond_3

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const/4 v3, 0x0

    .line 96
    :goto_1
    const-string v4, "Bad percentage: %s"

    .line 97
    .line 98
    invoke-static {v4, v3, v0}, Ly5/k;->z(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-lt p1, v1, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const-string p1, "clientHostname"

    .line 109
    .line 110
    invoke-static {p1, p0}, Lo7/p4;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    :goto_2
    const/4 p0, 0x0

    .line 146
    return-object p0

    .line 147
    :cond_7
    :goto_3
    const-string p1, "serviceConfig"

    .line 148
    .line 149
    invoke-static {p1, p0}, Lo7/p4;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-eqz p2, :cond_8

    .line 154
    .line 155
    return-object p2

    .line 156
    :cond_8
    new-instance p2, La8/a;

    .line 157
    .line 158
    const-string v0, "key \'%s\' missing in \'%s\'"

    .line 159
    .line 160
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const/4 p1, 0x1

    .line 169
    invoke-direct {p2, p0, p1}, La8/a;-><init>(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    throw p2
.end method

.method public static G()Ljava/util/ArrayList;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "grpc_config="

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 33
    .line 34
    const-string v4, "Ignoring non service config {0}"

    .line 35
    .line 36
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v5, Lo7/p0;->t:Ljava/util/logging/Logger;

    .line 41
    .line 42
    invoke-virtual {v5, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v3, 0xc

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "Failed to close"

    .line 53
    .line 54
    sget-object v4, Lo7/m1;->a:Ljava/util/logging/Logger;

    .line 55
    .line 56
    new-instance v5, Lw5/a;

    .line 57
    .line 58
    new-instance v6, Ljava/io/StringReader;

    .line 59
    .line 60
    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, v6}, Lw5/a;-><init>(Ljava/io/Reader;)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    invoke-static {v5}, Lo7/m1;->a(Lw5/a;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {v5}, Lw5/a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v5

    .line 75
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 76
    .line 77
    invoke-virtual {v4, v6, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    instance-of v3, v2, Ljava/util/List;

    .line 81
    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    check-cast v2, Ljava/util/List;

    .line 85
    .line 86
    invoke-static {v2}, Lo7/p4;->a(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "wrong type "

    .line 98
    .line 99
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :try_start_2
    invoke-virtual {v5}, Lw5/a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_1
    move-exception v1

    .line 119
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 120
    .line 121
    invoke-virtual {v4, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    throw v0

    .line 125
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final A(Ln7/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/p0;->r:Ln7/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "already started"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lo7/p0;->o:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lo7/p0;->h:Lo7/r4;

    .line 18
    .line 19
    invoke-static {v0}, Lo7/s4;->a(Lo7/r4;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    iput-object v0, p0, Lo7/p0;->n:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lo7/p0;->r:Ln7/t;

    .line 28
    .line 29
    invoke-virtual {p0}, Lo7/p0;->H()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final E()La5/h;
    .locals 9

    .line 1
    iget-object v0, p0, Lo7/p0;->f:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, La5/h;

    .line 4
    .line 5
    const/16 v2, 0x13

    .line 6
    .line 7
    invoke-direct {v1, v2}, La5/h;-><init>(I)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lo7/p0;->I()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v1, La5/h;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 15
    .line 16
    sget-boolean v2, Lo7/p0;->x:Z

    .line 17
    .line 18
    if-eqz v2, :cond_13

    .line 19
    .line 20
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 21
    .line 22
    sget-boolean v3, Lo7/p0;->v:Z

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    :goto_0
    move v3, v4

    .line 28
    goto :goto_3

    .line 29
    :cond_0
    const-string v3, "localhost"

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    sget-boolean v3, Lo7/p0;->w:Z

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_1
    const-string v3, ":"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x1

    .line 50
    move v6, v3

    .line 51
    move v5, v4

    .line 52
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-ge v5, v7, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/16 v8, 0x2e

    .line 63
    .line 64
    if-eq v7, v8, :cond_4

    .line 65
    .line 66
    const/16 v8, 0x30

    .line 67
    .line 68
    if-lt v7, v8, :cond_3

    .line 69
    .line 70
    const/16 v8, 0x39

    .line 71
    .line 72
    if-gt v7, v8, :cond_3

    .line 73
    .line 74
    move v7, v3

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v7, v4

    .line 77
    :goto_2
    and-int/2addr v6, v7

    .line 78
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    xor-int/2addr v3, v6

    .line 82
    :goto_3
    if-nez v3, :cond_6

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    iget-object v3, p0, Lo7/p0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_12

    .line 92
    .line 93
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v3, 0x0

    .line 98
    if-nez v2, :cond_10

    .line 99
    .line 100
    iget-object v0, p0, Lo7/p0;->c:Ljava/util/Random;

    .line 101
    .line 102
    sget-object v2, Lo7/p0;->y:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v2, :cond_7

    .line 105
    .line 106
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sput-object v2, Lo7/p0;->y:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :goto_5
    const/4 v0, 0x0

    .line 122
    return-object v0

    .line 123
    :cond_7
    :goto_6
    sget-object v2, Lo7/p0;->y:Ljava/lang/String;

    .line 124
    .line 125
    :try_start_2
    invoke-static {}, Lo7/p0;->G()Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    move-object v7, v3

    .line 134
    :cond_8
    if-ge v4, v6, :cond_9

    .line 135
    .line 136
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    check-cast v7, Ljava/util/Map;

    .line 143
    .line 144
    :try_start_3
    invoke-static {v7, v0, v2}, Lo7/p0;->F(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 148
    if-eqz v7, :cond_8

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :catch_1
    move-exception v0

    .line 152
    sget-object v2, Ln7/f1;->g:Ln7/f1;

    .line 153
    .line 154
    const-string v4, "failed to pick service config choice"

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v2, Ln7/y0;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 167
    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_9
    :goto_7
    if-nez v7, :cond_a

    .line 171
    .line 172
    move-object v2, v3

    .line 173
    goto :goto_9

    .line 174
    :cond_a
    new-instance v2, Ln7/y0;

    .line 175
    .line 176
    invoke-direct {v2, v7}, Ln7/y0;-><init>(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_9

    .line 180
    :catch_2
    move-exception v0

    .line 181
    goto :goto_8

    .line 182
    :catch_3
    move-exception v0

    .line 183
    :goto_8
    sget-object v2, Ln7/f1;->g:Ln7/f1;

    .line 184
    .line 185
    const-string v4, "failed to parse TXT records"

    .line 186
    .line 187
    invoke-virtual {v2, v4}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, v0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v2, Ln7/y0;

    .line 196
    .line 197
    invoke-direct {v2, v0}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 198
    .line 199
    .line 200
    :goto_9
    if-eqz v2, :cond_11

    .line 201
    .line 202
    iget-object v0, v2, Ln7/y0;->a:Ln7/f1;

    .line 203
    .line 204
    if-eqz v0, :cond_b

    .line 205
    .line 206
    new-instance v3, Ln7/y0;

    .line 207
    .line 208
    invoke-direct {v3, v0}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_f

    .line 212
    .line 213
    :cond_b
    iget-object v0, v2, Ln7/y0;->b:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Ljava/util/Map;

    .line 216
    .line 217
    iget-object v2, p0, Lo7/p0;->p:Lo7/i4;

    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    :try_start_4
    iget-object v4, v2, Lo7/i4;->d:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v4, Lo7/w4;

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 227
    .line 228
    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    :try_start_5
    invoke-static {v0}, Lo7/p4;->g(Ljava/util/Map;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v5}, Lo7/p4;->s(Ljava/util/List;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    goto :goto_a

    .line 240
    :catch_4
    move-exception v4

    .line 241
    goto :goto_b

    .line 242
    :cond_c
    move-object v5, v3

    .line 243
    :goto_a
    if-eqz v5, :cond_d

    .line 244
    .line 245
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-nez v6, :cond_d

    .line 250
    .line 251
    iget-object v4, v4, Lo7/w4;->c:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v4, Ln7/l0;

    .line 254
    .line 255
    invoke-static {v5, v4}, Lo7/p4;->r(Ljava/util/List;Ln7/l0;)Ln7/y0;

    .line 256
    .line 257
    .line 258
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 259
    goto :goto_c

    .line 260
    :goto_b
    :try_start_6
    sget-object v5, Ln7/f1;->g:Ln7/f1;

    .line 261
    .line 262
    const-string v6, "can\'t parse load balancer configuration"

    .line 263
    .line 264
    invoke-virtual {v5, v6}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v5, v4}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    new-instance v5, Ln7/y0;

    .line 273
    .line 274
    invoke-direct {v5, v4}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 275
    .line 276
    .line 277
    move-object v4, v5

    .line 278
    goto :goto_c

    .line 279
    :cond_d
    move-object v4, v3

    .line 280
    :goto_c
    if-nez v4, :cond_e

    .line 281
    .line 282
    goto :goto_d

    .line 283
    :cond_e
    iget-object v3, v4, Ln7/y0;->a:Ln7/f1;

    .line 284
    .line 285
    if-eqz v3, :cond_f

    .line 286
    .line 287
    new-instance v0, Ln7/y0;

    .line 288
    .line 289
    invoke-direct {v0, v3}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 290
    .line 291
    .line 292
    move-object v3, v0

    .line 293
    goto :goto_f

    .line 294
    :cond_f
    iget-object v3, v4, Ln7/y0;->b:Ljava/lang/Object;

    .line 295
    .line 296
    :goto_d
    iget-boolean v4, v2, Lo7/i4;->a:Z

    .line 297
    .line 298
    iget v5, v2, Lo7/i4;->b:I

    .line 299
    .line 300
    iget v2, v2, Lo7/i4;->c:I

    .line 301
    .line 302
    invoke-static {v0, v4, v5, v2, v3}, Lo7/l2;->a(Ljava/util/Map;ZIILjava/lang/Object;)Lo7/l2;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    new-instance v2, Ln7/y0;

    .line 307
    .line 308
    invoke-direct {v2, v0}, Ln7/y0;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 309
    .line 310
    .line 311
    :goto_e
    move-object v3, v2

    .line 312
    goto :goto_f

    .line 313
    :catch_5
    move-exception v0

    .line 314
    sget-object v2, Ln7/f1;->g:Ln7/f1;

    .line 315
    .line 316
    const-string v3, "failed to parse service config"

    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2, v0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    new-instance v2, Ln7/y0;

    .line 327
    .line 328
    invoke-direct {v2, v0}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 329
    .line 330
    .line 331
    goto :goto_e

    .line 332
    :cond_10
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 333
    .line 334
    const-string v4, "No TXT records found for {0}"

    .line 335
    .line 336
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    sget-object v5, Lo7/p0;->t:Ljava/util/logging/Logger;

    .line 341
    .line 342
    invoke-virtual {v5, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_11
    :goto_f
    iput-object v3, v1, La5/h;->e:Ljava/lang/Object;

    .line 346
    .line 347
    return-object v1

    .line 348
    :cond_12
    invoke-static {}, Ln0/b;->a()V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_5

    .line 352
    .line 353
    :cond_13
    return-object v1

    .line 354
    :catch_6
    move-exception v2

    .line 355
    sget-object v3, Ln7/f1;->m:Ln7/f1;

    .line 356
    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v5, "Unable to resolve host "

    .line 360
    .line 361
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v3, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0, v2}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    iput-object v0, v1, La5/h;->c:Ljava/lang/Object;

    .line 380
    .line 381
    return-object v1
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo7/p0;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lo7/p0;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lo7/p0;->l:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lo7/p0;->i:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lo7/p0;->k:Li4/f;

    .line 24
    .line 25
    invoke-virtual {v2}, Li4/f;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v0, v2, v0

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo7/p0;->q:Z

    .line 35
    .line 36
    iget-object v0, p0, Lo7/p0;->n:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    new-instance v1, Lo7/e0;

    .line 39
    .line 40
    iget-object v2, p0, Lo7/p0;->r:Ln7/t;

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Lo7/e0;-><init>(Lo7/p0;Ln7/t;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final I()Ljava/util/List;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lo7/p0;->s:I

    .line 3
    .line 4
    iget-object v2, p0, Lo7/p0;->f:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/net/InetAddress;

    .line 44
    .line 45
    new-instance v3, Ln7/r;

    .line 46
    .line 47
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 48
    .line 49
    iget v5, p0, Lo7/p0;->g:I

    .line 50
    .line 51
    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Ln7/r;-><init>(Ljava/net/SocketAddress;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :cond_1
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_2
    sget-object v1, Li4/g;->a:Ljava/lang/Object;

    .line 71
    .line 72
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_2
    move-object v1, v0

    .line 83
    check-cast v1, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_1
    if-eqz v0, :cond_3

    .line 87
    .line 88
    sget-object v2, Lo7/p0;->t:Ljava/util/logging/Logger;

    .line 89
    .line 90
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 91
    .line 92
    const-string v4, "Address resolution failure"

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo7/p0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/p0;->r:Ln7/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "not started"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lo7/p0;->H()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo7/p0;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lo7/p0;->m:Z

    .line 8
    .line 9
    iget-object v0, p0, Lo7/p0;->n:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lo7/p0;->o:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lo7/p0;->h:Lo7/r4;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lo7/s4;->b(Lo7/r4;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lo7/p0;->n:Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method
