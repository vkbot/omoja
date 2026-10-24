.class public Lorg/apache/mina/util/LazyInitializedCacheMap;
.super Ljava/lang/Object;
.source "LazyInitializedCacheMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Lorg/apache/mina/util/LazyInitializer<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Lorg/apache/mina/util/LazyInitializer<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;Lorg/apache/mina/util/LazyInitializer<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 214
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 215
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 222
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 171
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/LazyInitializer;

    .line 99
    .local v0, "c":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/apache/mina/util/LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/util/LazyInitializer<",
            "TV;>;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 230
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;

    invoke-direct {v1, p0, p2}, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;-><init>(Lorg/apache/mina/util/LazyInitializedCacheMap;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/LazyInitializer;

    .line 158
    .local v0, "c":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lorg/apache/mina/util/LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    iget-object v2, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/apache/mina/util/LazyInitializedCacheMap$NoopInitializer;-><init>(Lorg/apache/mina/util/LazyInitializedCacheMap;Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Lorg/apache/mina/util/LazyInitializer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/mina/util/LazyInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/LazyInitializer;

    .line 140
    .local v0, "v":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    if-nez v0, :cond_0

    .line 141
    iget-object v1, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/mina/util/LazyInitializer;

    .line 143
    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p2}, Lorg/apache/mina/util/LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/util/LazyInitializer;

    .line 113
    .local v0, "c":Lorg/apache/mina/util/LazyInitializer;, "Lorg/apache/mina/util/LazyInitializer<TV;>;"
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lorg/apache/mina/util/LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 246
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/mina/util/LazyInitializedCacheMap;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/mina/util/LazyInitializedCacheMap;, "Lorg/apache/mina/util/LazyInitializedCacheMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
