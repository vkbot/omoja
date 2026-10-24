.class public final Lp2/e0;
.super Lp2/g0;
.source "SourceFile"


# virtual methods
.method public final deadlineNanoTime(J)Lp2/g0;
    .locals 0

    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lp2/g0;
    .locals 0

    const-string p1, "unit"

    invoke-static {p3, p1}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
