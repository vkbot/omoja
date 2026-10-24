.class public final La5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/h$a;,
        La5/h$c;,
        La5/h$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le5/r;

.field public static final c:Le5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, La5/h;->a:Ljava/util/Map;

    new-instance v0, La5/h$c;

    invoke-direct {v0}, La5/h$c;-><init>()V

    sget-object v0, Le5/s;->a:Lf5/d;

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "log4j2.ThreadContext.initial.capacity"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v2, "isThreadContextMapInheritable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Le5/c;->r:Z

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-virtual {v0, v2, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Le5/i;->r:Z

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Le5/e;->x:Z

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "log4j2.threadContextMap"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le5/s;->c:Ljava/lang/String;

    const-string v1, "log4j2.garbagefree.threadContextMap"

    invoke-virtual {v0, v1, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Le5/s;->b:Z

    const/4 v0, 0x0

    sput-object v0, La5/h;->b:Le5/r;

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v1

    const-string v2, "disableThreadContext"

    invoke-virtual {v1, v2, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "disableThreadContextStack"

    invoke-virtual {v1, v4, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v4

    const-string v4, "disableThreadContextMap"

    invoke-virtual {v1, v4, v3}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    new-instance v2, Le5/f;

    if-nez v1, :cond_3

    new-instance v0, Le5/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La5/h;->b:Le5/r;

    goto/16 :goto_9

    :cond_3
    sget-object v1, Lg5/q;->a:Ljava/util/HashSet;

    invoke-static {}, Lg5/g;->b()Ljava/lang/ClassLoader;

    sget-object v1, Le5/s;->c:Ljava/lang/String;

    const-class v2, Le5/r;

    if-eqz v1, :cond_6

    const-string/jumbo v5, "org.apache.logging.log4j.spi.GarbageFreeSortedArrayThreadContextMap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "org.apache.logging.log4j.spi.CopyOnWriteSortedArrayThreadContextMap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_2
    sget-object v1, Le5/s;->c:Ljava/lang/String;

    invoke-static {v1}, Lg5/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le5/r;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v5, Le5/s;->a:Lf5/d;

    sget-object v6, Le5/s;->c:Ljava/lang/String;

    const-string v7, "Unable to create configured ThreadContextMap {}"

    invoke-virtual {v5, v6, v7, v1}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    sget-object v1, Le5/s;->a:Lf5/d;

    sget-object v5, Le5/s;->c:Ljava/lang/String;

    const-string v6, "Unable to locate configured ThreadContextMap {}"

    invoke-virtual {v1, v5, v6}, Le5/a;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Le5/c;

    invoke-direct {v1}, Le5/c;-><init>()V

    goto :goto_2

    :cond_5
    new-instance v1, Le5/i;

    invoke-direct {v1}, Le5/i;-><init>()V

    goto :goto_2

    :cond_6
    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_d

    invoke-static {}, Lg5/q;->a()V

    sget-object v5, Lg5/q;->a:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_d

    sget-object v4, La5/c;->b:Le5/j;

    if-eqz v4, :cond_d

    sget-object v4, La5/c;->b:Le5/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lg5/q;->a()V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le5/o;

    iget-object v7, v6, Le5/o;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v6, Le5/o;->c:Ljava/lang/String;

    if-nez v7, :cond_9

    :cond_8
    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_9
    iget-object v8, v6, Le5/o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ClassLoader;

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    :try_start_3
    invoke-virtual {v8, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v8

    sget-object v9, Le5/o;->g:Lf5/d;

    iget-object v10, v6, Le5/o;->d:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Unable to create class {} specified in {}"

    invoke-virtual {v9, v11, v7, v10, v8}, Le5/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Exception;)V

    goto :goto_4

    :goto_5
    if-eqz v7, :cond_7

    :try_start_4
    invoke-static {v7}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le5/r;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    sget-object v7, Le5/s;->a:Lf5/d;

    iget-object v6, v6, Le5/o;->c:Ljava/lang/String;

    const-string v8, "Unable to locate or load configured ThreadContextMap {}"

    invoke-virtual {v7, v6, v8, v1}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-boolean v1, Lg5/a;->a:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Le5/s;->b:Z

    if-eqz v1, :cond_b

    new-instance v1, Le5/i;

    invoke-direct {v1}, Le5/i;-><init>()V

    goto :goto_3

    :cond_b
    new-instance v1, Le5/c;

    invoke-direct {v1}, Le5/c;-><init>()V

    goto :goto_3

    :cond_c
    new-instance v1, Le5/e;

    invoke-direct {v1, v3}, Le5/e;-><init>(I)V

    goto :goto_3

    :cond_d
    :goto_6
    if-nez v1, :cond_10

    sget-boolean v0, Lg5/a;->a:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Le5/s;->b:Z

    if-eqz v0, :cond_e

    new-instance v0, Le5/i;

    invoke-direct {v0}, Le5/i;-><init>()V

    :goto_7
    move-object v1, v0

    goto :goto_8

    :cond_e
    new-instance v0, Le5/c;

    invoke-direct {v0}, Le5/c;-><init>()V

    goto :goto_7

    :cond_f
    new-instance v0, Le5/e;

    invoke-direct {v0, v3}, Le5/e;-><init>(I)V

    goto :goto_7

    :cond_10
    :goto_8
    sput-object v1, La5/h;->b:Le5/r;

    :goto_9
    sget-object v0, La5/h;->b:Le5/r;

    instance-of v1, v0, Le5/p;

    if-eqz v1, :cond_11

    check-cast v0, Le5/p;

    sput-object v0, La5/h;->c:Le5/p;

    :cond_11
    return-void
.end method
