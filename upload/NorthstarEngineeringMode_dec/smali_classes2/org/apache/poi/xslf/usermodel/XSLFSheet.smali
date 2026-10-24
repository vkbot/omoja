.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.implements Lorg/apache/poi/sl/usermodel/Sheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ooxml/POIXMLDocumentPart;",
        "Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;",
        "Lorg/apache/poi/sl/usermodel/Sheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private _drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

.field private _placeholderByIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
            ">;"
        }
    .end annotation
.end field

.field private _placeholderByTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
            ">;"
        }
    .end annotation
.end field

.field private _placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextShape;",
            ">;"
        }
    .end annotation
.end field

.field private _shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation
.end field

.field private _spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

.field private _theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

.field private final shapeIds:Le3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    new-instance v0, Le3/a;

    invoke-direct {v0}, Le3/a;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    new-instance p1, Le3/a;

    invoke-direct {p1}, Le3/a;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->lambda$getTheme$1(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->lambda$getTheme$0(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z

    move-result p0

    return p0
.end method

.method public static buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->o0()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_8

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    invoke-static {v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;->create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    instance-of v3, v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-direct {v3, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    instance-of v3, v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v3, :cond_3

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    invoke-direct {v3, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    instance-of v3, v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v3, :cond_4

    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-direct {v3, v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    instance-of v3, v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    invoke-static {v2, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;->create(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFGraphicFrame;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    instance-of v2, v2, Lorg/apache/xmlbeans/impl/values/g0;

    if-eqz v2, :cond_7

    invoke-interface {p0}, Li5/p0;->A1()V

    const-string v2, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string v3, "Choice"

    invoke-interface {p0, v2, v3}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Li5/p0;->o0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    :try_start_1
    sget-object v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-interface {p0}, Li5/j2;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-static {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Li5/z0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->e()La5/b;

    move-result-object v3

    invoke-interface {v3, v2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v2

    const-string v3, "unparsable alternate content"

    invoke-interface {v2, v3}, La5/b;->f(Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-interface {p0}, Li5/p0;->e0()Z

    :cond_7
    :goto_3
    invoke-interface {p0}, Li5/p0;->k0()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_8
    invoke-interface {p0}, Li5/p0;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    goto :goto_4

    :cond_9
    return-object v1

    :goto_5
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_a

    :try_start_4
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v0
.end method

.method private getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    return-object p0
.end method

.method private getPlaceholderById(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object p0
.end method

.method private initDrawingAndShapes()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->buildShapes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private initPlaceholders()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getIdx()J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Li5/h0;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$getTheme$0(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z
    .locals 0

    instance-of p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return p0
.end method

.method private synthetic lambda$getTheme$1(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-void
.end method

.method private wipeAndReinitialize(Lorg/apache/poi/xslf/usermodel/XSLFSheet;I)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_drawing:Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    add-int v2, p2, v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChart(Lorg/apache/poi/xslf/usermodel/XSLFChart;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    const/16 v1, 0xa

    const v2, 0x7a120

    invoke-direct {v0, v1, v1, v2, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->addChart(Lorg/apache/poi/xslf/usermodel/XSLFChart;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public addChart(Lorg/apache/poi/xslf/usermodel/XSLFChart;Ljava/awt/geom/Rectangle2D;)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->CHART:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->addChart(Ljava/lang/String;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public bridge synthetic addShape(Lorg/apache/poi/sl/usermodel/Shape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    return-void
.end method

.method public addShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Adding a shape from a different container is not supported - create it from scratch with the XSLFSheet.create* methods"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public allocateShapeId()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le3/a;->b(I)I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    invoke-virtual {p0, v0}, Le3/a;->e(I)V

    return v0
.end method

.method public appendContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    instance-of v6, v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    if-eqz v6, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    :cond_0
    instance-of v6, v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v6, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    :cond_1
    instance-of v6, v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewCxnSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTConnector;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    :cond_2
    instance-of v6, v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v6, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewPic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_1

    :cond_3
    instance-of v6, v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    if-eqz v6, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGraphicFrame()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGraphicalObjectFrame;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->wipeAndReinitialize(Lorg/apache/poi/xslf/usermodel/XSLFSheet;I)V

    return-object p0
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

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

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getRootElementName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    invoke-direct {v2, v3, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Li5/j2;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object p0

    return-object p0
.end method

.method public createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object p0

    return-object p0
.end method

.method public createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object p0

    return-object p0
.end method

.method public createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object p0

    return-object p0
.end method

.method public createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public bridge synthetic createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/ObjectShape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;

    move-result-object p0

    return-object p0
.end method

.method public createOleShape(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFObjectShape;
    .locals 4

    .line 2
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

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
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 2

    .line 2
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

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

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v0

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
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTable(II)Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object p0

    return-object p0
.end method

.method public createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

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
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTable()Lorg/apache/poi/xslf/usermodel/XSLFTable;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

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
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object p0

    return-object p0
.end method

.method public createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getDrawing()Lorg/apache/poi/xslf/usermodel/XSLFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFDrawing;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V

    return-object v0
.end method

.method public deregisterShapeId(I)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    invoke-virtual {v0, p1}, Le3/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-static {p1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shape id {} hasn\'t been registered."

    invoke-interface {v0, v1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget v0, p0, Le3/a;->x:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Le3/a;->r:[[[J

    shr-int/lit8 v2, p1, 0x10

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    shr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1f

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object p0, p0, Le3/a;->y:Le3/a$b;

    const/4 p1, 0x0

    iput p1, p0, Le3/a$b;->a:I

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "i="

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Sheet;)Lorg/apache/poi/sl/draw/DrawSheet;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFollowMasterGraphics()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 0

    .line 1
    iget p1, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getIdx()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderById(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p1

    invoke-virtual {p1}, Li5/h0;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPlaceholder(I)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object p0
.end method

.method public getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholderByTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-object p0
.end method

.method public bridge synthetic getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/sl/usermodel/PlaceholderDetails;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderDetails(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    invoke-direct {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public getPlaceholders()[Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initPlaceholders()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_placeholders:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    return-object p0
.end method

.method public abstract getRootElementName()Ljava/lang/String;
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

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->initDrawingAndShapes()V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_shapes:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    instance-of v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SlideShow was not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' .//*/p:spTree"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Had unexpected type of entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CTGroupShape was not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    return-object p0
.end method

.method public getTextShapeByType(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->isSupportTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lo1/c;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lo1/c;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/d;

    invoke-direct {v1, p0}, Lorg/apache/poi/xslf/usermodel/d;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    return-object p0
.end method

.method public abstract getXmlObject()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->_spTree:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->wipeAndReinitialize(Lorg/apache/poi/xslf/usermodel/XSLFSheet;I)V

    return-object p0
.end method

.method public importPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_4

    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :goto_5
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isSupportTheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "folHlink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "hlink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "tx2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "tx1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "bg2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "bg1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "accent6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "accent5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "accent4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "accent3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "accent2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "accent1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 7
    :pswitch_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 8
    :pswitch_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 9
    :pswitch_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 10
    :pswitch_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 11
    :pswitch_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 12
    :pswitch_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 13
    :pswitch_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 14
    :pswitch_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 15
    :pswitch_9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 16
    :pswitch_a
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    .line 17
    :pswitch_b
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object p1

    goto :goto_2

    :cond_c
    :goto_1
    move-object p1, p0

    :goto_2
    if-nez p1, :cond_d

    goto :goto_3

    .line 18
    :cond_d
    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46311b59 -> :sswitch_b
        -0x46311b58 -> :sswitch_a
        -0x46311b57 -> :sswitch_9
        -0x46311b56 -> :sswitch_8
        -0x46311b55 -> :sswitch_7
        -0x46311b54 -> :sswitch_6
        0x17c8c -> :sswitch_5
        0x17c8d -> :sswitch_4
        0x1c22d -> :sswitch_3
        0x1c22e -> :sswitch_2
        0x5ec3c62 -> :sswitch_1
        0x1000415f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;->getOverrideClrMapping()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    if-nez p0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    return-object p2
.end method

.method public registerShapeId(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    invoke-virtual {v0, p1}, Le3/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-static {p1}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shape id {} has been already used."

    invoke-interface {v0, v1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->shapeIds:Le3/a;

    invoke-virtual {p0, p1}, Le3/a;->e(I)V

    return-void
.end method

.method public removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v4, v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-gt v2, v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic removeShape(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result p0

    return p0
.end method

.method public removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeId()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->deregisterShapeId(I)V

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

    const/4 v5, 0x1

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

    if-eqz v2, :cond_4

    .line 16
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->removePictureRelation(Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;)V

    .line 18
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->getPicList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 20
    :cond_4
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
