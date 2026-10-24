.class public final Lv3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lv3/z;Lh3/f;)Lh3/f;
    .locals 3

    invoke-interface {p0}, Lv3/z;->g()Lh3/f;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lv3/t;->r:Lv3/t;

    invoke-interface {p0, v0, v1}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v0, v1}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Lo3/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lo3/m;->c:Ljava/lang/Object;

    sget-object p1, Lh3/g;->c:Lh3/g;

    new-instance v2, Lv3/s;

    invoke-direct {v2, v1}, Lv3/s;-><init>(Lo3/m;)V

    invoke-interface {p0, p1, v2}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/f;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lo3/m;->c:Ljava/lang/Object;

    check-cast v0, Lh3/f;

    sget-object v2, Lv3/r;->r:Lv3/r;

    invoke-interface {v0, p1, v2}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lo3/m;->c:Ljava/lang/Object;

    :cond_1
    iget-object p1, v1, Lo3/m;->c:Ljava/lang/Object;

    check-cast p1, Lh3/f;

    invoke-interface {p0, p1}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    :goto_0
    sget-object p1, Lv3/k0;->a:Ly3/c;

    if-eq p0, p1, :cond_2

    sget-object v0, Lh3/e$a;->c:Lh3/e$a;

    invoke-interface {p0, v0}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static final b(Lh3/d;Lh3/f;)Lv3/p1;
    .locals 2

    instance-of v0, p0, Lj3/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lv3/q1;->c:Lv3/q1;

    invoke-interface {p1, v0}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p0, Lj3/d;

    :cond_1
    instance-of p1, p0, Lv3/i0;

    if-eqz p1, :cond_2

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lj3/d;->getCallerFrame()Lj3/d;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of p1, p0, Lv3/p1;

    if-eqz p1, :cond_1

    check-cast p0, Lv3/p1;

    :goto_1
    if-nez p0, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lv3/p1;->Y()V

    throw v1

    :cond_5
    return-object v1
.end method
