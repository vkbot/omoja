.class public final Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ooxml/POIXMLDocumentPart;",
        "Lorg/apache/poi/ss/usermodel/Drawing<",
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG:La5/d;

.field protected static final NAMESPACE_A:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field protected static final NAMESPACE_C:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"


# instance fields
.field private drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

.field private numOfGraphicFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    sget-object v1, Li5/z1$a;->p1:Li5/z1$a;

    iget-object v2, v0, Li5/z1;->c:Ljava/util/Map;

    const/4 v3, 0x0

    .line 5
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 7
    :try_start_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private addShapes(Li5/p0;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/p0;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Li5/p0;->A1()V

    invoke-interface {p1}, Li5/p0;->o0()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->hasOleLink(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    if-eqz v1, :cond_7

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    if-eqz v1, :cond_8

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getAnchorFromParent(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    instance-of v0, v0, Lorg/apache/xmlbeans/impl/values/g0;

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "trying to parse AlternateContent, this unlinks the returned Shapes from the underlying xml content, so those shapes can\'t be used to modify the drawing, i.e. modifications will be ignored!"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->A1()V

    invoke-interface {p1}, Li5/p0;->o0()Z

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-interface {p1}, Li5/j2;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->newCursor()Li5/p0;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Li5/p0;->o0()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Li5/p0;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_9
    :goto_1
    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-interface {p1}, Li5/p0;->e0()Z

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_a

    :try_start_4
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw v2
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    :try_start_6
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->g()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "unable to parse CTDrawing in alternate content."

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :goto_6
    invoke-interface {p1}, Li5/p0;->e0()Z

    throw p0

    :cond_b
    :goto_7
    invoke-interface {p1}, Li5/p0;->k0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_c
    invoke-interface {p1}, Li5/p0;->e0()Z

    invoke-interface {p1}, Li5/p0;->k0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private createGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewGraphicFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    iget-wide v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->numOfGraphicFrames:J

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    invoke-direct {v3, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    invoke-virtual {v3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)V

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setId(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Diagramm"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setName(Ljava/lang/String;)V

    return-object v3
.end method

.method private createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->addNewTwoCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewClientData()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAnchorClientData;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setTo(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setFrom(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing$1;->$SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getAnchorType()Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ONE_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ONE_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->TWO_CELL:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs;->ABSOLUTE:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->setEditAs(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/STEditAs$Enum;)V

    return-object p0
.end method

.method private createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 8

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidthInPixels(I)F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v1

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-static {p0, v1}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v6

    add-double/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    double-to-int p0, v4

    invoke-static {p0}, Lorg/apache/poi/util/Units;->pixelToEMU(I)I

    move-result p0

    int-to-long v4, p0

    double-to-int p0, v2

    invoke-static {p0}, Lorg/apache/poi/util/Units;->pixelToEMU(I)I

    move-result p0

    int-to-long v1, p0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-interface {p0, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-interface {p0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-object v0
.end method

.method private getAnchorFromParent(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 2

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->X0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Li5/p0;->close()V

    if-eqz v0, :cond_3

    instance-of p1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    if-eqz p1, :cond_1

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object p0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    goto :goto_1

    :cond_1
    instance-of p1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    if-eqz p1, :cond_2

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    goto :goto_1

    :cond_2
    instance-of p1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    if-eqz p1, :cond_3

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object p1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    :cond_3
    :goto_1
    return-object v1

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_4

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0
.end method

.method private hasOleLink(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 2

    new-instance p0, Ljavax/xml/namespace/QName;

    const/4 v0, 0x0

    const-string v1, "uri"

    invoke-direct {p0, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//a:extLst/a:ext"

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{63B3BB69-23CF-44E3-9099-C40C66FF867C}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Li5/p0;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Li5/p0;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method

.method private static newDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    return-object v0
.end method

.method private newShapeId()J
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfAbsoluteAnchorArray()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfOneCellAnchorArray()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->sizeOfTwoCellAnchorArray()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    const/4 p1, 0x0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    return-object p0
.end method

.method public commit()V
    .locals 5

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wsDr"

    const-string v4, "xdr"

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public bridge synthetic createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 10

    .line 2
    new-instance v9, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public bridge synthetic createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCommentsTable(Z)Lorg/apache/poi/xssf/model/Comments;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1}, Lorg/apache/poi/xssf/model/Comments;->createNewComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 0

    .line 7
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object p0

    return-object p0
.end method

.method public createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChartRelationPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->setChart(Lorg/apache/poi/xssf/usermodel/XSSFChart;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;->getCTGraphicalObjectFrame()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    return-object v1
.end method

.method public createChartRelationPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :try_start_0
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3, v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v2, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed for "

    invoke-static {v1, v2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createConnector(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFConnector;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewCxnSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFConnector;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFConnector;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTConnector;)V

    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v1
.end method

.method public createGroup(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewGrpSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setOff(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->setChExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    iput-object p1, v1, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v1
.end method

.method public bridge synthetic createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-result-object p0

    return-object p0
.end method

.method public createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;
    .locals 9

    const-string v0, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v1, "_x0000_s"

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v5

    .line 6
    invoke-virtual {v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 8
    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 9
    :try_start_0
    invoke-virtual {v6, p2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    sget-object v7, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v6}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p2, v7, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p2

    .line 11
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 12
    invoke-virtual {p3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p3

    const-string v6, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    .line 13
    invoke-virtual {v3, p3, v7, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    invoke-virtual {v8, p3, v7, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p3

    .line 15
    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetOleObjects()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v2

    .line 17
    :goto_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->addNewOleObject()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v2

    const-string v6, "Package"

    .line 18
    invoke-interface {v2, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setProgId(Ljava/lang/String;)V

    .line 19
    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setShapeId(J)V

    .line 20
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->setId(Ljava/lang/String;)V

    .line 21
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;->newCursor()Li5/p0;

    move-result-object p2

    .line 22
    :try_start_1
    invoke-interface {p2}, Li5/p0;->P0()Li5/p0$a;

    const-string v2, "objectPr"

    .line 23
    invoke-interface {p2, v2, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Li5/p0;->C1(Ljava/lang/String;)V

    const-string v2, "defaultSize"

    const-string v3, "0"

    .line 25
    invoke-interface {p2, v2, v3}, Li5/p0;->F(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "anchor"

    .line 26
    invoke-interface {p2, v2, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "moveWithCells"

    const-string v3, "1"

    .line 27
    invoke-interface {p2, v2, v3}, Li5/p0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    .line 29
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->newCursor()Li5/p0;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 30
    :try_start_2
    invoke-interface {v3, p2}, Li5/p0;->K(Li5/p0;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 31
    :try_start_3
    invoke-interface {v3}, Li5/p0;->close()V

    .line 32
    invoke-interface {p2}, Li5/p0;->X0()Z

    .line 33
    invoke-interface {p2}, Li5/p0;->o0()Z

    .line 34
    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v6, "from"

    invoke-direct {v3, v0, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Li5/p0;->x0(Ljavax/xml/namespace/QName;)V

    .line 35
    invoke-interface {p2}, Li5/p0;->k0()Z

    .line 36
    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v6, "to"

    invoke-direct {v3, v0, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Li5/p0;->x0(Ljavax/xml/namespace/QName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 37
    invoke-interface {p2}, Li5/p0;->close()V

    .line 38
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object p2

    .line 39
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 40
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    .line 41
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 43
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    .line 44
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p3

    .line 45
    invoke-interface {p3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Object "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 47
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->newCursor()Li5/p0;

    move-result-object p3

    .line 48
    :try_start_4
    invoke-interface {p3}, Li5/p0;->o0()Z

    .line 49
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v2, "spid"

    invoke-direct {v0, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Li5/p0;->J(Ljava/lang/String;Ljavax/xml/namespace/QName;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    invoke-interface {p3}, Li5/p0;->close()V

    .line 51
    new-instance p3, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-direct {p3, p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iput-object p1, p3, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object p3

    :catchall_0
    move-exception p0

    .line 52
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_1

    .line 53
    :try_start_6
    invoke-interface {p3}, Li5/p0;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1

    :catchall_3
    move-exception p0

    goto :goto_3

    :catchall_4
    move-exception p0

    .line 54
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p1

    if-eqz v3, :cond_2

    .line 55
    :try_start_8
    invoke-interface {v3}, Li5/p0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception p3

    :try_start_9
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 56
    :goto_3
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception p1

    if-eqz p2, :cond_3

    .line 57
    :try_start_b
    invoke-interface {p2}, Li5/p0;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p1

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 0

    .line 11
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    .locals 4

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addPictureReference(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p2

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewPic()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v2

    .line 6
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 7
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 8
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V

    iput-object p1, v0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    .line 9
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    .line 10
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    return-object v0
.end method

.method public createSimpleShape(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createXfrm(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iput-object p1, v0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v0
.end method

.method public createTextbox(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->newShapeId()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createTwoCellAnchor(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->addNewSp()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;

    invoke-direct {v0, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextBox;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    iput-object p1, v0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->anchor:Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    return-object v0
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    return-object p0
.end method

.method public getCharts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFChart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->drawing:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    .line 2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->newCursor()Li5/p0;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-interface {v1}, Li5/p0;->o0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Li5/p0;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Li5/p0;->close()V

    return-object v0

    .line 6
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    .line 7
    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method public getShapes(Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;->getCTGroupShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;->newCursor()Li5/p0;

    move-result-object p1

    .line 10
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->addShapes(Li5/p0;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Li5/p0;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 13
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public importChart(Lorg/apache/poi/xssf/usermodel/XSSFChart;)Lorg/apache/poi/xssf/usermodel/XSSFChart;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->getTwoCellAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getFrom()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;->getTo()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTMarker;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setAnchorType(Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
