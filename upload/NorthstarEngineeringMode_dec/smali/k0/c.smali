.class public abstract Lk0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk0/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/c;->a:Lk0/c;

    return-void
.end method

.method public static c(Lk0/c;Lm0/a;)V
    .locals 3

    instance-of v0, p0, Lk0/g;

    if-eqz v0, :cond_0

    check-cast p0, Lk0/g;

    iget-object v0, p0, Lk0/g;->b:Lk0/c;

    invoke-static {v0, p1}, Lk0/c;->c(Lk0/c;Lm0/a;)V

    iget-object p0, p0, Lk0/g;->c:Lk0/c;

    invoke-static {p0, p1}, Lk0/c;->c(Lk0/c;Lm0/a;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lk0/m;

    if-eqz v0, :cond_1

    check-cast p0, Lk0/m;

    iget-object v0, p0, Lk0/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lm0/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lk0/j;->b:Ljava/lang/String;

    iget v0, p1, Lm0/a;->a:I

    invoke-virtual {p1, v0, p0}, Lm0/a;->d(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lk0/f;

    if-eqz v0, :cond_2

    check-cast p0, Lk0/f;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lk0/f;->d:Lm0/a;

    iget v2, v1, Lm0/a;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lm0/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/c;

    invoke-static {v1, p1}, Lk0/c;->c(Lk0/c;Lm0/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Lk0/c;Ljava/lang/StringBuffer;)V
    .locals 5

    instance-of v0, p0, Lk0/g;

    const-string v1, ")"

    const-string v2, "("

    if-eqz v0, :cond_0

    check-cast p0, Lk0/g;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lk0/g;->b:Lk0/c;

    invoke-static {v0, p1}, Lk0/c;->d(Lk0/c;Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lk0/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lk0/g;->c:Lk0/c;

    invoke-static {p0, p1}, Lk0/c;->d(Lk0/c;Ljava/lang/StringBuffer;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lk0/j;

    if-eqz v0, :cond_5

    check-cast p0, Lk0/j;

    iget-boolean v0, p0, Lk0/j;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lk0/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p0, Lk0/f;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lk0/f;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lk0/f;->d:Lm0/a;

    iget v3, v2, Lm0/a;->a:I

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lm0/a;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk0/c;

    invoke-static {v3, p1}, Lk0/c;->d(Lk0/c;Ljava/lang/StringBuffer;)V

    :cond_2
    const/4 v3, 0x1

    :goto_0
    iget v4, v2, Lm0/a;->a:I

    if-ge v3, v4, :cond_3

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lk0/f;->d:Lm0/a;

    invoke-virtual {v4, v3}, Lm0/a;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk0/c;

    invoke-static {v4, p1}, Lk0/c;->d(Lk0/c;Ljava/lang/StringBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-boolean p0, p0, Lk0/j;->c:Z

    if-eqz p0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lk0/k;

    if-eqz v0, :cond_6

    check-cast p0, Lk0/k;

    iget-wide v0, p0, Lk0/k;->b:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lk0/c;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lk0/c;->a:Lk0/c;

    if-nez v0, :cond_2

    :goto_0
    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_0

    iget-object p0, p0, Lk0/c;->a:Lk0/c;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cyclic reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expression must be removed parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expression cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract b(Lk0/l;Lk0/e;)D
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v0}, Lk0/c;->d(Lk0/c;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
