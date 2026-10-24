.class public final Lg5/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LaQute/bnd/annotation/baseline/BaselineIgnore;
    value = "2.22.0"
.end annotation

.annotation build LaQute/bnd/annotation/spi/ServiceConsumer;
    cardinality = "multiple"
    resolution = "optional"
    value = Le5/o;
.end annotation


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final c:[Ljava/lang/String;

.field public static final d:Lf5/d;

.field public static volatile e:Lg5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lg5/q;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lg5/q;->b:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "2.6.0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg5/q;->c:[Ljava/lang/String;

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lg5/q;->d:Lf5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    const-class v0, Le5/o;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lg5/s;->b(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh4/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh4/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lg5/q;->a:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lx1/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "META-INF/log4j-provider.properties"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lg5/g;->a(Ljava/lang/String;Z)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/g$b;

    iget-object v3, v2, Lg5/g$b;->b:Ljava/net/URL;

    iget-object v2, v2, Lg5/g$b;->a:Ljava/lang/ClassLoader;

    sget-object v4, Lg5/q;->d:Lf5/d;

    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v3}, Lg5/n;->d(Ljava/io/InputStream;Ljava/net/URL;)Ljava/util/Properties;

    move-result-object v5

    const-string v6, "Log4jAPIVersion"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lg5/q;->c:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v6, Le5/o;

    invoke-direct {v6, v5, v3, v2}, Le5/o;-><init>(Ljava/util/Properties;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "Loaded Provider {}"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le5/a;->h1:Ljava/lang/String;

    sget-object v7, La5/a;->d1:La5/a;

    invoke-virtual {v4, v5, v7, v2, v6}, Le5/a;->E(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :goto_2
    const-string v5, "Unable to open {}"

    invoke-virtual {v4, v3, v5, v2}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a()V
    .locals 5

    sget-object v0, Lg5/q;->e:Lg5/q;

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lg5/q;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lg5/q;->e:Lg5/q;

    if-nez v1, :cond_0

    new-instance v1, Lg5/q;

    invoke-direct {v1}, Lg5/q;-><init>()V

    sput-object v1, Lg5/q;->e:Lg5/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    sget-object v1, Lg5/q;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lg5/q;->d:Lf5/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Le5/a;->h1:Ljava/lang/String;

    sget-object v3, La5/a;->y:La5/a;

    const-string v4, "Interrupted before Log4j Providers could be loaded."

    invoke-virtual {v1, v2, v3, v4, v0}, Le5/a;->G(Ljava/lang/String;La5/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_2
    return-void
.end method
