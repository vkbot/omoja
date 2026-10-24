.class public Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CreationHelper;


# instance fields
.field private final referencedWorkbooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            ">;"
        }
    .end annotation
.end field

.field private final workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->referencedWorkbooks:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->lambda$createFormulaEvaluator$0(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void
.end method

.method private static synthetic lambda$createFormulaEvaluator$0(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    return-void
.end method


# virtual methods
.method public addExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->referencedWorkbooks:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createAreaReference(Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createAreaReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public bridge synthetic createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public createClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object p0

    return-object p0
.end method

.method public createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createExtendedColor()Lorg/apache/poi/ss/usermodel/ExtendedColor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createExtendedColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public createExtendedColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public createFormulaEvaluator()Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    .line 4
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->referencedWorkbooks:Ljava/util/Map;

    .line 5
    new-instance v2, Lorg/apache/poi/poifs/crypt/dsig/facets/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 6
    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setupReferencedWorkbooks(Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V

    return-object p0
.end method

.method public bridge synthetic createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    return-object v0
.end method

.method public getReferencedWorkbooks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/Workbook;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->referencedWorkbooks:Ljava/util/Map;

    return-object p0
.end method
