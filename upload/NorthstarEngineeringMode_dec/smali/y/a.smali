.class public final Ly/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/g;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ly/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ly/h;)V
    .locals 1
    .param p1    # Ly/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ly/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Ly/a;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ly/h;->c()V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Ly/a;->b:Z

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ly/h;->onStart()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ly/h;->f()V

    :goto_0
    return-void
.end method

.method public final b(Ly/h;)V
    .locals 0
    .param p1    # Ly/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Ly/a;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/a;->b:Z

    iget-object p0, p0, Ly/a;->a:Ljava/util/Set;

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

    check-cast v0, Ly/h;

    invoke-interface {v0}, Ly/h;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method
