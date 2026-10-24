.class public Ld4/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic r:Ld4/b;


# direct methods
.method public constructor <init>(Ld4/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/b$c;->r:Ld4/b;

    iput-object p2, p0, Ld4/b$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld4/b$c;->r:Ld4/b;

    move-object v1, v0

    check-cast v1, Ld4/c;

    invoke-virtual {v1}, Ld4/c;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Ld4/b;->r:Ljava/util/Map;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld4/b$c;->r:Ld4/b;

    move-object v1, v0

    check-cast v1, Ld4/c;

    invoke-virtual {v1}, Ld4/c;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Ld4/b;->r:Ljava/util/Map;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Ld4/b$c;->r:Ld4/b;

    check-cast v0, Ld4/a;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ld4/a;->c(Ljava/lang/Object;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Ld4/a$b;

    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    check-cast p0, Ld4/a$b;

    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    check-cast p0, Ld4/a$b;

    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lb4/c;->c:Lb4/c;

    return-object p0

    :cond_0
    new-instance v0, Ld4/b$b;

    iget-object v1, p0, Ld4/b$c;->r:Ld4/b;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Ld4/b$b;-><init>(Ld4/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld4/b$c;->r:Ld4/b;

    check-cast v0, Ld4/a;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ld4/a;->c(Ljava/lang/Object;)Ljava/util/List;

    :cond_1
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld4/b$c;->r:Ld4/b;

    check-cast v0, Ld4/a;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ld4/a;->c(Ljava/lang/Object;)Ljava/util/List;

    :cond_1
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ld4/a$b;

    invoke-virtual {v0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld4/b$c;->r:Ld4/b;

    check-cast v0, Ld4/a;

    iget-object p0, p0, Ld4/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ld4/a;->c(Ljava/lang/Object;)Ljava/util/List;

    :cond_1
    return p1
.end method

.method public final size()I
    .locals 0

    check-cast p0, Ld4/a$b;

    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    check-cast p0, Ld4/a$b;

    .line 1
    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lz3/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    check-cast p0, Ld4/a$b;

    .line 4
    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Lz3/a;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    check-cast p0, Ld4/a$b;

    invoke-virtual {p0}, Ld4/a$b;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lz3/a;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
