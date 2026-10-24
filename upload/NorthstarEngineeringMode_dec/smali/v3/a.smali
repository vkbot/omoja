.class public abstract Lv3/a;
.super Lv3/c1;
.source "SourceFile"

# interfaces
.implements Lh3/d;
.implements Lv3/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/c1;",
        "Lh3/d<",
        "TT;>;",
        "Lv3/z;"
    }
.end annotation


# instance fields
.field public final x:Lh3/f;


# direct methods
.method public constructor <init>(Lh3/f;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lv3/c1;-><init>(Z)V

    sget-object p2, Lv3/x0$b;->c:Lv3/x0$b;

    invoke-interface {p1, p2}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object p2

    check-cast p2, Lv3/x0;

    invoke-virtual {p0, p2}, Lv3/c1;->L(Lv3/x0;)V

    invoke-interface {p1, p0}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p1

    iput-object p1, p0, Lv3/a;->x:Lh3/f;

    return-void
.end method


# virtual methods
.method public final K(Lf3/a;)V
    .locals 0

    iget-object p0, p0, Lv3/a;->x:Lh3/f;

    invoke-static {p0, p1}, Lv3/y;->a(Lh3/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final N()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lv3/c1;->N()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Q(Ljava/lang/Object;)V
    .locals 0

    instance-of p0, p1, Lv3/n;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/n;

    iget-object p0, p1, Lv3/n;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lv3/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method public final W(Lv3/a0;Lv3/a;Ln3/p;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lf3/g;->a:Lf3/g;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lv3/a;->x:Lh3/f;

    invoke-static {p1, v1}, Lx3/v;->c(Lh3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p3}, Lo3/p;->a(Ln3/p;)V

    invoke-interface {p3, p2, p0}, Ln3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v0}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Li3/a;->c:Li3/a;

    if-eq p2, p1, :cond_3

    invoke-virtual {p0, p2}, Lv3/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {p1, v0}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {p1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lf3/a;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p2, p0, p3}, Lb1/a;->b(Ljava/lang/Object;Lh3/d;Ln3/p;)Lh3/d;

    move-result-object p0

    invoke-static {p0}, Lb1/a;->n(Lh3/d;)Lh3/d;

    move-result-object p0

    invoke-interface {p0, v0}, Lh3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-static {p2, p0, p3}, Lb1/a;->b(Ljava/lang/Object;Lh3/d;Ln3/p;)Lh3/d;

    move-result-object p1

    invoke-static {p1}, Lb1/a;->n(Lh3/d;)Lh3/d;

    move-result-object p1

    invoke-static {p1, v1}, Lx3/a;->a(Lh3/d;Ln3/l;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lv3/a;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a()Z
    .locals 0

    invoke-super {p0}, Lv3/c1;->a()Z

    move-result p0

    return p0
.end method

.method public final g()Lh3/f;
    .locals 0

    iget-object p0, p0, Lv3/a;->x:Lh3/f;

    return-object p0
.end method

.method public final getContext()Lh3/f;
    .locals 0

    iget-object p0, p0, Lv3/a;->x:Lh3/f;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lv3/n;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lv3/c1;->V(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lv3/d1;->a:Lz1/d;

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, Lv3/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lv3/n;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lv3/n;->a:Ljava/lang/Throwable;

    :cond_3
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    sget-object v1, Lv3/d1;->c:Lz1/d;

    if-eq v0, v1, :cond_1

    sget-object p1, Lv3/d1;->b:Lz1/d;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lv3/a;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
