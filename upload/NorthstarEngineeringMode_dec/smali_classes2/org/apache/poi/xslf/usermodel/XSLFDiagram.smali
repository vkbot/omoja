.class public Lorg/apache/poi/xslf/usermodel/XSLFDiagram;
.super Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;
    }
.end annotation


# static fields
.field public static final DRAWINGML_DIAGRAM_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/diagram"


# instance fields
.field private final _drawing:Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

.field private final _groupShape:Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-static {p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->readDiagramDrawing(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->initGroupShape()Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->_groupShape:Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->lambda$hasTextContent$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->lambda$hasTextContent$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Z

    move-result p0

    return p0
.end method

.method private convertMsGroupToGroupShape(Lx2/b;Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;)Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;
    .locals 11

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewNvGrpSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;

    move-result-object v1

    invoke-interface {p1}, Lx2/b;->getNvGrpSpPr()Lx2/c;

    sget-object v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->setNvPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;)V

    invoke-interface {p1}, Lx2/b;->getSpList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx2/d;

    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->convertShape(Lx2/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;Lorg/apache/poi/xslf/usermodel/XSLFDiagram$1;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v1, v10}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setInteriorAnchor(Ljava/awt/geom/Rectangle2D;)V

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getRotation()D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setRotation(D)V

    return-object v1
.end method

.method private convertShape(Lx2/d;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/d;",
            ")",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    invoke-interface {p1}, Lx2/d;->getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;)V

    invoke-interface {p1}, Lx2/d;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    invoke-interface {p1}, Lx2/d;->getNvSpPr()Lx2/e;

    const/4 p0, 0x0

    throw p0
.end method

.method private convertText(Lx2/d;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;
    .locals 2

    sget-object p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {p1}, Lx2/d;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->setTxBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    invoke-interface {p1}, Lx2/d;->getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->setNvSpPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShapeNonVisual;->getCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;->setTxBox(Z)V

    invoke-interface {p1}, Lx2/d;->i0()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    invoke-interface {p1}, Lx2/d;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

    move-result p2

    invoke-interface {p1}, Lx2/d;->i0()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr p2, p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setRot(I)V

    :cond_0
    return-object p0
.end method

.method private static hasTextContent(Lx2/d;)Z
    .locals 2

    invoke-interface {p0}, Lx2/d;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lx2/d;->i0()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lx2/d;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lf/g;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private initGroupShape()Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->getDiagramDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;->getDrawingDocument()Lx2/f;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;->getDrawingDocument()Lx2/f;

    move-result-object p0

    invoke-interface {p0}, Lx2/f;->getDrawing()Lx2/a;

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$hasTextContent$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getRList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasTextContent$1(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Z
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->getT()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readDiagramDrawing(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;
    .locals 3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://schemas.openxmlformats.org/drawingml/2006/diagram"

    const-string v2, "relIds"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRelIds;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTRelIds;->getDm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "data"

    const-string v2, "drawing"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    return-object p0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getDiagramDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    return-object p0
.end method

.method public getGroupShape()Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->_groupShape:Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;

    return-object p0
.end method
