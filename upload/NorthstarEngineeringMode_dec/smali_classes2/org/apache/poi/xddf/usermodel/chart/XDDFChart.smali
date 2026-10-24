.class public abstract Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/TextContainer;


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x7a120

.field public static final DEFAULT_WIDTH:I = 0x7a120

.field public static final DEFAULT_X:I = 0xa

.field public static final DEFAULT_Y:I = 0xa


# instance fields
.field protected axes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;"
        }
    .end annotation
.end field

.field private chartIndex:I

.field protected final chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

.field private seriesCount:J

.field private workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartIndex:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->seriesCount:J

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->addNewChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartIndex:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->seriesCount:J

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/ChartSpaceDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/ChartSpaceDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/ChartSpaceDocument;->getChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 11
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

.method private addAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->crossAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->crossAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V

    sget-object v1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setCrosses(Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setCrosses(Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createWorksheetPart(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    iget v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartIndex:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->createRelationshipInChart(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setExternalId(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getTargetPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0
.end method

.method private getCategoryAxes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfCatAxArray()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getCatAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    invoke-direct {v5, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getCell(Lorg/apache/poi/xssf/usermodel/XSSFRow;I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getRow(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValueAxes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;->getVal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;

    invoke-direct {v5, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getWorksheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getTargetPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasAxes()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfValAxArray()I

    move-result v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfCatAxArray()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDateAxArray()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSerAxArray()I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseAxes()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getCatAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    invoke-direct {v6, v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCatAx;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getDateAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/chart/XDDFDateAxis;

    invoke-direct {v6, v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDateAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDateAx;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSerAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerAx;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/chart/XDDFSeriesAxis;

    invoke-direct {v6, v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFSeriesAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerAx;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getValAxArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;

    invoke-direct {v5, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private setWorksheetPartCommitted()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->setCommitted(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->seriesCount:J

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeSheetAt(I)V

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    return-void
.end method

.method public clearChartSeries()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfAreaChartArray()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeAreaChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfArea3DChartArray()I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeArea3DChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBarChartArray()I

    move-result v0

    :goto_2
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeBarChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBar3DChartArray()I

    move-result v0

    :goto_3
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeBar3DChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBubbleChartArray()I

    move-result v0

    :goto_4
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeBubbleChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDoughnutChartArray()I

    move-result v0

    :goto_5
    if-lez v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeDoughnutChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfLineChartArray()I

    move-result v0

    :goto_6
    if-lez v0, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeLineChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfLine3DChartArray()I

    move-result v0

    :goto_7
    if-lez v0, :cond_7

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeLine3DChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfOfPieChartArray()I

    move-result v0

    :goto_8
    if-lez v0, :cond_8

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeOfPieChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfPieChartArray()I

    move-result v0

    :goto_9
    if-lez v0, :cond_9

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removePieChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfPie3DChartArray()I

    move-result v0

    :goto_a
    if-lez v0, :cond_a

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removePie3DChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_a
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfRadarChartArray()I

    move-result v0

    :goto_b
    if-lez v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeRadarChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_b
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfScatterChartArray()I

    move-result v0

    :goto_c
    if-lez v0, :cond_c

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeScatterChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_c
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfStockChartArray()I

    move-result v0

    :goto_d
    if-lez v0, :cond_d

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeStockChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_d
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSurfaceChartArray()I

    move-result v0

    :goto_e
    if-lez v0, :cond_e

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeSurfaceChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_e
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSurface3DChartArray()I

    move-result v0

    :goto_f
    if-lez v0, :cond_f

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->removeSurface3DChart(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_f
    return-void
.end method

.method public commit()V
    .locals 5

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chartSpace"

    const-string v4, "c"

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->saveWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method

.method public createCategoryAxis(Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->addAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V

    return-object v0
.end method

.method public createData(Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;)Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;
    .locals 4

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;->PIE:Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;->PIE3D:Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;

    if-eq v0, p1, :cond_0

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;->DOUGHNUT:Lorg/apache/poi/xddf/usermodel/chart/ChartTypes;

    if-eq v0, p1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p2, v1

    move-object p3, p2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart$1;->$SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurface3DChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewSurface3DChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurface3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurfaceChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewSurfaceChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurfaceChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewScatterChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFRadarChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewRadarChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFRadarChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFPie3DChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewPie3DChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFPie3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewPieChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFLine3DChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLine3DChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLine3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_7
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFLineChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLineChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLineChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_8
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewDoughnutChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;)V

    return-object p1

    :pswitch_9
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewBar3DChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_a
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewBarChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_b
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFArea3DChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewArea3DChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFArea3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_c
    new-instance p1, Lorg/apache/poi/xddf/usermodel/chart/XDDFAreaChartData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewAreaChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFAreaChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
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

.method public createDateAxis(Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)Lorg/apache/poi/xddf/usermodel/chart/XDDFDateAxis;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFDateAxis;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDateAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->addAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V

    return-object v0
.end method

.method public createRelationshipInChart(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    return-object p0
.end method

.method public createSeriesAxis(Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)Lorg/apache/poi/xddf/usermodel/chart/XDDFSeriesAxis;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFSeriesAxis;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFSeriesAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->addAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V

    return-object v0
.end method

.method public createValueAxis(Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFValueAxis;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;Lorg/apache/poi/xddf/usermodel/chart/AxisPosition;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->addAxis(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;)V

    return-object v0
.end method

.method public deleteLegend()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetLegend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->unsetLegend()V

    :cond_0
    return-void
.end method

.method public deleteShapeProperties()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->unsetSpPr()V

    :cond_0
    return-void
.end method

.method public displayBlanksAs(Lorg/apache/poi/xddf/usermodel/chart/DisplayBlanks;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetDispBlanksAs()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->unsetDispBlanksAs()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetDispBlanksAs()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getDispBlanksAs()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/DisplayBlanks;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewDispBlanksAs()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;

    move-result-object p0

    iget-object p1, p1, Lorg/apache/poi/xddf/usermodel/chart/DisplayBlanks;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STDispBlanksAs$Enum;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fillSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource<",
            "*>;",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getRow(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getColIndex()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCell(Lorg/apache/poi/xssf/usermodel/XSSFRow;I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p3, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getPointAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getColIndex()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCell(Lorg/apache/poi/xssf/usermodel/XSSFRow;I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "TR;>;)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public formatRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getAxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->hasAxes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->parseAxes()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->axes:Ljava/util/List;

    return-object p0
.end method

.method public getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->getChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    return-object p0
.end method

.method public getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    return-object p0
.end method

.method public getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    return-object p0
.end method

.method public abstract getChartFactory()Lorg/apache/poi/ooxml/POIXMLFactory;
.end method

.method public getChartIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartIndex:I

    return p0
.end method

.method public abstract getChartRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
.end method

.method public getChartSeries()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCategoryAxes()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getValueAxes()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfAreaChartArray()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getAreaChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFAreaChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFAreaChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAreaChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfArea3DChartArray()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getArea3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFArea3DChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFArea3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTArea3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBarChartArray()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getBarChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBarChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBarChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfBar3DChartArray()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getBar3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFBar3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBar3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfDoughnutChartArray()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getDoughnutChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;

    invoke-direct {v7, p0, v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDoughnutChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDoughnutChart;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfLineChartArray()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getLineChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFLineChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLineChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move v5, v4

    :goto_6
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfLine3DChartArray()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getLine3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFLine3DChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFLine3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLine3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    move v5, v4

    :goto_7
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfPieChartArray()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getPieChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;

    invoke-direct {v7, p0, v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFPieChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPieChart;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    move v5, v4

    :goto_8
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfPie3DChartArray()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getPie3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFPie3DChartData;

    invoke-direct {v7, p0, v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFPie3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPie3DChart;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    move v5, v4

    :goto_9
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfRadarChartArray()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getRadarChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFRadarChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFRadarChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRadarChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_9
    move v5, v4

    :goto_a
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfScatterChartArray()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getScatterChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFScatterChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScatterChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_a
    move v5, v4

    :goto_b
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSurfaceChartArray()I

    move-result v6

    if-ge v5, v6, :cond_b

    invoke-interface {v1, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSurfaceChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurfaceChartData;

    invoke-direct {v7, p0, v6, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurfaceChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurfaceChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_b
    :goto_c
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->sizeOfSurface3DChartArray()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSurface3DChartArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurface3DChartData;

    invoke-direct {v6, p0, v5, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFSurface3DChartData;-><init>(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface3DChart;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->seriesCount:J

    return-object v0
.end method

.method public abstract getChartWorkbookRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
.end method

.method public getFormattedTitle()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    invoke-virtual {v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->getBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    move-result-object p0

    return-object p0
.end method

.method public getOrAddLegend()Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartLegend;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;)V

    return-object v0
.end method

.method public getOrAddManualLayout()Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFManualLayout;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;)V

    return-object v0
.end method

.method public getOrAddShapeProperties()Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->isSetSpPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p0

    :goto_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFShapeProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    return-object v0
.end method

.method public getOrAddView3D()Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetView3D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getView3D()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewView3D()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;

    move-result-object p0

    :goto_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFView3D;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;)V

    return-object v0
.end method

.method public getTitle()Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitleOverlay()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-nez v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getWorksheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Lorg/apache/poi/openxml4j/exceptions/NotOfficeXmlFileException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method public importContent(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public incrementSeriesCount()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->seriesCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->seriesCount:J

    return-wide v0
.end method

.method public isPlotOnlyVisibleCells()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetPlotVisOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->getVal()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public plot(Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->getSeriesCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->getSeries(I)Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->plot()V

    invoke-virtual {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getCategoryData()Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->getValuesData()Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object v2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isCellRange()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isLiteral()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isCellRange()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;->isLiteral()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->fillSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeTitle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setAutoTitleDeleted(Z)V

    return-void
.end method

.method public replaceReferences(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getChartSeries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;

    iget-object v0, v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData;->series:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;

    iget-object v2, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    iget-object v3, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    const/16 v4, 0x21

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isReference()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-interface {v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    iget-object v6, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-interface {v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isNumeric()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromNumericCellRange(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {p1, v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromStringCellRange(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xddf/usermodel/chart/XDDFCategoryDataSource;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isNumeric()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    iget-object v6, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->categoryData:Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;

    invoke-interface {v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getFormatCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;->setFormatCode(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->isReference()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    invoke-interface {v5}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getDataRangeReference()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSourcesFactory;->fromNumericCellRange(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->valuesData:Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;

    invoke-interface {v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;->getFormatCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;->setFormatCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->replaceData(Lorg/apache/poi/xddf/usermodel/chart/XDDFDataSource;Lorg/apache/poi/xddf/usermodel/chart/XDDFNumericalDataSource;)V

    invoke-virtual {v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartData$Series;->plot()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public saveWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getWorksheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getChartWorkbookRelation()Lorg/apache/poi/ooxml/POIXMLRelation;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getChartFactory()Lorg/apache/poi/ooxml/POIXMLFactory;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->createWorksheetPart(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "unable to determine chart relations"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setWorksheetPartCommitted()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocument;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public setAutoTitleDeleted(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetAutoTitleDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->setAutoTitleDeleted(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getAutoTitleDeleted()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->unsetTitle()V

    :cond_1
    return-void
.end method

.method public setBackWall(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetBackWall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->setBackWall(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getBackWall()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;->getThickness()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTThickness;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTThickness;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setChartIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartIndex:I

    return-void
.end method

.method public setExternalId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChartSpace()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->isSetExternalData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->getExternalData()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExternalData;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->addNewExternalData()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExternalData;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExternalData;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setFloor(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetFloor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->setFloor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getFloor()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;->getThickness()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTThickness;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTThickness;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setPlotOnlyVisibleCells(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetPlotVisOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->setPlotVisOnly(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    return-void
.end method

.method public setSheetTitle(Ljava/lang/String;I)Lorg/apache/poi/ss/util/CellReference;
    .locals 7

    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getRow(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCell(Lorg/apache/poi/xssf/usermodel/XSSFRow;I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    return-object p0
.end method

.method public setSideWall(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetSideWall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->setSideWall(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getSideWall()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;->getThickness()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTThickness;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTThickness;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitleOverlay(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->setOverlay(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    :cond_0
    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setValueRange(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getAxes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setMinimum(D)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setMaximum(D)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setMajorUnit(D)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChartAxis;->setMinorUnit(D)V

    :cond_4
    return-void
.end method

.method public setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method
