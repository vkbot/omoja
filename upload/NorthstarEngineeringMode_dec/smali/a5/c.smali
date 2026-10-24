.class public final La5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf5/d;

.field public static volatile b:Le5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, La5/c;->a:Lf5/d;

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "log4j2.loggerContextFactory"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Le5/j;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lg5/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le5/j;

    sput-object v2, La5/c;->b:Le5/j;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, La5/c;->a:Lf5/d;

    const-string v4, "Unable to create configured LoggerContextFactory {}"

    invoke-virtual {v3, v0, v4, v2}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    sget-object v2, La5/c;->a:Lf5/d;

    const-string v3, "Unable to locate configured LoggerContextFactory {}"

    invoke-virtual {v2, v0, v3}, Le5/a;->A(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, La5/c;->b:Le5/j;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lg5/q;->a()V

    sget-object v2, Lg5/q;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sget-object v5, Ld5/c;->a:Ld5/c;

    if-eqz v3, :cond_9

    invoke-static {}, Lg5/q;->a()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le5/o;

    iget-object v6, v3, Le5/o;->b:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, v3, Le5/o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ClassLoader;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v8, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    sget-object v9, Le5/o;->g:Lf5/d;

    iget-object v10, v3, Le5/o;->d:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Unable to create class {} specified in {}"

    invoke-virtual {v9, v11, v6, v10, v8}, Le5/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Exception;)V

    :cond_4
    :goto_2
    if-eqz v7, :cond_1

    :try_start_2
    iget-object v6, v3, Le5/o;->a:Ljava/lang/Integer;

    invoke-static {v7}, Lg5/g;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le5/j;

    invoke-virtual {v0, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    sget-object v8, La5/c;->a:Lf5/d;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Le5/o;->d:Ljava/net/URL;

    const-string v9, "Unable to create class {} specified in provider URL {}"

    invoke-virtual {v8, v9, v7, v3, v6}, Le5/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, La5/c;->a:Lf5/d;

    invoke-virtual {v0}, Le5/a;->y()V

    sput-object v5, La5/c;->b:Le5/j;

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-ne v1, v4, :cond_7

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le5/j;

    sput-object v0, La5/c;->b:Le5/j;

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple logging implementations found: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "Factory: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le5/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Weighting: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le5/j;

    sput-object v0, La5/c;->b:Le5/j;

    const-string v0, "Using factory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, La5/c;->b:Le5/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, La5/c;->a:Lf5/d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le5/a;->s(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    sget-object v0, La5/c;->a:Lf5/d;

    invoke-virtual {v0}, Le5/a;->y()V

    sput-object v5, La5/c;->b:Le5/j;

    :cond_a
    :goto_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Le5/g;
    .locals 3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Lg5/v;->a(I)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    :try_start_0
    sget-object v0, La5/c;->b:Le5/j;

    invoke-interface {v0}, Le5/j;->getContext()Ld5/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, La5/c;->a:Lf5/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "{} Using SimpleLogger"

    invoke-virtual {v1, v0, v2}, Le5/a;->d(Ljava/io/Serializable;Ljava/lang/String;)V

    sget-object v0, Ld5/b;->j:Ld5/b;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ld5/b;->a(Ljava/lang/String;)Le5/g;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No class provided, and an appropriate one cannot be found."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
