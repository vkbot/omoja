.class public Lo3/k;
.super Lo3/l;
.source "SourceFile"

# interfaces
.implements Ln3/a;


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    check-cast p0, Lx3/k$b;

    iget-object p0, p0, Lo3/b;->r:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lo3/k;
    .locals 1

    sget-object v0, Lo3/n;->a:Lo3/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
