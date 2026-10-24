.class public Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)Lorg/apache/poi/xddf/usermodel/XDDFPath;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->lambda$getPaths$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)Lorg/apache/poi/xddf/usermodel/XDDFPath;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->lambda$getGuides$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->lambda$getXYAdjustHandles$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->lambda$getConnectionSites$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->lambda$getPolarAdjustHandles$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->lambda$getAdjustValues$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAdjustValues$2(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method private static synthetic lambda$getConnectionSites$3(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V

    return-object v0
.end method

.method private static synthetic lambda$getGuides$4(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method private static synthetic lambda$getPaths$5(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)Lorg/apache/poi/xddf/usermodel/XDDFPath;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPath;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPath;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-object v0
.end method

.method private static synthetic lambda$getPolarAdjustHandles$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V

    return-object v0
.end method

.method private static synthetic lambda$getXYAdjustHandles$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V

    return-object v0
.end method


# virtual methods
.method public addAdjustValue()Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAvLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->addNewGd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method public addConnectionSite()Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetCxnLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->addNewCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V

    return-object v0
.end method

.method public addGuide()Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetGdLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->addNewGd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method public addNewPath()Lorg/apache/poi/xddf/usermodel/XDDFPath;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPath;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->addNewPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPath;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-object v0
.end method

.method public addPolarAdjustHandle()Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->addNewAhPolar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V

    return-object v0
.end method

.method public addXYAdjustHandle()Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->addNewAhXY()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V

    return-object v0
.end method

.method public getAdjustValue(I)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

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

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

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

.method public getConnectionSite(I)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetCxnLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->getCxnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionSites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetCxnLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->getCxnList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v1, 0xf

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

.method public getGuide(I)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetGdLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGuides()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetGdLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0xf

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

.method public getPath(I)Lorg/apache/poi/xddf/usermodel/XDDFPath;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPath;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPath;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-object v0
.end method

.method public getPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFPath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

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
.end method

.method public getPolarAdjustHandle(I)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->getAhPolarArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPolarAdjustHandles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->getAhPolarList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0xe

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

.method public getRectangle()Lorg/apache/poi/xddf/usermodel/XDDFGeometryRectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetRect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryRectangle;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryRectangle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXYAdjustHandle(I)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->getAhXYArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXYAdjustHandles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->getAhXYList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/x0;

    const/16 v1, 0xe

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

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    return-object p0
.end method

.method public insertAdjustValue(I)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAvLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->insertNewGd(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method public insertConnectionSite(I)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetCxnLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->insertNewCxn(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V

    return-object v0
.end method

.method public insertGuide(I)Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetGdLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->insertNewGd(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    return-object v0
.end method

.method public insertNewPath(I)Lorg/apache/poi/xddf/usermodel/XDDFPath;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPath;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->insertNewPath(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPath;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-object v0
.end method

.method public insertPolarAdjustHandle(I)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->insertNewAhPolar(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V

    return-object v0
.end method

.method public insertXYAdjustHandle(I)Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->addNewAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->insertNewAhXY(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandleXY;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V

    return-object v0
.end method

.method public removeAdjustValue(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAvLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->removeGd(I)V

    :cond_0
    return-void
.end method

.method public removeConnectionSite(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetCxnLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->removeCxn(I)V

    :cond_0
    return-void
.end method

.method public removeGuide(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetGdLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->removeGd(I)V

    :cond_0
    return-void
.end method

.method public removePath(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->removePath(I)V

    return-void
.end method

.method public removePolarAdjustHandle(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->removeAhPolar(I)V

    :cond_0
    return-void
.end method

.method public removeXYAdjustHandle(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->removeAhXY(I)V

    :cond_0
    return-void
.end method

.method public setRectangle(Lorg/apache/poi/xddf/usermodel/XDDFGeometryRectangle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetRect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->unsetRect()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->geometry:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFGeometryRectangle;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->setRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;)V

    :cond_1
    :goto_0
    return-void
.end method
