.class final Lorg/apache/commons/io/function/UncheckedIOSpliterator;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/apache/commons/io/function/IOSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/function/IOSpliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "delegate"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/apache/commons/io/function/IOSpliterator;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->characteristics()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->estimateSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/io/function/g0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/io/function/g0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lorg/apache/commons/io/function/g0;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v2, p1}, Lorg/apache/commons/io/function/g0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->getComparator()Lorg/apache/commons/io/function/IOComparator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOComparator;->asComparator()Ljava/util/Comparator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->getExactSizeIfKnown()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/apache/commons/io/function/IOSpliterator;->hasCharacteristics(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/io/function/f0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lorg/apache/commons/io/function/f0;-><init>(Lorg/apache/commons/io/function/IOSpliterator;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/io/function/g0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, v2, p1}, Lorg/apache/commons/io/function/g0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;->delegate:Lorg/apache/commons/io/function/IOSpliterator;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/io/function/f0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lorg/apache/commons/io/function/f0;-><init>(Lorg/apache/commons/io/function/IOSpliterator;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/apache/commons/io/function/IOSpliterator;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
