.class public final Lu7/c;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lu7/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lu7/c;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lu7/c;->d:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4d

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Runnable;

    .line 12
    .line 13
    if-nez v0, :cond_36

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lu7/c;->b:Ljava/lang/Object;

    .line 20
    .line 21
    :goto_14
    const/4 v0, 0x0

    .line 22
    :try_start_15
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Runnable;

    .line 27
    .line 28
    if-nez v1, :cond_2f

    .line 29
    .line 30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_27

    .line 38
    .line 39
    goto :goto_14

    .line 40
    :cond_27
    new-instance v1, Ljava/lang/InterruptedException;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v1
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2d

    .line 46
    :catchall_2d
    move-exception v1

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    iput-object v0, p0, Lu7/c;->b:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v0, v1

    .line 51
    goto :goto_36

    .line 52
    :goto_33
    iput-object v0, p0, Lu7/c;->b:Ljava/lang/Object;

    .line 53
    .line 54
    throw v1

    .line 55
    :cond_36
    :goto_36
    :try_start_36
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    .line 56
    .line 57
    .line 58
    goto :goto_44

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    sget-object v1, Lu7/c;->c:Ljava/util/logging/Logger;

    .line 61
    .line 62
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 63
    .line 64
    const-string v3, "Runnable threw exception"

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_44
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Runnable;

    .line 74
    .line 75
    if-nez v0, :cond_36

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4d
    new-instance v0, Ljava/lang/InterruptedException;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lu7/c;->b:Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v1, Lu7/c;->d:Ljava/lang/Object;

    .line 7
    .line 8
    if-eq v0, v1, :cond_f

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Thread;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_20

    .line 21
    .line 22
    sget-boolean p1, Lu7/e;->b:Z

    .line 23
    .line 24
    if-nez p1, :cond_1a

    .line 25
    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_20
    :goto_20
    return-void
.end method

.method public final shutdown()V
    .registers 5

    .line 1
    sget-object v0, Lu7/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object v0, p0, Lu7/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Runnable;

    .line 10
    .line 11
    if-eqz v0, :cond_1b

    .line 12
    .line 13
    :try_start_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 14
    .line 15
    .line 16
    goto :goto_4

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    sget-object v1, Lu7/c;->c:Ljava/util/logging/Logger;

    .line 19
    .line 20
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 21
    .line 22
    const-string v3, "Runnable threw exception"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_1b
    return-void
.end method
