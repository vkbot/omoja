.class public final Lv3/p1;
.super Lx3/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lx3/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile threadLocalIsSet:Z


# virtual methods
.method public final X()V
    .locals 1

    iget-boolean p0, p0, Lv3/p1;->threadLocalIsSet:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    throw v0

    :cond_0
    throw v0
.end method

.method public final Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv3/p1;->threadLocalIsSet:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 1

    iget-boolean p0, p0, Lv3/p1;->threadLocalIsSet:Z

    const/4 v0, 0x0

    if-nez p0, :cond_1

    instance-of p0, p1, Lv3/n;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/n;

    iget-object p0, p1, Lv3/n;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    :cond_0
    throw v0

    :cond_1
    throw v0
.end method
