.class public Lorg/apache/poi/xssf/model/CalculationChain;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

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
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CalculationChain;->readFrom(Ljava/io/InputStream;)V
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
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/CalculationChain;->writeTo(Ljava/io/OutputStream;)V
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

.method public getCTCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->getCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;
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

.method public removeItem(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->getI()I

    move-result v1

    :cond_0
    if-ne v1, p1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->getR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object p1, v0, v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, v2, 0x1

    aget-object p2, v0, p1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->isSetI()Z

    move-result p2

    if-nez p2, :cond_1

    aget-object p1, v0, p1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcCell;->setI(I)V

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {p0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->removeC(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CalculationChain;->chain:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->setCalcChain(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;)V

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v0, p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CalcChainDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
