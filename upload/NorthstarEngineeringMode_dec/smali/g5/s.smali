.class public final Lg5/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/s$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;Z)Ljava/lang/Iterable;
    .locals 11

    const-class v7, Ljava/lang/Object;

    const-class v8, Ljava/security/PrivilegedAction;

    const-class v1, Ljava/lang/ClassLoader;

    const-class v2, Ljava/lang/Class;

    const-class v3, Ljava/util/ServiceLoader;

    :try_start_0
    const-string v4, "load"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v6, v9

    invoke-static {v3, v2, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {p2, v3, v4, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    const-string/jumbo v4, "run"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v1, v5, v9

    invoke-static {v8, v2, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    move-object v1, p2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v9

    move-object v5, v6

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-polymorphic {v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ServiceLoader;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-class v2, Ljava/security/AccessController;

    const-string v3, "doPrivileged"

    invoke-static {v7, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {p2, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/security/PrivilegedAction;)Ljava/util/ServiceLoader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :goto_1
    if-eqz p3, :cond_1

    sget-object v1, Lf5/d;->p1:La5/a;

    sget-object v1, Lf5/d$b;->a:Lf5/d;

    const-string v2, "Unable to load services for service {}"

    invoke-virtual {v1, p0, v2, v0}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;Z)Ljava/util/stream/Stream;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lg5/s$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lg5/s$a;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;Z)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    sget-boolean v1, Lg5/i;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2}, Lg5/i;->a(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/n0;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/archivers/zip/n0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
