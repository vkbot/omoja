.class public final Lp2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/b0;


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final timeout()Lp2/g0;
    .locals 0

    sget-object p0, Lp2/g0;->NONE:Lp2/g0;

    return-object p0
.end method

.method public final write(Lp2/k;J)V
    .locals 0

    const-string p0, "source"

    invoke-static {p1, p0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lp2/k;->n(J)V

    return-void
.end method
