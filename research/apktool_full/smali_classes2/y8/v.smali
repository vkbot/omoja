.class public final Ly8/v;
.super Lz8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ly8/m;
.implements Ly8/f;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "_state"

    .line 4
    .line 5
    const-class v2, Ly8/v;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ly8/v;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly8/v;->_state:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly8/v;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final c()Lz8/c;
    .locals 1

    .line 1
    new-instance v0, Ly8/w;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final collect(Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Ly8/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ly8/u;

    .line 7
    .line 8
    iget v1, v0, Ly8/u;->i:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ly8/u;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ly8/u;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Ly8/u;-><init>(Ly8/v;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Ly8/u;->g:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Ly8/u;->i:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    if-eq v2, p1, :cond_3

    .line 40
    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Ly8/u;->f:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v2, v0, Ly8/u;->e:Lv8/z0;

    .line 48
    .line 49
    iget-object v6, v0, Ly8/u;->d:Ly8/w;

    .line 50
    .line 51
    iget-object v7, v0, Ly8/u;->c:Ly8/g;

    .line 52
    .line 53
    iget-object v8, v0, Ly8/u;->b:Ly8/v;

    .line 54
    .line 55
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_1
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    return-object p1

    .line 69
    :cond_2
    iget-object p1, v0, Ly8/u;->f:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v2, v0, Ly8/u;->e:Lv8/z0;

    .line 72
    .line 73
    iget-object v6, v0, Ly8/u;->d:Ly8/w;

    .line 74
    .line 75
    iget-object v7, v0, Ly8/u;->c:Ly8/g;

    .line 76
    .line 77
    iget-object v8, v0, Ly8/u;->b:Ly8/v;

    .line 78
    .line 79
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_3
    iget-object v6, v0, Ly8/u;->d:Ly8/w;

    .line 84
    .line 85
    iget-object p1, v0, Ly8/u;->c:Ly8/g;

    .line 86
    .line 87
    iget-object v8, v0, Ly8/u;->b:Ly8/v;

    .line 88
    .line 89
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lz8/a;->a()Lz8/c;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Ly8/w;

    .line 101
    .line 102
    move-object v8, p0

    .line 103
    move-object v6, p2

    .line 104
    :goto_1
    :try_start_3
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    sget-object v2, Lv8/y0;->b:Lv8/y0;

    .line 109
    .line 110
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lv8/z0;

    .line 115
    .line 116
    move-object v7, p1

    .line 117
    move-object v2, p2

    .line 118
    move-object p1, v3

    .line 119
    :cond_5
    :goto_2
    sget-object p2, Ly8/v;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 120
    .line 121
    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    invoke-interface {v2}, Lv8/z0;->b()Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    check-cast v2, Lv8/h1;

    .line 135
    .line 136
    invoke-virtual {v2}, Lv8/h1;->s()Ljava/util/concurrent/CancellationException;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    throw p1

    .line 141
    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_b

    .line 148
    .line 149
    :cond_8
    sget-object p1, Lz8/b;->b:La9/w;

    .line 150
    .line 151
    if-ne p2, p1, :cond_9

    .line 152
    .line 153
    move-object p1, v3

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    move-object p1, p2

    .line 156
    :goto_4
    iput-object v8, v0, Ly8/u;->b:Ly8/v;

    .line 157
    .line 158
    iput-object v7, v0, Ly8/u;->c:Ly8/g;

    .line 159
    .line 160
    iput-object v6, v0, Ly8/u;->d:Ly8/w;

    .line 161
    .line 162
    iput-object v2, v0, Ly8/u;->e:Lv8/z0;

    .line 163
    .line 164
    iput-object p2, v0, Ly8/u;->f:Ljava/lang/Object;

    .line 165
    .line 166
    iput v5, v0, Ly8/u;->i:I

    .line 167
    .line 168
    invoke-interface {v7, p1, v0}, Ly8/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-ne p1, v1, :cond_a

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_a
    move-object p1, p2

    .line 176
    :cond_b
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    sget-object p2, Ly8/w;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 180
    .line 181
    sget-object v9, Ly8/r;->b:La9/w;

    .line 182
    .line 183
    invoke-virtual {p2, v6, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    sget-object v9, Ly8/r;->c:La9/w;

    .line 191
    .line 192
    if-ne p2, v9, :cond_c

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_c
    iput-object v8, v0, Ly8/u;->b:Ly8/v;

    .line 196
    .line 197
    iput-object v7, v0, Ly8/u;->c:Ly8/g;

    .line 198
    .line 199
    iput-object v6, v0, Ly8/u;->d:Ly8/w;

    .line 200
    .line 201
    iput-object v2, v0, Ly8/u;->e:Lv8/z0;

    .line 202
    .line 203
    iput-object p1, v0, Ly8/u;->f:Ljava/lang/Object;

    .line 204
    .line 205
    iput v4, v0, Ly8/u;->i:I

    .line 206
    .line 207
    invoke-virtual {v6, v0}, Ly8/w;->c(Ly8/u;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    if-ne p2, v1, :cond_5

    .line 212
    .line 213
    :goto_6
    return-object v1

    .line 214
    :goto_7
    invoke-virtual {v8, v6}, Lz8/a;->e(Lz8/c;)V

    .line 215
    .line 216
    .line 217
    throw p1
.end method

.method public final d()[Lz8/c;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ly8/w;

    .line 3
    .line 4
    return-object v0
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly8/v;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lz8/b;->b:La9/w;

    .line 4
    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Ly8/v;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Ly8/v;->e:I

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x1

    .line 26
    .line 27
    if-nez v0, :cond_b

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Ly8/v;->e:I

    .line 32
    .line 33
    iget-object v0, p0, Lz8/a;->b:[Lz8/c;

    .line 34
    .line 35
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    :goto_0
    check-cast v0, [Ly8/w;

    .line 39
    .line 40
    if-eqz v0, :cond_9

    .line 41
    .line 42
    array-length v1, v0

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-ge v2, v1, :cond_9

    .line 45
    .line 46
    aget-object v3, v0, v2

    .line 47
    .line 48
    if-eqz v3, :cond_8

    .line 49
    .line 50
    sget-object v4, Ly8/w;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    sget-object v6, Ly8/r;->c:La9/w;

    .line 60
    .line 61
    if-ne v5, v6, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    sget-object v7, Ly8/r;->b:La9/w;

    .line 65
    .line 66
    if-ne v5, v7, :cond_6

    .line 67
    .line 68
    :cond_4
    invoke-virtual {v4, v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eq v7, v5, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {v4, v3, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_7

    .line 87
    .line 88
    check-cast v5, Lv8/e;

    .line 89
    .line 90
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    .line 92
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    .line 94
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v5, v3}, Lv8/e;->resumeWith(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    if-eq v6, v5, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_9
    monitor-enter p0

    .line 113
    :try_start_2
    iget v0, p0, Ly8/v;->e:I

    .line 114
    .line 115
    if-ne v0, p1, :cond_a

    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    iput p1, p0, Ly8/v;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    goto :goto_4

    .line 125
    :cond_a
    :try_start_3
    iget-object p1, p0, Lz8/a;->b:[Lz8/c;

    .line 126
    .line 127
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .line 129
    monitor-exit p0

    .line 130
    move v8, v0

    .line 131
    move-object v0, p1

    .line 132
    move p1, v8

    .line 133
    goto :goto_0

    .line 134
    :goto_4
    monitor-exit p0

    .line 135
    throw p1

    .line 136
    :catchall_1
    move-exception p1

    .line 137
    goto :goto_5

    .line 138
    :cond_b
    add-int/lit8 p1, p1, 0x2

    .line 139
    .line 140
    :try_start_4
    iput p1, p0, Ly8/v;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :goto_5
    monitor-exit p0

    .line 145
    throw p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lz8/b;->b:La9/w;

    .line 2
    .line 3
    sget-object v1, Ly8/v;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    return-object v1
.end method
