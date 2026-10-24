.class public abstract Landroidx/appcompat/view/menu/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x2

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public static m(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static r(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e(II)Ljava/lang/Object;
.end method

.method public abstract f()Lk/b;
.end method

.method public abstract g()I
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract k(I)V
.end method

.method public abstract l(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final n(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    instance-of v0, p1, Lb0/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb0/b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v1, Lk/j;

    if-nez v1, :cond_0

    new-instance v1, Lk/j;

    invoke-direct {v1}, Lk/j;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v1, Lk/j;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/x;

    iget-object v1, p0, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroidx/appcompat/view/menu/x;-><init>(Landroid/content/Context;Lb0/b;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p0, Lk/j;

    invoke-virtual {p0, v0, p1}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public abstract o()V
.end method

.method public abstract p(Lu1/c;)V
.end method

.method public abstract q()V
.end method

.method public abstract s()V
.end method

.method public final t(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/e;->g()I

    move-result v0

    array-length v1, p2

    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/e;->e(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p2

    if-le p0, v0, :cond_2

    const/4 p0, 0x0

    aput-object p0, p2, v0

    :cond_2
    return-object p2
.end method

.method public abstract u()V
.end method
