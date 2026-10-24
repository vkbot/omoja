.class public Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/GroupShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/GroupShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private _drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

.field private final _grpSpPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

.field private final _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-static {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_grpSpPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-void
.end method

.method private getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    return-object p0
.end method

.method private getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 5

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewNvGrpSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Group "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewCNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Adding a shape from a different container is not supported - create it from scratch with XSLFGroupShape.create* methods"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 4

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_8

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v1

    goto :goto_2

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v1

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v1

    goto :goto_2

    :cond_4
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object v1

    goto :goto_2

    :cond_5
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v1

    goto :goto_2

    :cond_6
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    goto :goto_1

    :cond_7
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "copying of class {} not supported."

    invoke-interface {v1, v0, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object p0

    return-object p0
.end method

.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object p0

    return-object p0
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object p0

    return-object p0
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object p0

    return-object p0
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/ObjectShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    move-result-object p0

    return-object p0
.end method

.method public createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;
    .locals 4

    .line 2
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createOleShape(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->getCTOleObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;

    move-result-object v1

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->setImgW(I)V

    .line 8
    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOleObject;->setImgH(I)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pictureData needs to be of type XSLFPictureData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 3

    .line 2
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p1

    .line 5
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-direct {v0, p1}, Lorg/apache/poi/sl/draw/DrawPictureShape;-><init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object p1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pictureData needs to be of type XSLFPictureData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createTable(II)Lorg/apache/poi/sl/usermodel/TableShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object p0

    return-object p0
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->addRow()Lorg/apache/poi/xslf/usermodel/XSLFTableRow;

    move-result-object v2

    move v3, p0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 9
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTableRow;->addCell()Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numRows and numCols must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object p0

    return-object p0
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v8

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v10

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public getFlipHorizontal()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetFlipH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getFlipH()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFlipVertical()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetFlipV()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getFlipV()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_grpSpPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-object p0
.end method

.method public getInteriorAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v8

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v10

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public getRotation()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetRot()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getRot()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    return-object p0
.end method

.method public getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result p0

    return p0
.end method

.method public removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->deregisterShapeId(I)V

    .line 5
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getSpList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v2, :cond_1

    .line 8
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lorg/apache/poi/xslf/usermodel/a;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2}, Lorg/apache/poi/xslf/usermodel/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGrpSpList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getCxnSpList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getGraphicFrameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    instance-of v2, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v2, :cond_5

    .line 16
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V

    .line 19
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->_shapes:Ljava/util/List;

    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported shape: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetOff()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetExt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    int-to-long v2, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {p0, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setFlipH(Z)V

    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setFlipV(Z)V

    return-void
.end method

.method public setInteriorAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetChOff()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->isSetChExt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->getChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    int-to-long v2, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {p0, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-void
.end method

.method public setRotation(D)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getSafeXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setRot(I)V

    return-void
.end method
