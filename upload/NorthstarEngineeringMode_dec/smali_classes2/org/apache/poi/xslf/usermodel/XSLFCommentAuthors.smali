.class public Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final _authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->addNewCmAuthorLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmAuthorLstDocument;->getCmAuthorLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
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
.method public getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;->getCmAuthorArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCTCommentAuthorsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-object p0
.end method
