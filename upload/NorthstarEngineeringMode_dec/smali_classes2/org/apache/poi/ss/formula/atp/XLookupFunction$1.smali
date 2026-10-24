.class Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/AreaEval;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/atp/XLookupFunction;->notFoundAreaEval(Lorg/apache/poi/ss/formula/eval/ValueEval;I)Lorg/apache/poi/ss/formula/eval/AreaEval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/formula/atp/XLookupFunction;

.field final synthetic val$notFound:Lorg/apache/poi/ss/formula/eval/ValueEval;

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/atp/XLookupFunction;ILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->this$0:Lorg/apache/poi/ss/formula/atp/XLookupFunction;

    iput p2, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->val$width:I

    iput-object p3, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->val$notFound:Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->containsRow(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->containsColumn(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsColumn(I)Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->val$width:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsRow(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->val$notFound:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string p1, ""

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstColumn()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFirstRow()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFirstSheetIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getLastColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->val$width:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLastRow()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLastSheetIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/atp/XLookupFunction$1;->val$width:I

    return p0
.end method

.method public isColumn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRowHidden(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubTotal(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
