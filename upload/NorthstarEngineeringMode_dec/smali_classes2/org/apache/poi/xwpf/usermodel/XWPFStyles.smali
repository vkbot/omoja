.class public Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

.field private defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

.field private defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

.field private latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

.field private final listStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    return-void
.end method

.method private getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getBasisStyleID()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getLinkStyleID()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    .line 14
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getNextStyleID()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-object p2
.end method


# virtual methods
.method public addStyle(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->addNewStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->sizeOfStyleArray()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->setStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V

    return-void
.end method

.method public commit()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    if-eqz v0, :cond_2

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "styles"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->save(Ljava/io/OutputStream;Li5/z1;)V
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

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to write out styles that were never read in!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureDocDefaults()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->isSetDocDefaults()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->addNewDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetPPrDefault()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->addNewPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetRPrDefault()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->addNewRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->isSetPPr()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->isSetRPr()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    :cond_4
    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    return-void
.end method

.method public getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfLangArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getLangArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultParagraphStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    return-object p0
.end method

.method public getDefaultRunStyle()Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    return-object p0
.end method

.method public getLatentStyles()Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

    return-object p0
.end method

.method public getNumberOfStyles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getStyleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getStyleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStyleWithName(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStyleWithSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->hasSameName(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFStyle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->getStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getLatentStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->latentStyles:Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v1, "Unable to read styles"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDefaultFonts(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ensureDocDefaults()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfRFontsArray()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->setRFontsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V

    return-void
.end method

.method public setEastAsia(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setEastAsia(Ljava/lang/String;)V

    return-void
.end method

.method public setSpellingLanguage(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getCTLanguage()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setVal(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setBidi(Ljava/lang/String;)V

    return-void
.end method

.method public setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V
    .locals 5

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->listStyle:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-direct {v4, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->isSetDocDefaults()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->ctStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetRPrDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getRPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrDefault;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultRunStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultRunStyle;

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->isSetPPrDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;->getPPrDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrDefault;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrGeneral;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->defaultParaStyle:Lorg/apache/poi/xwpf/usermodel/XWPFDefaultParagraphStyle;

    :cond_2
    return-void
.end method

.method public styleExist(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
