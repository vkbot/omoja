.class public abstract Lkotlin/collections/l;
.super Ly1/l;
.source "SourceFile"


# direct methods
.method public static final K1(Ljava/lang/Iterable;)I
    .locals 1

    const-string v0, "$this$collectionSizeOrDefault"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public static final L1(III[B[B)V
    .locals 1

    const-string v0, "$this$copyInto"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p4, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p2, p1

    invoke-static {p3, p1, p4, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static final M1([BII)[B
    .locals 1

    const-string v0, "$this$copyOfRangeImpl"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    invoke-static {p2, v0}, Ly1/l;->N(II)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {p0, p1}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final N1()Ljava/util/Map;
    .locals 2

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final O1([C)C
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-char p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array has more than one element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
