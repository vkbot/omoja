.class public abstract Lx8/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static final a(Lx8/q;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p2, Lx8/n;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lx8/n;

    .line 7
    .line 8
    iget v1, v0, Lx8/n;->d:I

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
    iput v1, v0, Lx8/n;->d:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lx8/n;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Lx8/n;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lx8/n;->d:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_37

    .line 35
    .line 36
    if-ne v2, v3, :cond_30

    .line 37
    .line 38
    iget-object p0, v0, Lx8/n;->b:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    :try_start_2a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    .line 44
    .line 45
    .line 46
    goto :goto_71

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    goto :goto_77

    .line 49
    :cond_30
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget-object v2, Lv8/y0;->b:Lv8/y0;

    .line 64
    .line 65
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-ne p2, p0, :cond_7b

    .line 70
    .line 71
    :try_start_46
    iput-object p1, v0, Lx8/n;->b:Ljava/lang/Object;

    .line 72
    .line 73
    iput v3, v0, Lx8/n;->d:I

    .line 74
    .line 75
    new-instance p2, Lv8/e;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {p2, v3, v2}, Lv8/e;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lv8/e;->r()V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ld9/h;

    .line 88
    .line 89
    const/4 v3, 0x6

    .line 90
    invoke-direct {v2, v3, p2}, Ld9/h;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    check-cast p0, Lx8/g;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lx8/g;->M(Ld9/h;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lv8/e;->q()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-ne p0, p2, :cond_6e

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_2e

    .line 109
    .line 110
    .line 111
    :cond_6e
    if-ne p0, v1, :cond_71

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_71
    :goto_71
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0

    .line 120
    :goto_77
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_7b
    const-string p0, "awaitClose() can only be invoked from the producer context"

    .line 125
    .line 126
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x0

    .line 130
    return-object p0
.end method
