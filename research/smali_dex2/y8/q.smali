.class public Ly8/q;
.super Lz8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ly8/l;
.implements Ly8/f;


# instance fields
.field public final e:I

.field public final f:I

.field public g:[Ljava/lang/Object;

.field public h:J

.field public i:J

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly8/q;->e:I

    .line 5
    .line 6
    iput p2, p0, Ly8/q;->f:I

    .line 7
    .line 8
    return-void
.end method

.method public static h(Ly8/q;Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p2, Ly8/p;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ly8/p;

    .line 7
    .line 8
    iget v1, v0, Ly8/p;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ly8/p;->h:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Ly8/p;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Ly8/p;-><init>(Ly8/q;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Ly8/p;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Ly8/p;->h:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    if-eqz v2, :cond_5f

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    if-eq v2, p0, :cond_50

    .line 39
    .line 40
    if-eq v2, v4, :cond_44

    .line 41
    .line 42
    if-ne v2, v3, :cond_3d

    .line 43
    .line 44
    iget-object p0, v0, Ly8/p;->e:Lv8/z0;

    .line 45
    .line 46
    iget-object p1, v0, Ly8/p;->d:Ly8/s;

    .line 47
    .line 48
    iget-object v2, v0, Ly8/p;->c:Ly8/g;

    .line 49
    .line 50
    iget-object v5, v0, Ly8/p;->b:Ly8/q;

    .line 51
    .line 52
    :try_start_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    .line 53
    .line 54
    .line 55
    :cond_36
    move-object p2, v2

    .line 56
    move-object v2, p0

    .line 57
    move-object p0, v5

    .line 58
    goto :goto_77

    .line 59
    :catchall_3a
    move-exception p0

    .line 60
    goto/16 :goto_b7

    .line 61
    .line 62
    :cond_3d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0

    .line 69
    :cond_44
    iget-object p0, v0, Ly8/p;->e:Lv8/z0;

    .line 70
    .line 71
    iget-object p1, v0, Ly8/p;->d:Ly8/s;

    .line 72
    .line 73
    iget-object v2, v0, Ly8/p;->c:Ly8/g;

    .line 74
    .line 75
    iget-object v5, v0, Ly8/p;->b:Ly8/q;

    .line 76
    .line 77
    :try_start_4c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_3a

    .line 78
    .line 79
    .line 80
    goto :goto_7a

    .line 81
    :cond_50
    iget-object p1, v0, Ly8/p;->d:Ly8/s;

    .line 82
    .line 83
    iget-object p0, v0, Ly8/p;->c:Ly8/g;

    .line 84
    .line 85
    iget-object v2, v0, Ly8/p;->b:Ly8/q;

    .line 86
    .line 87
    :try_start_56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5c

    .line 88
    .line 89
    .line 90
    move-object p2, p0

    .line 91
    move-object p0, v2

    .line 92
    goto :goto_6b

    .line 93
    :catchall_5c
    move-exception p0

    .line 94
    move-object v5, v2

    .line 95
    goto :goto_b7

    .line 96
    :cond_5f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lz8/a;->a()Lz8/c;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Ly8/s;

    .line 104
    .line 105
    move-object v7, p2

    .line 106
    move-object p2, p1

    .line 107
    move-object p1, v7

    .line 108
    :goto_6b
    :try_start_6b
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget-object v5, Lv8/y0;->b:Lv8/y0;

    .line 113
    .line 114
    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lv8/z0;
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_b4

    .line 119
    .line 120
    :goto_77
    move-object v5, p0

    .line 121
    move-object p0, v2

    .line 122
    move-object v2, p2

    .line 123
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-virtual {v5, p1}, Ly8/q;->p(Ly8/s;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    sget-object v6, Ly8/r;->a:La9/w;

    .line 128
    .line 129
    if-ne p2, v6, :cond_93

    .line 130
    .line 131
    iput-object v5, v0, Ly8/p;->b:Ly8/q;

    .line 132
    .line 133
    iput-object v2, v0, Ly8/p;->c:Ly8/g;

    .line 134
    .line 135
    iput-object p1, v0, Ly8/p;->d:Ly8/s;

    .line 136
    .line 137
    iput-object p0, v0, Ly8/p;->e:Lv8/z0;

    .line 138
    .line 139
    iput v4, v0, Ly8/p;->h:I

    .line 140
    .line 141
    invoke-virtual {v5, p1, v0}, Ly8/q;->f(Ly8/s;Ly8/p;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-ne p2, v1, :cond_7a

    .line 146
    .line 147
    goto :goto_b3

    .line 148
    :cond_93
    if-eqz p0, :cond_a3

    .line 149
    .line 150
    invoke-interface {p0}, Lv8/z0;->b()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_9c

    .line 155
    .line 156
    goto :goto_a3

    .line 157
    :cond_9c
    check-cast p0, Lv8/h1;

    .line 158
    .line 159
    invoke-virtual {p0}, Lv8/h1;->s()Ljava/util/concurrent/CancellationException;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    throw p0

    .line 164
    :cond_a3
    :goto_a3
    iput-object v5, v0, Ly8/p;->b:Ly8/q;

    .line 165
    .line 166
    iput-object v2, v0, Ly8/p;->c:Ly8/g;

    .line 167
    .line 168
    iput-object p1, v0, Ly8/p;->d:Ly8/s;

    .line 169
    .line 170
    iput-object p0, v0, Ly8/p;->e:Lv8/z0;

    .line 171
    .line 172
    iput v3, v0, Ly8/p;->h:I

    .line 173
    .line 174
    invoke-interface {v2, p2, v0}, Ly8/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2
    :try_end_b1
    .catchall {:try_start_7a .. :try_end_b1} :catchall_3a

    .line 178
    if-ne p2, v1, :cond_36

    .line 179
    .line 180
    :goto_b3
    return-object v1

    .line 181
    :catchall_b4
    move-exception p2

    .line 182
    move-object v5, p0

    .line 183
    move-object p0, p2

    .line 184
    :goto_b7
    invoke-virtual {v5, p1}, Lz8/a;->e(Lz8/c;)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    sget-object v0, Lz8/b;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Ly8/q;->n(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_12

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ly8/q;->k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_13

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    goto :goto_2a

    .line 19
    :cond_12
    move p1, v1

    .line 20
    :goto_13
    monitor-exit p0

    .line 21
    array-length v2, v0

    .line 22
    :goto_15
    if-ge v1, v2, :cond_29

    .line 23
    .line 24
    aget-object v3, v0, v1

    .line 25
    .line 26
    if-eqz v3, :cond_26

    .line 27
    .line 28
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_15

    .line 42
    :cond_29
    return p1

    .line 43
    :goto_2a
    monitor-exit p0

    .line 44
    throw p1
.end method

.method public final c()Lz8/c;
    .registers 4

    .line 1
    new-instance v0, Ly8/s;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    iput-wide v1, v0, Ly8/s;->a:J

    .line 9
    .line 10
    return-object v0
.end method

.method public final collect(Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Ly8/q;->h(Ly8/q;Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d()[Lz8/c;
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ly8/s;

    .line 3
    .line 4
    return-object v0
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-virtual {p0, p1}, Ly8/q;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_9
    new-instance v5, Lv8/e;

    .line 11
    .line 12
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-direct {v5, v6, v0}, Lv8/e;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Lv8/e;->r()V

    .line 21
    .line 22
    .line 23
    sget-object v7, Lz8/b;->a:[Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_19
    invoke-virtual {p0, p1}, Ly8/q;->n(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_9f

    .line 30
    if-eqz v0, :cond_36

    .line 31
    .line 32
    :try_start_1f
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v5, p1}, Lv8/e;->resumeWith(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v7}, Ly8/q;->k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_31

    .line 47
    const/4 v0, 0x0

    .line 48
    move-object v1, p0

    .line 49
    goto :goto_5e

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    move-object v1, p0

    .line 53
    goto/16 :goto_a2

    .line 54
    .line 55
    :cond_36
    :try_start_36
    new-instance v0, Ly8/o;

    .line 56
    .line 57
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    iget v3, p0, Ly8/q;->j:I

    .line 62
    .line 63
    iget v4, p0, Ly8/q;->k:I
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_9f

    .line 64
    .line 65
    add-int/2addr v3, v4

    .line 66
    int-to-long v3, v3

    .line 67
    add-long v2, v1, v3

    .line 68
    .line 69
    move-object v1, p0

    .line 70
    move-object v4, p1

    .line 71
    :try_start_46
    invoke-direct/range {v0 .. v5}, Ly8/o;-><init>(Ly8/q;JLjava/lang/Object;Lv8/e;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ly8/q;->j(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget p1, v1, Ly8/q;->k:I

    .line 78
    .line 79
    add-int/2addr p1, v6

    .line 80
    iput p1, v1, Ly8/q;->k:I

    .line 81
    .line 82
    iget p1, v1, Ly8/q;->e:I

    .line 83
    .line 84
    if-nez p1, :cond_5d

    .line 85
    .line 86
    invoke-virtual {p0, v7}, Ly8/q;->k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 87
    .line 88
    .line 89
    move-result-object v7
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_5a

    .line 90
    goto :goto_5d

    .line 91
    :catchall_5a
    move-exception v0

    .line 92
    :goto_5b
    move-object p1, v0

    .line 93
    goto :goto_a2

    .line 94
    :cond_5d
    :goto_5d
    move-object p1, v7

    .line 95
    :goto_5e
    monitor-exit p0

    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v0, :cond_6a

    .line 98
    .line 99
    new-instance v3, Lv8/j0;

    .line 100
    .line 101
    invoke-direct {v3, v2, v0}, Lv8/j0;-><init>(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v3}, Lv8/e;->t(Lkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    :cond_6a
    array-length v0, p1

    .line 108
    :goto_6b
    if-ge v2, v0, :cond_7f

    .line 109
    .line 110
    aget-object v3, p1, v2

    .line 111
    .line 112
    if-eqz v3, :cond_7c

    .line 113
    .line 114
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    .line 116
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 117
    .line 118
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_6b

    .line 128
    :cond_7f
    invoke-virtual {v5}, Lv8/e;->q()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-ne p1, v0, :cond_8c

    .line 137
    .line 138
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 139
    .line 140
    .line 141
    :cond_8c
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-ne p1, p2, :cond_93

    .line 146
    .line 147
    goto :goto_95

    .line 148
    :cond_93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    .line 150
    :goto_95
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-ne p1, p2, :cond_9c

    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_9c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1

    .line 160
    :catchall_9f
    move-exception v0

    .line 161
    move-object v1, p0

    .line 162
    goto :goto_5b

    .line 163
    :goto_a2
    monitor-exit p0

    .line 164
    throw p1
.end method

.method public final f(Ly8/s;Ly8/p;)Ljava/lang/Object;
    .registers 8

    .line 1
    new-instance v0, Lv8/e;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v2, v1}, Lv8/e;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lv8/e;->r()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_e
    invoke-virtual {p0, p1}, Ly8/q;->o(Ly8/s;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-gez v1, :cond_1d

    .line 24
    .line 25
    iput-object v0, p1, Ly8/s;->b:Lv8/e;

    .line 26
    .line 27
    goto :goto_28

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    goto :goto_42

    .line 30
    :cond_1d
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lv8/e;->resumeWith(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_1b

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    invoke-virtual {v0}, Lv8/e;->q()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-ne p1, v0, :cond_38

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    :cond_38
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-ne p1, p2, :cond_3f

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1

    .line 67
    :goto_42
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final g()V
    .registers 9

    .line 1
    iget v0, p0, Ly8/q;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_a

    .line 5
    .line 6
    iget v0, p0, Ly8/q;->k:I

    .line 7
    .line 8
    if-gt v0, v1, :cond_a

    .line 9
    .line 10
    goto :goto_3f

    .line 11
    :cond_a
    iget-object v0, p0, Ly8/q;->g:[Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_f
    iget v2, p0, Ly8/q;->k:I

    .line 17
    .line 18
    if-lez v2, :cond_3f

    .line 19
    .line 20
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget v4, p0, Ly8/q;->j:I

    .line 25
    .line 26
    iget v5, p0, Ly8/q;->k:I

    .line 27
    .line 28
    add-int/2addr v4, v5

    .line 29
    int-to-long v6, v4

    .line 30
    add-long/2addr v2, v6

    .line 31
    const-wide/16 v6, 0x1

    .line 32
    .line 33
    sub-long/2addr v2, v6

    .line 34
    long-to-int v2, v2

    .line 35
    array-length v3, v0

    .line 36
    sub-int/2addr v3, v1

    .line 37
    and-int/2addr v2, v3

    .line 38
    aget-object v2, v0, v2

    .line 39
    .line 40
    sget-object v3, Ly8/r;->a:La9/w;

    .line 41
    .line 42
    if-ne v2, v3, :cond_3f

    .line 43
    .line 44
    add-int/lit8 v5, v5, -0x1

    .line 45
    .line 46
    iput v5, p0, Ly8/q;->k:I

    .line 47
    .line 48
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iget v4, p0, Ly8/q;->j:I

    .line 53
    .line 54
    iget v5, p0, Ly8/q;->k:I

    .line 55
    .line 56
    add-int/2addr v4, v5

    .line 57
    int-to-long v4, v4

    .line 58
    add-long/2addr v2, v4

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static {v0, v2, v3, v4}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_f

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public final i()V
    .registers 11

    .line 1
    iget-object v0, p0, Ly8/q;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Ly8/q;->j:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Ly8/q;->j:I

    .line 19
    .line 20
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iget-wide v2, p0, Ly8/q;->h:J

    .line 28
    .line 29
    cmp-long v2, v2, v0

    .line 30
    .line 31
    if-gez v2, :cond_22

    .line 32
    .line 33
    iput-wide v0, p0, Ly8/q;->h:J

    .line 34
    .line 35
    :cond_22
    iget-wide v2, p0, Ly8/q;->i:J

    .line 36
    .line 37
    cmp-long v2, v2, v0

    .line 38
    .line 39
    if-gez v2, :cond_4d

    .line 40
    .line 41
    iget v2, p0, Lz8/a;->c:I

    .line 42
    .line 43
    if-eqz v2, :cond_4b

    .line 44
    .line 45
    iget-object v2, p0, Lz8/a;->b:[Lz8/c;

    .line 46
    .line 47
    if-eqz v2, :cond_4b

    .line 48
    .line 49
    array-length v3, v2

    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_32
    if-ge v4, v3, :cond_4b

    .line 52
    .line 53
    aget-object v5, v2, v4

    .line 54
    .line 55
    if-eqz v5, :cond_48

    .line 56
    .line 57
    check-cast v5, Ly8/s;

    .line 58
    .line 59
    iget-wide v6, v5, Ly8/s;->a:J

    .line 60
    .line 61
    const-wide/16 v8, 0x0

    .line 62
    .line 63
    cmp-long v8, v6, v8

    .line 64
    .line 65
    if-ltz v8, :cond_48

    .line 66
    .line 67
    cmp-long v6, v6, v0

    .line 68
    .line 69
    if-gez v6, :cond_48

    .line 70
    .line 71
    iput-wide v0, v5, Ly8/s;->a:J

    .line 72
    .line 73
    :cond_48
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_32

    .line 76
    :cond_4b
    iput-wide v0, p0, Ly8/q;->i:J

    .line 77
    .line 78
    :cond_4d
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget v0, p0, Ly8/q;->j:I

    .line 2
    .line 3
    iget v1, p0, Ly8/q;->k:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Ly8/q;->g:[Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-nez v1, :cond_11

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v3, v2, v1}, Ly8/q;->m(II[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    array-length v3, v1

    .line 19
    if-lt v0, v3, :cond_1a

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    mul-int/2addr v3, v2

    .line 23
    invoke-virtual {p0, v0, v3, v1}, Ly8/q;->m(II[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    int-to-long v4, v0

    .line 32
    add-long/2addr v2, v4

    .line 33
    invoke-static {v1, v2, v3, p1}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 12

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lz8/a;->c:I

    .line 3
    .line 4
    if-eqz v1, :cond_3e

    .line 5
    .line 6
    iget-object v1, p0, Lz8/a;->b:[Lz8/c;

    .line 7
    .line 8
    if-eqz v1, :cond_3e

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_b
    if-ge v3, v2, :cond_3e

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    if-eqz v4, :cond_3b

    .line 17
    .line 18
    check-cast v4, Ly8/s;

    .line 19
    .line 20
    iget-object v5, v4, Ly8/s;->b:Lv8/e;

    .line 21
    .line 22
    if-nez v5, :cond_18

    .line 23
    .line 24
    goto :goto_3b

    .line 25
    :cond_18
    invoke-virtual {p0, v4}, Ly8/q;->o(Ly8/s;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    cmp-long v6, v6, v8

    .line 32
    .line 33
    if-ltz v6, :cond_3b

    .line 34
    .line 35
    array-length v6, p1

    .line 36
    if-lt v0, v6, :cond_30

    .line 37
    .line 38
    array-length v6, p1

    .line 39
    const/4 v7, 0x2

    .line 40
    mul-int/2addr v6, v7

    .line 41
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_30
    move-object v6, p1

    .line 50
    check-cast v6, [Lkotlin/coroutines/Continuation;

    .line 51
    .line 52
    add-int/lit8 v7, v0, 0x1

    .line 53
    .line 54
    aput-object v5, v6, v0

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, v4, Ly8/s;->b:Lv8/e;

    .line 58
    .line 59
    move v0, v7

    .line 60
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_b

    .line 63
    :cond_3e
    check-cast p1, [Lkotlin/coroutines/Continuation;

    .line 64
    .line 65
    return-object p1
.end method

.method public final l()J
    .registers 5

    .line 1
    iget-wide v0, p0, Ly8/q;->i:J

    .line 2
    .line 3
    iget-wide v2, p0, Ly8/q;->h:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final m(II[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11

    .line 1
    if-lez p2, :cond_20

    .line 2
    .line 3
    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ly8/q;->g:[Ljava/lang/Object;

    .line 6
    .line 7
    if-nez p3, :cond_9

    .line 8
    .line 9
    goto :goto_1f

    .line 10
    :cond_9
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, p1, :cond_1f

    .line 16
    .line 17
    int-to-long v3, v2

    .line 18
    add-long/2addr v3, v0

    .line 19
    long-to-int v5, v3

    .line 20
    array-length v6, p3

    .line 21
    add-int/lit8 v6, v6, -0x1

    .line 22
    .line 23
    and-int/2addr v5, v6

    .line 24
    aget-object v5, p3, v5

    .line 25
    .line 26
    invoke-static {p2, v3, v4, v5}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_e

    .line 32
    :cond_1f
    :goto_1f
    return-object p2

    .line 33
    :cond_20
    const-string p1, "Buffer size overflow"

    .line 34
    .line 35
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Z
    .registers 14

    .line 1
    iget v1, p0, Lz8/a;->c:I

    .line 2
    .line 3
    const/4 v9, 0x1

    .line 4
    if-nez v1, :cond_1d

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, Ly8/q;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Ly8/q;->j:I

    .line 10
    .line 11
    add-int/2addr v1, v9

    .line 12
    iput v1, p0, Ly8/q;->j:I

    .line 13
    .line 14
    if-le v1, v9, :cond_12

    .line 15
    .line 16
    invoke-virtual {p0}, Ly8/q;->i()V

    .line 17
    .line 18
    .line 19
    :cond_12
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iget v3, p0, Ly8/q;->j:I

    .line 24
    .line 25
    int-to-long v3, v3

    .line 26
    add-long/2addr v1, v3

    .line 27
    iput-wide v1, p0, Ly8/q;->i:J

    .line 28
    .line 29
    return v9

    .line 30
    :cond_1d
    iget v1, p0, Ly8/q;->j:I

    .line 31
    .line 32
    iget v2, p0, Ly8/q;->e:I

    .line 33
    .line 34
    if-lt v1, v2, :cond_39

    .line 35
    .line 36
    iget-wide v3, p0, Ly8/q;->i:J

    .line 37
    .line 38
    iget-wide v5, p0, Ly8/q;->h:J

    .line 39
    .line 40
    cmp-long v1, v3, v5

    .line 41
    .line 42
    if-gtz v1, :cond_39

    .line 43
    .line 44
    iget v1, p0, Ly8/q;->f:I

    .line 45
    .line 46
    invoke-static {v1}, Lcom/bumptech/glide/g;->c(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_37

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    if-eq v1, v3, :cond_71

    .line 54
    .line 55
    goto :goto_39

    .line 56
    :cond_37
    const/4 v1, 0x0

    .line 57
    return v1

    .line 58
    :cond_39
    :goto_39
    invoke-virtual/range {p0 .. p1}, Ly8/q;->j(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget v1, p0, Ly8/q;->j:I

    .line 62
    .line 63
    add-int/2addr v1, v9

    .line 64
    iput v1, p0, Ly8/q;->j:I

    .line 65
    .line 66
    if-le v1, v2, :cond_46

    .line 67
    .line 68
    invoke-virtual {p0}, Ly8/q;->i()V

    .line 69
    .line 70
    .line 71
    :cond_46
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iget v3, p0, Ly8/q;->j:I

    .line 76
    .line 77
    int-to-long v3, v3

    .line 78
    add-long/2addr v1, v3

    .line 79
    iget-wide v3, p0, Ly8/q;->h:J

    .line 80
    .line 81
    sub-long/2addr v1, v3

    .line 82
    long-to-int v1, v1

    .line 83
    if-le v1, v9, :cond_71

    .line 84
    .line 85
    const-wide/16 v1, 0x1

    .line 86
    .line 87
    add-long/2addr v1, v3

    .line 88
    iget-wide v3, p0, Ly8/q;->i:J

    .line 89
    .line 90
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    iget v7, p0, Ly8/q;->j:I

    .line 95
    .line 96
    int-to-long v7, v7

    .line 97
    add-long/2addr v5, v7

    .line 98
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    iget v10, p0, Ly8/q;->j:I

    .line 103
    .line 104
    int-to-long v10, v10

    .line 105
    add-long/2addr v7, v10

    .line 106
    iget v10, p0, Ly8/q;->k:I

    .line 107
    .line 108
    int-to-long v10, v10

    .line 109
    add-long/2addr v7, v10

    .line 110
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v8}, Ly8/q;->q(JJJJ)V

    .line 112
    .line 113
    .line 114
    :cond_71
    return v9
.end method

.method public final o(Ly8/s;)J
    .registers 8

    .line 1
    iget-wide v0, p1, Ly8/s;->a:J

    .line 2
    .line 3
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget p1, p0, Ly8/q;->j:I

    .line 8
    .line 9
    int-to-long v4, p1

    .line 10
    add-long/2addr v2, v4

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-gez p1, :cond_f

    .line 14
    .line 15
    goto :goto_23

    .line 16
    :cond_f
    iget p1, p0, Ly8/q;->e:I

    .line 17
    .line 18
    if-lez p1, :cond_14

    .line 19
    .line 20
    goto :goto_21

    .line 21
    :cond_14
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-lez p1, :cond_1d

    .line 28
    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    iget p1, p0, Ly8/q;->k:I

    .line 31
    .line 32
    if-nez p1, :cond_23

    .line 33
    .line 34
    :goto_21
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    :cond_23
    :goto_23
    return-wide v0
.end method

.method public final p(Ly8/s;)Ljava/lang/Object;
    .registers 10

    .line 1
    sget-object v0, Lz8/b;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Ly8/q;->o(Ly8/s;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-gez v3, :cond_12

    .line 13
    .line 14
    sget-object p1, Ly8/r;->a:La9/w;

    .line 15
    .line 16
    goto :goto_34

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    goto :goto_4c

    .line 19
    :cond_12
    iget-wide v3, p1, Ly8/s;->a:J

    .line 20
    .line 21
    iget-object v0, p0, Ly8/q;->g:[Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    long-to-int v5, v1

    .line 27
    array-length v6, v0

    .line 28
    add-int/lit8 v6, v6, -0x1

    .line 29
    .line 30
    and-int/2addr v5, v6

    .line 31
    aget-object v0, v0, v5

    .line 32
    .line 33
    instance-of v5, v0, Ly8/o;

    .line 34
    .line 35
    if-eqz v5, :cond_28

    .line 36
    .line 37
    check-cast v0, Ly8/o;

    .line 38
    .line 39
    iget-object v0, v0, Ly8/o;->d:Ljava/lang/Object;

    .line 40
    .line 41
    :cond_28
    const-wide/16 v5, 0x1

    .line 42
    .line 43
    add-long/2addr v1, v5

    .line 44
    iput-wide v1, p1, Ly8/s;->a:J

    .line 45
    .line 46
    invoke-virtual {p0, v3, v4}, Ly8/q;->r(J)[Lkotlin/coroutines/Continuation;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_10

    .line 50
    move-object v7, v0

    .line 51
    move-object v0, p1

    .line 52
    move-object p1, v7

    .line 53
    :goto_34
    monitor-exit p0

    .line 54
    array-length v1, v0

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_37
    if-ge v2, v1, :cond_4b

    .line 57
    .line 58
    aget-object v3, v0, v2

    .line 59
    .line 60
    if-eqz v3, :cond_48

    .line 61
    .line 62
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 63
    .line 64
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_48
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_37

    .line 76
    :cond_4b
    return-object p1

    .line 77
    :goto_4c
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public final q(JJJJ)V
    .registers 15

    .line 1
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Ly8/q;->l()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :goto_8
    cmp-long v4, v2, v0

    .line 10
    .line 11
    if-gez v4, :cond_19

    .line 12
    .line 13
    iget-object v4, p0, Ly8/q;->g:[Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v4, v2, v3, v5}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v4, 0x1

    .line 23
    .line 24
    add-long/2addr v2, v4

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    iput-wide p1, p0, Ly8/q;->h:J

    .line 27
    .line 28
    iput-wide p3, p0, Ly8/q;->i:J

    .line 29
    .line 30
    sub-long p1, p5, v0

    .line 31
    .line 32
    long-to-int p1, p1

    .line 33
    iput p1, p0, Ly8/q;->j:I

    .line 34
    .line 35
    sub-long/2addr p7, p5

    .line 36
    long-to-int p1, p7

    .line 37
    iput p1, p0, Ly8/q;->k:I

    .line 38
    .line 39
    return-void
.end method

.method public final r(J)[Lkotlin/coroutines/Continuation;
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ly8/r;->a:La9/w;

    .line 4
    .line 5
    sget-object v2, Lz8/b;->a:[Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    iget-wide v3, v0, Ly8/q;->i:J

    .line 8
    .line 9
    cmp-long v3, p1, v3

    .line 10
    .line 11
    if-lez v3, :cond_d

    .line 12
    .line 13
    goto :goto_49

    .line 14
    :cond_d
    invoke-virtual {v0}, Ly8/q;->l()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iget v5, v0, Ly8/q;->j:I

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    add-long/2addr v5, v3

    .line 22
    iget v7, v0, Ly8/q;->e:I

    .line 23
    .line 24
    const-wide/16 v8, 0x1

    .line 25
    .line 26
    if-nez v7, :cond_20

    .line 27
    .line 28
    iget v10, v0, Ly8/q;->k:I

    .line 29
    .line 30
    if-lez v10, :cond_20

    .line 31
    .line 32
    add-long/2addr v5, v8

    .line 33
    :cond_20
    iget v10, v0, Lz8/a;->c:I

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    if-eqz v10, :cond_43

    .line 37
    .line 38
    iget-object v10, v0, Lz8/a;->b:[Lz8/c;

    .line 39
    .line 40
    if-eqz v10, :cond_43

    .line 41
    .line 42
    array-length v12, v10

    .line 43
    move v13, v11

    .line 44
    :goto_2b
    if-ge v13, v12, :cond_43

    .line 45
    .line 46
    aget-object v14, v10, v13

    .line 47
    .line 48
    if-eqz v14, :cond_40

    .line 49
    .line 50
    check-cast v14, Ly8/s;

    .line 51
    .line 52
    iget-wide v14, v14, Ly8/s;->a:J

    .line 53
    .line 54
    const-wide/16 v16, 0x0

    .line 55
    .line 56
    cmp-long v16, v14, v16

    .line 57
    .line 58
    if-ltz v16, :cond_40

    .line 59
    .line 60
    cmp-long v16, v14, v5

    .line 61
    .line 62
    if-gez v16, :cond_40

    .line 63
    .line 64
    move-wide v5, v14

    .line 65
    :cond_40
    add-int/lit8 v13, v13, 0x1

    .line 66
    .line 67
    goto :goto_2b

    .line 68
    :cond_43
    iget-wide v12, v0, Ly8/q;->i:J

    .line 69
    .line 70
    cmp-long v10, v5, v12

    .line 71
    .line 72
    if-gtz v10, :cond_4a

    .line 73
    .line 74
    :goto_49
    return-object v2

    .line 75
    :cond_4a
    invoke-virtual {v0}, Ly8/q;->l()J

    .line 76
    .line 77
    .line 78
    move-result-wide v12

    .line 79
    iget v10, v0, Ly8/q;->j:I

    .line 80
    .line 81
    int-to-long v14, v10

    .line 82
    add-long/2addr v12, v14

    .line 83
    iget v10, v0, Lz8/a;->c:I

    .line 84
    .line 85
    iget v14, v0, Ly8/q;->k:I

    .line 86
    .line 87
    if-lez v10, :cond_64

    .line 88
    .line 89
    move-wide/from16 p1, v8

    .line 90
    .line 91
    sub-long v8, v12, v5

    .line 92
    .line 93
    long-to-int v8, v8

    .line 94
    sub-int v8, v7, v8

    .line 95
    .line 96
    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    goto :goto_66

    .line 101
    :cond_64
    move-wide/from16 p1, v8

    .line 102
    .line 103
    :goto_66
    iget v8, v0, Ly8/q;->k:I

    .line 104
    .line 105
    int-to-long v8, v8

    .line 106
    add-long/2addr v8, v12

    .line 107
    if-lez v14, :cond_b8

    .line 108
    .line 109
    new-array v2, v14, [Lkotlin/coroutines/Continuation;

    .line 110
    .line 111
    iget-object v15, v0, Ly8/q;->g:[Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move/from16 v17, v11

    .line 117
    .line 118
    move-wide v10, v12

    .line 119
    const/16 v16, 0x1

    .line 120
    .line 121
    :goto_78
    cmp-long v18, v12, v8

    .line 122
    .line 123
    if-gez v18, :cond_b3

    .line 124
    .line 125
    move-object/from16 v18, v2

    .line 126
    .line 127
    long-to-int v2, v12

    .line 128
    move/from16 v19, v2

    .line 129
    .line 130
    array-length v2, v15

    .line 131
    add-int/lit8 v2, v2, -0x1

    .line 132
    .line 133
    and-int v2, v19, v2

    .line 134
    .line 135
    aget-object v2, v15, v2

    .line 136
    .line 137
    if-eq v2, v1, :cond_aa

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    check-cast v2, Ly8/o;

    .line 143
    .line 144
    move-wide/from16 v19, v3

    .line 145
    .line 146
    add-int/lit8 v3, v17, 0x1

    .line 147
    .line 148
    iget-object v4, v2, Ly8/o;->e:Lv8/e;

    .line 149
    .line 150
    aput-object v4, v18, v17

    .line 151
    .line 152
    invoke-static {v15, v12, v13, v1}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v2, Ly8/o;->d:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v15, v10, v11, v2}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-long v10, v10, p1

    .line 161
    .line 162
    if-ge v3, v14, :cond_a6

    .line 163
    .line 164
    move/from16 v17, v3

    .line 165
    .line 166
    goto :goto_ac

    .line 167
    :cond_a6
    :goto_a6
    move-wide v12, v10

    .line 168
    move-object/from16 v10, v18

    .line 169
    .line 170
    goto :goto_bd

    .line 171
    :cond_aa
    move-wide/from16 v19, v3

    .line 172
    .line 173
    :goto_ac
    add-long v12, v12, p1

    .line 174
    .line 175
    move-object/from16 v2, v18

    .line 176
    .line 177
    move-wide/from16 v3, v19

    .line 178
    .line 179
    goto :goto_78

    .line 180
    :cond_b3
    move-object/from16 v18, v2

    .line 181
    .line 182
    move-wide/from16 v19, v3

    .line 183
    .line 184
    goto :goto_a6

    .line 185
    :cond_b8
    move-wide/from16 v19, v3

    .line 186
    .line 187
    const/16 v16, 0x1

    .line 188
    .line 189
    move-object v10, v2

    .line 190
    :goto_bd
    sub-long v2, v12, v19

    .line 191
    .line 192
    long-to-int v2, v2

    .line 193
    iget v3, v0, Lz8/a;->c:I

    .line 194
    .line 195
    if-nez v3, :cond_c6

    .line 196
    .line 197
    move-wide v3, v12

    .line 198
    goto :goto_c7

    .line 199
    :cond_c6
    move-wide v3, v5

    .line 200
    :goto_c7
    iget-wide v5, v0, Ly8/q;->h:J

    .line 201
    .line 202
    move/from16 v11, v16

    .line 203
    .line 204
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    int-to-long v14, v2

    .line 209
    sub-long v14, v12, v14

    .line 210
    .line 211
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    if-nez v7, :cond_f1

    .line 216
    .line 217
    cmp-long v2, v5, v8

    .line 218
    .line 219
    if-gez v2, :cond_f1

    .line 220
    .line 221
    iget-object v2, v0, Ly8/q;->g:[Ljava/lang/Object;

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    long-to-int v7, v5

    .line 227
    array-length v14, v2

    .line 228
    sub-int/2addr v14, v11

    .line 229
    and-int/2addr v7, v14

    .line 230
    aget-object v2, v2, v7

    .line 231
    .line 232
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_f1

    .line 237
    .line 238
    add-long v12, v12, p1

    .line 239
    .line 240
    add-long v5, v5, p1

    .line 241
    .line 242
    :cond_f1
    move-wide v1, v5

    .line 243
    move-wide v7, v8

    .line 244
    move-wide v5, v12

    .line 245
    invoke-virtual/range {v0 .. v8}, Ly8/q;->q(JJJJ)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ly8/q;->g()V

    .line 249
    .line 250
    .line 251
    array-length v1, v10

    .line 252
    if-nez v1, :cond_fe

    .line 253
    .line 254
    return-object v10

    .line 255
    :cond_fe
    invoke-virtual {v0, v10}, Ly8/q;->k([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    return-object v1
.end method
