.class public final Lk0/i;
.super Lk0/g;
.source "SourceFile"


# virtual methods
.method public final b(Lk0/l;Lk0/e;)D
    .locals 2

    iget-object v0, p0, Lk0/g;->b:Lk0/c;

    invoke-virtual {v0, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v0

    iget-object p0, p0, Lk0/g;->c:Lk0/c;

    invoke-virtual {p0, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    const-string p0, "-"

    return-object p0
.end method
