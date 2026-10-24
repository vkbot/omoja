.class public final Lj/b;
.super Lj/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public i:Lj/a;


# direct methods
.method public constructor <init>(Lj/b;)V
    .locals 4

    invoke-direct {p0}, Lj/j;-><init>()V

    if-eqz p1, :cond_1

    iget v0, p1, Lj/j;->d:I

    iget v1, p0, Lj/j;->d:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lj/j;->b(I)V

    iget v1, p0, Lj/j;->d:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Lj/j;->b:[I

    iget-object v3, p0, Lj/j;->b:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lj/j;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lj/j;->c:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lj/j;->d:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lj/j;->h(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lj/j;->j(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lj/b;->i:Lj/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lj/a;

    invoke-direct {v0, v1, p0}, Lj/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj/b;->i:Lj/a;

    :cond_0
    iget-object v0, p0, Lj/b;->i:Lj/a;

    iget-object v2, v0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v2, Lj/g;

    if-nez v2, :cond_1

    new-instance v2, Lj/g;

    invoke-direct {v2, v0, v1}, Lj/g;-><init>(Landroidx/appcompat/view/menu/e;I)V

    iput-object v2, v0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v0, Lj/g;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lj/b;->i:Lj/a;

    if-nez v0, :cond_0

    new-instance v0, Lj/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lj/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj/b;->i:Lj/a;

    :cond_0
    iget-object v0, p0, Lj/b;->i:Lj/a;

    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v1, Lj/g;

    if-nez v1, :cond_1

    new-instance v1, Lj/g;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lj/g;-><init>(Landroidx/appcompat/view/menu/e;I)V

    iput-object v1, v0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v0, Lj/g;

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Lj/j;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lj/j;->b(I)V

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lj/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lj/b;->i:Lj/a;

    if-nez v0, :cond_0

    new-instance v0, Lj/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lj/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj/b;->i:Lj/a;

    :cond_0
    iget-object v0, p0, Lj/b;->i:Lj/a;

    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v1, Lj/i;

    if-nez v1, :cond_1

    new-instance v1, Lj/i;

    invoke-direct {v1, v0}, Lj/i;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object v1, v0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v0, Lj/i;

    return-object v0
.end method
