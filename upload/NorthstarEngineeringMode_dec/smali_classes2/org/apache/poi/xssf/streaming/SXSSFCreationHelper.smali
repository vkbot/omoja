.class public Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CreationHelper;


# instance fields
.field private final helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

.field private final wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-void
.end method


# virtual methods
.method public createAreaReference(Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createAreaReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object p0

    return-object p0
.end method

.method public createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object p0

    return-object p0
.end method

.method public createExtendedColor()Lorg/apache/poi/ss/usermodel/ExtendedColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createExtendedColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    move-result-object p0

    return-object p0
.end method

.method public createFormulaEvaluator()Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->helper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
