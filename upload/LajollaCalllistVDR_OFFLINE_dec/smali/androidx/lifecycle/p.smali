.class public final Landroidx/lifecycle/p;
.super Landroidx/lifecycle/i;
.source "SourceFile"


# instance fields
.field public final a:Lh/a;

.field public b:Landroidx/lifecycle/Lifecycle$State;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:I

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/n;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/i;-><init>()V

    new-instance v0, Lh/a;

    invoke-direct {v0}, Lh/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/p;->a:Lh/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/p;->d:I

    iput-boolean v0, p0, Landroidx/lifecycle/p;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/p;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/p;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/p;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/p;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;)V
    .locals 7

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->d(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v1, p0, Landroidx/lifecycle/p;->a:Lh/a;

    invoke-virtual {v1, p1, v0}, Lh/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/o;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/lifecycle/p;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/n;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget v3, p0, Landroidx/lifecycle/p;->d:I

    const/4 v4, 0x1

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroidx/lifecycle/p;->e:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v4

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/m;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    iget v6, p0, Landroidx/lifecycle/p;->d:I

    add-int/2addr v6, v4

    iput v6, p0, Landroidx/lifecycle/p;->d:I

    :goto_3
    iget-object v6, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_6

    iget-object v5, v1, Lh/a;->e:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v6, p0, Landroidx/lifecycle/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v5}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v2, v5}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/m;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "no event up from "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroidx/lifecycle/p;->g()V

    :cond_7
    iget p1, p0, Landroidx/lifecycle/p;->d:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/lifecycle/p;->d:I

    return-void
.end method

.method public final b(Landroidx/lifecycle/m;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->d(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/p;->a:Lh/a;

    invoke-virtual {p0, p1}, Lh/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/lifecycle/m;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/p;->a:Lh/a;

    iget-object v1, v0, Lh/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lh/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh/c;

    iget-object p1, p1, Lh/c;->d:Lh/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lh/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/o;

    iget-object p1, p1, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    :goto_3
    return-object v2
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-boolean p0, p0, Landroidx/lifecycle/p;->h:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lg/b;->a()Lg/b;

    move-result-object p0

    invoke-virtual {p0}, Lg/b;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method "

    const-string v1, " must be called on the main thread"

    invoke-static {v0, p1, v1}, La/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->f(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Landroidx/lifecycle/p;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/p;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/p;->e:Z

    invoke-virtual {p0}, Landroidx/lifecycle/p;->g()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/p;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/p;->f:Z

    return-void
.end method

.method public final g()V
    .locals 10

    iget-object v0, p0, Landroidx/lifecycle/p;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/n;

    if-eqz v0, :cond_9

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/p;->a:Lh/a;

    iget v2, v1, Lh/g;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lh/g;->a:Lh/c;

    iget-object v2, v2, Lh/c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/o;

    iget-object v2, v2, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, v1, Lh/g;->b:Lh/c;

    iget-object v5, v5, Lh/c;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/lifecycle/o;

    iget-object v5, v5, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v5, :cond_2

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-nez v2, :cond_8

    iput-boolean v4, p0, Landroidx/lifecycle/p;->f:Z

    iget-object v2, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, v1, Lh/g;->a:Lh/c;

    iget-object v4, v4, Lh/c;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/lifecycle/o;

    iget-object v4, v4, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    iget-object v4, p0, Landroidx/lifecycle/p;->g:Ljava/util/ArrayList;

    iget-object v5, v1, Lh/a;->e:Ljava/util/HashMap;

    iget-object v6, v1, Lh/g;->c:Ljava/util/WeakHashMap;

    if-gez v2, :cond_5

    new-instance v2, Lh/b;

    iget-object v7, v1, Lh/g;->b:Lh/c;

    iget-object v8, v1, Lh/g;->a:Lh/c;

    invoke-direct {v2, v7, v8, v3}, Lh/b;-><init>(Lh/c;Lh/c;I)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lh/e;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroidx/lifecycle/p;->f:Z

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lh/e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/o;

    :goto_2
    iget-object v8, v7, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v9, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_3

    iget-boolean v8, p0, Landroidx/lifecycle/p;->f:Z

    if-nez v8, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/m;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v8}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0, v8}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event down from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object v2, v1, Lh/g;->b:Lh/c;

    iget-boolean v3, p0, Landroidx/lifecycle/p;->f:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, v2, Lh/c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/o;

    iget-object v2, v2, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lh/d;

    invoke-direct {v2, v1}, Lh/d;-><init>(Lh/g;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2}, Lh/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/p;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lh/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/o;

    :goto_3
    iget-object v6, v3, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v7, p0, Landroidx/lifecycle/p;->b:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gez v6, :cond_6

    iget-boolean v6, p0, Landroidx/lifecycle/p;->f:Z

    if-nez v6, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/m;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v6}, Landroidx/lifecycle/Lifecycle$Event;->upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v3, v0, v6}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event up from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iput-boolean v4, p0, Landroidx/lifecycle/p;->f:Z

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
