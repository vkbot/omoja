.class public final Ll/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/h$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lg0/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/j$g;,
        Ll/j$f;,
        Ll/j$d;,
        Ll/j$a;,
        Ll/j$c;,
        Ll/j$e;,
        Ll/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/h$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Ll/j<",
        "*>;>;",
        "Lg0/a$d;"
    }
.end annotation


# instance fields
.field public volatile A1:Z

.field public final Z:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ll/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b1:Ll/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/j$c<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ll/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/i<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c1:Ll/j$e;

.field public d1:Lcom/bumptech/glide/d;

.field public e1:Li/f;

.field public f1:Lcom/bumptech/glide/e;

.field public g1:Ll/p;

.field public h1:I

.field public i1:I

.field public j1:Ll/l;

.field public k1:Li/h;

.field public l1:Ll/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/j$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public m1:I

.field public n1:Ll/j$g;

.field public o1:Ll/j$f;

.field public p1:J

.field public q1:Z

.field public final r:Ljava/util/ArrayList;

.field public r1:Ljava/lang/Object;

.field public s1:Ljava/lang/Thread;

.field public t1:Li/f;

.field public u1:Li/f;

.field public v1:Ljava/lang/Object;

.field public w1:Li/a;

.field public final x:Lg0/d$a;

.field public x1:Lj/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/d<",
            "*>;"
        }
    .end annotation
.end field

.field public final y:Ll/j$d;

.field public volatile y1:Ll/h;

.field public volatile z1:Z


