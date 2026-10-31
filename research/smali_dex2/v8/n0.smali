.class public abstract Lv8/n0;
.super Lv8/o0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv8/d0;


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _isCompleted:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile _queue:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_queue"

    .line 2
    .line 3
    const-class v1, Lv8/n0;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "_delayed"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lv8/n0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_isCompleted"

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lv8/n0;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lv8/t;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lv8/n0;->_isCompleted:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public d0(Ljava/lang/Runnable;)V
    .registers 7

    .line 1
    :goto_0
    sget-object v0, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lv8/n0;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    goto :goto_4a

    .line 16
    :cond_f
    if-nez v1, :cond_20

    .line 17
    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    goto :goto_66

    .line 26
    :cond_19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_11

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_20
    instance-of v2, v1, La9/p;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v2, :cond_46

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    check-cast v2, La9/p;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, La9/p;->a(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_66

    .line 46
    .line 47
    if-eq v4, v3, :cond_34

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    if-eq v4, v0, :cond_4a

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_34
    invoke-virtual {v2}, La9/p;->c()La9/p;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_38
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3f

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eq v3, v1, :cond_38

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_46
    sget-object v2, Lv8/a0;->b:La9/w;

    .line 72
    .line 73
    if-ne v1, v2, :cond_50

    .line 74
    .line 75
    :cond_4a
    :goto_4a
    sget-object v0, Lv8/b0;->h:Lv8/b0;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lv8/b0;->d0(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    new-instance v2, La9/p;

    .line 82
    .line 83
    const/16 v4, 0x8

    .line 84
    .line 85
    invoke-direct {v2, v4, v3}, La9/p;-><init>(IZ)V

    .line 86
    .line 87
    .line 88
    move-object v3, v1

    .line 89
    check-cast v3, Ljava/lang/Runnable;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, La9/p;->a(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, La9/p;->a(Ljava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    :cond_60
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_74

    .line 102
    .line 103
    :cond_66
    :goto_66
    invoke-virtual {p0}, Lv8/o0;->c0()Ljava/lang/Thread;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eq v0, p1, :cond_73

    .line 112
    .line 113
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    return-void

    .line 117
    :cond_74
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eq v3, v1, :cond_60

    .line 122
    .line 123
    goto :goto_0
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lv8/n0;->d0(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e0()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_44

    .line 16
    :cond_f
    sget-object v0, Lv8/n0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lv8/m0;

    .line 23
    .line 24
    sget-object v0, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_20

    .line 31
    .line 32
    goto :goto_43

    .line 33
    :cond_20
    instance-of v3, v0, La9/p;

    .line 34
    .line 35
    if-eqz v3, :cond_3f

    .line 36
    .line 37
    check-cast v0, La9/p;

    .line 38
    .line 39
    sget-object v3, La9/p;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    const-wide/32 v5, 0x3fffffff

    .line 46
    .line 47
    .line 48
    and-long/2addr v5, v3

    .line 49
    long-to-int v0, v5

    .line 50
    const-wide v5, 0xfffffffc0000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    and-long/2addr v3, v5

    .line 56
    const/16 v5, 0x1e

    .line 57
    .line 58
    shr-long/2addr v3, v5

    .line 59
    long-to-int v3, v3

    .line 60
    if-ne v0, v3, :cond_3e

    .line 61
    .line 62
    return v1

    .line 63
    :cond_3e
    return v2

    .line 64
    :cond_3f
    sget-object v3, Lv8/a0;->b:La9/w;

    .line 65
    .line 66
    if-ne v0, v3, :cond_44

    .line 67
    .line 68
    :goto_43
    return v1

    .line 69
    :cond_44
    :goto_44
    return v2
.end method

.method public final f0()J
    .registers 10

    .line 1
    invoke-virtual {p0}, Lv8/l0;->V()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    goto/16 :goto_99

    .line 10
    .line 11
    :cond_a
    sget-object v0, Lv8/n0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lv8/m0;

    .line 18
    .line 19
    sget-object v0, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    :goto_14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v3, :cond_1c

    .line 27
    .line 28
    goto :goto_4f

    .line 29
    :cond_1c
    instance-of v5, v3, La9/p;

    .line 30
    .line 31
    if-eqz v5, :cond_41

    .line 32
    .line 33
    move-object v4, v3

    .line 34
    check-cast v4, La9/p;

    .line 35
    .line 36
    invoke-virtual {v4}, La9/p;->d()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v6, La9/p;->g:La9/w;

    .line 41
    .line 42
    if-eq v5, v6, :cond_2f

    .line 43
    .line 44
    move-object v4, v5

    .line 45
    check-cast v4, Ljava/lang/Runnable;

    .line 46
    .line 47
    goto :goto_4f

    .line 48
    :cond_2f
    invoke-virtual {v4}, La9/p;->c()La9/p;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    :cond_33
    invoke-virtual {v0, p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3a

    .line 57
    .line 58
    goto :goto_14

    .line 59
    :cond_3a
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eq v4, v3, :cond_33

    .line 64
    .line 65
    goto :goto_14

    .line 66
    :cond_41
    sget-object v5, Lv8/a0;->b:La9/w;

    .line 67
    .line 68
    if-ne v3, v5, :cond_46

    .line 69
    .line 70
    goto :goto_4f

    .line 71
    :cond_46
    invoke-virtual {v0, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_a3

    .line 76
    .line 77
    move-object v4, v3

    .line 78
    check-cast v4, Ljava/lang/Runnable;

    .line 79
    .line 80
    :goto_4f
    if-eqz v4, :cond_55

    .line 81
    .line 82
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 83
    .line 84
    .line 85
    return-wide v1

    .line 86
    :cond_55
    iget-object v0, p0, Lv8/l0;->d:Lkotlin/collections/ArrayDeque;

    .line 87
    .line 88
    const-wide v3, 0x7fffffffffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    if-nez v0, :cond_60

    .line 94
    .line 95
    :goto_5e
    move-wide v5, v3

    .line 96
    goto :goto_68

    .line 97
    :cond_60
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_67

    .line 102
    .line 103
    goto :goto_5e

    .line 104
    :cond_67
    move-wide v5, v1

    .line 105
    :goto_68
    cmp-long v0, v5, v1

    .line 106
    .line 107
    if-nez v0, :cond_6d

    .line 108
    .line 109
    goto :goto_99

    .line 110
    :cond_6d
    sget-object v0, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_9a

    .line 117
    .line 118
    instance-of v5, v0, La9/p;

    .line 119
    .line 120
    if-eqz v5, :cond_94

    .line 121
    .line 122
    check-cast v0, La9/p;

    .line 123
    .line 124
    sget-object v5, La9/p;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 125
    .line 126
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    const-wide/32 v7, 0x3fffffff

    .line 131
    .line 132
    .line 133
    and-long/2addr v7, v5

    .line 134
    long-to-int v0, v7

    .line 135
    const-wide v7, 0xfffffffc0000000L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    and-long/2addr v5, v7

    .line 141
    const/16 v7, 0x1e

    .line 142
    .line 143
    shr-long/2addr v5, v7

    .line 144
    long-to-int v5, v5

    .line 145
    if-ne v0, v5, :cond_93

    .line 146
    .line 147
    goto :goto_9a

    .line 148
    :cond_93
    return-wide v1

    .line 149
    :cond_94
    sget-object v5, Lv8/a0;->b:La9/w;

    .line 150
    .line 151
    if-ne v0, v5, :cond_99

    .line 152
    .line 153
    goto :goto_a2

    .line 154
    :cond_99
    :goto_99
    return-wide v1

    .line 155
    :cond_9a
    :goto_9a
    sget-object v0, Lv8/n0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lv8/m0;

    .line 162
    .line 163
    :goto_a2
    return-wide v3

    .line 164
    :cond_a3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    if-eq v5, v3, :cond_46

    .line 169
    .line 170
    goto/16 :goto_14
.end method

.method public shutdown()V
    .registers 8

    .line 1
    sget-object v0, Lv8/q1;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    sget-object v0, Lv8/q1;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lv8/n0;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lv8/a0;->b:La9/w;

    .line 16
    .line 17
    sget-object v3, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    :goto_12
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_26

    .line 24
    .line 25
    :cond_18
    invoke-virtual {v3, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1f

    .line 30
    .line 31
    goto :goto_46

    .line 32
    :cond_1f
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_18

    .line 37
    .line 38
    goto :goto_12

    .line 39
    :cond_26
    instance-of v5, v4, La9/p;

    .line 40
    .line 41
    if-eqz v5, :cond_30

    .line 42
    .line 43
    check-cast v4, La9/p;

    .line 44
    .line 45
    invoke-virtual {v4}, La9/p;->b()Z

    .line 46
    .line 47
    .line 48
    goto :goto_46

    .line 49
    :cond_30
    if-ne v4, v0, :cond_33

    .line 50
    .line 51
    goto :goto_46

    .line 52
    :cond_33
    new-instance v5, La9/p;

    .line 53
    .line 54
    const/16 v6, 0x8

    .line 55
    .line 56
    invoke-direct {v5, v6, v2}, La9/p;-><init>(IZ)V

    .line 57
    .line 58
    .line 59
    move-object v6, v4

    .line 60
    check-cast v6, Ljava/lang/Runnable;

    .line 61
    .line 62
    invoke-virtual {v5, v6}, La9/p;->a(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    :cond_40
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_5c

    .line 70
    .line 71
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lv8/n0;->f0()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .line 77
    cmp-long v0, v0, v2

    .line 78
    .line 79
    if-lez v0, :cond_46

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 82
    .line 83
    .line 84
    sget-object v0, Lv8/n0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lv8/m0;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_5c
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eq v6, v4, :cond_40

    .line 98
    .line 99
    goto :goto_12
.end method
