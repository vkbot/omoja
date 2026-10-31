.class public final Lx8/m;
.super Lx8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final l:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lx8/b;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lx8/m;->l:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_18

    .line 8
    .line 9
    if-lt p1, v0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    const-string p2, "Buffered channel capacity must be at least 1, but "

    .line 13
    .line 14
    const-string v0, " was specified"

    .line 15
    .line 16
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1

    .line 25
    :cond_18
    const-class p1, Lx8/b;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, " instead"

    .line 36
    .line 37
    const-string v0, "This implementation does not support suspension for senders, use "

    .line 38
    .line 39
    invoke-static {p1, v0, p2}, Lai/onnxruntime/b;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1
.end method


# virtual methods
.method public final B(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 18

    .line 1
    iget v1, p0, Lx8/m;->l:I

    .line 2
    .line 3
    const/4 v8, 0x3

    .line 4
    if-ne v1, v8, :cond_15

    .line 5
    .line 6
    invoke-super/range {p0 .. p1}, Lx8/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v1, Lx8/i;

    .line 11
    .line 12
    if-eqz v2, :cond_14

    .line 13
    .line 14
    instance-of v2, v1, Lx8/h;

    .line 15
    .line 16
    if-eqz v2, :cond_12

    .line 17
    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    :cond_14
    :goto_14
    return-object v1

    .line 22
    :cond_15
    sget-object v6, Lx8/d;->d:La9/w;

    .line 23
    .line 24
    sget-object v1, Lx8/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lx8/k;

    .line 31
    .line 32
    :cond_1f
    :goto_1f
    sget-object v2, Lx8/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    const-wide v4, 0xfffffffffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v4, v2

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-virtual {p0, v2, v3, v7}, Lx8/b;->q(JZ)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    sget v9, Lx8/d;->b:I

    .line 50
    .line 51
    int-to-long v10, v9

    .line 52
    div-long v2, v4, v10

    .line 53
    .line 54
    rem-long v12, v4, v10

    .line 55
    .line 56
    long-to-int v12, v12

    .line 57
    iget-wide v13, v1, La9/u;->d:J

    .line 58
    .line 59
    cmp-long v13, v13, v2

    .line 60
    .line 61
    if-eqz v13, :cond_51

    .line 62
    .line 63
    invoke-static {p0, v2, v3, v1}, Lx8/b;->a(Lx8/b;JLx8/k;)Lx8/k;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_50

    .line 68
    .line 69
    if-eqz v7, :cond_1f

    .line 70
    .line 71
    invoke-virtual {p0}, Lx8/b;->n()Ljava/lang/Throwable;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v2, Lx8/h;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Lx8/h;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_50
    move-object v1, v2

    .line 82
    :cond_51
    move-object v0, p0

    .line 83
    move-object/from16 v3, p1

    .line 84
    .line 85
    move v2, v12

    .line 86
    invoke-static/range {v0 .. v7}, Lx8/b;->d(Lx8/b;Lx8/k;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_b8

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    if-eq v12, v3, :cond_b5

    .line 94
    .line 95
    const/4 v3, 0x2

    .line 96
    if-eq v12, v3, :cond_8c

    .line 97
    .line 98
    if-eq v12, v8, :cond_85

    .line 99
    .line 100
    const/4 v2, 0x4

    .line 101
    if-eq v12, v2, :cond_6e

    .line 102
    .line 103
    const/4 v2, 0x5

    .line 104
    if-eq v12, v2, :cond_6a

    .line 105
    .line 106
    goto :goto_1f

    .line 107
    :cond_6a
    invoke-virtual {v1}, La9/e;->a()V

    .line 108
    .line 109
    .line 110
    goto :goto_1f

    .line 111
    :cond_6e
    sget-object v2, Lx8/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 112
    .line 113
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    cmp-long v2, v4, v2

    .line 118
    .line 119
    if-gez v2, :cond_7b

    .line 120
    .line 121
    invoke-virtual {v1}, La9/e;->a()V

    .line 122
    .line 123
    .line 124
    :cond_7b
    invoke-virtual {p0}, Lx8/b;->n()Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Lx8/h;

    .line 129
    .line 130
    invoke-direct {v2, v1}, Lx8/h;-><init>(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    return-object v2

    .line 134
    :cond_85
    const-string v1, "unexpected"

    .line 135
    .line 136
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    return-object v1

    .line 141
    :cond_8c
    if-eqz v7, :cond_9b

    .line 142
    .line 143
    invoke-virtual {v1}, La9/u;->h()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lx8/b;->n()Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v2, Lx8/h;

    .line 151
    .line 152
    invoke-direct {v2, v1}, Lx8/h;-><init>(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    return-object v2

    .line 156
    :cond_9b
    instance-of v3, v6, Lv8/u1;

    .line 157
    .line 158
    if-eqz v3, :cond_a2

    .line 159
    .line 160
    check-cast v6, Lv8/u1;

    .line 161
    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    const/4 v6, 0x0

    .line 164
    :goto_a3
    if-eqz v6, :cond_aa

    .line 165
    .line 166
    add-int v12, v2, v9

    .line 167
    .line 168
    invoke-interface {v6, v1, v12}, Lv8/u1;->b(La9/u;I)V

    .line 169
    .line 170
    .line 171
    :cond_aa
    iget-wide v3, v1, La9/u;->d:J

    .line 172
    .line 173
    mul-long/2addr v3, v10

    .line 174
    int-to-long v1, v2

    .line 175
    add-long/2addr v3, v1

    .line 176
    invoke-virtual {p0, v3, v4}, Lx8/b;->j(J)V

    .line 177
    .line 178
    .line 179
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_b5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_b8
    invoke-virtual {v1}, La9/e;->a()V

    .line 186
    .line 187
    .line 188
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 189
    .line 190
    return-object v1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lx8/m;->B(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Lx8/m;->B(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    instance-of p1, p1, Lx8/h;

    .line 7
    .line 8
    if-nez p1, :cond_c

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_c
    invoke-virtual {p0}, Lx8/b;->n()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    throw p1
.end method

.method public final s()Z
    .registers 3

    .line 1
    iget v0, p0, Lx8/m;->l:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method
