.class public Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
.super Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;)V

    return-void
.end method


# virtual methods
.method public ensureFootnoteRef(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runsIsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getEndnoteReferenceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    const-string v0, "FootnoteReference"

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewEndnoteRef()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    :goto_1
    return-void
.end method
