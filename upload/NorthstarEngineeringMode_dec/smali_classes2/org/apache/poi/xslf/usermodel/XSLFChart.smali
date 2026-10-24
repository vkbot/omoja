.class public final Lorg/apache/poi/xslf/usermodel/XSLFChart;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;
.source "SourceFile"


# static fields
.field private static CHART_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public static prototype(ILjava/lang/String;Ljava/awt/geom/Rectangle2D;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;
    .locals 5

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewNvGraphicFramePr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;->addNewGraphicFrameLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectFrameLocking;->setNoGrp(Z)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrameNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    double-to-int p2, v3

    int-to-long v3, p2

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setOff(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->addNewGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->newCursor()Li5/p0;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Li5/p0;->C()Li5/p0$a;

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFChart;->CHART_URI:Ljava/lang/String;

    const-string v3, "chart"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Li5/p0;->I(Ljavax/xml/namespace/QName;)V

    invoke-interface {p2, p1}, Li5/p0;->C1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Li5/p0;->close()V

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFChart;->CHART_URI:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->setUri(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_0

    :try_start_2
    invoke-interface {p2}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
.end method


# virtual methods
.method public getChartFactory()Lorg/apache/poi/ooxml/POIXMLFactory;
    .locals 0

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object p0

    return-object p0
.end method

.method public getChartRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0
.end method

.method public getChartWorkbookRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->WORKBOOK:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0
.end method

.method public getTitleShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetRich()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFChart$1;

    invoke-direct {v1, p0, v0, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFChart$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFChart$2;

    invoke-direct {v1, p0, v0, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFChart$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFChart;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    return-object v1
.end method
