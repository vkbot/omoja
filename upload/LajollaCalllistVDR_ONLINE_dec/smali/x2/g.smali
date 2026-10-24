.class public final Lx2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b0;


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final timeout()Lx2/g0;
    .locals 1

    sget-object v0, Lx2/g0;->NONE:Lx2/g0;

    return-object v0
.end method

.method public final write(Lx2/k;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lx2/k;->n(J)V

    return-void
.end method
