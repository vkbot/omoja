.class public final Lo7/t;
.super Ln7/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final s:Ljava/util/logging/Logger;

.field public static final t:D


# instance fields
.field public final d:Ln7/x0;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Z

.field public final g:Lb1/m;

.field public final h:Ln7/n;

.field public volatile i:Ljava/util/concurrent/ScheduledFuture;

.field public final j:Z

.field public k:Ln7/c;

.field public l:Lo7/u;

.field public volatile m:Z

.field public n:Z

.field public o:Z

.field public final p:Lc0/h;

.field public final q:Ljava/util/concurrent/ScheduledExecutorService;

.field public r:Ln7/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lo7/t;

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
    sput-object v0, Lo7/t;->s:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "US-ASCII"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "gzip"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    const-wide/32 v0, 0x3b9aca00

    .line 25
    .line 26
    .line 27
    long-to-double v0, v0

    .line 28
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 29
    .line 30
    mul-double/2addr v0, v2

    .line 31
    sput-wide v0, Lo7/t;->t:D

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Ln7/x0;Ljava/util/concurrent/Executor;Ln7/c;Lc0/h;Ljava/util/concurrent/ScheduledExecutorService;Lb1/m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ln7/q;->d:Ln7/q;

    .line 5
    .line 6
    iput-object v0, p0, Lo7/t;->r:Ln7/q;

    .line 7
    .line 8
    sget-object v0, Ln7/i;->b:Ln7/i;

    .line 9
    .line 10
    iput-object p1, p0, Lo7/t;->d:Ln7/x0;

    .line 11
    .line 12
    iget-object v0, p1, Ln7/x0;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v0, Lm4/n;->b:Lm4/n;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne p2, v0, :cond_0

    .line 27
    .line 28
    new-instance p2, Lo7/j4;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lo7/t;->e:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    iput-boolean v2, p0, Lo7/t;->f:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lo7/m4;

    .line 39
    .line 40
    invoke-direct {v0, p2}, Lo7/m4;-><init>(Ljava/util/concurrent/Executor;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lo7/t;->e:Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    iput-boolean v1, p0, Lo7/t;->f:Z

    .line 46
    .line 47
    :goto_0
    iput-object p6, p0, Lo7/t;->g:Lb1/m;

    .line 48
    .line 49
    invoke-static {}, Ln7/n;->b()Ln7/n;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lo7/t;->h:Ln7/n;

    .line 54
    .line 55
    iget-object p1, p1, Ln7/x0;->a:Ln7/w0;

    .line 56
    .line 57
    sget-object p2, Ln7/w0;->b:Ln7/w0;

    .line 58
    .line 59
    if-eq p1, p2, :cond_1

    .line 60
    .line 61
    sget-object p2, Ln7/w0;->c:Ln7/w0;

    .line 62
    .line 63
    if-ne p1, p2, :cond_2

    .line 64
    .line 65
    :cond_1
    move v1, v2

    .line 66
    :cond_2
    iput-boolean v1, p0, Lo7/t;->j:Z

    .line 67
    .line 68
    iput-object p3, p0, Lo7/t;->k:Ln7/c;

    .line 69
    .line 70
    iput-object p4, p0, Lo7/t;->p:Lc0/h;

    .line 71
    .line 72
    iput-object p5, p0, Lo7/t;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lo7/t;->r(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    sget-object p2, Lw7/b;->a:Lw7/a;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    throw p1
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v2, "Not started"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lo7/t;->n:Z

    .line 21
    .line 22
    xor-int/2addr v0, v1

    .line 23
    const-string v2, "call was cancelled"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lo7/t;->o:Z

    .line 29
    .line 30
    xor-int/2addr v0, v1

    .line 31
    const-string v2, "call already half-closed"

    .line 32
    .line 33
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v1, p0, Lo7/t;->o:Z

    .line 37
    .line 38
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 39
    .line 40
    invoke-interface {v0}, Lo7/u;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :try_start_1
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    throw v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const-string v1, "Not started"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 20
    .line 21
    invoke-interface {v0}, Lo7/u4;->request()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    throw v0
.end method

.method public final m(Ly5/g;)V
    .locals 1

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lo7/t;->t(Ly5/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    throw p1
.end method

.method public final o(Ln7/e;Ln7/v0;)V
    .locals 0

    .line 1
    invoke-static {}, Lw7/b;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lw7/b;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lo7/t;->u(Ln7/e;Ln7/v0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    sget-object p2, Lw7/b;->a:Lw7/a;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_1
    move-exception p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    throw p1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    const-string v0, "Cancelled without a message or cause"

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 13
    .line 14
    const-string v1, "Cancelling without a message or cause is suboptimal"

    .line 15
    .line 16
    sget-object v2, Lo7/t;->s:Ljava/util/logging/Logger;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lo7/t;->n:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lo7/t;->n:Z

    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object v0, Ln7/f1;->f:Ln7/f1;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string p1, "Call cancelled without message"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_3
    iget-object p2, p0, Lo7/t;->l:Lo7/u;

    .line 57
    .line 58
    invoke-interface {p2, p1}, Lo7/u;->h(Ln7/f1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p0}, Lo7/t;->s()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    invoke-virtual {p0}, Lo7/t;->s()V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/t;->h:Ln7/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/t;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final t(Ly5/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v2, "Not started"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lo7/t;->n:Z

    .line 15
    .line 16
    xor-int/2addr v0, v1

    .line 17
    const-string v2, "call was cancelled"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lo7/t;->o:Z

    .line 23
    .line 24
    xor-int/2addr v0, v1

    .line 25
    const-string v1, "call was half-closed"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 31
    .line 32
    instance-of v1, v0, Lo7/v1;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lo7/v1;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lo7/v1;->t(Ly5/g;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :catch_1
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    iget-object v1, p0, Lo7/t;->d:Ln7/x0;

    .line 47
    .line 48
    iget-object v1, v1, Ln7/x0;->d:Lt7/b;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v2, Lt7/a;

    .line 54
    .line 55
    iget-object v1, v1, Lt7/b;->a:Lcom/google/protobuf/x0;

    .line 56
    .line 57
    invoke-direct {v2, p1, v1}, Lt7/a;-><init>(Ly5/g;Lcom/google/protobuf/x0;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2}, Lo7/u4;->f(Lt7/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-boolean p1, p0, Lo7/t;->j:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lo7/t;->l:Lo7/u;

    .line 68
    .line 69
    invoke-interface {p1}, Lo7/u4;->flush()V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :goto_2
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 74
    .line 75
    sget-object v1, Ln7/f1;->f:Ln7/f1;

    .line 76
    .line 77
    const-string v2, "Client sendMessage() failed with Error"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Lo7/u;->h(Ln7/f1;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :goto_3
    iget-object v0, p0, Lo7/t;->l:Lo7/u;

    .line 88
    .line 89
    sget-object v1, Ln7/f1;->f:Ln7/f1;

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v1, "Failed to stream message"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {v0, p1}, Lo7/u;->h(Ln7/f1;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "method"

    .line 6
    .line 7
    iget-object v2, p0, Lo7/t;->d:Ln7/x0;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final u(Ln7/e;Ln7/v0;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Ln7/h;->c:Ln7/h;

    .line 4
    .line 5
    iget-object v2, v1, Lo7/t;->l:Lo7/u;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    const-string v6, "Already started"

    .line 14
    .line 15
    invoke-static {v2, v6}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, v1, Lo7/t;->n:Z

    .line 19
    .line 20
    xor-int/2addr v2, v3

    .line 21
    const-string v6, "call was cancelled"

    .line 22
    .line 23
    invoke-static {v2, v6}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lo7/t;->h:Ln7/n;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 32
    .line 33
    sget-object v6, Lo7/j2;->g:La9/w;

    .line 34
    .line 35
    invoke-virtual {v2, v6}, Ln7/c;->a(La9/w;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lo7/j2;

    .line 40
    .line 41
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-wide/16 v16, 0x0

    .line 46
    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_1
    iget-object v9, v2, Lo7/j2;->d:Ljava/lang/Integer;

    .line 50
    .line 51
    iget-object v11, v2, Lo7/j2;->c:Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v12, v2, Lo7/j2;->a:Ljava/lang/Long;

    .line 54
    .line 55
    if-eqz v12, :cond_5

    .line 56
    .line 57
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v12

    .line 61
    if-eqz v10, :cond_4

    .line 62
    .line 63
    new-instance v14, Ln7/o;

    .line 64
    .line 65
    invoke-direct {v14, v12, v13}, Ln7/o;-><init>(J)V

    .line 66
    .line 67
    .line 68
    iget-object v12, v1, Lo7/t;->k:Ln7/c;

    .line 69
    .line 70
    iget-object v13, v12, Ln7/c;->a:Ln7/o;

    .line 71
    .line 72
    if-eqz v13, :cond_3

    .line 73
    .line 74
    iget-object v15, v14, Ln7/o;->b:Ln7/h;

    .line 75
    .line 76
    iget-object v3, v13, Ln7/o;->b:Ln7/h;

    .line 77
    .line 78
    if-ne v15, v3, :cond_2

    .line 79
    .line 80
    const-wide/16 v16, 0x0

    .line 81
    .line 82
    iget-wide v7, v14, Ln7/o;->c:J

    .line 83
    .line 84
    iget-wide v4, v13, Ln7/o;->c:J

    .line 85
    .line 86
    sub-long/2addr v7, v4

    .line 87
    cmp-long v4, v7, v16

    .line 88
    .line 89
    if-gez v4, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v3, "Tickers ("

    .line 97
    .line 98
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, v13, Ln7/o;->b:Ln7/h;

    .line 105
    .line 106
    const-string v4, " and "

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, ") don\'t match. Custom Ticker should only be used in tests!"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_3
    const-wide/16 v16, 0x0

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {v12}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iput-object v14, v4, Lc2/k;->c:Ljava/lang/Object;

    .line 137
    .line 138
    new-instance v5, Ln7/c;

    .line 139
    .line 140
    invoke-direct {v5, v4}, Ln7/c;-><init>(Lc2/k;)V

    .line 141
    .line 142
    .line 143
    iput-object v5, v1, Lo7/t;->k:Ln7/c;

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    const-string v0, "units"

    .line 147
    .line 148
    invoke-static {v0}, Ln0/b;->n(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    const-wide/16 v16, 0x0

    .line 153
    .line 154
    :cond_6
    :goto_2
    iget-object v2, v2, Lo7/j2;->b:Ljava/lang/Boolean;

    .line 155
    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    iget-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 174
    .line 175
    iput-object v4, v2, Lc2/k;->h:Ljava/lang/Object;

    .line 176
    .line 177
    new-instance v4, Ln7/c;

    .line 178
    .line 179
    invoke-direct {v4, v2}, Ln7/c;-><init>(Lc2/k;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 188
    .line 189
    iput-object v4, v2, Lc2/k;->h:Ljava/lang/Object;

    .line 190
    .line 191
    new-instance v4, Ln7/c;

    .line 192
    .line 193
    invoke-direct {v4, v2}, Ln7/c;-><init>(Lc2/k;)V

    .line 194
    .line 195
    .line 196
    :goto_3
    iput-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 197
    .line 198
    :cond_8
    const-string v2, "invalid maxsize %s"

    .line 199
    .line 200
    if-eqz v11, :cond_c

    .line 201
    .line 202
    iget-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 203
    .line 204
    iget-object v5, v4, Ln7/c;->f:Ljava/lang/Integer;

    .line 205
    .line 206
    if-eqz v5, :cond_a

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-ltz v5, :cond_9

    .line 221
    .line 222
    const/4 v7, 0x1

    .line 223
    goto :goto_4

    .line 224
    :cond_9
    const/4 v7, 0x0

    .line 225
    :goto_4
    invoke-static {v5, v2, v7}, Lo4/b;->c(ILjava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    iput-object v5, v4, Lc2/k;->f:Ljava/lang/Object;

    .line 237
    .line 238
    new-instance v5, Ln7/c;

    .line 239
    .line 240
    invoke-direct {v5, v4}, Ln7/c;-><init>(Lc2/k;)V

    .line 241
    .line 242
    .line 243
    iput-object v5, v1, Lo7/t;->k:Ln7/c;

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-ltz v5, :cond_b

    .line 251
    .line 252
    const/4 v7, 0x1

    .line 253
    goto :goto_5

    .line 254
    :cond_b
    const/4 v7, 0x0

    .line 255
    :goto_5
    invoke-static {v5, v2, v7}, Lo4/b;->c(ILjava/lang/String;Z)V

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iput-object v11, v4, Lc2/k;->f:Ljava/lang/Object;

    .line 263
    .line 264
    new-instance v5, Ln7/c;

    .line 265
    .line 266
    invoke-direct {v5, v4}, Ln7/c;-><init>(Lc2/k;)V

    .line 267
    .line 268
    .line 269
    iput-object v5, v1, Lo7/t;->k:Ln7/c;

    .line 270
    .line 271
    :cond_c
    :goto_6
    if-eqz v9, :cond_10

    .line 272
    .line 273
    iget-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 274
    .line 275
    iget-object v5, v4, Ln7/c;->g:Ljava/lang/Integer;

    .line 276
    .line 277
    if-eqz v5, :cond_e

    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-ltz v5, :cond_d

    .line 292
    .line 293
    const/4 v7, 0x1

    .line 294
    goto :goto_7

    .line 295
    :cond_d
    const/4 v7, 0x0

    .line 296
    :goto_7
    invoke-static {v5, v2, v7}, Lo4/b;->c(ILjava/lang/String;Z)V

    .line 297
    .line 298
    .line 299
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    iput-object v4, v2, Lc2/k;->i:Ljava/lang/Object;

    .line 308
    .line 309
    new-instance v4, Ln7/c;

    .line 310
    .line 311
    invoke-direct {v4, v2}, Ln7/c;-><init>(Lc2/k;)V

    .line 312
    .line 313
    .line 314
    iput-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-ltz v5, :cond_f

    .line 322
    .line 323
    const/4 v7, 0x1

    .line 324
    goto :goto_8

    .line 325
    :cond_f
    const/4 v7, 0x0

    .line 326
    :goto_8
    invoke-static {v5, v2, v7}, Lo4/b;->c(ILjava/lang/String;Z)V

    .line 327
    .line 328
    .line 329
    invoke-static {v4}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    iput-object v9, v2, Lc2/k;->i:Ljava/lang/Object;

    .line 334
    .line 335
    new-instance v4, Ln7/c;

    .line 336
    .line 337
    invoke-direct {v4, v2}, Ln7/c;-><init>(Lc2/k;)V

    .line 338
    .line 339
    .line 340
    iput-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 341
    .line 342
    :cond_10
    :goto_9
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 343
    .line 344
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    iget-object v2, v1, Lo7/t;->r:Ln7/q;

    .line 348
    .line 349
    sget-object v4, Lo7/y0;->h:Ln7/q0;

    .line 350
    .line 351
    move-object/from16 v5, p2

    .line 352
    .line 353
    invoke-virtual {v5, v4}, Ln7/v0;->a(Ln7/s0;)V

    .line 354
    .line 355
    .line 356
    sget-object v4, Lo7/y0;->d:Ln7/q0;

    .line 357
    .line 358
    invoke-virtual {v5, v4}, Ln7/v0;->a(Ln7/s0;)V

    .line 359
    .line 360
    .line 361
    sget-object v4, Lo7/y0;->e:Ln7/t0;

    .line 362
    .line 363
    invoke-virtual {v5, v4}, Ln7/v0;->a(Ln7/s0;)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v2, Ln7/q;->b:[B

    .line 367
    .line 368
    array-length v7, v2

    .line 369
    if-eqz v7, :cond_11

    .line 370
    .line 371
    invoke-virtual {v5, v4, v2}, Ln7/v0;->e(Ln7/s0;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_11
    sget-object v2, Lo7/y0;->f:Ln7/q0;

    .line 375
    .line 376
    invoke-virtual {v5, v2}, Ln7/v0;->a(Ln7/s0;)V

    .line 377
    .line 378
    .line 379
    sget-object v2, Lo7/y0;->g:Ln7/t0;

    .line 380
    .line 381
    invoke-virtual {v5, v2}, Ln7/v0;->a(Ln7/s0;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 385
    .line 386
    iget-object v2, v2, Ln7/c;->a:Ln7/o;

    .line 387
    .line 388
    iget-object v4, v1, Lo7/t;->h:Ln7/n;

    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    const/4 v11, 0x0

    .line 394
    if-nez v2, :cond_12

    .line 395
    .line 396
    move-object v12, v11

    .line 397
    goto :goto_a

    .line 398
    :cond_12
    move-object v12, v2

    .line 399
    :goto_a
    if-eqz v12, :cond_15

    .line 400
    .line 401
    invoke-virtual {v12}, Ln7/o;->a()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_15

    .line 406
    .line 407
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 408
    .line 409
    const/4 v3, 0x0

    .line 410
    invoke-static {v2, v5, v3, v3}, Lo7/y0;->c(Ln7/c;Ln7/v0;IZ)[Ln7/e;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    iget-object v3, v1, Lo7/t;->k:Ln7/c;

    .line 415
    .line 416
    iget-object v3, v3, Ln7/c;->a:Ln7/o;

    .line 417
    .line 418
    iget-object v4, v1, Lo7/t;->h:Ln7/n;

    .line 419
    .line 420
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    if-nez v3, :cond_13

    .line 424
    .line 425
    const-string v3, "Context"

    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_13
    const-string v3, "CallOptions"

    .line 429
    .line 430
    :goto_b
    iget-object v4, v1, Lo7/t;->k:Ln7/c;

    .line 431
    .line 432
    sget-object v5, Ln7/e;->a:La9/w;

    .line 433
    .line 434
    invoke-virtual {v4, v5}, Ln7/c;->a(La9/w;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    check-cast v4, Ljava/lang/Long;

    .line 439
    .line 440
    invoke-virtual {v12}, Ln7/o;->b()J

    .line 441
    .line 442
    .line 443
    move-result-wide v5

    .line 444
    long-to-double v5, v5

    .line 445
    sget-wide v7, Lo7/t;->t:D

    .line 446
    .line 447
    div-double/2addr v5, v7

    .line 448
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    if-nez v4, :cond_14

    .line 453
    .line 454
    const-wide/16 v6, 0x0

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 458
    .line 459
    .line 460
    move-result-wide v13

    .line 461
    long-to-double v13, v13

    .line 462
    div-double v6, v13, v7

    .line 463
    .line 464
    :goto_c
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    const-string v4, "ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds."

    .line 473
    .line 474
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    new-instance v4, Lo7/s0;

    .line 479
    .line 480
    sget-object v5, Ln7/f1;->h:Ln7/f1;

    .line 481
    .line 482
    invoke-virtual {v5, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    sget-object v5, Lo7/v;->b:Lo7/v;

    .line 487
    .line 488
    invoke-direct {v4, v3, v5, v2}, Lo7/s0;-><init>(Ln7/f1;Lo7/v;[Ln7/e;)V

    .line 489
    .line 490
    .line 491
    iput-object v4, v1, Lo7/t;->l:Lo7/u;

    .line 492
    .line 493
    goto/16 :goto_12

    .line 494
    .line 495
    :cond_15
    iget-object v2, v1, Lo7/t;->h:Ln7/n;

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 501
    .line 502
    iget-object v2, v2, Ln7/c;->a:Ln7/o;

    .line 503
    .line 504
    sget-object v4, Lo7/t;->s:Ljava/util/logging/Logger;

    .line 505
    .line 506
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 507
    .line 508
    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-eqz v7, :cond_18

    .line 513
    .line 514
    if-eqz v12, :cond_18

    .line 515
    .line 516
    invoke-virtual {v12, v11}, Ln7/o;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    if-nez v7, :cond_16

    .line 521
    .line 522
    goto :goto_e

    .line 523
    :cond_16
    invoke-virtual {v12}, Ln7/o;->b()J

    .line 524
    .line 525
    .line 526
    move-result-wide v7

    .line 527
    move-wide/from16 v13, v16

    .line 528
    .line 529
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 530
    .line 531
    .line 532
    move-result-wide v7

    .line 533
    new-instance v9, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 536
    .line 537
    new-instance v13, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const-string v14, "Call timeout set to \'"

    .line 540
    .line 541
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v7, "\' ns, due to context deadline."

    .line 548
    .line 549
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    if-nez v2, :cond_17

    .line 560
    .line 561
    const-string v2, " Explicit call timeout was not set."

    .line 562
    .line 563
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    goto :goto_d

    .line 567
    :cond_17
    invoke-virtual {v2}, Ln7/o;->b()J

    .line 568
    .line 569
    .line 570
    move-result-wide v7

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string v13, " Explicit call timeout was \'"

    .line 574
    .line 575
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v7, "\' ns."

    .line 582
    .line 583
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    :goto_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    :cond_18
    :goto_e
    const/4 v2, 0x0

    .line 601
    iget-object v3, v1, Lo7/t;->p:Lc0/h;

    .line 602
    .line 603
    iget-object v4, v1, Lo7/t;->d:Ln7/x0;

    .line 604
    .line 605
    iget-object v7, v1, Lo7/t;->k:Ln7/c;

    .line 606
    .line 607
    iget-object v9, v1, Lo7/t;->h:Ln7/n;

    .line 608
    .line 609
    iget-object v8, v3, Lc0/h;->b:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v8, Lo7/f2;

    .line 612
    .line 613
    iget-boolean v8, v8, Lo7/f2;->W:Z

    .line 614
    .line 615
    if-nez v8, :cond_19

    .line 616
    .line 617
    new-instance v6, Lo7/g3;

    .line 618
    .line 619
    invoke-direct {v6, v4, v5, v7}, Lo7/g3;-><init>(Ln7/x0;Ln7/v0;Ln7/c;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v3, v6}, Lc0/h;->b(Lo7/g3;)Lo7/x;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-virtual {v9}, Ln7/n;->a()Ln7/n;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-static {v7, v5, v2, v2}, Lo7/y0;->c(Ln7/c;Ln7/v0;IZ)[Ln7/e;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    :try_start_0
    invoke-interface {v3, v4, v5, v7, v2}, Lo7/x;->d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;

    .line 635
    .line 636
    .line 637
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-virtual {v9, v6}, Ln7/n;->c(Ln7/n;)V

    .line 639
    .line 640
    .line 641
    goto :goto_11

    .line 642
    :catchall_0
    move-exception v0

    .line 643
    invoke-virtual {v9, v6}, Ln7/n;->c(Ln7/n;)V

    .line 644
    .line 645
    .line 646
    throw v0

    .line 647
    :cond_19
    invoke-virtual {v7, v6}, Ln7/c;->a(La9/w;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    check-cast v2, Lo7/j2;

    .line 652
    .line 653
    if-nez v2, :cond_1a

    .line 654
    .line 655
    move-object v6, v11

    .line 656
    goto :goto_f

    .line 657
    :cond_1a
    iget-object v6, v2, Lo7/j2;->e:Lo7/e4;

    .line 658
    .line 659
    :goto_f
    if-nez v2, :cond_1b

    .line 660
    .line 661
    move-object v8, v11

    .line 662
    goto :goto_10

    .line 663
    :cond_1b
    iget-object v2, v2, Lo7/j2;->f:Lo7/a1;

    .line 664
    .line 665
    move-object v8, v2

    .line 666
    :goto_10
    new-instance v2, Lo7/v1;

    .line 667
    .line 668
    move-object/from16 v18, v7

    .line 669
    .line 670
    move-object v7, v6

    .line 671
    move-object/from16 v6, v18

    .line 672
    .line 673
    invoke-direct/range {v2 .. v9}, Lo7/v1;-><init>(Lc0/h;Ln7/x0;Ln7/v0;Ln7/c;Lo7/e4;Lo7/a1;Ln7/n;)V

    .line 674
    .line 675
    .line 676
    :goto_11
    iput-object v2, v1, Lo7/t;->l:Lo7/u;

    .line 677
    .line 678
    :goto_12
    iget-boolean v2, v1, Lo7/t;->f:Z

    .line 679
    .line 680
    if-eqz v2, :cond_1c

    .line 681
    .line 682
    iget-object v2, v1, Lo7/t;->l:Lo7/u;

    .line 683
    .line 684
    invoke-interface {v2}, Lo7/u4;->o()V

    .line 685
    .line 686
    .line 687
    :cond_1c
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 688
    .line 689
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 693
    .line 694
    iget-object v2, v2, Ln7/c;->f:Ljava/lang/Integer;

    .line 695
    .line 696
    if-eqz v2, :cond_1d

    .line 697
    .line 698
    iget-object v3, v1, Lo7/t;->l:Lo7/u;

    .line 699
    .line 700
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    invoke-interface {v3, v2}, Lo7/u;->m(I)V

    .line 705
    .line 706
    .line 707
    :cond_1d
    iget-object v2, v1, Lo7/t;->k:Ln7/c;

    .line 708
    .line 709
    iget-object v2, v2, Ln7/c;->g:Ljava/lang/Integer;

    .line 710
    .line 711
    if-eqz v2, :cond_1e

    .line 712
    .line 713
    iget-object v3, v1, Lo7/t;->l:Lo7/u;

    .line 714
    .line 715
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    invoke-interface {v3, v2}, Lo7/u;->c(I)V

    .line 720
    .line 721
    .line 722
    :cond_1e
    if-eqz v12, :cond_1f

    .line 723
    .line 724
    iget-object v2, v1, Lo7/t;->l:Lo7/u;

    .line 725
    .line 726
    invoke-interface {v2, v12}, Lo7/u;->n(Ln7/o;)V

    .line 727
    .line 728
    .line 729
    :cond_1f
    iget-object v2, v1, Lo7/t;->l:Lo7/u;

    .line 730
    .line 731
    invoke-interface {v2, v0}, Lo7/u4;->a(Ln7/h;)V

    .line 732
    .line 733
    .line 734
    iget-object v0, v1, Lo7/t;->l:Lo7/u;

    .line 735
    .line 736
    iget-object v2, v1, Lo7/t;->r:Ln7/q;

    .line 737
    .line 738
    invoke-interface {v0, v2}, Lo7/u;->g(Ln7/q;)V

    .line 739
    .line 740
    .line 741
    iget-object v0, v1, Lo7/t;->g:Lb1/m;

    .line 742
    .line 743
    iget-object v2, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast v2, Lo7/r1;

    .line 746
    .line 747
    invoke-interface {v2}, Lo7/r1;->a()V

    .line 748
    .line 749
    .line 750
    iget-object v0, v0, Lb1/m;->c:Ljava/lang/Object;

    .line 751
    .line 752
    check-cast v0, Lo7/u2;

    .line 753
    .line 754
    invoke-virtual {v0}, Lo7/u2;->q()J

    .line 755
    .line 756
    .line 757
    iget-object v0, v1, Lo7/t;->l:Lo7/u;

    .line 758
    .line 759
    new-instance v2, La5/h;

    .line 760
    .line 761
    move-object/from16 v3, p1

    .line 762
    .line 763
    invoke-direct {v2, v1, v3}, La5/h;-><init>(Lo7/t;Ln7/e;)V

    .line 764
    .line 765
    .line 766
    invoke-interface {v0, v2}, Lo7/u;->d(Lo7/w;)V

    .line 767
    .line 768
    .line 769
    iget-object v0, v1, Lo7/t;->h:Ln7/n;

    .line 770
    .line 771
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    sget-object v0, Ln7/n;->a:Ljava/util/logging/Logger;

    .line 775
    .line 776
    if-eqz v12, :cond_20

    .line 777
    .line 778
    iget-object v0, v1, Lo7/t;->h:Ln7/n;

    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v12, v11}, Ln7/o;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-nez v0, :cond_20

    .line 788
    .line 789
    iget-object v0, v1, Lo7/t;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 790
    .line 791
    if-eqz v0, :cond_20

    .line 792
    .line 793
    invoke-virtual {v12}, Ln7/o;->b()J

    .line 794
    .line 795
    .line 796
    move-result-wide v2

    .line 797
    iget-object v0, v1, Lo7/t;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 798
    .line 799
    new-instance v4, Lo7/q1;

    .line 800
    .line 801
    new-instance v5, Lo7/s;

    .line 802
    .line 803
    invoke-direct {v5, v1, v2, v3}, Lo7/s;-><init>(Lo7/t;J)V

    .line 804
    .line 805
    .line 806
    invoke-direct {v4, v5}, Lo7/q1;-><init>(Ljava/lang/Runnable;)V

    .line 807
    .line 808
    .line 809
    invoke-interface {v0, v4, v2, v3, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    iput-object v0, v1, Lo7/t;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 814
    .line 815
    :cond_20
    iget-boolean v0, v1, Lo7/t;->m:Z

    .line 816
    .line 817
    if-eqz v0, :cond_21

    .line 818
    .line 819
    invoke-virtual {v1}, Lo7/t;->s()V

    .line 820
    .line 821
    .line 822
    :cond_21
    return-void
.end method
