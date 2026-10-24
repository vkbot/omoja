.class public final Ll/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final c:Lb0/g;

.field public final synthetic r:Ll/n;


# direct methods
.method public constructor <init>(Ll/n;Lb0/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/n$b;->r:Ll/n;

    iput-object p2, p0, Ll/n$b;->c:Lb0/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ll/n$b;->c:Lb0/g;

    check-cast v0, Lb0/h;

    iget-object v1, v0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v1}, Lg0/d$a;->a()V

    iget-object v0, v0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll/n$b;->r:Ll/n;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Ll/n$b;->r:Ll/n;

    iget-object v2, v2, Ll/n;->c:Ll/n$e;

    iget-object v3, p0, Ll/n$b;->c:Lb0/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ll/n$d;

    sget-object v5, Lf0/d;->b:Lf0/d$b;

    invoke-direct {v4, v3, v5}, Ll/n$d;-><init>(Lb0/g;Ljava/util/concurrent/Executor;)V

    iget-object v2, v2, Ll/n$e;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ll/n$b;->r:Ll/n;

    iget-object v2, v2, Ll/n;->r1:Ll/r;

    invoke-virtual {v2}, Ll/r;->b()V

    iget-object v2, p0, Ll/n$b;->r:Ll/n;

    iget-object v3, p0, Ll/n$b;->c:Lb0/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v2, Ll/n;->r1:Ll/r;

    iget-object v2, v2, Ll/n;->n1:Li/a;

    check-cast v3, Lb0/h;

    invoke-virtual {v3, v2, v4}, Lb0/h;->l(Li/a;Ll/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Ll/n$b;->r:Ll/n;

    iget-object v3, p0, Ll/n$b;->c:Lb0/g;

    invoke-virtual {v2, v3}, Ll/n;->h(Lb0/g;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    new-instance v2, Ll/d;

    invoke-direct {v2, p0}, Ll/d;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    iget-object p0, p0, Ll/n$b;->r:Ll/n;

    invoke-virtual {p0}, Ll/n;->d()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method
