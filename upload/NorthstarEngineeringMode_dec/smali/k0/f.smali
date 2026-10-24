.class public final Lk0/f;
.super Lk0/j;
.source "SourceFile"


# instance fields
.field public d:Lm0/a;

.field public e:[D


# virtual methods
.method public final b(Lk0/l;Lk0/e;)D
    .locals 6

    iget-object v0, p0, Lk0/f;->d:Lm0/a;

    iget v0, v0, Lm0/a;->a:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lk0/f;->e:[D

    iget-object v4, p0, Lk0/f;->d:Lm0/a;

    invoke-virtual {v4, v2}, Lm0/a;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk0/c;

    invoke-virtual {v4, p1, p2}, Lk0/c;->b(Lk0/l;Lk0/e;)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk0/j;->b:Ljava/lang/String;

    :goto_1
    iget v2, p2, Lk0/e;->c:I

    if-ge v1, v2, :cond_3

    iget-object v2, p2, Lk0/e;->b:[Ll0/b;

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Ll0/b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Lk0/e;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p2, Lk0/e;->b:[Ll0/b;

    aget-object p1, p1, v1

    iget-object p2, p0, Lk0/f;->e:[D

    invoke-interface {p1, p2, v0}, Ll0/b;->a([DI)D

    move-result-wide p1

    iget-boolean p0, p0, Lk0/j;->c:Z

    if-eqz p0, :cond_1

    neg-double p1, p1

    :cond_1
    return-wide p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "function not found: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lk0/c;)V
    .locals 3

    iget-object v0, p0, Lk0/f;->d:Lm0/a;

    iget v1, v0, Lm0/a;->a:I

    invoke-virtual {p0, p1}, Lk0/c;->a(Lk0/c;)V

    iget-object v2, v0, Lm0/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v0, v1, p1}, Lm0/a;->d(ILjava/lang/Object;)V

    iget-object v0, v0, Lm0/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-eq v2, v0, :cond_0

    new-array v0, v0, [D

    iput-object v0, p0, Lk0/f;->e:[D

    :cond_0
    iput-object p0, p1, Lk0/c;->a:Lk0/c;

    return-void
.end method
