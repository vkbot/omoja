.class public Lorg/apache/poi/xssf/model/MapInfo;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

.field private maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

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
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/MapInfo;->readFrom(Ljava/io/InputStream;)V
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
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/MapInfo;->writeTo(Ljava/io/OutputStream;)V
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

.method public getAllXSSFMaps()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCTMapInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    return-object p0
.end method

.method public getCTSchemaById(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->getSchemaArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method public getXSSFMapById(I)Lorg/apache/poi/xssf/usermodel/XSSFMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    return-object p0
.end method

.method public getXSSFMapByName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFMap;
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFMap;->getCtMap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 6

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->getMapInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    iget-object p1, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;->getMapArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xssf/model/MapInfo;->maps:Ljava/util/Map;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;->getID()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFMap;

    invoke-direct {v5, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFMap;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMap;Lorg/apache/poi/xssf/model/MapInfo;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/MapInfo;->mapInfo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->setMapInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMapInfo;)V

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v0, p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/MapInfoDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
