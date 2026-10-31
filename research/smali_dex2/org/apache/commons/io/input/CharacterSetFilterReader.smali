.class public Lorg/apache/commons/io/input/CharacterSetFilterReader;
.super Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-static {p2}, Lorg/apache/commons/io/input/CharacterSetFilterReader;->toIntPredicate(Ljava/util/Set;)Ljava/util/function/IntPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Reader;[Ljava/lang/Integer;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/CharacterSetFilterReader;-><init>(Ljava/io/Reader;Ljava/util/Set;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Ljava/util/Set;I)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/input/CharacterSetFilterReader;->lambda$toIntPredicate$0(Ljava/util/Set;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$toIntPredicate$0(Ljava/util/Set;I)Z
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static toIntPredicate(Ljava/util/Set;)Ljava/util/function/IntPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/function/IntPredicate;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    sget-object p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Lorg/apache/commons/io/input/f;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/f;-><init>(Ljava/util/Set;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
