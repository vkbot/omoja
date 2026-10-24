.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

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
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->readFrom(Ljava/io/InputStream;)V
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

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    return-void
.end method


# virtual methods
.method public getCTPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 4

    :try_start_0
    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    sget-object v1, Li5/z1$a;->p1:Li5/z1$a;

    iget-object v2, v0, Li5/z1;->c:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;->ctPivotCache:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
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
