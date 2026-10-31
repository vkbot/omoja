.class public final Lv8/e;
.super Lv8/f0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv8/d;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lv8/u1;


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _parentHandle:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final e:Lkotlin/coroutines/Continuation;

.field public final f:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_decisionAndIndex"

    .line 2
    .line 3
    const-class v1, Lv8/e;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lv8/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    const-string v0, "_state"

    .line 12
    .line 13
    const-class v2, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_parentHandle"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lv8/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(ILkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lv8/f0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

    .line 5
    .line 6
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 11
    .line 12
    const p1, 0x1fffffff

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lv8/e;->_decisionAndIndex:I

    .line 16
    .line 17
    sget-object p1, Lv8/b;->b:Lv8/b;

    .line 18
    .line 19
    iput-object p1, p0, Lv8/e;->_state:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public static w(Lv8/l1;Ljava/lang/Object;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ", already has "

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public static z(Lv8/l1;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lv8/k;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_d

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p2, v0, :cond_c

    .line 11
    .line 12
    goto :goto_d

    .line 13
    :cond_c
    return-object p1

    .line 14
    :cond_d
    :goto_d
    if-nez p3, :cond_14

    .line 15
    .line 16
    instance-of p2, p0, Lv8/j0;

    .line 17
    .line 18
    if-nez p2, :cond_14

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_14
    new-instance v0, Lv8/j;

    .line 22
    .line 23
    instance-of p2, p0, Lv8/j0;

    .line 24
    .line 25
    if-eqz p2, :cond_1e

    .line 26
    .line 27
    check-cast p0, Lv8/j0;

    .line 28
    .line 29
    :goto_1c
    move-object v2, p0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    goto :goto_1c

    .line 33
    :goto_20
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0x10

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    move-object v3, p3

    .line 38
    invoke-direct/range {v0 .. v5}, Lv8/j;-><init>(Ljava/lang/Object;Lv8/j0;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CancellationException;I)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)La9/w;
    .registers 8

    .line 1
    sget-object v0, Lv8/a0;->a:La9/w;

    .line 2
    .line 3
    :goto_2
    sget-object v1, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    instance-of v3, v2, Lv8/l1;

    .line 10
    .line 11
    if-eqz v3, :cond_2c

    .line 12
    .line 13
    move-object v3, v2

    .line 14
    check-cast v3, Lv8/l1;

    .line 15
    .line 16
    iget v4, p0, Lv8/f0;->d:I

    .line 17
    .line 18
    invoke-static {v3, p1, v4, p2}, Lv8/e;->z(Lv8/l1;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :cond_15
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_25

    .line 27
    .line 28
    invoke-virtual {p0}, Lv8/e;->v()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_24

    .line 33
    .line 34
    invoke-virtual {p0}, Lv8/e;->o()V

    .line 35
    .line 36
    .line 37
    :cond_24
    return-object v0

    .line 38
    :cond_25
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eq v4, v2, :cond_15

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method

.method public final b(La9/u;I)V
    .registers 7

    .line 1
    :cond_0
    sget-object v0, Lv8/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0x1fffffff

    .line 8
    .line 9
    .line 10
    and-int v3, v1, v2

    .line 11
    .line 12
    if-ne v3, v2, :cond_1c

    .line 13
    .line 14
    shr-int/lit8 v2, v1, 0x1d

    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x1d

    .line 17
    .line 18
    add-int/2addr v2, p2

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lv8/e;->u(Lv8/l1;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    const-string p1, "invokeOnCancellation should be called at most once"

    .line 30
    .line 31
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 9

    .line 1
    :goto_0
    sget-object p1, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v0, v1, Lv8/l1;

    .line 8
    .line 9
    if-nez v0, :cond_5d

    .line 10
    .line 11
    instance-of v0, v1, Lv8/k;

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    goto :goto_54

    .line 16
    :cond_f
    instance-of v0, v1, Lv8/j;

    .line 17
    .line 18
    if-eqz v0, :cond_44

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    check-cast v0, Lv8/j;

    .line 22
    .line 23
    iget-object v2, v0, Lv8/j;->e:Ljava/lang/Throwable;

    .line 24
    .line 25
    if-nez v2, :cond_3e

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/16 v3, 0xf

    .line 29
    .line 30
    invoke-static {v0, v2, p2, v3}, Lv8/j;->a(Lv8/j;Lv8/j0;Ljava/util/concurrent/CancellationException;I)Lv8/j;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_21
    invoke-virtual {p1, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_36

    .line 39
    .line 40
    iget-object p1, v0, Lv8/j;->b:Lv8/j0;

    .line 41
    .line 42
    if-eqz p1, :cond_2e

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lv8/e;->k(Lv8/j0;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    iget-object p1, v0, Lv8/j;->c:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    if-eqz p1, :cond_54

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lv8/e;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eq v3, v1, :cond_21

    .line 60
    .line 61
    move-object v4, p2

    .line 62
    goto :goto_5b

    .line 63
    :cond_3e
    const-string p1, "Must be called at most once"

    .line 64
    .line 65
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    new-instance v0, Lv8/j;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/16 v5, 0xe

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    move-object v4, p2

    .line 76
    invoke-direct/range {v0 .. v5}, Lv8/j;-><init>(Ljava/lang/Object;Lv8/j0;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CancellationException;I)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    invoke-virtual {p1, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_55

    .line 84
    .line 85
    :cond_54
    :goto_54
    return-void

    .line 86
    :cond_55
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eq p2, v1, :cond_4e

    .line 91
    .line 92
    :goto_5b
    move-object p2, v4

    .line 93
    goto :goto_0

    .line 94
    :cond_5d
    const-string p1, "Not completed"

    .line 95
    .line 96
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final d(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 1
    iget v0, p0, Lv8/f0;->d:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lv8/e;->y(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Lkotlin/coroutines/Continuation;
    .registers 2

    .line 1
    iget-object v0, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lv8/f0;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public final g(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iget p1, p0, Lv8/f0;->d:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv8/e;->p(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .registers 3

    .line 1
    iget-object v0, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

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
    iget-object v0, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    instance-of v0, p1, Lv8/j;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    check-cast p1, Lv8/j;

    .line 6
    .line 7
    iget-object p1, p1, Lv8/j;->a:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_8
    return-object p1
.end method

.method public final j()Ljava/lang/Object;
    .registers 2

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
    return-object v0
.end method

.method public final k(Lv8/j0;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lv8/j0;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_4
    move-exception p1

    .line 6
    new-instance p2, La8/a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Exception in invokeOnCancellation handler for "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-direct {p2, v0, v1, p1}, La8/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    invoke-static {p2, p1}, Lv8/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final l(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_4
    move-exception p1

    .line 6
    new-instance p2, La8/a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Exception in resume onCancellation handler for "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-direct {p2, v0, v1, p1}, La8/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    invoke-static {p2, p1}, Lv8/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final m(La9/u;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget-object p2, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    sget-object v0, Lv8/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x1fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eq v0, v1, :cond_2b

    .line 14
    .line 15
    :try_start_e
    invoke-virtual {p1, v0, p2}, La9/u;->g(ILkotlin/coroutines/CoroutineContext;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    new-instance v0, La8/a;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x6

    .line 37
    invoke-direct {v0, v1, v2, p1}, La8/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p2}, Lv8/w;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    const-string p1, "The index for Segment.onCancellation(..) is broken"

    .line 45
    .line 46
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final n(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    :goto_0
    sget-object v0, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lv8/l1;

    .line 8
    .line 9
    if-nez v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v2, Lv8/f;

    .line 13
    .line 14
    instance-of v3, v1, Lv8/j0;

    .line 15
    .line 16
    if-nez v3, :cond_18

    .line 17
    .line 18
    instance-of v3, v1, La9/u;

    .line 19
    .line 20
    if-eqz v3, :cond_16

    .line 21
    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const/4 v3, 0x0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    :goto_18
    const/4 v3, 0x1

    .line 26
    :goto_19
    invoke-direct {v2, p0, p1, v3}, Lv8/f;-><init>(Lv8/e;Ljava/lang/Throwable;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_47

    .line 34
    .line 35
    move-object v0, v1

    .line 36
    check-cast v0, Lv8/l1;

    .line 37
    .line 38
    instance-of v2, v0, Lv8/j0;

    .line 39
    .line 40
    if-eqz v2, :cond_2f

    .line 41
    .line 42
    check-cast v1, Lv8/j0;

    .line 43
    .line 44
    invoke-virtual {p0, v1, p1}, Lv8/e;->k(Lv8/j0;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_38

    .line 48
    :cond_2f
    instance-of v0, v0, La9/u;

    .line 49
    .line 50
    if-eqz v0, :cond_38

    .line 51
    .line 52
    check-cast v1, La9/u;

    .line 53
    .line 54
    invoke-virtual {p0, v1, p1}, Lv8/e;->m(La9/u;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lv8/e;->v()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_41

    .line 62
    .line 63
    invoke-virtual {p0}, Lv8/e;->o()V

    .line 64
    .line 65
    .line 66
    :cond_41
    iget p1, p0, Lv8/f0;->d:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lv8/e;->p(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_47
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eq v3, v1, :cond_1c

    .line 77
    .line 78
    goto :goto_0
.end method

.method public final o()V
    .registers 3

    .line 1
    sget-object v0, Lv8/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lv8/i0;

    .line 8
    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-interface {v1}, Lv8/i0;->dispose()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lv8/k1;->b:Lv8/k1;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(I)V
    .registers 8

    .line 1
    :cond_0
    sget-object v0, Lv8/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    shr-int/lit8 v2, v1, 0x1d

    .line 8
    .line 9
    if-eqz v2, :cond_86

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne v2, v0, :cond_80

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne p1, v1, :cond_13

    .line 17
    .line 18
    move v1, v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v2

    .line 21
    :goto_14
    iget-object v3, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

    .line 22
    .line 23
    if-nez v1, :cond_7c

    .line 24
    .line 25
    instance-of v4, v3, La9/h;

    .line 26
    .line 27
    if-eqz v4, :cond_7c

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    if-eq p1, v0, :cond_24

    .line 31
    .line 32
    if-ne p1, v4, :cond_22

    .line 33
    .line 34
    goto :goto_24

    .line 35
    :cond_22
    move p1, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    :goto_24
    move p1, v0

    .line 38
    :goto_25
    iget v5, p0, Lv8/f0;->d:I

    .line 39
    .line 40
    if-eq v5, v0, :cond_2b

    .line 41
    .line 42
    if-ne v5, v4, :cond_2c

    .line 43
    .line 44
    :cond_2b
    move v2, v0

    .line 45
    :cond_2c
    if-ne p1, v2, :cond_7c

    .line 46
    .line 47
    move-object p1, v3

    .line 48
    check-cast p1, La9/h;

    .line 49
    .line 50
    iget-object v1, p1, La9/h;->e:Lv8/t;

    .line 51
    .line 52
    iget-object p1, p1, La9/h;->f:Lkotlin/coroutines/Continuation;

    .line 53
    .line 54
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Lv8/t;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_43

    .line 63
    .line 64
    invoke-virtual {v1, p1, p0}, Lv8/t;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_43
    invoke-static {}, Lv8/q1;->a()Lv8/l0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-wide v1, p1, Lv8/l0;->b:J

    .line 73
    .line 74
    const-wide v4, 0x100000000L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmp-long v1, v1, v4

    .line 80
    .line 81
    if-ltz v1, :cond_61

    .line 82
    .line 83
    iget-object v0, p1, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 84
    .line 85
    if-nez v0, :cond_5d

    .line 86
    .line 87
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 88
    .line 89
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p1, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 93
    .line 94
    :cond_5d
    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    invoke-virtual {p1, v0}, Lv8/l0;->S(Z)V

    .line 99
    .line 100
    .line 101
    :try_start_64
    invoke-static {p0, v3, v0}, Lv8/g0;->a(Lv8/e;Lkotlin/coroutines/Continuation;Z)V

    .line 102
    .line 103
    .line 104
    :cond_67
    invoke-virtual {p1}, Lv8/l0;->V()Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_71

    .line 108
    if-nez v0, :cond_67

    .line 109
    .line 110
    :goto_6d
    invoke-virtual {p1}, Lv8/l0;->y()V

    .line 111
    .line 112
    .line 113
    goto :goto_93

    .line 114
    :catchall_71
    move-exception v0

    .line 115
    const/4 v1, 0x0

    .line 116
    :try_start_73
    invoke-virtual {p0, v0, v1}, Lv8/f0;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    .line 117
    .line 118
    .line 119
    goto :goto_6d

    .line 120
    :catchall_77
    move-exception v0

    .line 121
    invoke-virtual {p1}, Lv8/l0;->y()V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_7c
    invoke-static {p0, v3, v1}, Lv8/g0;->a(Lv8/e;Lkotlin/coroutines/Continuation;Z)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_80
    const-string p1, "Already resumed"

    .line 130
    .line 131
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_86
    const v2, 0x1fffffff

    .line 136
    .line 137
    .line 138
    and-int/2addr v2, v1

    .line 139
    const/high16 v3, 0x40000000    # 2.0f

    .line 140
    .line 141
    add-int/2addr v3, v2

    .line 142
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    .line 148
    :goto_93
    return-void
.end method

.method public final q()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lv8/e;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_4
    sget-object v1, Lv8/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    shr-int/lit8 v3, v2, 0x1d

    .line 12
    .line 13
    if-eqz v3, :cond_55

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v3, v1, :cond_4e

    .line 17
    .line 18
    if-eqz v0, :cond_16

    .line 19
    .line 20
    invoke-virtual {p0}, Lv8/e;->x()V

    .line 21
    .line 22
    .line 23
    :cond_16
    sget-object v0, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v2, v0, Lv8/k;

    .line 30
    .line 31
    if-nez v2, :cond_49

    .line 32
    .line 33
    iget v2, p0, Lv8/f0;->d:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v2, v3, :cond_27

    .line 37
    .line 38
    if-ne v2, v1, :cond_44

    .line 39
    .line 40
    :cond_27
    iget-object v1, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 41
    .line 42
    sget-object v2, Lv8/y0;->b:Lv8/y0;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lv8/z0;

    .line 49
    .line 50
    if-eqz v1, :cond_44

    .line 51
    .line 52
    invoke-interface {v1}, Lv8/z0;->b()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3a

    .line 57
    .line 58
    goto :goto_44

    .line 59
    :cond_3a
    check-cast v1, Lv8/h1;

    .line 60
    .line 61
    invoke-virtual {v1}, Lv8/h1;->s()Ljava/util/concurrent/CancellationException;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0, v0, v1}, Lv8/e;->c(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p0, v0}, Lv8/e;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_49
    check-cast v0, Lv8/k;

    .line 75
    .line 76
    iget-object v0, v0, Lv8/k;->a:Ljava/lang/Throwable;

    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4e
    const-string v0, "Already suspended"

    .line 80
    .line 81
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    return-object v0

    .line 86
    :cond_55
    const v3, 0x1fffffff

    .line 87
    .line 88
    .line 89
    and-int/2addr v3, v2

    .line 90
    const/high16 v4, 0x20000000

    .line 91
    .line 92
    add-int/2addr v4, v3

    .line 93
    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    sget-object v1, Lv8/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lv8/i0;

    .line 106
    .line 107
    if-nez v1, :cond_6f

    .line 108
    .line 109
    invoke-virtual {p0}, Lv8/e;->s()Lv8/i0;

    .line 110
    .line 111
    .line 112
    :cond_6f
    if-eqz v0, :cond_74

    .line 113
    .line 114
    invoke-virtual {p0}, Lv8/e;->x()V

    .line 115
    .line 116
    .line 117
    :cond_74
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method

.method public final r()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lv8/e;->s()Lv8/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_1b

    .line 8
    :cond_7
    sget-object v1, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v1, v1, Lv8/l1;

    .line 15
    .line 16
    if-nez v1, :cond_1b

    .line 17
    .line 18
    invoke-interface {v0}, Lv8/i0;->dispose()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lv8/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    .line 23
    sget-object v1, Lv8/k1;->b:Lv8/k1;

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_d

    .line 8
    :cond_7
    new-instance p1, Lv8/k;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lv8/k;-><init>(ZLjava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_d
    iget v0, p0, Lv8/f0;->d:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lv8/e;->y(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s()Lv8/i0;
    .registers 5

    .line 1
    iget-object v0, p0, Lv8/e;->f:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    sget-object v1, Lv8/y0;->b:Lv8/y0;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lv8/z0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_e

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_e
    new-instance v2, Lv8/g;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lv8/g;-><init>(Lv8/e;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-static {v0, v2, v3}, Lv8/x0;->a(Lv8/z0;Lv8/d1;I)Lv8/i0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_18
    sget-object v2, Lv8/e;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_21

    .line 32
    .line 33
    goto :goto_27

    .line 34
    :cond_21
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_18

    .line 39
    .line 40
    :goto_27
    return-object v0
.end method

.method public final t(Lkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lv8/j0;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    check-cast p1, Lv8/j0;

    .line 6
    .line 7
    goto :goto_e

    .line 8
    :cond_7
    new-instance v0, Lv8/j0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1, p1}, Lv8/j0;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :goto_e
    invoke-virtual {p0, p1}, Lv8/e;->u(Lv8/l1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CancellableContinuation("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    invoke-static {v1}, Lv8/a0;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "){"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v2, v1, Lv8/l1;

    .line 29
    .line 30
    if-eqz v2, :cond_22

    .line 31
    .line 32
    const-string v1, "Active"

    .line 33
    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    instance-of v1, v1, Lv8/f;

    .line 36
    .line 37
    if-eqz v1, :cond_29

    .line 38
    .line 39
    const-string v1, "Cancelled"

    .line 40
    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const-string v1, "Completed"

    .line 43
    .line 44
    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "}@"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lv8/a0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public final u(Lv8/l1;)V
    .registers 11

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    instance-of v1, v2, Lv8/b;

    .line 8
    .line 9
    if-eqz v1, :cond_19

    .line 10
    .line 11
    :cond_a
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_12

    .line 16
    .line 17
    goto/16 :goto_ab

    .line 18
    .line 19
    :cond_12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eq v1, v2, :cond_a

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_19
    instance-of v1, v2, Lv8/j0;

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v1, :cond_20

    .line 30
    .line 31
    move v1, v7

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    instance-of v1, v2, La9/u;

    .line 34
    .line 35
    :goto_22
    const/4 v3, 0x0

    .line 36
    if-nez v1, :cond_ac

    .line 37
    .line 38
    instance-of v1, v2, Lv8/k;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v1, :cond_4f

    .line 42
    .line 43
    move-object v0, v2

    .line 44
    check-cast v0, Lv8/k;

    .line 45
    .line 46
    sget-object v1, Lv8/k;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 47
    .line 48
    invoke-virtual {v1, v0, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_4b

    .line 53
    .line 54
    instance-of v1, v2, Lv8/f;

    .line 55
    .line 56
    if-eqz v1, :cond_ab

    .line 57
    .line 58
    iget-object v0, v0, Lv8/k;->a:Ljava/lang/Throwable;

    .line 59
    .line 60
    instance-of v1, p1, Lv8/j0;

    .line 61
    .line 62
    if-eqz v1, :cond_45

    .line 63
    .line 64
    check-cast p1, Lv8/j0;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v0}, Lv8/e;->k(Lv8/j0;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_45
    check-cast p1, La9/u;

    .line 71
    .line 72
    invoke-virtual {p0, p1, v0}, Lv8/e;->m(La9/u;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4b
    invoke-static {p1, v2}, Lv8/e;->w(Lv8/l1;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    throw v3

    .line 80
    :cond_4f
    instance-of v1, v2, Lv8/j;

    .line 81
    .line 82
    if-eqz v1, :cond_8a

    .line 83
    .line 84
    move-object v1, v2

    .line 85
    check-cast v1, Lv8/j;

    .line 86
    .line 87
    iget-object v4, v1, Lv8/j;->b:Lv8/j0;

    .line 88
    .line 89
    if-nez v4, :cond_86

    .line 90
    .line 91
    instance-of v4, p1, La9/u;

    .line 92
    .line 93
    if-eqz v4, :cond_5f

    .line 94
    .line 95
    goto :goto_ab

    .line 96
    :cond_5f
    move-object v4, p1

    .line 97
    check-cast v4, Lv8/j0;

    .line 98
    .line 99
    iget-object v5, v1, Lv8/j;->e:Ljava/lang/Throwable;

    .line 100
    .line 101
    if-eqz v5, :cond_68

    .line 102
    .line 103
    move v6, v7

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v6, v8

    .line 106
    :goto_69
    if-eqz v6, :cond_6f

    .line 107
    .line 108
    invoke-virtual {p0, v4, v5}, Lv8/e;->k(Lv8/j0;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    const/16 v5, 0x1d

    .line 113
    .line 114
    invoke-static {v1, v4, v3, v5}, Lv8/j;->a(Lv8/j;Lv8/j0;Ljava/util/concurrent/CancellationException;I)Lv8/j;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :cond_75
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_7c

    .line 123
    .line 124
    goto :goto_83

    .line 125
    :cond_7c
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-eq v3, v2, :cond_75

    .line 130
    .line 131
    move v7, v8

    .line 132
    :goto_83
    if-eqz v7, :cond_0

    .line 133
    .line 134
    goto :goto_ab

    .line 135
    :cond_86
    invoke-static {p1, v2}, Lv8/e;->w(Lv8/l1;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    throw v3

    .line 139
    :cond_8a
    instance-of v1, p1, La9/u;

    .line 140
    .line 141
    if-eqz v1, :cond_8f

    .line 142
    .line 143
    goto :goto_ab

    .line 144
    :cond_8f
    move-object v3, p1

    .line 145
    check-cast v3, Lv8/j0;

    .line 146
    .line 147
    new-instance v1, Lv8/j;

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    const/16 v6, 0x1c

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    invoke-direct/range {v1 .. v6}, Lv8/j;-><init>(Ljava/lang/Object;Lv8/j0;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CancellationException;I)V

    .line 154
    .line 155
    .line 156
    :cond_9b
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_a2

    .line 161
    .line 162
    goto :goto_a9

    .line 163
    :cond_a2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-eq v3, v2, :cond_9b

    .line 168
    .line 169
    move v7, v8

    .line 170
    :goto_a9
    if-eqz v7, :cond_0

    .line 171
    .line 172
    :cond_ab
    :goto_ab
    return-void

    .line 173
    :cond_ac
    invoke-static {p1, v2}, Lv8/e;->w(Lv8/l1;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    throw v3
.end method

.method public final v()Z
    .registers 3

    .line 1
    iget v0, p0, Lv8/f0;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_19

    .line 5
    .line 6
    iget-object v0, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast v0, La9/h;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, La9/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_19

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final x()V
    .registers 6

    .line 1
    iget-object v0, p0, Lv8/e;->e:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    instance-of v1, v0, La9/h;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    check-cast v0, La9/h;

    .line 9
    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move-object v0, v2

    .line 12
    :goto_b
    if-eqz v0, :cond_4e

    .line 13
    .line 14
    sget-object v1, La9/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    :goto_f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, La9/a;->c:La9/w;

    .line 21
    .line 22
    if-ne v3, v4, :cond_25

    .line 23
    .line 24
    :cond_17
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1e

    .line 29
    .line 30
    goto :goto_32

    .line 31
    :cond_1e
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eq v3, v4, :cond_17

    .line 36
    .line 37
    goto :goto_f

    .line 38
    :cond_25
    instance-of v4, v3, Ljava/lang/Throwable;

    .line 39
    .line 40
    if-eqz v4, :cond_49

    .line 41
    .line 42
    :goto_29
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3c

    .line 47
    .line 48
    move-object v2, v3

    .line 49
    check-cast v2, Ljava/lang/Throwable;

    .line 50
    .line 51
    :goto_32
    if-nez v2, :cond_35

    .line 52
    .line 53
    goto :goto_4e

    .line 54
    :cond_35
    invoke-virtual {p0}, Lv8/e;->o()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lv8/e;->n(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-ne v4, v3, :cond_43

    .line 66
    .line 67
    goto :goto_29

    .line 68
    :cond_43
    const-string v0, "Failed requirement."

    .line 69
    .line 70
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_49
    const-string v0, "Inconsistent state "

    .line 75
    .line 76
    invoke-static {v3, v0}, Lorg/apache/commons/net/ftp/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    :goto_4e
    return-void
.end method

.method public final y(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .registers 8

    .line 1
    :goto_0
    sget-object v0, Lv8/e;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lv8/l1;

    .line 8
    .line 9
    if-eqz v2, :cond_2b

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Lv8/l1;

    .line 13
    .line 14
    invoke-static {v2, p1, p2, p3}, Lv8/e;->z(Lv8/l1;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_11
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_24

    .line 23
    .line 24
    invoke-virtual {p0}, Lv8/e;->v()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_20

    .line 29
    .line 30
    invoke-virtual {p0}, Lv8/e;->o()V

    .line 31
    .line 32
    .line 33
    :cond_20
    invoke-virtual {p0, p2}, Lv8/e;->p(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eq v3, v1, :cond_11

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2b
    instance-of p2, v1, Lv8/f;

    .line 45
    .line 46
    if-eqz p2, :cond_43

    .line 47
    .line 48
    check-cast v1, Lv8/f;

    .line 49
    .line 50
    sget-object p2, Lv8/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p2, v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_43

    .line 59
    .line 60
    if-eqz p3, :cond_42

    .line 61
    .line 62
    iget-object p1, v1, Lv8/k;->a:Ljava/lang/Throwable;

    .line 63
    .line 64
    invoke-virtual {p0, p3, p1}, Lv8/e;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    return-void

    .line 68
    :cond_43
    const-string p2, "Already resumed, but proposed with update "

    .line 69
    .line 70
    invoke-static {p1, p2}, Lorg/apache/commons/net/ftp/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
