.class public Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
.super Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string p2, "./*"

    .line 5
    invoke-interface {p1, p2}, Li5/p0;->selectPath(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    .line 8
    instance-of v0, p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v1, p2

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 11
    :cond_1
    :goto_1
    instance-of v0, p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    .line 15
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 16
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p2
.end method


# virtual methods
.method public commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hdr"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-super {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->_getHdrFtr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->save(Ljava/io/OutputStream;Li5/z1;)V
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

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyType;->HEADER:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 6

    invoke-super {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->onDocumentRead()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/HdrDocument;->getHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->headerFooter:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtr;->newCursor()Li5/p0;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "./*"

    invoke-interface {v1, v2}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Li5/p0;->a1()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v4, v2

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->paragraphs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v4, v2

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->tables:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->bodyElements:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Li5/z0; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw v1
    :try_end_a
    .catch Li5/z0; {:try_start_a .. :try_end_a} :catch_0

    :goto_7
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
