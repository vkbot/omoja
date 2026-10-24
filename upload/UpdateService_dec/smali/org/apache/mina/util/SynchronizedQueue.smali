.class public Lorg/apache/mina/util/SynchronizedQueue;
.super Ljava/lang/Object;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13f9373ceaf6d636L


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 55
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 103
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 119
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 127
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 199
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 207
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 135
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 143
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 71
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 151
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 159
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 167
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 175
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 1

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .local p0, "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/util/SynchronizedQueue;->queue:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 215
    .end local p0    # "this":Lorg/apache/mina/util/SynchronizedQueue;, "Lorg/apache/mina/util/SynchronizedQueue<TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
