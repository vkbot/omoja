.class public interface abstract Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValueVector"
.end annotation


# virtual methods
.method public abstract getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public abstract getSize()I
.end method

.method public indexIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$1;-><init>(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)V

    return-object v0
.end method

.method public reverseIndexIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;-><init>(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)V

    return-object v0
.end method
