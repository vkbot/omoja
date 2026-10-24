.class public abstract Lv3/j0;
.super Ly3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly3/g;"
    }
.end annotation


# instance fields
.field public x:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ly3/g;-><init>()V

    iput p1, p0, Lv3/j0;->x:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    return-void
.end method

.method public abstract b()Lh3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh3/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Lv3/n;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lv3/n;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lv3/n;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ld/f;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Lv3/b0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lo3/h;->c(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lv3/j0;->b()Lh3/d;

    move-result-object p0

    invoke-interface {p0}, Lh3/d;->getContext()Lh3/f;

    move-result-object p0

    invoke-static {p0, p2}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract g()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 11

    sget-object v0, Lf3/g;->a:Lf3/g;

    iget-object v1, p0, Ly3/g;->r:Ly3/h;

    :try_start_0
    invoke-virtual {p0}, Lv3/j0;->b()Lh3/d;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v2, v3}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lx3/g;

    iget-object v3, v2, Lx3/g;->Z:Lh3/d;

    iget-object v2, v2, Lx3/g;->c1:Ljava/lang/Object;

    invoke-interface {v3}, Lh3/d;->getContext()Lh3/f;

    move-result-object v4

    invoke-static {v4, v2}, Lx3/v;->c(Lh3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lx3/v;->a:Lz1/d;

    const/4 v6, 0x0

    if-eq v2, v5, :cond_0

    invoke-static {v3, v4}, Lv3/u;->b(Lh3/d;Lh3/f;)Lv3/p1;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :cond_0
    move-object v5, v6

    :goto_0
    :try_start_1
    invoke-interface {v3}, Lh3/d;->getContext()Lh3/f;

    move-result-object v7

    invoke-virtual {p0}, Lv3/j0;->g()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8}, Lv3/j0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_1

    iget v10, p0, Lv3/j0;->x:I

    invoke-static {v10}, Lv3/r0;->a(I)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lv3/x0$b;->c:Lv3/x0$b;

    invoke-interface {v7, v10}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v7

    check-cast v7, Lv3/x0;

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_4

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lv3/x0;->a()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v7}, Lv3/x0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lv3/j0;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v7}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object v7

    invoke-interface {v3, v7}, Lh3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    invoke-static {v9}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object v7

    invoke-interface {v3, v7}, Lh3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v8}, Lv3/j0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Lh3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-nez v5, :cond_4

    :try_start_2
    invoke-static {v4, v2}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1}, Ly3/h;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lv3/j0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_4
    :try_start_4
    invoke-virtual {v5}, Lv3/p1;->X()V

    throw v6

    :goto_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lv3/p1;->X()V

    throw v6

    :cond_5
    invoke-static {v4, v2}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    :try_start_5
    invoke-interface {v1}, Ly3/h;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lv3/j0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
