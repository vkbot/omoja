.class public final Lo7/x1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final b:Ln/p;

.field public c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ln/p;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "executorPool"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lo7/x1;->b:Ln/p;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lo7/x1;->c:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    if-nez v0, :cond_2a

    .line 5
    .line 6
    iget-object v0, p0, Lo7/x1;->b:Ln/p;

    .line 7
    .line 8
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo7/r4;

    .line 11
    .line 12
    invoke-static {v0}, Lo7/s4;->a(Lo7/r4;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    const-string v1, "%s.getObject()"

    .line 19
    .line 20
    iget-object v2, p0, Lo7/x1;->c:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    iput-object v0, p0, Lo7/x1;->c:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    goto :goto_2a

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto :goto_31

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Le3/d;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lo7/x1;->c:Ljava/util/concurrent/Executor;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_1a

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1a

    .line 51
    throw p1
.end method
