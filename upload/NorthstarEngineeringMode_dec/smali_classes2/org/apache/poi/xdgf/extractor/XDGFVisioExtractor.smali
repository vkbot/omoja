.class public Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;


# instance fields
.field private doCloseFilesystem:Z

.field protected final document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->getDocument()Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->getDocument()Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->getFilesystem()Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->doCloseFilesystem:Z

    return-void
.end method
