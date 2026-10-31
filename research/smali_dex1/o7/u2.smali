.class public Lo7/u2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/u;
.implements Lo7/a0;
.implements Lo7/r4;
.implements Ln7/r0;
.implements Ln7/u0;


# static fields
.field public static final c:Lo7/u2;

.field public static final d:Lo7/u2;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo7/u2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo7/u2;->c:Lo7/u2;

    .line 8
    .line 9
    new-instance v0, Lo7/u2;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lo7/u2;->d:Lo7/u2;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 8
    iput p1, p0, Lo7/u2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo7/k;)V
    .registers 2

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lo7/u2;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static s()Lo7/r0;
    .registers 3

    .line 1
    new-instance v0, Lo7/r0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Random;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lo7/r0;->a:Ljava/util/Random;

    .line 12
    .line 13
    const-wide v1, 0x1bf08eb000L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Lo7/r0;->b:J

    .line 19
    .line 20
    const-wide v1, 0x3ff999999999999aL    # 1.6

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v1, v0, Lo7/r0;->c:D

    .line 26
    .line 27
    const-wide v1, 0x3fc999999999999aL    # 0.2

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v1, v0, Lo7/r0;->d:D

    .line 33
    .line 34
    const-wide/32 v1, 0x3b9aca00

    .line 35
    .line 36
    .line 37
    iput-wide v1, v0, Lo7/r0;->e:J

    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public a(Ln7/h;)V
    .registers 2

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_e2

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/32 v2, 0x5f5e100

    .line 18
    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_29

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "n"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide v2, 0x174876e800L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long v0, v0, v2

    .line 52
    .line 53
    if-gez v0, :cond_4f

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    const-wide/16 v3, 0x3e8

    .line 65
    .line 66
    div-long/2addr v1, v3

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "u"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    const-wide v2, 0x5af3107a4000L

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    cmp-long v0, v0, v2

    .line 90
    .line 91
    if-gez v0, :cond_76

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    const-wide/32 v3, 0xf4240

    .line 103
    .line 104
    .line 105
    div-long/2addr v1, v3

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, "m"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    const-wide v2, 0x16345785d8a0000L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v0, v0, v2

    .line 129
    .line 130
    if-gez v0, :cond_9d

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    const-wide/32 v3, 0x3b9aca00

    .line 142
    .line 143
    .line 144
    div-long/2addr v1, v3

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, "S"

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    :cond_9d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    const-wide v2, 0x53444835ec580000L

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    cmp-long v0, v0, v2

    .line 168
    .line 169
    if-gez v0, :cond_c6

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    const-wide v3, 0xdf8475800L

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    div-long/2addr v1, v3

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p1, "M"

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    return-object p1

    .line 199
    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v1

    .line 208
    const-wide v3, 0x34630b8a000L

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    div-long/2addr v1, v3

    .line 214
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p1, "H"

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    return-object p1

    .line 227
    :cond_e2
    const-string p1, "Timeout too small"

    .line 228
    .line 229
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/4 p1, 0x0

    .line 233
    return-object p1
.end method

.method public b(Ljava/lang/Object;)[B
    .registers 3

    iget v0, p0, Lo7/u2;->b:I

    packed-switch v0, :pswitch_data_10

    .line 234
    check-cast p1, Ljava/lang/Integer;

    .line 235
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 236
    :pswitch_d
    check-cast p1, [B

    return-object p1

    :pswitch_data_10
    .packed-switch 0xd
        :pswitch_d
    .end packed-switch
.end method

.method public c(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public create()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lo7/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    const-string v0, "grpc-timer-%d"

    .line 7
    .line 8
    invoke-static {v0}, Lo7/y0;->e(Ljava/lang/String;)Lm4/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "setRemoveOnCancelPolicy"

    .line 22
    .line 23
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_29} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_29} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_2a

    .line 40
    .line 41
    .line 42
    goto :goto_34

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    goto :goto_2e

    .line 45
    :catch_2c
    move-exception v0

    .line 46
    goto :goto_33

    .line 47
    :goto_2e
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_38

    .line 52
    :goto_33
    throw v0

    .line 53
    :catch_34
    :goto_34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_38
    return-object v0

    .line 58
    :pswitch_39
    const-string v0, "grpc-default-executor-%d"

    .line 59
    .line 60
    invoke-static {v0}, Lo7/y0;->e(Ljava/lang/String;)Lm4/p;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :pswitch_data_44
    .packed-switch 0xa
        :pswitch_39
    .end packed-switch
.end method

.method public d(Lo7/w;)V
    .registers 2

    .line 1
    return-void
.end method

.method public e(Li7/i;)V
    .registers 3

    .line 1
    const-string v0, "noop"

    .line 2
    .line 3
    iget-object p1, p1, Li7/i;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lt7/a;)V
    .registers 2

    .line 1
    return-void
