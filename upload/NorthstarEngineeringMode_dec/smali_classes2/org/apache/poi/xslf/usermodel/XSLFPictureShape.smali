.class public Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;",
        "Lorg/apache/poi/sl/usermodel/PictureShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final BITMAP_URI:Ljava/lang/String; = "{28A0092B-C50C-407E-A947-70E740481C1C}"

.field private static final BLIP_FILL:[Ljavax/xml/namespace/QName;

.field private static final EMBED_TAG:Ljavax/xml/namespace/QName;

.field private static final LOG:La5/d;

.field private static final MS_DML_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/drawing/2010/main"

.field private static final MS_SVG_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/drawing/2016/SVG/main"

.field private static final SVG_URI:Ljava/lang/String; = "{96DAC541-7B7A-43D3-8B79-37D633B846F1}"


# instance fields
.field private _data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->LOG:La5/d;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "rel"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships"

    const-string v3, "embed"

    invoke-direct {v0, v2, v3, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->EMBED_TAG:Ljavax/xml/namespace/QName;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v3, "blipFill"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->BLIP_FILL:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static synthetic a(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    return-object p0
.end method

.method public static addSvgImage(Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFPictureData;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;Ljava/awt/geom/Rectangle2D;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
    .locals 11

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/poi/xslf/draw/SVGImageRenderer;

    invoke-direct {v0}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v1

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v7

    double-to-int v2, v7

    int-to-double v7, v2

    invoke-static {v7, v8}, Lorg/apache/poi/util/Units;->pixelToPoints(D)D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v9

    double-to-int v2, v9

    int-to-double v9, v2

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->pixelToPoints(D)D

    move-result-wide v9

    move-object v2, p3

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    :goto_1
    sget-object v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    if-eq p2, v2, :cond_3

    sget-object v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    if-eq p2, v2, :cond_3

    sget-object v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    if-eq p2, v2, :cond_3

    move-object p2, v2

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/draw/SVGImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    sget v1, Lorg/apache/commons/io/output/j;->c:I

    new-instance v1, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v1}, Lorg/apache/commons/io/output/j$a;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Lj4/d;->j(I)V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v1

    :try_start_1
    iget-object v2, p2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->extension:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->setSvgImage(Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :catchall_3
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot process svgPic with null type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCTApplicationNonVisualDrawing()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTPictureNonVisual()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCTPictureNonVisual()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    instance-of v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;Ljava/lang/String;)I
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->sizeOfExtArray()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static prototype(ILjava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 5

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Picture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    int-to-long v3, p0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    return-object v0
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 9

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "unable to copy invalid picture shape"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTPictureNonVisual()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetCustDataLst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->unsetCustDataLst()V

    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->isSetExtLst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    const-string v5, "declare namespace a14=\'http://schemas.microsoft.com/office/drawing/2010/main\' $this//a14:imgProps/a14:imgLayer"

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    aget-object v4, v4, v2

    invoke-interface {v4}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v4

    :try_start_0
    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->EMBED_TAG:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v5}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Li5/p0;->J(Ljava/lang/String;Ljavax/xml/namespace/QName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Li5/p0;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_3

    :try_start_2
    invoke-interface {v4}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getAlternativePictureData()Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getSvgImage()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getAudioFileLink()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTApplicationNonVisualDrawing()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetAudioFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->getAudioFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioFile;->getLink()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    return-object p0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    new-instance v1, Landroidx/constraintlayout/core/state/b;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [[Ljavax/xml/namespace/QName;

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->BLIP_FILL:[Ljavax/xml/namespace/QName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlipId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getBlipLink()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getLink()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getClipping()Ljava/awt/Insets;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getSrcRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Insets;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetT()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetL()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result v3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Insets;-><init>(IIII)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTPictureNonVisual()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getPictureData()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->_data:Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    return-object p0
.end method

.method public getPictureLink()Ljava/net/URI;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getSvgImage()Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->sizeOfExtArray()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->getExtArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->newCursor()Li5/p0;

    move-result-object v4

    :try_start_0
    const-string v5, "http://schemas.microsoft.com/office/drawing/2016/SVG/main"

    const-string v6, "svgBlip"

    invoke-interface {v4, v5, v6}, Li5/p0;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->EMBED_TAG:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v0}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v4}, Li5/p0;->close()V

    return-object v1

    :cond_3
    invoke-interface {v4}, Li5/p0;->close()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v4}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0

    :cond_5
    return-object v1
.end method

.method public getVideoFileLink()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->isVideoFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTPictureNonVisual()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->getVideoFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->getVideoFile()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTVideoFile;->getLink()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAudioFile()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTApplicationNonVisualDrawing()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetAudioFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExternalLinkedPicture()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlipLink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoFile()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getCTPictureNonVisual()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetVideoFile()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    instance-of v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method

.method public setSvgImage(Lorg/apache/poi/xslf/usermodel/XSLFPictureData;)V
    .locals 9

    const-string v0, "asvg"

    const-string v1, "http://schemas.microsoft.com/office/drawing/2016/SVG/main"

    const-string v2, "a14"

    const-string v3, "http://schemas.microsoft.com/office/drawing/2010/main"

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->isSetExtLst()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    move-result-object v4

    :goto_0
    const-string v5, "{28A0092B-C50C-407E-A947-70E740481C1C}"

    invoke-direct {p0, v4, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->setUri(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->newCursor()Li5/p0;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Li5/p0;->P0()Li5/p0$a;

    new-instance v6, Ljavax/xml/namespace/QName;

    const-string v8, "useLocalDpi"

    invoke-direct {v6, v3, v8, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Li5/p0;->I(Ljavax/xml/namespace/QName;)V

    invoke-interface {v5, v2, v3}, Li5/p0;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "val"

    const-string v3, "0"

    invoke-interface {v5, v2, v3}, Li5/p0;->F(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Li5/p0;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v5}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    const-string v2, "{96DAC541-7B7A-43D3-8B79-37D633B846F1}"

    invoke-direct {p0, v4, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->getExt(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_3

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->removeExt(I)V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    const/4 v3, 0x0

    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_SVG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p0, v3, v5, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;

    move-result-object p0

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->setUri(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtension;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_3
    invoke-interface {p0}, Li5/p0;->P0()Li5/p0$a;

    new-instance p1, Ljavax/xml/namespace/QName;

    const-string v2, "svgBlip"

    invoke-direct {p1, v1, v2, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Li5/p0;->I(Ljavax/xml/namespace/QName;)V

    invoke-interface {p0, v0, v1}, Li5/p0;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;->EMBED_TAG:Ljavax/xml/namespace/QName;

    invoke-interface {p0, v3, p1}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_3
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_5

    :try_start_5
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v0
.end method
