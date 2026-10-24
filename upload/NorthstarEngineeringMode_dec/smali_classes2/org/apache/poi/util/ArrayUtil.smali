.class public final Lorg/apache/poi/util/ArrayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayMoveWithin([Ljava/lang/Object;III)V
    .locals 4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_6

    array-length v0, p0

    if-ge p1, v0, :cond_6

    if-ltz p2, :cond_5

    array-length v0, p0

    if-ge p2, v0, :cond_5

    add-int v0, p1, p3

    array-length v1, p0

    if-gt v0, v1, :cond_4

    add-int/2addr p3, p2

    array-length v1, p0

    if-gt p3, v1, :cond_3

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    if-le p1, p2, :cond_2

    invoke-static {p0, p2, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p0, v0, p3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    move p3, p1

    move-object p1, v3

    :goto_0
    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p1

    invoke-static {p1, v2, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to move to a position that doesn\'t have enough space"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to move more entries than the array has"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The moveTo must be a valid array index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The moveFrom must be a valid array index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
