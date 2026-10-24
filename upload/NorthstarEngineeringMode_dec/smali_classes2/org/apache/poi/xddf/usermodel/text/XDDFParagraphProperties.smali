.class public Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bullet:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

.field private props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    invoke-direct {v0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->bullet:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->lambda$getTabStops$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTabStops$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    return-object v0
.end method


# virtual methods
.method public addDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object p0

    return-object p0
.end method

.method public addTabStop()Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    return-object v0
.end method

.method public countTabStops()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->sizeOfTabArray()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBulletProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->bullet:Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphBulletProperties;

    return-object p0
.end method

.method public getDefaultRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionList()Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTabStop(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->getTabArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->getTabList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v1, 0x11

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

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-object p0
.end method

.method public insertTabStop(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->insertNewTab(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTabStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;)V

    return-object v0
.end method

.method public removeTabStop(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->removeTab(I)V

    :cond_0
    return-void
.end method

.method public setDefaultRunProperties(Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetDefRPr()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setDefRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultTabSize(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefTabSz()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetDefTabSz()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setDefTabSz(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEastAsianLineBreak(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetEaLnBrk()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetEaLnBrk()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setEaLnBrk(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExtensionList(Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetExtLst()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetExtLst()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFExtensionList;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontAlignment(Lorg/apache/poi/xddf/usermodel/text/FontAlignment;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHangingPunctuation(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetHangingPunct()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetHangingPunct()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setHangingPunct(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIndentation(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3f50800000000000L    # -4032.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    const-wide v0, 0x40af800000000000L    # 4032.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive = -4032. Maximum inclusive = 4032."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLatinLineBreak(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLatinLnBrk()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetLatinLnBrk()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLatinLnBrk(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLvl()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetLvl()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive: 1. Maximum inclusive: 9."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLineSpacing(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetLnSpc()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetLnSpc()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLnSpc(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMarginLeft(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    const-wide v0, 0x40af800000000000L    # 4032.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive = 0. Maximum inclusive = 4032."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMarginRight(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    const-wide v0, 0x40af800000000000L    # 4032.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum inclusive = 0. Maximum inclusive = 4032."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRightToLeft(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetRtl()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setRtl(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpaceAfter(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcAft()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcAft()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpaceBefore(Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetSpcBef()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcBef()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextAlignment(Lorg/apache/poi/xddf/usermodel/text/TextAlignment;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    :cond_1
    :goto_0
    return-void
.end method
