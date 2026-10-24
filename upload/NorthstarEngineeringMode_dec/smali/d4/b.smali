.class public abstract Ld4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/b$a;,
        Ld4/b$b;,
        Ld4/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz3/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient c:Ld4/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld4/b<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field public transient r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Ld4/b$a;
    .locals 2

    iget-object v0, p0, Ld4/b;->c:Ld4/b$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ld4/b$a;

    iget-object v1, p0, Ld4/b;->r:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Ld4/b$a;-><init>(Ld4/b;Ljava/util/Map;)V

    iput-object v0, p0, Ld4/b;->c:Ld4/b$a;

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p0

    check-cast v0, Ld4/a;

    iget-object v0, v0, Ld4/b;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Ld4/c;

    invoke-virtual {v0}, Ld4/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Ld4/b;->r:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lz3/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld4/b;->a()Ld4/b$a;

    move-result-object p0

    check-cast p1, Lz3/e;

    invoke-interface {p1}, Lz3/e;->a()Ld4/b$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld4/b$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    check-cast p0, Ld4/a;

    iget-object p0, p0, Ld4/b;->r:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    check-cast p0, Ld4/a;

    iget-object p0, p0, Ld4/b;->r:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
