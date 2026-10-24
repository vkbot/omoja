.class public abstract Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;",
        "Lorg/apache/poi/xwpf/usermodel/IBody;"
    }
.end annotation


# instance fields
.field private final bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field protected ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

.field protected document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field protected footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;

.field private final paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private final pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private final tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->pictures:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->pictures:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->pictures:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    .line 17
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 18
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->init()V

    return-void
.end method

.method private isCursorInFtn(Li5/p0;)Z
    .locals 1

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Li5/p0;->close()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
.end method


# virtual methods
.method public addNewParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addNewTbl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getParagraphs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ensureFootnoteRef(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    :cond_0
    return-object v0
.end method

.method public createTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ensureFootnoteRef(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    .line 7
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public abstract ensureFootnoteRef(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    return-object p0
.end method

.method public getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    return-object p0
.end method

.method public getId()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getId()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getOwner()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;

    return-object p0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    return-object p0
.end method

.method public getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;

    return-object p0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyType;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object p0
.end method

.method public getPictures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->pictures:Ljava/util/List;

    return-object p0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Li5/p0;->X0()Z

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v0}, Li5/p0;->close()V

    return-object v3

    :cond_0
    :try_start_1
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Li5/p0;->X0()Z

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Li5/p0;->close()V

    instance-of v0, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
.end method

.method public getTables()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    return-object p0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object p0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    const-string v1, "./*"

    invoke-interface {v0, v1}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Li5/p0;->a1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Li5/p0;->close()V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method public insertNewParagraph(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->isCursorInFtn(Li5/p0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Li5/c0;

    invoke-interface {v0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "p"

    invoke-interface {p1, v2, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    :goto_0
    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_0

    invoke-interface {p1}, Li5/p0;->q1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    invoke-interface {p1, v1}, Li5/p0;->v0(Li5/p0;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Li5/p0;->close()V

    :cond_3
    :goto_3
    invoke-interface {p1}, Li5/p0;->q1()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_4

    instance-of v1, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {p0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_1
    invoke-interface {p1, p0}, Li5/p0;->v0(Li5/p0;)Z

    invoke-interface {p1}, Li5/p0;->P0()Li5/p0$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_6
    return-object v2

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_7

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v0

    :catchall_3
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p1

    :cond_9
    return-object v1
.end method

.method public insertNewTbl(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 6

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->isCursorInFtn(Li5/p0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Li5/c0;

    invoke-interface {v0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tbl"

    invoke-interface {p1, v2, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-interface {p1}, Li5/p0;->E()Z

    :goto_0
    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v3, :cond_0

    invoke-interface {p1}, Li5/p0;->q1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Li5/p0;

    move-result-object v1

    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v1}, Li5/p0;->q1()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v5, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v5, :cond_3

    instance-of v3, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v3, :cond_2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {p0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Li5/p0;->close()V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_1
    invoke-interface {p1, p0}, Li5/p0;->v0(Li5/p0;)Z

    invoke-interface {p1}, Li5/p0;->P0()Li5/p0$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_5
    return-object v2

    :catchall_1
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p0, :cond_6

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v0

    :goto_5
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p1

    :cond_8
    return-object v1
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getTblList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->tables:Ljava/util/List;

    invoke-interface {p0, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setCTFtnEdn(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
