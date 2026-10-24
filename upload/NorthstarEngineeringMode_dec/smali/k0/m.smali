.class public final Lk0/m;
.super Lk0/j;
.source "SourceFile"


# virtual methods
.method public final b(Lk0/l;Lk0/e;)D
    .locals 3

    iget-object p2, p0, Lk0/j;->b:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lk0/l;->d:I

    if-ge v0, v1, :cond_4

    iget-boolean v1, p1, Lk0/l;->a:Z

    if-eqz v1, :cond_0

    iget-object v2, p1, Lk0/l;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_3

    iget-object v1, p1, Lk0/l;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object p1, p1, Lk0/l;->c:[D

    aget-wide p1, p1, v0

    iget-boolean p0, p0, Lk0/j;->c:Z

    if-eqz p0, :cond_2

    neg-double p1, p1

    :cond_2
    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "variable value has not been set: "

    invoke-static {p1, p2}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
