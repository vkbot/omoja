.class public Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.super Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
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


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->LOGGER:La5/d;

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

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->INTL_MACRO_SHEET_XML:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v5}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$300()La5/d;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->LOGGER:La5/d;

    return-object v0
.end method


# virtual methods
.method public getAbsPathMetadata()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getSheetsData()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V

    return-object v0
.end method

.method public getXSSFBStylesTable()Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method
