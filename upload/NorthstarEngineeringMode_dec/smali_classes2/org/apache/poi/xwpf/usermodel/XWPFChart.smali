.class public Lorg/apache/poi/xwpf/usermodel/XWPFChart;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;
.source "SourceFile"


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x7a120

.field public static final DEFAULT_WIDTH:I = 0x7a120


# instance fields
.field private checksum:Ljava/lang/Long;

.field private ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 0

    invoke-virtual {p2, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->addChart(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    const-wide/32 p1, 0x7a120

    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartBoundingBox(JJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChartBottomMargin(J)J
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDistB()J

    move-result-wide p0

    return-wide p0
.end method

.method public getChartFactory()Lorg/apache/poi/ooxml/POIXMLFactory;
    .locals 0

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object p0

    return-object p0
.end method

.method public getChartHeight()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChartLeftMargin(J)J
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDistL()J

    move-result-wide p0

    return-wide p0
.end method

.method public getChartRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-object p0
.end method

.method public getChartRightMargin(J)J
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDistR()J

    move-result-wide p0

    return-wide p0
.end method

.method public getChartTopMargin(J)J
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDistT()J

    move-result-wide p0

    return-wide p0
.end method

.method public getChartWidth()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChartWorkbookRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WORKBOOK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-object p0
.end method

.method public getChecksum()Ljava/lang/Long;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->checksum:Ljava/lang/Long;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->calculateChecksum(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->checksum:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

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
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->checksum:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->getChecksum()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    return p0
.end method

.method public setChartBottomMargin(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistB(J)V

    return-void
.end method

.method public setChartBoundingBox(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartWidth(J)V

    invoke-virtual {p0, p3, p4}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartHeight(J)V

    return-void
.end method

.method public setChartHeight(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-void
.end method

.method public setChartLeftMargin(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistL(J)V

    return-void
.end method

.method public setChartMargin(JJJJ)V
    .locals 0

    invoke-virtual {p0, p5, p6}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartBottomMargin(J)V

    invoke-virtual {p0, p3, p4}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartRightMargin(J)V

    invoke-virtual {p0, p7, p8}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartLeftMargin(J)V

    invoke-virtual {p0, p3, p4}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartRightMargin(J)V

    return-void
.end method

.method public setChartRightMargin(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistR(J)V

    return-void
.end method

.method public setChartTopMargin(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistT(J)V

    return-void
.end method

.method public setChartWidth(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->ctInline:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    return-void
.end method
