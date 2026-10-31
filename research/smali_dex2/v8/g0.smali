.class public abstract Lv8/g0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static final a(Lv8/e;Lkotlin/coroutines/Continuation;Z)V
    .registers 5

    .line 1
    sget-object v0, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lv8/e;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_17

    .line 12
    .line 13
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_12
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_1e

    .line 24
    :cond_17
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lv8/e;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_12

    .line 31
    :goto_1e
    if-eqz p2, :cond_5b

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p1, La9/h;

    .line 37
    .line 38
    iget-object p2, p1, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    iget-object p1, p1, La9/h;->h:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p1}, La9/b0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object v1, La9/b0;->a:La9/w;

    .line 51
    .line 52
    if-eq p1, v1, :cond_3a

    .line 53
    .line 54
    invoke-static {p2, v0, p1}, Lv8/q;->b(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lv8/s1;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v1, 0x0

    .line 60
    :goto_3b
    :try_start_3b
    invoke-interface {p2, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_4e

    .line 64
    .line 65
    if-eqz v1, :cond_4a

    .line 66
    .line 67
    invoke-virtual {v1}, Lv8/s1;->M()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_49

    .line 72
    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    return-void

    .line 75
    :cond_4a
    :goto_4a
    invoke-static {v0, p1}, La9/b0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_4e
    move-exception p0

    .line 80
    if-eqz v1, :cond_57

    .line 81
    .line 82
    invoke-virtual {v1}, Lv8/s1;->M()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_5a

    .line 87
    .line 88
    :cond_57
    invoke-static {v0, p1}, La9/b0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5a
    throw p0

    .line 92
    :cond_5b
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
