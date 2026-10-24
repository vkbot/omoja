.class public final La4/b$c;
.super La4/b$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La4/b<",
        "TK;TV;>.i<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic x:La4/b;


# direct methods
.method public constructor <init>(La4/b;)V
    .locals 1

    iput-object p1, p0, La4/b$c;->x:La4/b;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, La4/b$i;-><init>(La4/b;I)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x2

    iget-object p0, p0, La4/b$c;->x:La4/b;

    invoke-virtual {p0, p1, v2}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, La4/b$d;

    const/4 v1, 0x2

    iget-object p0, p0, La4/b$c;->x:La4/b;

    invoke-direct {v0, p0, v1}, La4/b$j;-><init>(La4/b;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, La4/b$c;->x:La4/b;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p1, La4/b$g;->c:Ljava/lang/Comparable;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, La4/b;->e(La4/b$g;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
