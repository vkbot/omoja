.class public final Lo7/u1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lo7/f2;


# direct methods
.method public constructor <init>(Lo7/f2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/u1;->a:Lo7/f2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object p1, Lo7/f2;->c0:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "["

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lo7/u1;->a:Lo7/f2;

    .line 13
    .line 14
    iget-object v3, v2, Lo7/f2;->a:Ln7/a0;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "] Uncaught exception in the SynchronizationContext. Panic!"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, v2, Lo7/f2;->z:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, v2, Lo7/f2;->z:Z

    .line 38
    .line 39
    iget-object p1, v2, Lo7/f2;->a0:Lo7/n3;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p1, Lo7/n3;->f:Z

    .line 43
    .line 44
    iget-object v1, p1, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 50
    .line 51
    .line 52
    iput-object v3, p1, Lo7/n3;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v2, v0}, Lo7/f2;->k(Z)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lo7/t1;

    .line 58
    .line 59
    invoke-direct {p1, p2}, Lo7/t1;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, v2, Lo7/f2;->y:Ln7/h0;

    .line 63
    .line 64
    iget-object p2, v2, Lo7/f2;->E:Lo7/l0;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Lo7/l0;->g(Ln7/h0;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, v2, Lo7/f2;->P:Lo7/c2;

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Lo7/c2;->h(Ln7/y;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v2, Lo7/f2;->N:Lo7/m;

    .line 75
    .line 76
    const/4 p2, 0x4

    .line 77
    const-string v0, "PANIC! Entering TRANSIENT_FAILURE"

    .line 78
    .line 79
    invoke-virtual {p1, p2, v0}, Lo7/m;->m(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v2, Lo7/f2;->r:Lc0/h;

    .line 83
    .line 84
    sget-object p2, Ln7/j;->d:Ln7/j;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lc0/h;->c(Ln7/j;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
