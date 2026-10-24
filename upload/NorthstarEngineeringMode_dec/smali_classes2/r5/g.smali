.class public final Lr5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lr5/g;->a:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lr5/g;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Li5/z1;)Lr5/a;
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    invoke-static {p1}, Lr5/g;->d(Li5/z1;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Li5/z1$a;->W1:Li5/z1$a;

    iget-object v2, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    sget-object v1, Li5/z1$a;->X1:Li5/z1$a;

    iget-object p1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    :goto_1
    and-int/lit8 v1, p1, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    sget-object v5, Lr5/g;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    and-int/2addr p1, v2

    sget-object v2, Lr5/g;->a:Ljava/util/WeakHashMap;

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0

    :cond_5
    move-object v6, v3

    :goto_5
    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-eqz p1, :cond_8

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr5/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_7
    :goto_6
    if-nez v6, :cond_8

    :try_start_2
    new-instance v6, Lt5/a;

    invoke-static {v4, p0, v0}, Lr5/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lr5/b;

    move-result-object v7

    invoke-direct {v6, p0, v0, v7}, Lt5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lr5/b;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lr5/b$b; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v6

    :catch_0
    move-object v6, v3

    :cond_8
    if-nez v6, :cond_9

    if-eqz v1, :cond_9

    :try_start_3
    invoke-static {v4, p0, v0}, Lr5/g;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ls5/a;

    move-result-object v0

    move-object v6, v0

    :cond_9
    if-nez v6, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, " Trying XmlBeans path engine..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v1, :cond_b

    const-string p1, " Trying Saxon path engine..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FAILED on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_8
    return-object v6
.end method

.method public static b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ls5/a;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lr5/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lr5/b;
    :try_end_0
    .catch Lr5/b$b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "$xmlbeans!ns_boundary"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls5/a;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Ls5/a;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Li5/z1;)Ls5/c;
    .locals 4

    const-class v0, Lr5/g;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    sget-object p2, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v1, Li5/z1;->r:Li5/z1;

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, p0, p1}, Lr5/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lr5/b;
    :try_end_1
    .catch Lr5/b$b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "$xmlbeans!ns_boundary"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    const-string p1, "$xmlbeans!ns_boundary"

    const-string p2, "0"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    throw p0

    :catch_0
    const-string v2, "$xmlbeans!ns_boundary"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :goto_2
    new-instance v2, Ls5/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, p0, p1, v1, p2}, Ls5/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Li5/z1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public static d(Li5/z1;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object v0, Li5/z1$a;->B1:Li5/z1$a;

    iget-object p0, p0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Omit the \'$\' prefix for the current node variable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "this"

    :goto_1
    return-object p0
.end method

.method public static e(Ljava/lang/String;Li5/z1;Lm5/h;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 6

    const-class v0, Lr5/g;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lr5/g;->d(Li5/z1;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lr5/g;->c(Ljava/lang/String;Ljava/lang/String;Li5/z1;)Ls5/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    iget-object v0, p2, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Lm5/h;->A0(Ljava/lang/Object;)Lm5/h;

    move-result-object p2

    iput-object p2, p0, Ls5/c;->d:Lm5/h;

    iput-object p1, p0, Ls5/c;->e:Li5/z1;

    if-nez p1, :cond_0

    sget-object p1, Li5/z1;->r:Li5/z1;

    goto :goto_0

    :cond_0
    sget-object p2, Li5/z1;->r:Li5/z1;

    :goto_0
    sget-object p2, Li5/z1$a;->C1:Li5/z1$a;

    iget-object p1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Ls5/c;->d:Lm5/h;

    invoke-virtual {p2}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls5/c;->a(Ljava/util/Map;Lm5/o0$a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/apache/xmlbeans/XmlObject;

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Ls5/c;->d:Lm5/h;

    iget-object v1, v1, Lm5/h;->a:Lm5/z0;

    iget-object v1, v1, Lm5/z0;->b:Li5/d0;

    iget-object v3, p0, Ls5/c;->e:Li5/z1;

    invoke-static {v1, v3}, Lm5/z0;->t(Li5/d0;Li5/z1;)Lm5/z0;

    move-result-object v1

    invoke-virtual {v1}, Lm5/z0;->l()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :try_start_1
    instance-of v4, v3, Lorg/w3c/dom/Node;

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lm5/z0;->C()Lm5/o0$a;

    move-result-object v4

    invoke-interface {v4}, Lm5/o0$a;->k()Lm5/h;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lm5/h;->p0(Ljava/lang/String;)V

    invoke-static {v3}, Ls5/c;->b(Ljava/lang/Object;)Li5/c0;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    invoke-virtual {v4}, Lm5/h;->K()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v4, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v3}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    aput-object v3, p2, v0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    check-cast v3, Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, v3}, Ls5/c;->c(Lm5/z0;Lorg/w3c/dom/Node;)Lm5/h;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Lm5/h;->K()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v4, Lm5/h;->b:Lm5/w1;

    invoke-virtual {v2}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    :cond_3
    aput-object v2, p2, v0
    :try_end_1
    .catch Li5/z0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lm5/z0;->m()V

    invoke-virtual {v4}, Lm5/h;->h0()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_4
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-virtual {v1}, Lm5/z0;->m()V

    throw p0

    :cond_4
    iget-object p1, p0, Ls5/c;->d:Lm5/h;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lm5/h;->h0()V

    iput-object v2, p0, Ls5/c;->d:Lm5/h;

    :cond_5
    return-object p2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
