.class final Lorg/apache/poi/util/CodepointsUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/util/CodepointsUtil;->iteratorFor(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$iter:Ljava/util/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Ljava/util/PrimitiveIterator$OfInt;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/util/CodepointsUtil$1;->val$iter:Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/CodepointsUtil$1;->val$iter:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/util/CodepointsUtil$1;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/util/CodepointsUtil$1;->val$iter:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
