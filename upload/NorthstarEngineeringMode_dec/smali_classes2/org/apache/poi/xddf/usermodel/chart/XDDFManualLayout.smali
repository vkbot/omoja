.class public final Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultLayoutMode:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

.field private static final defaultLayoutTarget:Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;


# instance fields
.field private layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->EDGE:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutMode:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;->INNER:Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutTarget:Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->initializeLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->isSetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    move-result-object p1

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->initializeLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V

    return-void
.end method

.method private initializeLayout(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;)V
    .locals 1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->isSetManualLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->getManualLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;->addNewManualLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    :goto_0
    return-void
.end method


# virtual methods
.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeightMode()Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetHMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutMode:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getHMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    move-result-object p0

    return-object p0
.end method

.method public getHeightRatio()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetH()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getH()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTarget()Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetLayoutTarget()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutTarget:Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getLayoutTarget()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;)Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;

    move-result-object p0

    return-object p0
.end method

.method public getWidthMode()Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetWMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutMode:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getWMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    move-result-object p0

    return-object p0
.end method

.method public getWidthRatio()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetW()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetX()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getXMode()Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetXMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutMode:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getXMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    return-object p0
.end method

.method public getY()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetY()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->getVal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getYMode()Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetYMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->defaultLayoutMode:Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getYMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;

    move-result-object p0

    return-object p0
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHeightMode(Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetHMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewHMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getHMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    return-void
.end method

.method public setHeightRatio(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewH()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getH()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    return-void
.end method

.method public setTarget(Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetLayoutTarget()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewLayoutTarget()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getLayoutTarget()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/LayoutTarget;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutTarget;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutTarget$Enum;)V

    return-void
.end method

.method public setWidthMode(Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetWMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewWMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getWMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    return-void
.end method

.method public setWidthRatio(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetW()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewW()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    return-void
.end method

.method public setX(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getX()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    return-void
.end method

.method public setXMode(Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetXMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewXMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getXMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    return-void
.end method

.method public setY(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getY()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;->setVal(D)V

    return-void
.end method

.method public setYMode(Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->isSetYMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->addNewYMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;->layout:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTManualLayout;->getYMode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/LayoutMode;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayoutMode;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STLayoutMode$Enum;)V

    return-void
.end method
