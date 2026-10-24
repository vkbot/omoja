.class public final Lg5/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:Lf5/d;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3, p4}, Lg5/s;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;Z)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lg5/s$a;->a:Ljava/util/Iterator;

    if-eqz p4, :cond_0

    sget-object p2, Lf5/d;->p1:La5/a;

    sget-object p2, Lf5/d$b;->a:Lf5/d;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lg5/s$a;->b:Lf5/d;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg5/s$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 0

    const/16 p0, 0x500

    return p0
.end method

.method public final estimateSize()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TS;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lg5/s$a;->c:Ljava/lang/String;

    const-string v1, "Unable to load service class for service {}"

    iget-object v2, p0, Lg5/s$a;->b:Lf5/d;

    iget-object p0, p0, Lg5/s$a;->a:Ljava/util/Iterator;

    const/16 v3, 0x8

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_2

    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1, p0}, Le5/a;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    throw p0

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1, v3}, Le5/a;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TS;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
