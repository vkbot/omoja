.class public Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
.super Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetIterator"
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance p1, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;-><init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->getSheets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public bridge synthetic getSheetComments()Lorg/apache/poi/xssf/model/Comments;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object p0

    return-object p0
.end method

.method public getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use getXSSFBSheetComments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSheetRelationships()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->access$100()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getXSSFBSheetComments()Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-direct {v1, p0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_5
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method
