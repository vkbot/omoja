.class public abstract Ly8/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:La9/w;

.field public static final b:La9/w;

.field public static final c:La9/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La9/w;

    .line 2
    .line 3
    const-string v1, "NO_VALUE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ly8/r;->a:La9/w;

    .line 10
    .line 11
    new-instance v0, La9/w;

    .line 12
    .line 13
    const-string v1, "NONE"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Ly8/r;->b:La9/w;

    .line 19
    .line 20
    new-instance v0, La9/w;

    .line 21
    .line 22
    const-string v1, "PENDING"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, La9/w;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Ly8/r;->c:La9/w;

    .line 28
    .line 29
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ly8/v;
    .locals 1

    .line 1
    new-instance v0, Ly8/v;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lz8/b;->b:La9/w;

    .line 6
    .line 7
    :cond_0
    invoke-direct {v0, p0}, Ly8/v;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    array-length p2, p0

    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    and-int/2addr p1, p2

    .line 6
    aput-object p3, p0, p1

    .line 7
    .line 8
    return-void
.end method

.method public static final c(Ly8/g;Lx8/p;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Ly8/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Ly8/h;

    .line 7
    .line 8
    iget v1, v0, Ly8/h;->g:I

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
    iput v1, v0, Ly8/h;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ly8/h;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Ly8/h;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Ly8/h;->g:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-ne v2, v4, :cond_2

    .line 41
    .line 42
    iget-boolean p2, v0, Ly8/h;->e:Z

    .line 43
    .line 44
    iget-object p0, v0, Ly8/h;->d:Lx8/a;

    .line 45
    .line 46
    iget-object p1, v0, Ly8/h;->c:Lx8/f;

    .line 47
    .line 48
    iget-object v2, v0, Ly8/h;->b:Ly8/g;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_1
    move-object v6, v2

    .line 54
    move-object v2, p0

    .line 55
    move-object p0, v6

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_4

    .line 59
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0

    .line 66
    :cond_3
    iget-boolean p2, v0, Ly8/h;->e:Z

    .line 67
    .line 68
    iget-object p0, v0, Ly8/h;->d:Lx8/a;

    .line 69
    .line 70
    iget-object p1, v0, Ly8/h;->c:Lx8/f;

    .line 71
    .line 72
    iget-object v2, v0, Ly8/h;->b:Ly8/g;

    .line 73
    .line 74
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :try_start_2
    iget-object p3, p1, Lx8/g;->e:Lx8/b;

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v2, Lx8/a;

    .line 87
    .line 88
    invoke-direct {v2, p3}, Lx8/a;-><init>(Lx8/b;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    iput-object p0, v0, Ly8/h;->b:Ly8/g;

    .line 92
    .line 93
    iput-object p1, v0, Ly8/h;->c:Lx8/f;

    .line 94
    .line 95
    iput-object v2, v0, Ly8/h;->d:Lx8/a;

    .line 96
    .line 97
    iput-boolean p2, v0, Ly8/h;->e:Z

    .line 98
    .line 99
    iput v5, v0, Ly8/h;->g:I

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Lx8/a;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    if-ne p3, v1, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-object v6, v2

    .line 109
    move-object v2, p0

    .line 110
    move-object p0, v6

    .line 111
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Lx8/a;->d()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    iput-object v2, v0, Ly8/h;->b:Ly8/g;

    .line 124
    .line 125
    iput-object p1, v0, Ly8/h;->c:Lx8/f;

    .line 126
    .line 127
    iput-object p0, v0, Ly8/h;->d:Lx8/a;

    .line 128
    .line 129
    iput-boolean p2, v0, Ly8/h;->e:Z

    .line 130
    .line 131
    iput v4, v0, Ly8/h;->g:I

    .line 132
    .line 133
    invoke-interface {v2, p3, v0}, Ly8/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-ne p3, v1, :cond_1

    .line 138
    .line 139
    :goto_3
    return-object v1

    .line 140
    :cond_6
    if-eqz p2, :cond_7

    .line 141
    .line 142
    invoke-interface {p1, v3}, Lx8/f;->c(Ljava/util/concurrent/CancellationException;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p0

    .line 148
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    :catchall_1
    move-exception p3

    .line 150
    if-eqz p2, :cond_a

    .line 151
    .line 152
    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    .line 153
    .line 154
    if-eqz p2, :cond_8

    .line 155
    .line 156
    move-object v3, p0

    .line 157
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 158
    .line 159
    :cond_8
    if-nez v3, :cond_9

    .line 160
    .line 161
    new-instance v3, Ljava/util/concurrent/CancellationException;

    .line 162
    .line 163
    const-string p2, "Channel was consumed, consumer had failed"

    .line 164
    .line 165
    invoke-direct {v3, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-interface {p1, v3}, Lx8/f;->c(Ljava/util/concurrent/CancellationException;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    throw p3
.end method
