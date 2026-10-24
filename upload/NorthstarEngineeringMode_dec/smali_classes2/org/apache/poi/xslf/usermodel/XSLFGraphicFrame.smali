.class public Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/GraphicalFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/GraphicalFrame<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final DRAWINGML_CHART_URI:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"

.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method private copyChart(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p2

    const-string v0, "declare namespace c=\'http://schemas.openxmlformats.org/drawingml/2006/chart\' c:chart"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v2, "id"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createChart(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFChart;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->importContent(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    invoke-virtual {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Li5/p0;->J(Ljava/lang/String;Ljavax/xml/namespace/QName;)Z

    invoke-virtual {v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    invoke-virtual {p0, v2, p2, v1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_4
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_5
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_4
    return-void
.end method

.method private copyDiagram(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;)V
    .locals 4

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v1, "declare namespace dgm=\'http://schemas.openxmlformats.org/drawingml/2006/diagram\' $this//dgm:relIds"

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    aget-object p1, p1, v1

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "dm"

    invoke-direct {v1, v0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "lo"

    invoke-direct {v1, v0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "qs"

    invoke-direct {v1, v0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "cs"

    invoke-direct {v1, v0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_5
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public static create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getUri(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "http://schemas.openxmlformats.org/drawingml/2006/table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "http://schemas.openxmlformats.org/drawingml/2006/diagram"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "http://schemas.openxmlformats.org/presentationml/2006/ole"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTable;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFTable;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x325882e9 -> :sswitch_2
        -0x303c770a -> :sswitch_1
        -0x23f1ff4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getGraphicalData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    return-object p0
.end method

.method private static getUri(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getGraphicalData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/diagram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->copyDiagram(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;)V

    :cond_0
    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/chart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->copyChart(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;)V

    :cond_1
    return-void
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    if-eqz v0, :cond_0

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

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

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

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not retrieve Off from the XML object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not retrieve an Xfrm from the XML object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChart()Lorg/apache/poi/xslf/usermodel/XSLFChart;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->hasChart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "declare namespace c=\'http://schemas.openxmlformats.org/drawingml/2006/chart\' c:chart"

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getGraphicalData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v4, "id"

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Li5/p0;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFChart;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic getFallbackPicture()Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getFallbackPicture()Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public getFallbackPicture()Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 3

    const-string v0, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\'; declare namespace mc=\'http://schemas.openxmlformats.org/markup-compatibility/2006\' .//mc:Fallback/*/p:pic"

    const-class v1, Lorg/apache/xmlbeans/XmlObject;

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    sget-object v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-interface {v0}, Li5/j2;->newDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/schema/b;->g(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->sizeOfPicArray()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->LOG:La5/d;

    .line 6
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "Can\'t parse fallback picture stream of graphical frame"

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public getFlipHorizontal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFlipVertical()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRotation()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public hasChart()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getGraphicalData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getUri()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://schemas.openxmlformats.org/drawingml/2006/chart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasDiagram()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->getGraphicalData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;->getUri()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://schemas.openxmlformats.org/drawingml/2006/diagram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

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

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

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

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFlipVertical(Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRotation(D)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
