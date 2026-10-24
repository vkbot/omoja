.class public final Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "SourceFile"


# static fields
.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;


# instance fields
.field private final graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "r:id"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "c:chart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->setGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private appendChartElement(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Ljava/lang/String;)V
    .locals 5

    sget-object p0, Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;->type:Li5/c0;

    invoke-interface {p0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://schemas.openxmlformats.org/drawingml/2006/chart"

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Li5/p0;->C()Li5/p0$a;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "chart"

    const-string v4, "c"

    invoke-direct {v2, v0, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Li5/p0;->I(Ljavax/xml/namespace/QName;)V

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "id"

    const-string v4, "r"

    invoke-direct {v2, p0, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2, v2}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Li5/p0;->close()V

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->setUri(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
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

.method private getNonVisualProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    return-object p0
.end method

.method public static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
    .locals 6

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->addNewNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    const-string v5, "Diagramm 1"

    invoke-interface {v2, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;->addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 3
    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    return-object p0
.end method

.method public getCTGraphicalObjectFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getNonVisualProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-void
.end method

.method public setChart(Lorg/apache/poi/xssf/usermodel/XSSFChart;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->addNewGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->appendChartElement(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->setGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;)V

    return-void
.end method

.method public setId(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->getNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrameNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    return-void
.end method

.method public setMacro(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->graphicFrame:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setMacro(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getNonVisualProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    return-void
.end method
