.class public final Landroidx/lifecycle/v;
.super Landroidx/lifecycle/w;
.source "SourceFile"


# instance fields
.field public final l:Lg/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/w;-><init>()V

    new-instance v0, Lg/g;

    invoke-direct {v0}, Lg/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/v;->l:Lg/g;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/v;->l:Lg/g;

    invoke-virtual {v0}, Lg/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lg/e;

    invoke-virtual {v1}, Lg/e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u;

    iget-object v2, v1, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/t;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/x;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/v;->l:Lg/g;

    invoke-virtual {v0}, Lg/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lg/e;

    invoke-virtual {v1}, Lg/e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u;

    iget-object v2, v1, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "removeObserver"

    invoke-static {v3}, Landroidx/lifecycle/t;->a(Ljava/lang/String;)V

    iget-object v2, v2, Landroidx/lifecycle/t;->b:Lg/g;

    invoke-virtual {v2, v1}, Lg/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/s;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/lifecycle/s;->d()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->c(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V
    .locals 3

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V

    iget-object v1, p0, Landroidx/lifecycle/v;->l:Lg/g;

    invoke-virtual {v1, p1, v0}, Lg/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/lifecycle/u;->c:Landroidx/lifecycle/x;

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget p2, p0, Landroidx/lifecycle/t;->c:I

    if-lez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/x;)V

    :cond_4
    return-void
.end method
