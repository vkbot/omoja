.class public Lv3/g0;
.super Lv3/a;
.source "SourceFile"

# interfaces
.implements Lv3/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/a<",
        "TT;>;",
        "Lv3/f0<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final c(Lh3/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lv3/u0;

    if-nez v1, :cond_4

    instance-of p0, v0, Lv3/n;

    if-nez p0, :cond_3

    instance-of p0, v0, Lv3/v0;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Lv3/v0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    iget-object p0, p0, Lv3/v0;->a:Lv3/u0;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    check-cast v0, Lv3/n;

    iget-object p0, v0, Lv3/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_4
    invoke-virtual {p0, v0}, Lv3/c1;->T(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lv3/c1$a;

    invoke-static {p1}, Lb1/a;->n(Lh3/d;)Lh3/d;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lv3/c1$a;-><init>(Lh3/d;Lv3/c1;)V

    invoke-virtual {v0}, Lv3/g;->n()Lv3/l0;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lv3/g;->c1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lv3/h1;

    xor-int/2addr v2, v1

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lv3/l0;->dispose()V

    sget-object p1, Lv3/g1;->c:Lv3/g1;

    sget-object v2, Lv3/g;->d1:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    new-instance p1, Lv3/j1;

    invoke-direct {p1, v0}, Lv3/j1;-><init>(Lv3/c1$a;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lv3/c1;->b(ZZLv3/b1;)Lv3/l0;

    move-result-object p0

    new-instance p1, Lv3/m0;

    invoke-direct {p1, v2, p0}, Lv3/m0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lv3/g;->o(Lv3/m0;)V

    invoke-virtual {v0}, Lv3/g;->m()Ljava/lang/Object;

    move-result-object v0

    :cond_7
    :goto_2
    return-object v0
.end method
