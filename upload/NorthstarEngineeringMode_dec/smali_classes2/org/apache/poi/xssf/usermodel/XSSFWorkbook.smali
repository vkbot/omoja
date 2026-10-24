.class public Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
.super Lorg/apache/poi/ooxml/POIXMLDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;
.implements Lorg/apache/poi/ss/usermodel/Date1904Support;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final GET_ALL_PICTURES_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG:La5/d;

.field public static final PICTURE_TYPE_BMP:I = 0xb

.field public static final PICTURE_TYPE_EPS:I = 0xa

.field public static final PICTURE_TYPE_GIF:I = 0x8

.field public static final PICTURE_TYPE_TIFF:I = 0x9

.field public static final PICTURE_TYPE_WPG:I = 0xc


# instance fields
.field private _creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

.field private _missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private final _udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

.field private calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

.field private cellFormulaValidation:Z

.field private externalLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

.field private mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

.field private namedRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private namedRangesByName:Lz3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz3/b<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private pivotCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;",
            ">;"
        }
    .end annotation
.end field

.field private pivotTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation
.end field

.field private sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

.field private workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

.field private final xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "/xl/media/.*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->GET_ALL_PICTURES_PATTERN:Ljava/util/regex/Pattern;

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 17
    invoke-static {p1, p2}, Lorg/apache/poi/ooxml/util/PackageHelper;->open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 4

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 10
    new-instance p1, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    aput-object v3, v1, v2

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 11
    sget-object p1, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cellFormulaValidation:Z

    .line 12
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->beforeDocumentRead()V

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->load(Lorg/apache/poi/ooxml/POIXMLFactory;)V

    .line 15
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setBookViewsIfMissing()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFFactory;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;Lorg/apache/poi/xssf/usermodel/XSSFFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;Lorg/apache/poi/xssf/usermodel/XSSFFactory;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;Lorg/apache/poi/xssf/usermodel/XSSFFactory;)V
    .locals 4

    .line 4
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->newPackage(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 5
    new-instance p1, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    aput-object v3, v1, v2

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    .line 6
    sget-object p1, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-boolean v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cellFormulaValidation:Z

    if-nez p2, :cond_0

    .line 7
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onWorkbookCreate()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    return-object p0
.end method

.method private static addRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "Can\'t clone sheet relationship (some data will be lost in the cloned sheet) - unknown relation type found: {}"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private addSheet(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->addNewSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.method private containsSheet(Ljava/lang/String;I)Z
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eq p2, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    check-cast p0, Ld4/b;

    invoke-virtual {p0, p1, v0}, Ld4/b;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getReferencePrintArea(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 13

    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move/from16 v2, p3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move/from16 v9, p4

    move v10, p2

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ")"

    const/4 v3, 0x2

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move v4, v3

    :catch_1
    :goto_0
    add-int/lit8 v0, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    const/16 v5, 0x1f

    if-ge v6, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1d

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    return-object v4

    :cond_2
    move v4, v0

    goto :goto_0
.end method

.method public static newPackage(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lorg/apache/commons/io/output/j;->c:I

    new-instance v1, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v1}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object p0

    const-string v1, "Apache POI"

    invoke-interface {p0, v1}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onSheetDelete(I)V
    .locals 8

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onSheetDelete()V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->removeSheet(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v4

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private onWorkbookCreate()V
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewWorkbookPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->setDate1904(Z)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setBookViewsIfMissing()V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    const-string v1, "Apache POI"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->setApplication(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/model/StylesTable;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    new-instance v0, Ld4/c;

    invoke-direct {v0}, Ld4/c;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    return-void
.end method

.method private reprocessNamedRanges()V
    .locals 4

    new-instance v0, Ld4/c;

    invoke-direct {v0}, Ld4/c;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    return-object p0
.end method

.method private saveCalculationChain()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CalculationChain;->getCTCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->sizeOfCArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    :cond_0
    return-void
.end method

.method private saveNamedRanges()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->setDefinedNameArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetDefinedNames()V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->setDefinedNames(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->reprocessNamedRanges()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetDefinedNames()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setBookViewsIfMissing()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetBookViews()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    :cond_0
    return-void
.end method

.method private updateActiveSheetAfterSheetReorder(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    if-lt v0, p2, :cond_4

    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateNamedRangesAfterSheetReorder(II)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ne v1, p1, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v1, :cond_2

    if-ge v1, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_2
    if-ge p1, v1, :cond_0

    if-gt v1, p2, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "(0.."

    const-string v1, ")"

    invoke-static {v0, p0, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const-string v0, "(no sheets)"

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sheet index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of range "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateSheetName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->containsSheet(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The workbook already contains a sheet named \'"

    const-string v1, "\'"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private workbookProtectionPresent()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetWorkbookProtection()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {v0, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    sget p2, Lorg/apache/commons/io/output/j;->c:I

    new-instance p2, Lorg/apache/commons/io/output/j$a;

    invoke-direct {p2}, Lorg/apache/commons/io/output/j$a;-><init>()V

    array-length p1, p1

    add-int/lit16 p1, p1, 0x1f4

    invoke-virtual {p2, p1}, Lj4/d;->j(I)V

    invoke-virtual {p2}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object p1

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p3

    const-string p4, "\u0001Ole10Native"

    invoke-virtual {p1}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    sget-object p4, Lorg/apache/poi/hpsf/ClassIDPredefined;->OLE_V1_PACKAGE:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {p4}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2, p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_5
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->close()V

    return v1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p3

    :try_start_6
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p4

    if-eqz p0, :cond_1

    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p0

    :try_start_8
    invoke-virtual {p3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p3

    :try_start_a
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception p2

    :try_start_b
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_4
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception p2

    :try_start_d
    invoke-virtual {p1}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "ole object name not recognized"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addPicture(Ljava/io/InputStream;I)I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 11
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    aget-object p2, v2, p2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v1, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 12
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 13
    :try_start_0
    invoke-static {p1, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    .line 15
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    .line 17
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public addPicture([BI)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 2
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    aget-object p2, v2, p2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v1, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    .line 6
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_0

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 9
    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addPivotCache(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetPivotCaches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getPivotCaches()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewPivotCaches()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;->addNewPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->setCacheId(J)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public beforeDocumentRead()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/xssf/XLSBUnsupportedException;

    invoke-direct {p0}, Lorg/apache/poi/xssf/XLSBUnsupportedException;-><init>()V

    throw p0
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public cloneSheet(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 6

    const-string v0, "Failed to clone sheet"

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetName(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    .line 11
    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v4

    .line 12
    instance-of v5, v4, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v5, :cond_1

    .line 13
    move-object v2, v4

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v3, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getReferenceRelationships()Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ooxml/ReferenceRelationship;

    .line 17
    instance-of v4, v3, Lorg/apache/poi/ooxml/HyperlinkRelationship;

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v3}, Lorg/apache/poi/ooxml/ReferenceRelationship;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/ReferenceRelationship;->isExternal()Z

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/ReferenceRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createHyperlink(Ljava/net/URI;ZLjava/lang/String;)Lorg/apache/poi/ooxml/HyperlinkRelationship;

    goto :goto_2

    .line 19
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 20
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v3, v4, :cond_5

    .line 21
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 22
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_b

    .line 23
    :cond_6
    :try_start_1
    sget p0, Lorg/apache/commons/io/output/j;->c:I

    .line 24
    new-instance p0, Lorg/apache/commons/io/output/j$a;

    invoke-direct {p0}, Lorg/apache/commons/io/output/j$a;-><init>()V

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    :try_start_2
    invoke-virtual {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    invoke-virtual {p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    .line 29
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 30
    :cond_7
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 31
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p0

    .line 32
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetLegacyDrawing()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    .line 33
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Cloning sheets with comments is not yet supported."

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetLegacyDrawing()V

    .line 35
    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    .line 36
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Cloning sheets with page setup is not yet supported."

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetPageSetup()V

    :cond_9
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    if-eqz v2, :cond_e

    .line 39
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetDrawing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetDrawing()V

    .line 41
    :cond_a
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    .line 46
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    .line 47
    instance-of v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    if-eqz v3, :cond_b

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChartRelationPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    .line 50
    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->importContent(Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;)V

    .line 51
    invoke-virtual {v1, p2}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->replaceReferences(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    goto :goto_5

    .line 52
    :cond_b
    invoke-static {v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Z

    goto :goto_5

    .line 53
    :cond_c
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getReferenceRelationships()Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/ReferenceRelationship;

    .line 55
    instance-of v1, v0, Lorg/apache/poi/ooxml/HyperlinkRelationship;

    if-eqz v1, :cond_d

    .line 56
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/ReferenceRelationship;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/ReferenceRelationship;->isExternal()Z

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/ReferenceRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createHyperlink(Ljava/net/URI;ZLjava/lang/String;)Lorg/apache/poi/ooxml/HyperlinkRelationship;

    goto :goto_6

    .line 57
    :cond_e
    invoke-static {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->cloneTables(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object p2

    :catch_1
    move-exception p0

    goto :goto_a

    :catchall_1
    move-exception p1

    .line 58
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz v1, :cond_f

    .line 59
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 60
    :goto_8
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p2

    .line 61
    :try_start_a
    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p0

    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 62
    :goto_a
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 63
    :goto_b
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public close()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public commit()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->saveNamedRanges()V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->saveCalculationChain()V

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "workbook"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->save(Ljava/io/OutputStream;Li5/z1;)V
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

.method public createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->addNewDefinedName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builtin ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") already exists for sheet ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object p0

    return-object p0
.end method

.method public createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;-><init>(Lorg/apache/poi/xssf/model/StylesTable;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    return-object p0
.end method

.method public createDialogsheet(Ljava/lang/String;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;)Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object p1
.end method

.method public bridge synthetic createEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createEvaluationWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public createEvaluationWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->registerTo(Lorg/apache/poi/xssf/model/StylesTable;)J

    return-object v0
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public createName()Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 2

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    const-string v1, ""

    .line 3
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sheet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v1, v2}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 8

    if-eqz p1, :cond_5

    .line 15
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    .line 17
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    .line 18
    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    const-string v3, "Sheet \'{}\' will be added with a trimmed name \'{}\' for MS Excel compliance."

    invoke-interface {v2, p1, v3, v0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v0

    .line 19
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addSheet(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 21
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 22
    iget-object v4, v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    int-to-long v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_1

    .line 23
    :cond_1
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3, v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    .line 25
    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 26
    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_3
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    invoke-virtual {p0, v3, v4, v2, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 29
    iput-object p1, v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    .line 30
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setId(Ljava/lang/String;)V

    int-to-long v1, v2

    .line 31
    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setSheetId(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {v3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 34
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    .line 35
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sheetName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2
    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/xssf/model/StylesTable;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSheetIndex()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->getActiveTab()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getAllEmbeddedParts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->GET_ALL_PICTURES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {v3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    return-object p0
.end method

.method public getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ld4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ld4/b;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    sget-object p0, Lb4/c;->c:Lb4/c;

    goto :goto_0

    :cond_0
    new-instance v0, Ld4/b$b;

    invoke-direct {v0, p0, p1}, Ld4/b$b;-><init>(Ld4/b;Ljava/lang/Object;)V

    move-object p0, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    return-object p0
.end method

.method public getCalculationChain()Lorg/apache/poi/xssf/model/CalculationChain;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    return-object p0
.end method

.method public getCellFormulaValidation()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cellFormulaValidation:Z

    return p0
.end method

.method public getCellReferenceType()Lorg/apache/poi/ss/usermodel/CellReferenceType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->UNKNOWN:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getRefMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->R_1_C_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->R1C1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getRefMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->A_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->A1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->UNKNOWN:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    return-object p0
.end method

.method public bridge synthetic getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object p0

    return-object p0
.end method

.method public getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    return-object p0
.end method

.method public getCustomXMLMappings()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/MapInfo;->getAllXSSFMaps()Ljava/util/Collection;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExternalLinksTable()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    return-object p0
.end method

.method public getFirstVisibleTab()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->getFirstSheet()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public bridge synthetic getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->isSetFullCalcOnLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getFullCalcOnLoad()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMapInfo()Lorg/apache/poi/xssf/model/MapInfo;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    return-object p0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object p0
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    return-object p0
.end method

.method public getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified name index "

    const-string v3, " is outside the allowable range (0.."

    invoke-static {v2, p1, v3}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There are no defined names in this workbook"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ld4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld4/a$b;

    invoke-direct {v0, p0, p1}, Ld4/a$b;-><init>(Ld4/a;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNumCellStyles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result p0

    return p0
.end method

.method public getNumberOfFonts()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getFonts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNumberOfFontsAsInt()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfFonts()I

    move-result p0

    return p0
.end method

.method public getNumberOfNames()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNumberOfSheets()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPivotTables()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    return-object p0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 1

    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object p0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 2
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p0, p1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p0, p1, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This should never happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-object p0
.end method

.method public getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 3

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTheme()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getTheme()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object p0

    return-object p0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    return-object p0
.end method

.method public getWorkbookType()Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    :goto_0
    return-object p0
.end method

.method public getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    return-object p0
.end method

.method public isDate1904()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->getDate1904()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHidden()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isMacroEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRevisionLocked()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockRevision()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSheetHidden(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStructureLocked()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockStructure()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWindowsLocked()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockWindows()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->getReferencedWorkbooks()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->EXTERNAL_LINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getNextPartNumber(Lorg/apache/poi/ooxml/POIXMLRelation;I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->setLinkedFileName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getExternalLinksTable()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewExternalReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;->addNewExternalReference()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getLinkedFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->EXTERNAL_LINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->addExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)V

    return v1
.end method

.method public lockRevision()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockRevision(Z)V

    return-void
.end method

.method public lockStructure()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockStructure(Z)V

    return-void
.end method

.method public lockWindows()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockWindows(Z)V

    return-void
.end method

.method public onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/model/CalculationChain;->removeItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDocumentRead()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;->getWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v5

    instance-of v6, v5, Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-eqz v6, :cond_2

    check-cast v5, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_1

    :cond_2
    instance-of v6, v5, Lorg/apache/poi/xssf/model/StylesTable;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_1

    :cond_3
    instance-of v6, v5, Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v6, :cond_4

    check-cast v5, Lorg/apache/poi/xssf/model/ThemesTable;

    move-object v3, v5

    goto :goto_1

    :cond_4
    instance-of v6, v5, Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v6, :cond_5

    check-cast v5, Lorg/apache/poi/xssf/model/CalculationChain;

    iput-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    goto :goto_1

    :cond_5
    instance-of v6, v5, Lorg/apache/poi/xssf/model/MapInfo;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/apache/poi/xssf/model/MapInfo;

    iput-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    goto :goto_1

    :cond_6
    instance-of v6, v5, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    instance-of v6, v5, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast v5, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    move v2, v5

    :goto_2
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v4, :cond_b

    if-eqz v2, :cond_a

    new-instance v4, Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v4}, Lorg/apache/poi/xssf/model/StylesTable;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_3

    :cond_a
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    invoke-virtual {p0, v4, v6}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    :cond_b
    :goto_3
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v4, p0}, Lorg/apache/poi/xssf/model/StylesTable;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v4, v3}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-nez v3, :cond_e

    if-eqz v2, :cond_c

    new-instance v2, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v2}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_4

    :cond_d
    new-instance v3, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v3, v2}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    :cond_e
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v2

    array-length v3, v2

    move v4, v5

    :goto_5
    if-ge v4, v3, :cond_f

    aget-object v6, v2, v4

    invoke-virtual {p0, v0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->parseSheet(Ljava/util/Map;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetExternalReferences()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getExternalReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;->getExternalReferenceArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;

    move-result-object v0

    array-length v2, v0

    :goto_6
    if-ge v5, v2, :cond_11

    aget-object v3, v0, v5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-nez v4, :cond_10

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    invoke-interface {v4}, La5/d;->g()La5/b;

    move-result-object v4

    const-string v6, "ExternalLinksTable with r:id {} was defined, but didn\'t exist in package, skipping"

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v6}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_11
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->reprocessNamedRanges()V

    return-void

    :cond_12
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "Cannot read a workbook without sheets"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_8
    throw v1
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0

    :goto_9
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseSheet(Ljava/util/Map;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Sheet with name {} and r:id {} was defined, but didn\'t exist in package, skipping"

    invoke-interface {p0, p1, v0, p2}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p2, p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDocumentRead()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ld4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ld4/a;

    iget-object v0, v0, Ld4/b;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name was not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePrintArea(I)V
    .locals 1

    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    :cond_0
    return-void
.end method

.method public removeSheetAt(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onSheetDelete(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    :cond_2
    if-le v1, p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCellFormulaValidation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cellFormulaValidation:Z

    return-void
.end method

.method public setCellReferenceType(Lorg/apache/poi/ss/usermodel/CellReferenceType;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellReferenceType;->UNKNOWN:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->unsetRefMode()V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellReferenceType;->R1C1:Lorg/apache/poi/ss/usermodel/CellReferenceType;

    if-ne p1, p0, :cond_2

    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->R_1_C_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;->A_1:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;

    :goto_0
    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setRefMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p0

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setFirstSheet(J)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetCalcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setFullCalcOnLoad(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->MANUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->AUTO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V

    :cond_1
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-void
.end method

.method public setPivotTables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getReferencePrintArea(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 4

    const-string v0, "_xlnm.Print_Area"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const/16 v3, 0x2c

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/Appendable;Ljava/lang/String;)V

    const/16 v3, 0x21

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    return-void
.end method

.method public setRevisionsPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const-string v0, "revisions"

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTab(I)V
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->containsSheet(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;

    invoke-direct {v1, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    invoke-virtual {v1, p1, v0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateSheetName(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setName(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The workbook already contains a sheet of this name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sheetName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->removeSheet(I)V

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->insertNewSheet(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    aget-object v3, v0, v1

    iput-object v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateNamedRangesAfterSheetReorder(II)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateActiveSheetAfterSheetReorder(II)V

    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;->$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This should never happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    :goto_0
    return-void
.end method

.method public setVBAProject(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setWorkbookType(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->xssfFactory:Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 10
    :goto_0
    :try_start_1
    invoke-static {p1, p0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    throw p1

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setVBAProject(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setVBAProject(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method

.method public setWorkbookPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const-string v0, "workbook"

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-void
.end method

.method public setWorkbookType(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public sheetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public unLock()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetWorkbookProtection()V

    :cond_0
    return-void
.end method

.method public unLockRevision()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockRevision(Z)V

    return-void
.end method

.method public unLockStructure()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockStructure(Z)V

    return-void
.end method

.method public unLockWindows()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockWindows(Z)V

    return-void
.end method

.method public updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    check-cast v0, Ld4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ld4/a;

    iget-object v0, v0, Ld4/b;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lz3/b;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    check-cast p0, Ld4/b;

    invoke-virtual {p0, p2, p1}, Ld4/b;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Name was not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public validateRevisionsPassword(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const-string v0, "revisions"

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public validateWorkbookPassword(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object p0

    const-string v0, "workbook"

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
