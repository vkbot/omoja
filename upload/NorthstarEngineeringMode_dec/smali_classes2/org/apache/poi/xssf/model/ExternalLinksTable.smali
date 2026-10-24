.class public Lorg/apache/poi/xssf/model/ExternalLinksTable;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;
    }
.end annotation


# instance fields
.field private link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->addNewExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 9
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

.method private getCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;->getCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;->getR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;->addNewCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;->setR(Ljava/lang/String;)V

    return-object p0
.end method

.method private getRow(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;
    .locals 5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;->getRowArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;->getR()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;->addNewRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;->setR(J)V

    return-object p0
.end method

.method private getSheetData(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getSheetDataSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->addNewSheetDataSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;->getSheetDataArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;->getSheetId()J

    move-result-wide v4

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetDataSet;->addNewSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;

    move-result-object v3

    int-to-long p0, p1

    invoke-interface {v3, p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;->setSheetId(J)V

    :cond_3
    return-object v3
.end method

.method private getSheetNameIndex(Ljava/lang/String;)I
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->addNewSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;

    move-result-object v0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->sizeOfSheetNameArray()I

    move-result v1

    const/4 v2, -0x1

    if-ge p0, v1, :cond_2

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->getSheetNameArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;->getVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_1
    if-ne p0, v2, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->addNewSheetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;->setVal(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->sizeOfSheetNameArray()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :cond_3
    return p0
.end method


# virtual methods
.method public cacheData(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getSheetNameIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getSheetData(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getRow(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetData;J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalRow;Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;

    move-result-object p0

    invoke-interface {p0, p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalCell;->setV(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getCTExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    return-object p0
.end method

.method public getDefinedNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedNames;->getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;

    invoke-direct {v5, p0, v4}, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;-><init>(Lorg/apache/poi/xssf/model/ExternalLinksTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getLinkedFileName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSheetNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getSheetNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetNames;->getSheetNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalSheetName;->getVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->getExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLinkedFileName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/externalLinkPath"

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable;->link:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->setExternalLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;)V

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v0, p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
