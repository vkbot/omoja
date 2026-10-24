.class public final Lg5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LaQute/bnd/annotation/spi/ServiceConsumer;
    cardinality = "multiple"
    resolution = "optional"
    value = Lg5/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/n$a;
    }
.end annotation


# static fields
.field public static final b:Lf5/d;

.field public static final c:Lg5/d$b;


# instance fields
.field public final a:Lg5/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lg5/n;->b:Lf5/d;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    new-instance v1, Lg5/d$b;

    invoke-direct {v1, v0}, Lg5/d$b;-><init>(Lorg/apache/commons/compress/archivers/zip/i;)V

    sput-object v1, Lg5/n;->c:Lg5/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lg5/o;

    invoke-direct {v0, p1, p2}, Lg5/o;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg5/n$a;

    invoke-direct {p1, v0}, Lg5/n$a;-><init>(Lg5/o;)V

    iput-object p1, p0, Lg5/n;->a:Lg5/n$a;

    return-void
.end method

.method public static b()Lg5/n;
    .locals 1

    sget-object v0, Lg5/n;->c:Lg5/d$b;

    invoke-interface {v0}, Lg5/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/n;

    return-object v0
.end method

.method public static d(Ljava/io/InputStream;Ljava/net/URL;)Ljava/util/Properties;
    .locals 5

    const-string v0, "Unable to close source `{}`"

    sget-object v1, Lg5/n;->b:Lf5/d;

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {v1, p1, v0, p0}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "Unable to read source `{}`"

    invoke-virtual {v1, p1, v4, v3}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {v1, p1, v0, p0}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    :cond_0
    :goto_2
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    return p2
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lg5/n;->a:Lg5/n$a;

    iget-object v0, p0, Lg5/n$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lg5/p$b;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lg5/n$a;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/p;

    if-eqz v1, :cond_2

    invoke-interface {v3, v0}, Lg5/p;->d(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3, v4}, Lg5/p;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Lg5/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {v3, p1}, Lg5/p;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1}, Lg5/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lg5/n$a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method
