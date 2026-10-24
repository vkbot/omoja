.class public abstract Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field protected document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private idManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

.field protected listFootnote:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->listFootnote:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIdManager()Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->idManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    return-object p0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object p0
.end method

.method public setIdManager(Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->idManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    return-void
.end method

.method public setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-void
.end method
