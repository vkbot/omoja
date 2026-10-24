.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    return-void
.end method

.method private retrieveCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
    .locals 0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->isSetNumRef()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->setF(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;->getNumCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->getNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorBarType()Lorg/apache/poi/xddf/usermodel/chart/ErrorBarType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrBarType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrBarType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/ErrorBarType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;)Lorg/apache/poi/xddf/usermodel/chart/ErrorBarType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getErrorDirection()Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetErrDir()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorValueType()Lorg/apache/poi/xddf/usermodel/chart/ErrorValueType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrValType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrValType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/ErrorValueType;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;)Lorg/apache/poi/xddf/usermodel/chart/ErrorValueType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMinus()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetMinus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getMinus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNoEndCap()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetVal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getNoEndCap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlus()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetPlus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getPlus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromDataSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetVal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    return-object p0
.end method

.method public setErrorBarType(Lorg/apache/poi/xddf/usermodel/chart/ErrorBarType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrBarType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/ErrorBarType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBarType;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrBarType$Enum;)V

    return-void
.end method

.method public setErrorDirection(Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetErrDir()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetErrDir()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetErrDir()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->addNewErrDir()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrDir;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setErrorValueType(Lorg/apache/poi/xddf/usermodel/chart/ErrorValueType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getErrValType()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/ErrorValueType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrValType;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrValType$Enum;)V

    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMinus(Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetMinus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetMinus()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetMinus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getMinus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->retrieveCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->addNewMinus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->retrieveCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setNoEndCap(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetNoEndCap()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetNoEndCap()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetNoEndCap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getNoEndCap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->addNewNoEndCap()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPlus(Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetPlus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetPlus()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetPlus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getPlus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->retrieveCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->addNewPlus()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    invoke-interface {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->retrieveCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->fillNumericalCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShapeProperties(Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetSpPr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetSpPr()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_2
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetVal()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->unsetVal()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->isSetVal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFErrorBars;->bars:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTErrBars;->addNewVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    :cond_2
    :goto_0
    return-void
.end method
