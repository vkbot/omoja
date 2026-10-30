.class public interface abstract Lorg/apache/commons/io/function/IOIterable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public asIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/UncheckedIOIterable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/UncheckedIOIterable;-><init>(Lorg/apache/commons/io/function/IOIterable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public forEach(Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOIterable;->iterator()Lorg/apache/commons/io/function/IOIterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/apache/commons/io/function/IOConsumer;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lorg/apache/commons/io/function/IOIterator;->forEachRemaining(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public abstract iterator()Lorg/apache/commons/io/function/IOIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOIterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public spliterator()Lorg/apache/commons/io/function/IOSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/UncheckedIOIterable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/UncheckedIOIterable;-><init>(Lorg/apache/commons/io/function/IOIterable;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lorg/apache/commons/io/function/IOSpliteratorAdapter;->adapt(Ljava/util/Spliterator;)Lorg/apache/commons/io/function/IOSpliteratorAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public abstract unwrap()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method
