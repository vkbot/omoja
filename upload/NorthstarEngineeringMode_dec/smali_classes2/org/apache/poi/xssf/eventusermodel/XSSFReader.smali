.class public Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
    }
.end annotation


# static fields
.field private static final LOGGER:La5/d;

.field private static final WORKSHEET_RELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field protected useReadOnlySharedStringsTable:Z

.field protected workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_SHEET_XML:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->WORKSHEET_RELS:Ljava/util/Set;

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    if-nez p1, :cond_3

    const-string v1, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 5
    invoke-virtual {p1, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 7
    invoke-virtual {p2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "OOXML file structure broken/invalid - no core document found!"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Strict OOXML isn\'t currently supported, please see bug #57699"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 11
    invoke-virtual {p2, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$100()La5/d;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->LOGGER:La5/d;

    return-object v0
.end method


# virtual methods
.method public getSharedStringsData()Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getSharedStringsTable()Lorg/apache/poi/xssf/model/SharedStrings;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->useReadOnlySharedStringsTable:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :goto_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v1, "Failed to parse SharedStringsTable"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSheet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No data found for Sheet with r:id "

    invoke-static {v0, p1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Sheet found with r:id "

    invoke-static {v0, p1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSheetsData()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object v0
.end method

.method public getStylesData()Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getStylesTable()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/model/StylesTable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/model/StylesTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/model/ThemesTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    :cond_1
    return-object v1
.end method

.method public getThemesData()Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getWorkbookData()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public setUseReadOnlySharedStringsTable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->useReadOnlySharedStringsTable:Z

    return-void
.end method

.method public useReadOnlySharedStringsTable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->useReadOnlySharedStringsTable:Z

    return p0
.end method
