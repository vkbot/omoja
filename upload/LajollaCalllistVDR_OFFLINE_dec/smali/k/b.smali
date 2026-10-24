.class public final Lk/b;
.super Lk/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public h:Lk/a;


# direct methods
.method public constructor <init>(Lk/b;)V
    .locals 4

    invoke-direct {p0}, Lk/j;-><init>()V

    if-eqz p1, :cond_1

    iget v0, p1, Lk/j;->c:I

    iget v1, p0, Lk/j;->c:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lk/j;->b(I)V

    iget v1, p0, Lk/j;->c:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Lk/j;->a:[I

    iget-object v3, p0, Lk/j;->a:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lk/j;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lk/j;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lk/j;->c:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lk/j;->h(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lk/b;->h:Lk/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lk/a;

    invoke-direct {v0, v1, p0}, Lk/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/b;->h:Lk/a;

    :cond_0
    iget-object p0, p0, Lk/b;->h:Lk/a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v0, Lk/g;

    if-nez v0, :cond_1

    new-instance v0, Lk/g;

    invoke-direct {v0, p0, v1}, Lk/g;-><init>(Landroidx/appcompat/view/menu/e;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p0, Lk/g;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lk/b;->h:Lk/a;

    if-nez v0, :cond_0

    new-instance v0, Lk/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/b;->h:Lk/a;

    :cond_0
    iget-object p0, p0, Lk/b;->h:Lk/a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v0, Lk/g;

    if-nez v0, :cond_1

    new-instance v0, Lk/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lk/g;-><init>(Landroidx/appcompat/view/menu/e;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p0, Lk/g;

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Lk/j;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lk/j;->b(I)V

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

    invoke-virtual {p0, v1, v0}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lk/b;->h:Lk/a;

    if-nez v0, :cond_0

    new-instance v0, Lk/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lk/b;->h:Lk/a;

    :cond_0
    iget-object p0, p0, Lk/b;->h:Lk/a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v0, Lk/i;

    if-nez v0, :cond_1

    new-instance v0, Lk/i;

    invoke-direct {v0, p0}, Lk/i;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast p0, Lk/i;

    return-object p0
.end method
