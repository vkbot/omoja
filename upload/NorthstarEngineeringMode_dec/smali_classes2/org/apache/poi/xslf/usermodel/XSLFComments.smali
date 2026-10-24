.class public Lorg/apache/poi/xslf/usermodel/XSLFComments;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final doc:Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->doc:Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->doc:Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;
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
.method public getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->doc:Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object p0

    return-object p0
.end method

.method public getCommentAt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->doc:Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfComments()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->doc:Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->sizeOfCmArray()I

    move-result p0

    return p0
.end method
