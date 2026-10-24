.class public final Ly/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/h;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc0/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ly/m;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object p0, p0, Ly/m;->a:Ljava/util/Set;

    invoke-static {p0}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/c;

    invoke-interface {v0}, Ly/h;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Ly/m;->a:Ljava/util/Set;

    invoke-static {p0}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/c;

    invoke-interface {v0}, Ly/h;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    iget-object p0, p0, Ly/m;->a:Ljava/util/Set;

    invoke-static {p0}, Lf0/j;->d(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/c;

    invoke-interface {v0}, Ly/h;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method
