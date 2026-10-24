.class public Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)Lorg/apache/poi/xddf/usermodel/XDDFDashStop;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->lambda$getDashStops$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)Lorg/apache/poi/xddf/usermodel/XDDFDashStop;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDashStops$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)Lorg/apache/poi/xddf/usermodel/XDDFDashStop;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)V

    return-object v0
.end method


# virtual methods
.method public addDashStop()Lorg/apache/poi/xddf/usermodel/XDDFDashStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCustDash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;->addNewDs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)V

    return-object v0
.end method

.method public countDashStops()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCustDash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;->sizeOfDsArray()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCompoundLine()Lorg/apache/poi/xddf/usermodel/CompoundLine;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/CompoundLine;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)Lorg/apache/poi/xddf/usermodel/CompoundLine;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDashStop(I)Lorg/apache/poi/xddf/usermodel/XDDFDashStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCustDash()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;->getDsArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDashStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFDashStop;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCustDash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;->getDsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/x0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFillProperties()Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeadEnd()Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineCap()Lorg/apache/poi/xddf/usermodel/LineCap;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/LineCap;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)Lorg/apache/poi/xddf/usermodel/LineCap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineJoinProperties()Lorg/apache/poi/xddf/usermodel/XDDFLineJoinProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetBevel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getBevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetMiter()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getMiter()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetRound()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinRoundProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getRound()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinRoundProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPenAlignment()Lorg/apache/poi/xddf/usermodel/PenAlignment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/PenAlignment;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;)Lorg/apache/poi/xddf/usermodel/PenAlignment;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPresetDash()Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTailEnd()Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidth()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getW()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    return-object p0
.end method

.method public insertDashStop(I)Lorg/apache/poi/xddf/usermodel/XDDFDashStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCustDash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;->insertNewDs(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFDashStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStop;)V

    return-object v0
.end method

.method public removeDashStop(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCustDash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;->removeDs(I)V

    :cond_0
    return-void
.end method

.method public setCompoundLine(Lorg/apache/poi/xddf/usermodel/CompoundLine;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCmpd()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/CompoundLine;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFillProperties(Lorg/apache/poi/xddf/usermodel/XDDFFillProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFGradientFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFNoFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPatternFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFSolidFillProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public setHeadEnd(Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetHeadEnd()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setHeadEnd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLineCap(Lorg/apache/poi/xddf/usermodel/LineCap;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCap()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/LineCap;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLineJoinProperties(Lorg/apache/poi/xddf/usermodel/XDDFLineJoinProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetBevel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetBevel()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetMiter()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetMiter()V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetRound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetRound()V

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setBevel(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinMiterProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setMiter(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinRoundProperties;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinRoundProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinRoundProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setRound(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setPenAlignment(Lorg/apache/poi/xddf/usermodel/PenAlignment;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetAlgn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PenAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresetDash(Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPrstDash()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPresetLineDash;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setPrstDash(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTailEnd(Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetTailEnd()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineEndProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setTailEnd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWidth(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetW()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    :cond_1
    :goto_0
    return-void
.end method
