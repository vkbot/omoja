.class public interface abstract Lorg/apache/poi/ss/formula/TwoDEval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# virtual methods
.method public abstract getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;
.end method

.method public abstract getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isColumn()Z
.end method

.method public isRow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isRowHidden(I)Z
.end method

.method public abstract isSubTotal(II)Z
.end method
