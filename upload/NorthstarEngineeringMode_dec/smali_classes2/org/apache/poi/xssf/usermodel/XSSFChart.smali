.class public final Lorg/apache/poi/xssf/usermodel/XSSFChart;
.super Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;
.source "SourceFile"


# instance fields
.field private frame:Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;-><init>()V

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFChart;->createChart()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method private createChart()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->addNewPrintSettings()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;->addNewHeaderFooter()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTHeaderFooter;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;->addNewPageMargins()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;

    move-result-object v0

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setB(D)V

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setL(D)V

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setR(D)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setT(D)V

    const-wide v1, 0x3fd3333333333333L    # 0.3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setHeader(D)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageMargins;->setFooter(D)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;->addNewPageSetup()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPageSetup;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->chartSpace:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->save(Ljava/io/OutputStream;Li5/z1;)V
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

.method public getChartFactory()Lorg/apache/poi/ooxml/POIXMLFactory;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChartRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChartWorkbookRelation()Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGraphicFrame()Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->frame:Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    return-object p0
.end method

.method public getTitleFormula()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetStrRef()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->getF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleText()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->isSetTitle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//a:t"

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-interface {v4}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v8, v7, Lorg/w3c/dom/Text;

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public setGraphicFrame(Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChart;->frame:Lorg/apache/poi/xssf/usermodel/XSSFGraphicFrame;

    return-void
.end method

.method public setTitleFormula(Ljava/lang/String;)V
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

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->getCTChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetRich()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->unsetRich()V

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetStrRef()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    move-result-object p0

    :goto_2
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->setF(Ljava/lang/String;)V

    return-void
.end method
