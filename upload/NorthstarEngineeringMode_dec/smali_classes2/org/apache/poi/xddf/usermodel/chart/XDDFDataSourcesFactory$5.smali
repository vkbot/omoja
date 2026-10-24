.class final Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private formatCode:Ljava/lang/String;

.field final synthetic val$valuesDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

.field private final values:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->val$valuesDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->values:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->isSetFormatCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getFormatCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->formatCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDataRangeReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->val$valuesDS:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormatCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->formatCode:Ljava/lang/String;

    return-object p0
.end method

.method public getPointAt(I)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->values:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    .line 2
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getPtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPointAt(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->getPointAt(I)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getPointCount()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->values:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;->getPtCount()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public isCellRange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNumeric()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReference()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setFormatCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory$5;->formatCode:Ljava/lang/String;

    return-void
.end method
