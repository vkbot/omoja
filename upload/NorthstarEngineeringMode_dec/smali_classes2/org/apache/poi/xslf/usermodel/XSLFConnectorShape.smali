.class public Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ConnectorShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/ConnectorShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static prototype(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;
    .locals 5

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->addNewNvCxnSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connector "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;->addNewCNvCxnSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualConnectorProperties;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnectorNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;->getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    move-result-object p0

    return-object p0
.end method

.method public getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "A connector shape can\'t be a placeholder."

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
