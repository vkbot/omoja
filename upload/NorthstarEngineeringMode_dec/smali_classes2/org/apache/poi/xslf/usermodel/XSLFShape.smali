.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final CNV_PROPS:[Ljavax/xml/namespace/QName;

.field static final DML_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field private static final NV_CONTAINER:[Ljavax/xml/namespace/QName;

.field static final PML_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/presentationml/2006/main"


# instance fields
.field private _nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

.field private _parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

.field private final _shape:Lorg/apache/xmlbeans/XmlObject;

.field private final _sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

.field private _spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "nvSpPr"

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v4, "nvCxnSpPr"

    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v5, "nvGrpSpPr"

    invoke-direct {v1, v3, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v5, "nvPicPr"

    invoke-direct {v1, v3, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v5, "nvGraphicFramePr"

    invoke-direct {v1, v3, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->NV_CONTAINER:[Ljavax/xml/namespace/QName;

    new-array v0, v4, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v4, "cNvPr"

    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->CNV_PROPS:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_shape:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-void
.end method

.method private static getPlaceholderType(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)I
    .locals 4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Li5/h0;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t copy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->drawShape(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/model/PropertyFetcher<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object p0

    instance-of v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v3, :cond_3

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    :cond_3
    instance-of v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v3, :cond_5

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderType(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholderByType(I)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    :cond_5
    return v2
.end method

.method public getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;
    .locals 3

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v1, "bgPr"

    const-class v2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    return-object p0
.end method

.method public getBgRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 3

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v1, "bgRef"

    const-class v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-object p0
.end method

.method public getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    const-class v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    const/4 v3, 0x2

    new-array v3, v3, [[Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFShape;->NV_CONTAINER:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFShape;->CNV_PROPS:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v0, v3}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_nvPr:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p2, p3}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-interface {p0, p2, p3}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
.end method

.method public getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object p0
.end method

.method public getGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;
    .locals 3

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v1, "grpSpPr"

    const-class v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    return-object p0
.end method

.method public bridge synthetic getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    return-object p0
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    return-object v0
.end method

.method public getShapeId()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no underlying shape exists"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getShapeProperties()Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v1, "spPr"

    const-class v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    return-object p0
.end method

.method public getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    if-nez v0, :cond_0

    const-string v0, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v1, "style"

    const-class v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getChild(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_spStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    return-object p0
.end method

.method public final getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_shape:Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public isPlaceholder()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p2, p4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetMatrixStyle()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isLineStyle()Z

    move-result p1

    invoke-virtual {p0, p2, p4, p1, p5}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;Lorg/apache/poi/xslf/usermodel/XSLFTheme;ZZ)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p0, p2, p4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 8

    .line 17
    new-instance v7, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFTexturePaint;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v7
.end method

.method public selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 1

    .line 18
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/apache/poi/xslf/usermodel/XSLFGradientPaint;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v0
.end method

.method public selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 2

    .line 11
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v0, v1, p2, p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    .line 13
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->PH_CLR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    if-eqz v1, :cond_1

    move-object p2, v0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {v2, p1, p3, p2, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 16
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0
.end method

.method public selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;Lorg/apache/poi/xslf/usermodel/XSLFTheme;ZZ)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 19
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    .line 20
    invoke-virtual {p2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v3

    const-wide/16 v4, 0x1

    cmp-long v6, v1, v4

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x3e7

    cmp-long v6, v1, v6

    if-gtz v6, :cond_2

    sub-long/2addr v1, v4

    if-eqz p3, :cond_1

    .line 21
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x3e9

    cmp-long p3, v1, v4

    if-ltz p3, :cond_7

    sub-long/2addr v1, v4

    .line 22
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getBgFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;

    move-result-object p3

    .line 23
    :goto_0
    invoke-interface {p3}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p3

    .line 24
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-interface {p3, v1}, Li5/p0;->D0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    invoke-interface {p3}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 26
    :goto_1
    invoke-interface {p3}, Li5/p0;->close()V

    .line 27
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object p3

    .line 28
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    move-object v0, p0

    move-object v2, p3

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    new-instance p4, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_sheet:Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-direct {p4, p1, p2, p3, p0}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 30
    invoke-virtual {p4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v0

    .line 31
    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_6

    .line 32
    :try_start_2
    invoke-interface {p3}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1

    :cond_7
    return-object v0
.end method

.method public selectProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 p2, 0x0

    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object v0, p0, p2

    :cond_1
    return-object v0
.end method

.method public setParent(Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape;->_parent:Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;

    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholderDetails()Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method
