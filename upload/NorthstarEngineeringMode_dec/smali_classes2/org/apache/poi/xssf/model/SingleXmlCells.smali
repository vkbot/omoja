.class public Lorg/apache/poi/xssf/model/SingleXmlCells;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/SingleXmlCells;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 8
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


# virtual methods
.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SingleXmlCells;->writeTo(Ljava/io/OutputStream;)V
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

.method public getAllSimpleXmlCell()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;->getSingleXmlCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFSingleXmlCell;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCell;Lorg/apache/poi/xssf/model/SingleXmlCells;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCTSingleXMLCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    return-object p0
.end method

.method public getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->getSingleXmlCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;
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

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SingleXmlCells;->singleXMLCells:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->setSingleXmlCells(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSingleXmlCells;)V

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v0, p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SingleXmlCellsDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