# direct methods
.method public constructor <init>(Ll/j$d;Lg0/a$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/i;

    invoke-direct {v0}, Ll/i;-><init>()V

    iput-object v0, p0, Ll/j;->c:Ll/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/j;->r:Ljava/util/ArrayList;

    new-instance v0, Lg0/d$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/j;->x:Lg0/d$a;

    new-instance v0, Ll/j$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/j;->b1:Ll/j$c;

    new-instance v0, Ll/j$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/j;->c1:Ll/j$e;

    iput-object p1, p0, Ll/j;->y:Ll/j$d;

    iput-object p2, p0, Ll/j;->Z:Landroidx/core/util/Pools$Pool;

    return-void
.end method


# virtual methods
.method public final a(Li/f;Ljava/lang/Object;Lj/d;Li/a;Li/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Ljava/lang/Object;",
            "Lj/d<",
            "*>;",
            "Li/a;",
            "Li/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ll/j;->t1:Li/f;

    iput-object p2, p0, Ll/j;->v1:Ljava/lang/Object;

    iput-object p3, p0, Ll/j;->x1:Lj/d;

    iput-object p4, p0, Ll/j;->w1:Li/a;

    iput-object p5, p0, Ll/j;->u1:Li/f;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Ll/j;->s1:Ljava/lang/Thread;

    if-eq p1, p2, :cond_2

    sget-object p1, Ll/j$f;->x:Ll/j$f;

    iput-object p1, p0, Ll/j;->o1:Ll/j$f;

    iget-object p1, p0, Ll/j;->l1:Ll/j$a;

    check-cast p1, Ll/n;

    iget-boolean p2, p1, Ll/n;->j1:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Ll/n;->e1:Lo/a;

    goto :goto_0

    :cond_0
    iget-boolean p2, p1, Ll/n;->k1:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Ll/n;->f1:Lo/a;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Ll/n;->d1:Lo/a;

    :goto_0
    invoke-virtual {p1, p0}, Lo/a;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ll/j;->g()V

    :goto_1
    return-void
.end method

.method public final b()Lg0/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ll/j;->x:Lg0/d$a;

    return-object p0
.end method

.method public final c(Li/f;Ljava/lang/Exception;Lj/d;Li/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Ljava/lang/Exception;",
            "Lj/d<",
            "*>;",
            "Li/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lj/d;->b()V

    new-instance v0, Ll/s;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Ll/s;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Lj/d;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, Ll/s;->r:Li/f;

    iput-object p4, v0, Ll/s;->x:Li/a;

    iput-object p2, v0, Ll/s;->y:Ljava/lang/Class;

    iget-object p1, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Ll/j;->s1:Ljava/lang/Thread;

    if-eq p1, p2, :cond_2

    sget-object p1, Ll/j$f;->r:Ll/j$f;

    iput-object p1, p0, Ll/j;->o1:Ll/j$f;

    iget-object p1, p0, Ll/j;->l1:Ll/j$a;

    check-cast p1, Ll/n;

    iget-boolean p2, p1, Ll/n;->j1:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Ll/n;->e1:Lo/a;

    goto :goto_0

    :cond_0
    iget-boolean p2, p1, Ll/n;->k1:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Ll/n;->f1:Lo/a;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Ll/n;->d1:Lo/a;

    :goto_0
    invoke-virtual {p1, p0}, Lo/a;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ll/j;->m()V

    :goto_1
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ll/j;

    iget-object v0, p0, Ll/j;->f1:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Ll/j;->f1:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Ll/j;->m1:I

    iget p1, p1, Ll/j;->m1:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public final d()V
    .locals 2

    sget-object v0, Ll/j$f;->r:Ll/j$f;

    iput-object v0, p0, Ll/j;->o1:Ll/j$f;

    iget-object v0, p0, Ll/j;->l1:Ll/j$a;

    check-cast v0, Ll/n;

    iget-boolean v1, v0, Ll/n;->j1:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll/n;->e1:Lo/a;

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Ll/n;->k1:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Ll/n;->f1:Lo/a;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ll/n;->d1:Lo/a;

    :goto_0
    invoke-virtual {v0, p0}, Lo/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lj/d;Ljava/lang/Object;Li/a;)Ll/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lj/d<",
            "*>;TData;",
            "Li/a;",
            ")",
            "Ll/x<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Decoded result "

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lj/d;->b()V

    return-object v1

    :cond_0
    :try_start_0
    sget v2, Lf0/e;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0, p2, p3}, Ll/j;->f(Ljava/lang/Object;Li/a;)Ll/x;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2, v3, v1}, Ll/j;->j(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lj/d;->b()V

    return-object p2

    :goto_1
    invoke-interface {p1}, Lj/d;->b()V

    throw p0
.end method

.method public final f(Ljava/lang/Object;Li/a;)Ll/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Li/a;",
            ")",
            "Ll/x<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Ll/j;->c:Ll/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/i;->c(Ljava/lang/Class;)Ll/v;

    move-result-object v2

    iget-object v0, p0, Ll/j;->k1:Li/h;

    sget-object v1, Li/a;->y:Li/a;

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Ll/j;->c:Ll/i;

    iget-boolean v1, v1, Ll/i;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-object v3, Ls/h;->i:Li/g;

    invoke-virtual {v0, v3}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_3
    new-instance v0, Li/h;

    invoke-direct {v0}, Li/h;-><init>()V

    iget-object v4, p0, Ll/j;->k1:Li/h;

    iget-object v5, v0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object v4, v4, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v4, v0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v4, v3, v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Ll/j;->d1:Lcom/bumptech/glide/d;

    iget-object v0, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->e:Lj/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lj/f;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/e$a;

    if-nez v1, :cond_5

    iget-object v3, v0, Lj/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/e$a;

    invoke-interface {v4}, Lj/e$a;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    sget-object v1, Lj/f;->b:Lj/f$a;

    :cond_6
    invoke-interface {v1, p1}, Lj/e$a;->b(Ljava/lang/Object;)Lj/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :try_start_1
    iget v3, p0, Ll/j;->h1:I

    iget v4, p0, Ll/j;->i1:I

    new-instance v7, Ll/j$b;

    invoke-direct {v7, p0, p2}, Ll/j$b;-><init>(Ll/j;Li/a;)V

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Ll/v;->a(IILi/h;Lj/e;Ll/j$b;)Ll/x;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p1}, Lj/e;->b()V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-interface {p1}, Lj/e;->b()V

    throw p0

    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public final g()V
    .locals 11

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v1, p0, Ll/j;->p1:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ll/j;->v1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ll/j;->t1:Li/f;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ll/j;->x1:Lj/d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Ll/j;->j(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ll/j;->x1:Lj/d;

    iget-object v2, p0, Ll/j;->v1:Ljava/lang/Object;

    iget-object v3, p0, Ll/j;->w1:Li/a;

    invoke-virtual {p0, v1, v2, v3}, Ll/j;->e(Lj/d;Ljava/lang/Object;Li/a;)Ll/x;

    move-result-object v1
    :try_end_0
    .catch Ll/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Ll/j;->u1:Li/f;

    iget-object v3, p0, Ll/j;->w1:Li/a;

    iput-object v2, v1, Ll/s;->r:Li/f;

    iput-object v3, v1, Ll/s;->x:Li/a;

    iput-object v0, v1, Ll/s;->y:Ljava/lang/Class;

    iget-object v2, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_a

    iget-object v2, p0, Ll/j;->w1:Li/a;

    instance-of v3, v1, Ll/t;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ll/t;

    invoke-interface {v3}, Ll/t;->initialize()V

    :cond_1
    iget-object v3, p0, Ll/j;->b1:Ll/j$c;

    iget-object v3, v3, Ll/j$c;->c:Ll/w;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    sget-object v0, Ll/w;->Z:Lg0/a$c;

    invoke-virtual {v0}, Lg0/a$c;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/w;

    invoke-static {v0}, Lf0/i;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Ll/w;->y:Z

    iput-boolean v4, v0, Ll/w;->x:Z

    iput-object v1, v0, Ll/w;->r:Ll/x;

    move-object v1, v0

    :cond_2
    invoke-virtual {p0}, Ll/j;->o()V

    iget-object v3, p0, Ll/j;->l1:Ll/j$a;

    check-cast v3, Ll/n;

    monitor-enter v3

    :try_start_1
    iput-object v1, v3, Ll/n;->m1:Ll/x;

    iput-object v2, v3, Ll/n;->n1:Li/a;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-enter v3

    :try_start_2
    iget-object v1, v3, Ll/n;->r:Lg0/d$a;

    invoke-virtual {v1}, Lg0/d$a;->a()V

    iget-boolean v1, v3, Ll/n;->t1:Z

    if-eqz v1, :cond_3

    iget-object v1, v3, Ll/n;->m1:Ll/x;

    invoke-interface {v1}, Ll/x;->recycle()V

    invoke-virtual {v3}, Ll/n;->g()V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_3
    iget-object v1, v3, Ll/n;->c:Ll/n$e;

    iget-object v1, v1, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v3, Ll/n;->o1:Z

    if-nez v1, :cond_8

    iget-object v1, v3, Ll/n;->Z:Ll/n$c;

    iget-object v6, v3, Ll/n;->m1:Ll/x;

    iget-boolean v7, v3, Ll/n;->i1:Z

    iget-object v9, v3, Ll/n;->h1:Li/f;

    iget-object v10, v3, Ll/n;->x:Ll/r$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll/r;

    const/4 v8, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Ll/r;-><init>(Ll/x;ZZLi/f;Ll/r$a;)V

    iput-object v1, v3, Ll/n;->r1:Ll/r;

    iput-boolean v4, v3, Ll/n;->o1:Z

    iget-object v1, v3, Ll/n;->c:Ll/n$e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Ll/n$e;->c:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v3, v1}, Ll/n;->e(I)V

    iget-object v1, v3, Ll/n;->h1:Li/f;

    iget-object v5, v3, Ll/n;->r1:Ll/r;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v6, v3, Ll/n;->b1:Ll/o;

    check-cast v6, Ll/m;

    invoke-virtual {v6, v3, v1, v5}, Ll/m;->e(Ll/n;Li/f;Ll/r;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/n$d;

    iget-object v5, v2, Ll/n$d;->b:Ljava/util/concurrent/Executor;

    new-instance v6, Ll/n$b;

    iget-object v2, v2, Ll/n$d;->a:Lb0/g;

    invoke-direct {v6, v3, v2}, Ll/n$b;-><init>(Ll/n;Lb0/g;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ll/n;->d()V

    :goto_2
    sget-object v1, Ll/j$g;->Z:Ll/j$g;

    iput-object v1, p0, Ll/j;->n1:Ll/j$g;

    :try_start_3
    iget-object v1, p0, Ll/j;->b1:Ll/j$c;

    iget-object v2, v1, Ll/j$c;->c:Ll/w;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ll/j;->y:Ll/j$d;

    iget-object v3, p0, Ll/j;->k1:Li/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    check-cast v2, Ll/m$c;

    invoke-virtual {v2}, Ll/m$c;->a()Ln/a;

    move-result-object v2

    iget-object v5, v1, Ll/j$c;->a:Li/f;

    new-instance v6, Ll/g;

    iget-object v7, v1, Ll/j$c;->b:Li/k;

    iget-object v8, v1, Ll/j$c;->c:Ll/w;

    invoke-direct {v6, v7, v8, v3}, Ll/g;-><init>(Li/d;Ljava/lang/Object;Li/h;)V

    invoke-interface {v2, v5, v6}, Ln/a;->b(Li/f;Ll/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, v1, Ll/j$c;->c:Ll/w;

    invoke-virtual {v1}, Ll/w;->c()V

    goto :goto_3

    :catchall_1
    move-exception p0

    iget-object v1, v1, Ll/j$c;->c:Ll/w;

    invoke-virtual {v1}, Ll/w;->c()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ll/w;->c()V

    :cond_6
    iget-object v0, p0, Ll/j;->c1:Ll/j$e;

    monitor-enter v0

    :try_start_6
    iput-boolean v4, v0, Ll/j$e;->b:Z

    invoke-virtual {v0}, Ll/j$e;->a()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v0

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ll/j;->l()V

    goto :goto_6

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ll/w;->c()V

    :cond_7
    throw p0

    :cond_8
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already have resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received a resource without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :catchall_4
    move-exception p0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :cond_a
    invoke-virtual {p0}, Ll/j;->m()V

    :cond_b
    :goto_6
    return-void
.end method

.method public final h()Ll/h;
    .locals 3

    iget-object v0, p0, Ll/j;->n1:Ll/j$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Ll/j;->c:Ll/i;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ll/j;->n1:Ll/j$g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ll/c0;

    invoke-direct {v0, v2, p0}, Ll/c0;-><init>(Ll/i;Ll/h$a;)V

    return-object v0

    :cond_2
    new-instance v0, Ll/e;

    invoke-virtual {v2}, Ll/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Ll/e;-><init>(Ljava/util/List;Ll/i;Ll/h$a;)V

    return-object v0

    :cond_3
    new-instance v0, Ll/y;

    invoke-direct {v0, v2, p0}, Ll/y;-><init>(Ll/i;Ll/h$a;)V

    return-object v0
.end method

.method public final i(Ll/j$g;)Ll/j$g;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    sget-object v1, Ll/j$g;->b1:Ll/j$g;

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized stage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-boolean p0, p0, Ll/j;->q1:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Ll/j$g;->y:Ll/j$g;

    :goto_1
    return-object v1

    :cond_4
    iget-object p1, p0, Ll/j;->j1:Ll/l;

    invoke-virtual {p1}, Ll/l;->a()Z

    move-result p1

    sget-object v0, Ll/j$g;->x:Ll/j$g;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Ll/j;->i(Ll/j$g;)Ll/j$g;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_6
    iget-object p1, p0, Ll/j;->j1:Ll/l;

    invoke-virtual {p1}, Ll/l;->b()Z

    move-result p1

    sget-object v0, Ll/j$g;->r:Ll/j$g;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0}, Ll/j;->i(Ll/j$g;)Ll/j$g;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public final j(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p1, v0}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p3}, Lf0/e;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll/j;->g1:Ll/p;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p0, ", "

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 6

    invoke-virtual {p0}, Ll/j;->o()V

    new-instance v0, Ll/s;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Ll/s;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Ll/j;->l1:Ll/j$a;

    check-cast v1, Ll/n;

    monitor-enter v1

    :try_start_0
    iput-object v0, v1, Ll/n;->p1:Ll/s;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Ll/n;->r:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    iget-boolean v0, v1, Ll/n;->t1:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ll/n;->g()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v0, v1, Ll/n;->c:Ll/n$e;

    iget-object v0, v0, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Ll/n;->q1:Z

    if-nez v0, :cond_3

    iput-boolean v2, v1, Ll/n;->q1:Z

    iget-object v0, v1, Ll/n;->h1:Li/f;

    iget-object v3, v1, Ll/n;->c:Ll/n$e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Ll/n$e;->c:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ll/n;->e(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, v1, Ll/n;->b1:Ll/o;

    const/4 v5, 0x0

    check-cast v3, Ll/m;

    invoke-virtual {v3, v1, v0, v5}, Ll/m;->e(Ll/n;Li/f;Ll/r;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll/n$d;

    iget-object v4, v3, Ll/n$d;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Ll/n$a;

    iget-object v3, v3, Ll/n$d;->a:Lb0/g;

    invoke-direct {v5, v1, v3}, Ll/n$a;-><init>(Ll/n;Lb0/g;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ll/n;->d()V

    :goto_1
    iget-object v0, p0, Ll/j;->c1:Ll/j$e;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, Ll/j$e;->c:Z

    invoke-virtual {v0}, Ll/j$e;->a()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ll/j;->l()V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Ll/j;->c1:Ll/j$e;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Ll/j$e;->b:Z

    iput-boolean v1, v0, Ll/j$e;->a:Z

    iput-boolean v1, v0, Ll/j$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Ll/j;->b1:Ll/j$c;

    const/4 v2, 0x0

    iput-object v2, v0, Ll/j$c;->a:Li/f;

    iput-object v2, v0, Ll/j$c;->b:Li/k;

    iput-object v2, v0, Ll/j$c;->c:Ll/w;

    iget-object v0, p0, Ll/j;->c:Ll/i;

    iput-object v2, v0, Ll/i;->c:Lcom/bumptech/glide/d;

    iput-object v2, v0, Ll/i;->d:Ljava/lang/Object;

    iput-object v2, v0, Ll/i;->n:Li/f;

    iput-object v2, v0, Ll/i;->g:Ljava/lang/Class;

    iput-object v2, v0, Ll/i;->k:Ljava/lang/Class;

    iput-object v2, v0, Ll/i;->i:Li/h;

    iput-object v2, v0, Ll/i;->o:Lcom/bumptech/glide/e;

    iput-object v2, v0, Ll/i;->j:Ljava/util/Map;

    iput-object v2, v0, Ll/i;->p:Ll/l;

    iget-object v3, v0, Ll/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Ll/i;->l:Z

    iget-object v3, v0, Ll/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, Ll/i;->m:Z

    iput-boolean v1, p0, Ll/j;->z1:Z

    iput-object v2, p0, Ll/j;->d1:Lcom/bumptech/glide/d;

    iput-object v2, p0, Ll/j;->e1:Li/f;

    iput-object v2, p0, Ll/j;->k1:Li/h;

    iput-object v2, p0, Ll/j;->f1:Lcom/bumptech/glide/e;

    iput-object v2, p0, Ll/j;->g1:Ll/p;

    iput-object v2, p0, Ll/j;->l1:Ll/j$a;

    iput-object v2, p0, Ll/j;->n1:Ll/j$g;

    iput-object v2, p0, Ll/j;->y1:Ll/h;

    iput-object v2, p0, Ll/j;->s1:Ljava/lang/Thread;

    iput-object v2, p0, Ll/j;->t1:Li/f;

    iput-object v2, p0, Ll/j;->v1:Ljava/lang/Object;

    iput-object v2, p0, Ll/j;->w1:Li/a;

    iput-object v2, p0, Ll/j;->x1:Lj/d;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ll/j;->p1:J

    iput-boolean v1, p0, Ll/j;->A1:Z

    iget-object v0, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ll/j;->Z:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ll/j;->s1:Ljava/lang/Thread;

    sget v0, Lf0/e;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Ll/j;->p1:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Ll/j;->A1:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ll/j;->y1:Ll/h;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ll/j;->y1:Ll/h;

    invoke-interface {v0}, Ll/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Ll/j;->n1:Ll/j$g;

    invoke-virtual {p0, v1}, Ll/j;->i(Ll/j$g;)Ll/j$g;

    move-result-object v1

    iput-object v1, p0, Ll/j;->n1:Ll/j$g;

    invoke-virtual {p0}, Ll/j;->h()Ll/h;

    move-result-object v1

    iput-object v1, p0, Ll/j;->y1:Ll/h;

    iget-object v1, p0, Ll/j;->n1:Ll/j$g;

    sget-object v2, Ll/j$g;->y:Ll/j$g;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ll/j;->d()V

    return-void

    :cond_1
    iget-object v1, p0, Ll/j;->n1:Ll/j$g;

    sget-object v2, Ll/j$g;->b1:Ll/j$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Ll/j;->A1:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Ll/j;->k()V

    :cond_3
    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Ll/j;->o1:Ll/j$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ll/j;->g()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized run reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ll/j;->o1:Ll/j$f;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ll/j;->m()V

    goto :goto_0

    :cond_2
    sget-object v0, Ll/j$g;->c:Ll/j$g;

    invoke-virtual {p0, v0}, Ll/j;->i(Ll/j$g;)Ll/j$g;

    move-result-object v0

    iput-object v0, p0, Ll/j;->n1:Ll/j$g;

    invoke-virtual {p0}, Ll/j;->h()Ll/h;

    move-result-object v0

    iput-object v0, p0, Ll/j;->y1:Ll/h;

    invoke-virtual {p0}, Ll/j;->m()V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Ll/j;->x:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    iget-boolean v0, p0, Ll/j;->z1:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iput-boolean v1, p0, Ll/j;->z1:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob"

    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    iget-object v2, p0, Ll/j;->x1:Lj/d;

    :try_start_0
    iget-boolean v3, p0, Ll/j;->A1:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ll/j;->k()V
    :try_end_0
    .catch Ll/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lj/d;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ll/j;->n()V
    :try_end_1
    .catch Ll/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lj/d;->b()V

    :cond_2
    return-void

    :goto_0
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ll/j;->A1:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stage: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/j;->n1:Ll/j$g;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Ll/j;->n1:Ll/j$g;

    sget-object v1, Ll/j$g;->Z:Ll/j$g;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Ll/j;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ll/j;->k()V

    :cond_4
    iget-boolean p0, p0, Ll/j;->A1:Z

    if-nez p0, :cond_5

    throw v3

    :cond_5
    throw v3

    :goto_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lj/d;->b()V

    :cond_6
    throw p0
.end method
