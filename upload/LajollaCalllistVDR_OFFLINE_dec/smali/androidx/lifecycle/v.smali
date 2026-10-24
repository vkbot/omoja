.class public final Landroidx/lifecycle/v;
.super Landroidx/lifecycle/w;
.source "SourceFile"


# instance fields
.field public final l:Lh/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/w;-><init>()V

    new-instance v0, Lh/g;

    invoke-direct {v0}, Lh/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/v;->l:Lh/g;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object p0, p0, Landroidx/lifecycle/v;->l:Lh/g;

    invoke-virtual {p0}, Lh/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lh/e;

    invoke-virtual {v0}, Lh/e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/u;

    iget-object v1, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/t;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/x;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object p0, p0, Landroidx/lifecycle/v;->l:Lh/g;

    invoke-virtual {p0}, Lh/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lh/e;

    invoke-virtual {v0}, Lh/e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lh/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/u;

    iget-object v1, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "removeObserver"

    invoke-static {v2}, Landroidx/lifecycle/t;->a(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/t;->b:Lh/g;

    invoke-virtual {v1, v0}, Lh/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/s;->d()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->c(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V
    .locals 3

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V

    iget-object v1, p0, Landroidx/lifecycle/v;->l:Lh/g;

    invoke-virtual {v1, p1, v0}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/u;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/x;

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This source was already added with the different observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget p0, p0, Landroidx/lifecycle/t;->c:I

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/x;)V

    :cond_4
    return-void
.end method
