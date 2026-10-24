.class public final Ll/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/o;
.implements Ln/h$a;
.implements Ll/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/m$b;,
        Ll/m$a;,
        Ll/m$c;,
        Ll/m$d;
    }
.end annotation


# static fields
.field public static final h:Z


# instance fields
.field public final a:Ll/u;

.field public final b:Ll/q;

.field public final c:Ln/h;

.field public final d:Ll/m$b;

.field public final e:Ll/a0;

.field public final f:Ll/m$a;

.field public final g:Ll/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ll/m;->h:Z

    return-void
.end method

.method public constructor <init>(Ln/h;Ln/a$a;Lo/a;Lo/a;Lo/a;Lo/a;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m;->c:Ln/h;

    new-instance v0, Ll/m$c;

    invoke-direct {v0, p2}, Ll/m$c;-><init>(Ln/a$a;)V

    new-instance p2, Ll/c;

    invoke-direct {p2}, Ll/c;-><init>()V

    iput-object p2, p0, Ll/m;->g:Ll/c;

    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, p2, Ll/c;->d:Ll/r$a;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Ll/q;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ll/q;-><init>(I)V

    iput-object p2, p0, Ll/m;->b:Ll/q;

    new-instance p2, Ll/u;

    invoke-direct {p2}, Ll/u;-><init>()V

    iput-object p2, p0, Ll/m;->a:Ll/u;

    new-instance p2, Ll/m$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Ll/m$b;-><init>(Lo/a;Lo/a;Lo/a;Lo/a;Ll/o;Ll/r$a;)V

    iput-object p2, p0, Ll/m;->d:Ll/m$b;

    new-instance p2, Ll/m$a;

    invoke-direct {p2, v0}, Ll/m$a;-><init>(Ll/m$c;)V

    iput-object p2, p0, Ll/m;->f:Ll/m$a;

    new-instance p2, Ll/a0;

    invoke-direct {p2}, Ll/a0;-><init>()V

    iput-object p2, p0, Ll/m;->e:Ll/a0;

    check-cast p1, Ln/g;

    iput-object p0, p1, Ln/g;->d:Ln/h$a;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static d(Ljava/lang/String;JLi/f;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p0, v0}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lf0/e;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(Ll/x;)V
    .locals 1

    instance-of v0, p0, Ll/r;

    if-eqz v0, :cond_0

    check-cast p0, Ll/r;

    invoke-virtual {p0}, Ll/r;->c()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Li/f;Ll/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Ll/r<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Ll/m;->g:Ll/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Ll/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/c$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Ll/c$a;->c:Ll/x;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iget-boolean v0, p2, Ll/r;->c:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Ll/m;->c:Ln/h;

    check-cast p0, Ln/g;

    invoke-virtual {p0, p1, p2}, Lf0/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll/x;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ll/m;->e:Ll/a0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Ll/a0;->a(Ll/x;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b(Lcom/bumptech/glide/d;Ljava/lang/Object;Li/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Ll/l;Lcom/bumptech/glide/util/CachedHashCodeArrayMap;ZZLi/h;ZZZZLb0/g;Ljava/util/concurrent/Executor;)Ll/m$d;
    .locals 24

    move-object/from16 v15, p0

    sget-boolean v0, Ll/m;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lf0/e;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    move-wide v13, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v15, Ll/m;->b:Ll/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll/p;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Ll/p;-><init>(Ljava/lang/Object;Li/f;IILcom/bumptech/glide/util/CachedHashCodeArrayMap;Ljava/lang/Class;Ljava/lang/Class;Li/h;)V

    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Ll/m;->c(Ll/p;ZJ)Ll/r;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-virtual/range {v1 .. v23}, Ll/m;->g(Lcom/bumptech/glide/d;Ljava/lang/Object;Li/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Ll/l;Lcom/bumptech/glide/util/CachedHashCodeArrayMap;ZZLi/h;ZZZZLb0/g;Ljava/util/concurrent/Executor;Ll/p;J)Ll/m$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Li/a;->Z:Li/a;

    move-object/from16 v2, p18

    check-cast v2, Lb0/h;

    invoke-virtual {v2, v0, v1}, Lb0/h;->l(Li/a;Ll/x;)V

    const/4 v0, 0x0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Ll/p;ZJ)Ll/r;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/p;",
            "ZJ)",
            "Ll/r<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object p2, p0, Ll/m;->g:Ll/c;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Ll/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/r;

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Ll/c;->b(Ll/c$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ll/r;->b()V

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean p0, Ll/m;->h:Z

    if-eqz p0, :cond_4

    const-string p0, "Loaded resource from active resources"

    invoke-static {p0, p3, p4, p1}, Ll/m;->d(Ljava/lang/String;JLi/f;)V

    :cond_4
    return-object v2

    :cond_5
    iget-object p2, p0, Ll/m;->c:Ln/h;

    check-cast p2, Ln/g;

    monitor-enter p2

    :try_start_2
    iget-object v1, p2, Lf0/f;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-wide v2, p2, Lf0/f;->c:J

    invoke-virtual {p2, v1}, Ln/g;->b(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lf0/f;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_2
    monitor-exit p2

    move-object v2, v1

    check-cast v2, Ll/x;

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_3

    :cond_7
    instance-of p2, v2, Ll/r;

    if-eqz p2, :cond_8

    check-cast v2, Ll/r;

    goto :goto_3

    :cond_8
    new-instance p2, Ll/r;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ll/r;-><init>(Ll/x;ZZLi/f;Ll/r$a;)V

    move-object v2, p2

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ll/r;->b()V

    iget-object p0, p0, Ll/m;->g:Ll/c;

    invoke-virtual {p0, p1, v2}, Ll/c;->a(Li/f;Ll/r;)V

    :cond_9
    if-eqz v2, :cond_b

    sget-boolean p0, Ll/m;->h:Z

    if-eqz p0, :cond_a

    const-string p0, "Loaded resource from cache"

    invoke-static {p0, p3, p4, p1}, Ll/m;->d(Ljava/lang/String;JLi/f;)V

    :cond_a
    return-object v2

    :cond_b
    return-object v0

    :goto_4
    monitor-exit p2

    throw p0

    :goto_5
    monitor-exit p2

    throw p0
.end method

.method public final declared-synchronized e(Ll/n;Li/f;Ll/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/n<",
            "*>;",
            "Li/f;",
            "Ll/r<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, Ll/r;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/m;->g:Ll/c;

    invoke-virtual {v0, p2, p3}, Ll/c;->a(Li/f;Ll/r;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p3, p0, Ll/m;->a:Ll/u;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Ll/n;->l1:Z

    if-eqz v0, :cond_1

    iget-object p3, p3, Ll/u;->b:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    iget-object p3, p3, Ll/u;->a:Ljava/util/HashMap;

    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final g(Lcom/bumptech/glide/d;Ljava/lang/Object;Li/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Ll/l;Lcom/bumptech/glide/util/CachedHashCodeArrayMap;ZZLi/h;ZZZZLb0/g;Ljava/util/concurrent/Executor;Ll/p;J)Ll/m$d;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-wide/from16 v13, p21

    iget-object v15, v0, Ll/m;->a:Ll/u;

    if-eqz v9, :cond_0

    iget-object v15, v15, Ll/u;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v15, v15, Ll/u;->a:Ljava/util/HashMap;

    :goto_0
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ll/n;

    if-eqz v15, :cond_2

    invoke-virtual {v15, v10, v11}, Ll/n;->a(Lb0/g;Ljava/util/concurrent/Executor;)V

    sget-boolean v1, Ll/m;->h:Z

    if-eqz v1, :cond_1

    const-string v1, "Added to existing load"

    invoke-static {v1, v13, v14, v12}, Ll/m;->d(Ljava/lang/String;JLi/f;)V

    :cond_1
    new-instance v1, Ll/m$d;

    invoke-direct {v1, v0, v10, v15}, Ll/m$d;-><init>(Ll/m;Lb0/g;Ll/n;)V

    return-object v1

    :cond_2
    iget-object v15, v0, Ll/m;->d:Ll/m$b;

    iget-object v15, v15, Ll/m$b;->g:Lg0/a$c;

    invoke-virtual {v15}, Lg0/a$c;->acquire()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ll/n;

    invoke-static {v15}, Lf0/i;->b(Ljava/lang/Object;)V

    monitor-enter v15

    :try_start_0
    iput-object v12, v15, Ll/n;->h1:Li/f;

    move/from16 v13, p14

    iput-boolean v13, v15, Ll/n;->i1:Z

    move/from16 v13, p15

    iput-boolean v13, v15, Ll/n;->j1:Z

    move/from16 v13, p16

    iput-boolean v13, v15, Ll/n;->k1:Z

    iput-boolean v9, v15, Ll/n;->l1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v15

    iget-object v13, v0, Ll/m;->f:Ll/m$a;

    iget-object v14, v13, Ll/m$a;->b:Lg0/a$c;

    invoke-virtual {v14}, Lg0/a$c;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ll/j;

    invoke-static {v14}, Lf0/i;->b(Ljava/lang/Object;)V

    iget v10, v13, Ll/m$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v13, Ll/m$a;->c:I

    iget-object v11, v14, Ll/j;->c:Ll/i;

    iput-object v1, v11, Ll/i;->c:Lcom/bumptech/glide/d;

    iput-object v2, v11, Ll/i;->d:Ljava/lang/Object;

    iput-object v3, v11, Ll/i;->n:Li/f;

    iput v4, v11, Ll/i;->e:I

    iput v5, v11, Ll/i;->f:I

    iput-object v7, v11, Ll/i;->p:Ll/l;

    move-object/from16 v13, p6

    iput-object v13, v11, Ll/i;->g:Ljava/lang/Class;

    iget-object v13, v14, Ll/j;->y:Ll/j$d;

    iput-object v13, v11, Ll/i;->h:Ll/j$d;

    move-object/from16 v13, p7

    iput-object v13, v11, Ll/i;->k:Ljava/lang/Class;

    iput-object v6, v11, Ll/i;->o:Lcom/bumptech/glide/e;

    iput-object v8, v11, Ll/i;->i:Li/h;

    move-object/from16 v13, p10

    iput-object v13, v11, Ll/i;->j:Ljava/util/Map;

    move/from16 v13, p11

    iput-boolean v13, v11, Ll/i;->q:Z

    move/from16 v13, p12

    iput-boolean v13, v11, Ll/i;->r:Z

    iput-object v1, v14, Ll/j;->d1:Lcom/bumptech/glide/d;

    iput-object v3, v14, Ll/j;->e1:Li/f;

    iput-object v6, v14, Ll/j;->f1:Lcom/bumptech/glide/e;

    iput-object v12, v14, Ll/j;->g1:Ll/p;

    iput v4, v14, Ll/j;->h1:I

    iput v5, v14, Ll/j;->i1:I

    iput-object v7, v14, Ll/j;->j1:Ll/l;

    iput-boolean v9, v14, Ll/j;->q1:Z

    iput-object v8, v14, Ll/j;->k1:Li/h;

    iput-object v15, v14, Ll/j;->l1:Ll/j$a;

    iput v10, v14, Ll/j;->m1:I

    sget-object v1, Ll/j$f;->c:Ll/j$f;

    iput-object v1, v14, Ll/j;->o1:Ll/j$f;

    iput-object v2, v14, Ll/j;->r1:Ljava/lang/Object;

    iget-object v1, v0, Ll/m;->a:Ll/u;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v15, Ll/n;->l1:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Ll/u;->b:Ljava/util/HashMap;

    goto :goto_1

    :cond_3
    iget-object v1, v1, Ll/u;->a:Ljava/util/HashMap;

    :goto_1
    invoke-interface {v1, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    invoke-virtual {v15, v1, v2}, Ll/n;->a(Lb0/g;Ljava/util/concurrent/Executor;)V

    monitor-enter v15

    :try_start_1
    iput-object v14, v15, Ll/n;->s1:Ll/j;

    sget-object v2, Ll/j$g;->c:Ll/j$g;

    invoke-virtual {v14, v2}, Ll/j;->i(Ll/j$g;)Ll/j$g;

    move-result-object v2

    sget-object v3, Ll/j$g;->r:Ll/j$g;

    if-eq v2, v3, :cond_7

    sget-object v3, Ll/j$g;->x:Ll/j$g;

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v2, v15, Ll/n;->j1:Z

    if-eqz v2, :cond_5

    iget-object v2, v15, Ll/n;->e1:Lo/a;

    goto :goto_3

    :cond_5
    iget-boolean v2, v15, Ll/n;->k1:Z

    if-eqz v2, :cond_6

    iget-object v2, v15, Ll/n;->f1:Lo/a;

    goto :goto_3

    :cond_6
    iget-object v2, v15, Ll/n;->d1:Lo/a;

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v2, v15, Ll/n;->c1:Lo/a;

    :goto_3
    invoke-virtual {v2, v14}, Lo/a;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v15

    sget-boolean v2, Ll/m;->h:Z

    if-eqz v2, :cond_8

    const-string v2, "Started new load"

    move-wide/from16 v3, p21

    invoke-static {v2, v3, v4, v12}, Ll/m;->d(Ljava/lang/String;JLi/f;)V

    :cond_8
    new-instance v2, Ll/m$d;

    invoke-direct {v2, v0, v1, v15}, Ll/m$d;-><init>(Ll/m;Lb0/g;Ll/n;)V

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v15

    throw v0
.end method
