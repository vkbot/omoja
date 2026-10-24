.class public Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;
.super Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;
.source "SourceFile"


# instance fields
.field protected ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public addEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->addNewEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 5
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addEndnote(Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->addNewEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "endnotes"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->save(Ljava/io/OutputStream;Li5/z1;)V
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

.method public createEndnote()Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn;->NORMAL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFtnEdn$Enum;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->addEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->getIdManager()Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;->nextId()Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->setId(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getEndnotesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    move-result-object p0

    return-object p0
.end method

.method public getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;->getEndnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->getEndnoteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>()V

    throw p0
.end method

.method public removeEndnote(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->sizeOfEndnoteArray()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->removeEndnote(I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeFootnote(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->sizeOfEndnoteArray()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;->removeEndnote(I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEndnotes(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->ctEndnotes:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    return-void
.end method
