.class final Lorg/apache/commons/io/function/IOStreamAdapter;
.super Lorg/apache/commons/io/function/IOBaseStreamAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/io/function/IOBaseStreamAdapter<",
        "TT;",
        "Lorg/apache/commons/io/function/IOStream<",
        "TT;>;",
        "Ljava/util/stream/Stream<",
        "TT;>;>;",
        "Lorg/apache/commons/io/function/IOStream<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/stream/Stream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/function/IOBaseStreamAdapter;-><init>(Ljava/util/stream/BaseStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_8

    .line 2
    .line 3
    new-instance v0, Lorg/apache/commons/io/function/IOStreamAdapter;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOStreamAdapter;-><init>(Ljava/util/stream/Stream;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    invoke-static {}, Lorg/apache/commons/io/function/IOStream;->empty()Lorg/apache/commons/io/function/IOStream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public bridge synthetic wrap(Ljava/util/stream/BaseStream;)Lorg/apache/commons/io/function/IOBaseStream;
    .registers 2

    .line 13
    check-cast p1, Ljava/util/stream/Stream;

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/function/IOStreamAdapter;->wrap(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOStream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/function/IOBaseStreamAdapter;->unwrap()Ljava/util/stream/BaseStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_7

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-static {p1}, Lorg/apache/commons/io/function/IOStreamAdapter;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
