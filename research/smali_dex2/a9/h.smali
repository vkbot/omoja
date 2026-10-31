.class public final La9/h;
.super Lv8/f0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlin/coroutines/Continuation;


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final e:Lv8/t;

.field public final f:Lkotlin/coroutines/Continuation;

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "_reusableCancellableContinuation"

    .line 4
    .line 5
    const-class v2, La9/h;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, La9/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lv8/t;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Lv8/f0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, La9/h;->e:Lv8/t;

    .line 6
    .line 7
    iput-object p2, p0, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    sget-object p1, La9/a;->b:La9/w;

    .line 10
    .line 11
    iput-object p1, p0, La9/h;->g:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    sget-object v0, La9/b0;->b:La9/y;

    .line 23
    .line 24
    invoke-interface {p1, p2, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, La9/h;->h:Ljava/lang/Object;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    .line 1
    instance-of p1, p1, Lv8/l;

    .line 2
    .line 3
    if-nez p1, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final e()Lkotlin/coroutines/Continuation;
    .registers 1

    .line 1
    return-object p0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .registers 3

    .line 1
    iget-object v0, p0, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    .line 1
    iget-object v0, p0, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, La9/h;->g:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, La9/a;->b:La9/w;

    .line 4
    .line 5
    iput-object v1, p0, La9/h;->g:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 11

    .line 1
    iget-object v0, p0, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_f

    .line 13
    .line 14
    move-object v4, p1

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    new-instance v4, Lv8/k;

    .line 17
    .line 18
    invoke-direct {v4, v3, v2}, Lv8/k;-><init>(ZLjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    iget-object v2, p0, La9/h;->e:Lv8/t;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lv8/t;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_24

    .line 28
    .line 29
    iput-object v4, p0, La9/h;->g:Ljava/lang/Object;

    .line 30
    .line 31
    iput v3, p0, Lv8/f0;->d:I

    .line 32
    .line 33
    invoke-virtual {v2, v1, p0}, Lv8/t;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    invoke-static {}, Lv8/q1;->a()Lv8/l0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v5, v1, Lv8/l0;->b:J

    .line 42
    .line 43
    const-wide v7, 0x100000000L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmp-long v2, v5, v7

    .line 49
    .line 50
    if-ltz v2, :cond_46

    .line 51
    .line 52
    iput-object v4, p0, La9/h;->g:Ljava/lang/Object;

    .line 53
    .line 54
    iput v3, p0, Lv8/f0;->d:I

    .line 55
    .line 56
    iget-object p1, v1, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 57
    .line 58
    if-nez p1, :cond_42

    .line 59
    .line 60
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 61
    .line 62
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, v1, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 66
    .line 67
    :cond_42
    invoke-virtual {p1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_46
    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Lv8/l0;->S(Z)V

    .line 73
    .line 74
    .line 75
    :try_start_4a
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v3, p0, La9/h;->h:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v2, v3}, La9/b0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_66

    .line 85
    :try_start_54
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_68

    .line 89
    .line 90
    :try_start_59
    invoke-static {v2, v3}, La9/b0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5c
    invoke-virtual {v1}, Lv8/l0;->V()Z

    .line 94
    .line 95
    .line 96
    move-result p1
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_66

    .line 97
    if-nez p1, :cond_5c

    .line 98
    .line 99
    :goto_62
    invoke-virtual {v1}, Lv8/l0;->y()V

    .line 100
    .line 101
    .line 102
    goto :goto_72

    .line 103
    :catchall_66
    move-exception p1

    .line 104
    goto :goto_6d

    .line 105
    :catchall_68
    move-exception p1

    .line 106
    :try_start_69
    invoke-static {v2, v3}, La9/b0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    throw p1
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_66

    .line 110
    :goto_6d
    const/4 v0, 0x0

    .line 111
    :try_start_6e
    invoke-virtual {p0, p1, v0}, Lv8/f0;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_73

    .line 112
    .line 113
    .line 114
    goto :goto_62

    .line 115
    :goto_72
    return-void

    .line 116
    :catchall_73
    move-exception p1

    .line 117
    invoke-virtual {v1}, Lv8/l0;->y()V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DispatchedContinuation["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La9/h;->e:Lv8/t;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 19
    .line 20
    invoke-static {v1}, Lv8/a0;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x5d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