.end method

.method public flush()V
    .registers 1

    .line 1
    return-void
.end method

.method public g(Ln7/q;)V
    .registers 2

    .line 1
    return-void
.end method

.method public h(Ln7/f1;)V
    .registers 2

    .line 1
    return-void
.end method

.method public i()V
    .registers 1

    .line 1
    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_a

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    const-string v3, "empty timeout"

    .line 13
    .line 14
    invoke-static {v3, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v3, 0x9

    .line 22
    .line 23
    if-gt v0, v3, :cond_1a

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v1

    .line 28
    :goto_1b
    const-string v3, "bad timeout format"

    .line 29
    .line 30
    invoke-static {v3, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sub-int/2addr v0, v2

    .line 38
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v3, v2

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/16 v2, 0x48

    .line 56
    .line 57
    if-eq p1, v2, :cond_86

    .line 58
    .line 59
    const/16 v2, 0x4d

    .line 60
    .line 61
    if-eq p1, v2, :cond_7b

    .line 62
    .line 63
    const/16 v2, 0x53

    .line 64
    .line 65
    if-eq p1, v2, :cond_70

    .line 66
    .line 67
    const/16 v2, 0x75

    .line 68
    .line 69
    if-eq p1, v2, :cond_65

    .line 70
    .line 71
    const/16 v2, 0x6d

    .line 72
    .line 73
    if-eq p1, v2, :cond_5a

    .line 74
    .line 75
    const/16 v2, 0x6e

    .line 76
    .line 77
    if-ne p1, v2, :cond_53

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_53
    const-string v0, "Invalid timeout unit: "

    .line 85
    .line 86
    invoke-static {p1, v0}, Ll9/i;->c(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    return-object p1

    .line 91
    :cond_5a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_65
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_70
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :cond_7b
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_86
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1
.end method

.method public k([B)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lo7/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_38

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x3

    .line 8
    if-lt v0, v1, :cond_23

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget-byte v0, p1, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x30

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x64

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x30

    .line 21
    .line 22
    mul-int/lit8 v1, v1, 0xa

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    const/4 v0, 0x2

    .line 26
    aget-byte p1, p1, v0

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x30

    .line 29
    .line 30
    add-int/2addr p1, v1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_23
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    sget-object v2, Ln7/b0;->a:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "Malformed status code "

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :pswitch_36
    return-object p1

    .line 56
    nop

    .line 57
    :pswitch_data_38
    .packed-switch 0xd
        :pswitch_36
    .end packed-switch
.end method

.method public l(Lo7/c;ILjava/lang/Object;I)I
    .registers 6

    .line 1
    iget v0, p0, Lo7/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_38

    .line 4
    .line 5
    .line 6
    check-cast p3, Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {p1, p3, p2}, Lo7/c;->V(Ljava/io/OutputStream;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :pswitch_c
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v0, p2

    .line 24
    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lo7/c;->c0(Ljava/nio/ByteBuffer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :pswitch_22
    check-cast p3, [B

    .line 36
    .line 37
    invoke-virtual {p1, p3, p4, p2}, Lo7/c;->d0([BII)V

    .line 38
    .line 39
    .line 40
    add-int/2addr p4, p2

    .line 41
    return p4

    .line 42
    :pswitch_29
    check-cast p3, Ljava/lang/Void;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lo7/c;->h0(I)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :pswitch_30
    check-cast p3, Ljava/lang/Void;

    .line 50
    .line 51
    invoke-virtual {p1}, Lo7/c;->e0()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    nop

    .line 57
    :pswitch_data_38
    .packed-switch 0x4
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_c
    .end packed-switch
.end method

.method public m(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public n(Ln7/o;)V
    .registers 2

    .line 1
    return-void
.end method

.method public o()V
    .registers 1

    .line 1
    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lo7/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0xa
        :pswitch_b
    .end packed-switch
.end method

.method public q()J
    .registers 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public r()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lo7/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Li4/f;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_data_10
    .packed-switch 0xc
        :pswitch_a
    .end packed-switch
.end method

.method public request()V
    .registers 1

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lo7/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    const-string v0, "grpc-default-executor"

    .line 12
    .line 13
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method
