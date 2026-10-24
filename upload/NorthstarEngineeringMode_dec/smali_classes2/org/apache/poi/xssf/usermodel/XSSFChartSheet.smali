.class public Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;
.super Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.source "SourceFile"


# static fields
.field private static final BLANK_WORKSHEET:[B


# instance fields
.field protected chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->blankWorksheet()[B

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->BLANK_WORKSHEET:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method private static blankWorksheet()[B
    .locals 2

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getCTChartsheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    return-object p0
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object p0

    return-object p0
.end method

.method public getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 2

    sget v0, Ln4/f;->Z:I

    new-instance v0, Ln4/f$a;

    invoke-direct {v0}, Ln4/f$a;-><init>()V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->BLANK_WORKSHEET:[B

    invoke-virtual {v0, v1}, Ln4/f$a;->m([B)V

    invoke-virtual {v0}, Ln4/f$a;->k()Ln4/f;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ChartsheetDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ChartsheetDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ChartsheetDocument;->getChartsheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chartsheet"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;->chartsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->save(Ljava/io/OutputStream;Li5/z1;)V

    :cond_0
    return-void
.end method
