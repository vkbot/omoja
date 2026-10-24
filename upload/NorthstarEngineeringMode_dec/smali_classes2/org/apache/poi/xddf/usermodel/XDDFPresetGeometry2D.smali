.class public Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->lambda$getAdjustValues$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAdjustValues$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method


# virtual methods
.method public addAdjustValue()Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->addNewGd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method public getAdjustValue(I)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdjustValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

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

.method public getGeometry()Lorg/apache/poi/xddf/usermodel/PresetGeometry;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/PresetGeometry;->valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)Lorg/apache/poi/xddf/usermodel/PresetGeometry;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    return-object p0
.end method

.method public insertAdjustValue(I)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->insertNewGd(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method public removeAdjustValue(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->removeGd(I)V

    :cond_0
    return-void
.end method

.method public setGeometry(Lorg/apache/poi/xddf/usermodel/PresetGeometry;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFPresetGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/PresetGeometry;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    return-void
.end method
