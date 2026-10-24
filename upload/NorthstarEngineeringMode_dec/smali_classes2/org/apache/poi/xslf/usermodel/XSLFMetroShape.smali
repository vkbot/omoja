.class public Lorg/apache/poi/xslf/usermodel/XSLFMetroShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MetroShapeProvider;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseShape([B)Lorg/apache/poi/sl/usermodel/Shape;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFMetroShape;->parseShape([B)Lorg/apache/poi/xslf/usermodel/XSLFShape;

    move-result-object p0

    return-object p0
.end method

.method public parseShape([B)Lorg/apache/poi/xslf/usermodel/XSLFShape;
    .locals 3

    .line 2
    :try_start_0
    sget p0, Ln4/f;->Z:I

    .line 3
    new-instance p0, Ln4/f$a;

    invoke-direct {p0}, Ln4/f$a;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Ln4/f$a;->m([B)V

    invoke-virtual {p0}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "/drs/shapexml.xml"

    .line 5
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 8
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    sget-object v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, p1, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    .line 10
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    .line 11
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->getShapes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_1

    .line 12
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 13
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_6
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Li5/z0; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catchall_1
    move-exception v0

    .line 14
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p1, :cond_2

    .line 15
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 16
    :goto_2
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p0, :cond_3

    .line 17
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_c
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_c .. :try_end_c} :catch_0
    .catch Li5/z0; {:try_start_c .. :try_end_c} :catch_0

    .line 18
    :goto_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "can\'t parse metro shape"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
