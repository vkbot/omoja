.class public final Ll/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/j$a;
.implements Lg0/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/n$c;,
        Ll/n$d;,
        Ll/n$e;,
        Ll/n$b;,
        Ll/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/j$a<",
        "TR;>;",
        "Lg0/a$d;"
    }
.end annotation


# static fields
.field public static final u1:Ll/n$c;


# instance fields
.field public final Z:Ll/n$c;

.field public final b1:Ll/o;

.field public final c:Ll/n$e;

.field public final c1:Lo/a;

.field public final d1:Lo/a;

.field public final e1:Lo/a;

.field public final f1:Lo/a;

.field public final g1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public h1:Li/f;

.field public i1:Z

.field public j1:Z

.field public k1:Z

.field public l1:Z

.field public m1:Ll/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/x<",
            "*>;"
        }
    .end annotation
.end field

.field public n1:Li/a;

.field public o1:Z

.field public p1:Ll/s;

.field public q1:Z

.field public final r:Lg0/d$a;

.field public r1:Ll/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/r<",
            "*>;"
        }
    .end annotation
.end field

.field public s1:Ll/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile t1:Z

.field public final x:Ll/r$a;

.field public final y:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ll/n<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll/n$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll/n;->u1:Ll/n$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lo/a;Lo/a;Lo/a;Lo/a;Ll/o;Ll/r$a;Lg0/a$c;)V
    .locals 4

    sget-object v0, Ll/n;->u1:Ll/n$c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ll/n$e;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2}, Ll/n$e;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Ll/n;->c:Ll/n$e;

    .line 4
    new-instance v1, Lg0/d$a;

    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ll/n;->r:Lg0/d$a;

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Ll/n;->g1:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Ll/n;->c1:Lo/a;

    iput-object p2, p0, Ll/n;->d1:Lo/a;

    iput-object p3, p0, Ll/n;->e1:Lo/a;

    iput-object p4, p0, Ll/n;->f1:Lo/a;

    iput-object p5, p0, Ll/n;->b1:Ll/o;

    iput-object p6, p0, Ll/n;->x:Ll/r$a;

    iput-object p7, p0, Ll/n;->y:Landroidx/core/util/Pools$Pool;

    iput-object v0, p0, Ll/n;->Z:Ll/n$c;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lb0/g;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/n;->r:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    iget-object v0, p0, Ll/n;->c:Ll/n$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll/n$d;

    invoke-direct {v1, p1, p2}, Ll/n$d;-><init>(Lb0/g;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Ll/n;->o1:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ll/n;->e(I)V

    new-instance v0, Ll/n$b;

    invoke-direct {v0, p0, p1}, Ll/n$b;-><init>(Ll/n;Lb0/g;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Ll/n;->q1:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ll/n;->e(I)V

    new-instance v0, Ll/n$a;

    invoke-direct {v0, p0, p1}, Ll/n$a;-><init>(Ll/n;Lb0/g;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Ll/n;->t1:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p2, p1}, Lf0/i;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b()Lg0/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ll/n;->r:Lg0/d$a;

    return-object p0
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Ll/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/n;->t1:Z

    iget-object v1, p0, Ll/n;->s1:Ll/j;

    iput-boolean v0, v1, Ll/j;->A1:Z

    iget-object v0, v1, Ll/j;->y1:Ll/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ll/h;->cancel()V

    :cond_1
    iget-object v0, p0, Ll/n;->b1:Ll/o;

    iget-object v1, p0, Ll/n;->h1:Li/f;

    check-cast v0, Ll/m;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Ll/m;->a:Ll/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p0, Ll/n;->l1:Z

    if-eqz v3, :cond_2

    iget-object v2, v2, Ll/u;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object v2, v2, Ll/u;->a:Ljava/util/HashMap;

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/n;->r:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    invoke-virtual {p0}, Ll/n;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Lf0/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Ll/n;->g1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v2, v1}, Lf0/i;->a(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Ll/n;->r1:Ll/r;

    invoke-virtual {p0}, Ll/n;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll/r;->c()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ll/n;->f()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Lf0/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Ll/n;->g1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ll/n;->r1:Ll/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Ll/n;->q1:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ll/n;->o1:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Ll/n;->t1:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/n;->h1:Li/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll/n;->c:Ll/n$e;

    iget-object v0, v0, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/n;->h1:Li/f;

    iput-object v0, p0, Ll/n;->r1:Ll/r;

    iput-object v0, p0, Ll/n;->m1:Ll/x;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ll/n;->q1:Z

    iput-boolean v1, p0, Ll/n;->t1:Z

    iput-boolean v1, p0, Ll/n;->o1:Z

    iget-object v1, p0, Ll/n;->s1:Ll/j;

    iget-object v2, v1, Ll/j;->c1:Ll/j$e;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v2, Ll/j$e;->a:Z

    invoke-virtual {v2}, Ll/j$e;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ll/j;->l()V

    :cond_0
    iput-object v0, p0, Ll/n;->s1:Ll/j;

    iput-object v0, p0, Ll/n;->p1:Ll/s;

    iput-object v0, p0, Ll/n;->n1:Li/a;

    iget-object v0, p0, Ll/n;->y:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(Lb0/g;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/n;->r:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    iget-object v0, p0, Ll/n;->c:Ll/n$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll/n$d;

    sget-object v2, Lf0/d;->b:Lf0/d$b;

    invoke-direct {v1, p1, v2}, Ll/n$d;-><init>(Lb0/g;Ljava/util/concurrent/Executor;)V

    iget-object p1, v0, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ll/n;->c:Ll/n$e;

    iget-object p1, p1, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ll/n;->c()V

    iget-boolean p1, p0, Ll/n;->o1:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ll/n;->q1:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Ll/n;->g1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ll/n;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
