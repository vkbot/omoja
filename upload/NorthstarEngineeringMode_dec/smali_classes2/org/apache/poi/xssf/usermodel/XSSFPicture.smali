.class public final Lorg/apache/poi/xssf/usermodel/XSSFPicture;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field private static final LOG:La5/d;

.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;


# instance fields
.field private final ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFShape;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    return-void
.end method

.method public static getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    .line 5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->LOG:La5/d;

    .line 6
    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "Failed to read image"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    .line 7
    new-instance p0, Ljava/awt/Dimension;

    invoke-direct {p0}, Ljava/awt/Dimension;-><init>()V

    return-object p0
.end method

.method public static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 6

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    const-string v3, "Picture 1"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    const-string v3, "Picture"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    return-object v0
.end method


# virtual methods
.method public getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    return-object p0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPictureType()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    return-object p0
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/ImageUtils;->setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    .line 6
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide p3

    double-to-int p3, p3

    int-to-long p3, p3

    invoke-interface {p2, p3, p4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 8
    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide p3

    double-to-int p1, p3

    int-to-long p3, p1

    invoke-interface {p2, p3, p4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPictureNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public resize()V
    .locals 2

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(D)V

    return-void
.end method

.method public resize(D)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(DD)V

    return-void
.end method

.method public resize(DD)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result p3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p3, p1

    .line 7
    invoke-virtual {v0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    .line 9
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->LOG:La5/d;

    .line 11
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "picture is not anchored via client anchor - ignoring resize call"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setPictureReference(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->ctPicture:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    return-void
.end method
