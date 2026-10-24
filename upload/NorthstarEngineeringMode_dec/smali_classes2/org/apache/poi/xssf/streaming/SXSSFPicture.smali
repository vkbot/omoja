.class public final Lorg/apache/poi/xssf/streaming/SXSSFPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Picture;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_COLUMN_WIDTH:F = 9.140625f

.field private static final LOG:La5/d;


# instance fields
.field private final _picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

.field private final _wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFPicture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    return-void
.end method

.method private getColumnWidthInPixels(I)F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnHelper()Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    move-result-object p0

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p0, 0x4022480000000000L    # 9.140625

    :goto_1
    double-to-float p0, p0

    const p1, 0x40e00ded    # 7.0017f

    mul-float/2addr p0, p1

    return p0
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
    sget-object p1, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->LOG:La5/d;

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

.method private getRowHeightInPixels(I)F
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result p0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getDefaultRowHeightInPoints()F

    move-result p0

    :goto_1
    const/high16 p1, 0x42c00000    # 96.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public bridge synthetic getAnchor()Lorg/apache/poi/ss/usermodel/ChildAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getAnchor()Lorg/apache/poi/xssf/usermodel/XSSFAnchor;

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

.method public getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p0

    return-object p0
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getImageDimension()Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->getParent()Lorg/apache/poi/xssf/usermodel/XSSFShapeGroup;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreferredSize()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreferredSize(DD)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 12

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->LOG:La5/d;

    .line 5
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "picture is not anchored via client anchor - ignoring resize call"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPictureData()Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getPictureType()I

    move-result v1

    invoke-static {v2, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getImageDimension(Lorg/apache/poi/openxml4j/opc/PackagePart;I)Ljava/awt/Dimension;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    mul-double/2addr v2, p1

    .line 9
    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v4

    mul-double/2addr v4, p1

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    float-to-double v6, p2

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getColumnWidthInPixels(I)F

    move-result v1

    add-float/2addr p2, v1

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getColumnWidthInPixels(I)F

    move-result p2

    float-to-double v8, p2

    sub-double/2addr v6, v2

    sub-double/2addr v8, v6

    const-wide v6, 0x40c29a8000000000L    # 9525.0

    mul-double/2addr v8, v6

    double-to-int p2, v8

    .line 13
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    .line 14
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    .line 15
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v8, 0x0

    :goto_1
    cmpg-double p2, v8, v4

    if-gtz p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getRowHeightInPixels(I)F

    move-result p2

    float-to-double v10, p2

    add-double/2addr v8, v10

    goto :goto_1

    .line 17
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getRowHeightInPixels(I)F

    move-result p2

    float-to-double v10, p2

    sub-double/2addr v8, v4

    sub-double/2addr v10, v8

    mul-double/2addr v10, v6

    double-to-int p2, v10

    .line 18
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    .line 19
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    mul-double/2addr v2, v6

    double-to-long p1, v2

    .line 21
    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    mul-double/2addr v4, v6

    double-to-long p1, v4

    .line 22
    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-object v0
.end method

.method public getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getPreferredSize(DD)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getShapeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getCTPicture()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTPicture;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public isNoFill()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->isNoFill()Z

    move-result p0

    return p0
.end method

.method public resize()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->resize(D)V

    return-void
.end method

.method public resize(D)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->getPreferredSize(D)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p1

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 6
    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setCol2(I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx1(I)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDx2(I)V

    .line 9
    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setRow2(I)V

    .line 10
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy1(I)V

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->setDy2(I)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->LOG:La5/d;

    .line 12
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "picture is not anchored via client anchor - ignoring resize call"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public resize(DD)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFPicture;->resize(DD)V

    return-void
.end method

.method public setFillColor(III)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->setFillColor(III)V

    return-void
.end method

.method public setLineStyleColor(III)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->setLineStyleColor(III)V

    return-void
.end method

.method public setNoFill(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFPicture;->_picture:Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFShape;->setNoFill(Z)V

    return-void
.end method
