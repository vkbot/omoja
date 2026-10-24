.class public final La4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map;"
    }
.end annotation


# instance fields
.field public c:La4/b$h;

.field public r:La4/b$f;

.field public x:La4/b$c;

.field public final synthetic y:La4/b;


# direct methods
.method public constructor <init>(La4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/b$b;->y:La4/b;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0}, La4/b;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0, p1}, La4/b;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0, p1}, La4/b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, La4/b$b;->x:La4/b$c;

    if-nez v0, :cond_0

    new-instance v0, La4/b$c;

    iget-object v1, p0, La4/b$b;->y:La4/b;

    invoke-direct {v0, v1}, La4/b$c;-><init>(La4/b;)V

    iput-object v0, p0, La4/b$b;->x:La4/b$c;

    :cond_0
    iget-object p0, p0, La4/b$b;->x:La4/b$c;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, La4/b$b;->y:La4/b;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, La4/b;->b(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0, p1}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, La4/b$b;->y:La4/b;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, La4/b;->c(I)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0}, La4/b;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, La4/b$b;->c:La4/b$h;

    if-nez v0, :cond_0

    new-instance v0, La4/b$h;

    const/4 v1, 0x2

    iget-object v2, p0, La4/b$b;->y:La4/b;

    invoke-direct {v0, v2, v1}, La4/b$h;-><init>(La4/b;I)V

    iput-object v0, p0, La4/b$b;->c:La4/b$h;

    :cond_0
    iget-object p0, p0, La4/b$b;->c:La4/b$h;

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0, p1}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, La4/b;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TV;+TK;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v2, p0, La4/b$b;->y:La4/b;

    invoke-virtual {v2, v1}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    invoke-virtual {v2, v0, v1}, La4/b;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    invoke-virtual {p0, p1}, La4/b;->h(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, La4/b$b;->y:La4/b;

    iget p0, p0, La4/b;->r:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, La4/b$b;->y:La4/b;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, La4/b;->i(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, La4/b$b;->r:La4/b$f;

    if-nez v0, :cond_0

    new-instance v0, La4/b$f;

    const/4 v1, 0x2

    iget-object v2, p0, La4/b$b;->y:La4/b;

    invoke-direct {v0, v2, v1}, La4/b$f;-><init>(La4/b;I)V

    iput-object v0, p0, La4/b$b;->r:La4/b$f;

    :cond_0
    iget-object p0, p0, La4/b$b;->r:La4/b$f;

    return-object p0
.end method
