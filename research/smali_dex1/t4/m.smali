.class public final Lt4/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lk5/b;


# instance fields
.field public volatile a:Ljava/util/Set;

.field public volatile b:Ljava/util/Set;


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lt4/m;->b:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_40

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    iget-object v0, p0, Lt4/m;->b:Ljava/util/Set;

    .line 7
    .line 8
    if-nez v0, :cond_3c

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lt4/m;->b:Ljava/util/Set;

    .line 20
    .line 21
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_3a

    .line 22
    :try_start_15
    iget-object v0, p0, Lt4/m;->a:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_33

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lk5/b;

    .line 39
    .line 40
    iget-object v2, p0, Lt4/m;->b:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v1}, Lk5/b;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1b

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    goto :goto_38

    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lt4/m;->a:Ljava/util/Set;
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_31

    .line 54
    .line 55
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_3a

    .line 56
    goto :goto_3c

    .line 57
    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_31

    .line 58
    :try_start_39
    throw v0

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    :goto_3c
    monitor-exit p0

    .line 62
    goto :goto_40

    .line 63
    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3a

    .line 64
    throw v0

    .line 65
    :cond_40
    :goto_40
    iget-object v0, p0, Lt4/m;->b:Ljava/util/Set;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
