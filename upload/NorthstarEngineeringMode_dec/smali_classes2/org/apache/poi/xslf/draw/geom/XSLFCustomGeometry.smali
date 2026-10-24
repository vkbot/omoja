.class public Lorg/apache/poi/xslf/draw/geom/XSLFCustomGeometry;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCustomGeometry(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 8

    new-instance v0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>()V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAhLst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAhLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->getAhXYArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    new-instance v7, Lorg/apache/poi/xslf/draw/geom/XSLFXYAdjustHandle;

    invoke-direct {v7, v6}, Lorg/apache/poi/xslf/draw/geom/XSLFXYAdjustHandle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTXYAdjustHandle;)V

    invoke-virtual {v0, v7}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addAdjustHandle(Lorg/apache/poi/sl/draw/geom/AdjustHandle;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjustHandleList;->getAhPolarArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    new-instance v6, Lorg/apache/poi/xslf/draw/geom/XSLFPolarAdjustHandle;

    invoke-direct {v6, v5}, Lorg/apache/poi/xslf/draw/geom/XSLFPolarAdjustHandle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addAdjustHandle(Lorg/apache/poi/sl/draw/geom/AdjustHandle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetAvLst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    new-instance v6, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustValue;

    invoke-direct {v6, v5}, Lorg/apache/poi/xslf/draw/geom/XSLFAdjustValue;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addAdjustGuide(Lorg/apache/poi/sl/draw/geom/AdjustValueIf;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetGdLst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getGdLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    new-instance v6, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;

    invoke-direct {v6, v5}, Lorg/apache/poi/xslf/draw/geom/XSLFGuide;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addGeomGuide(Lorg/apache/poi/sl/draw/geom/GuideIf;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetRect()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->xgetL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->xgetT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object v5

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomRect;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v5, v1}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->setTextBounds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->isSetCxnLst()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getCxnLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->getCxnArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    new-instance v6, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;

    invoke-direct {v6, v5}, Lorg/apache/poi/xslf/draw/geom/XSLFConnectionSite;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addConnectionSite(Lorg/apache/poi/sl/draw/geom/ConnectionSiteIf;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;->getPathLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DList;->getPathArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p0

    array-length v1, p0

    :goto_5
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    new-instance v4, Lorg/apache/poi/xslf/draw/geom/XSLFPath;

    invoke-direct {v4, v3}, Lorg/apache/poi/xslf/draw/geom/XSLFPath;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addPath(Lorg/apache/poi/sl/draw/geom/PathIf;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object v0
.end method
