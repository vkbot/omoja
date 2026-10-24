.class public Lx3/s;
.super Lv3/a;
.source "SourceFile"

# interfaces
.implements Lj3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/a<",
        "TT;>;",
        "Lj3/d;"
    }
.end annotation


# virtual methods
.method public final M()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lj3/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lb1/a;->n(Lh3/d;)Lh3/d;

    throw p0
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    instance-of p0, p1, Lv3/n;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/n;

    iget-object p0, p1, Lv3/n;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
