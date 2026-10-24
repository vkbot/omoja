.class public Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
.super Lorg/apache/poi/ooxml/POIXMLDocument;
.source "SourceFile"


# instance fields
.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

.field protected _masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

.field protected _pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 11
    invoke-static {p1, p2}, Lorg/apache/poi/ooxml/util/PackageHelper;->open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    const-string v0, "http://schemas.microsoft.com/visio/2010/relationships/document"

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    sget-object v0, La3/t;->j:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/b;->b(Ljava/io/InputStream;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, La3/t;

    invoke-interface {v0}, La3/t;->d1()La3/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 5
    :cond_0
    :goto_0
    new-instance p1, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;-><init>(La3/u;)V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 6
    new-instance p1, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-direct {p1, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;-><init>(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->load(Lorg/apache/poi/ooxml/POIXMLFactory;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 8
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 9
    :goto_2
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getAllEmbeddedParts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPageList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No page-information available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->onDocumentRead()V

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->onDocumentRead()V

    :cond_4
    return-void
.end method
