.class public Lorg/apache/poi/util/CodepointsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iteratorFor(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/util/CodepointsUtil;->primitiveIterator(Ljava/lang/String;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/util/CodepointsUtil$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CodepointsUtil$1;-><init>(Ljava/util/PrimitiveIterator$OfInt;)V

    return-object v0
.end method

.method public static primitiveIterator(Ljava/lang/String;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method
