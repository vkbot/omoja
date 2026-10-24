.class public Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private _spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p0

    const-string p2, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:cNvPr"

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->registerShapeId(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addChart(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result p0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFChart;->prototype(ILjava/lang/String;Ljava/awt/geom/Rectangle2D;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    sget-object p0, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    return-object v1
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createOleShape(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;->prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object p1
.end method

.method public createPicture(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object p1
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTable;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTable;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object v1
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->allocateShapeId()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;->prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextBox;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-object v1
.end method
