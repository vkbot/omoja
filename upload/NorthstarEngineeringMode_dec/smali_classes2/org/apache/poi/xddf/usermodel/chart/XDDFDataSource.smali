.class public interface abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V
    .locals 7
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getFormatCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->isSetFormatCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->unsetFormatCode()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->setFormatCode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->setPtArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;)V

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    move-result-object v4

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->setIdx(J)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->setV(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->isSetPtCount()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->unsetPtCount()V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->isSetPtCount()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    :cond_6
    :goto_2
    return-void
.end method

.method public fillStringCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;)V
    .locals 7
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->setPtArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;)V

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->addNewPt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;

    move-result-object v4

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->setIdx(J)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrVal;->setV(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->isSetPtCount()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->unsetPtCount()V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->isSetPtCount()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;->addNewPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->setVal(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public abstract getColIndex()I
.end method

.method public abstract getDataRangeReference()Ljava/lang/String;
.end method

.method public abstract getFormatCode()Ljava/lang/String;
.end method

.method public getFormula()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPointAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getPointCount()I
.end method

.method public abstract isCellRange()Z
.end method

.method public abstract isLiteral()Z
.end method

.method public abstract isNumeric()Z
.end method

.method public abstract isReference()Z
.end method
