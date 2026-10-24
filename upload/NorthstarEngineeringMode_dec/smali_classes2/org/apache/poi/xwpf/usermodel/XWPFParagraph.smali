.class public Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/IRunBody;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/wp/usermodel/Paragraph;


# instance fields
.field protected document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private final footnoteText:Ljava/lang/StringBuilder;

.field protected iruns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation
.end field

.field private final paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

.field protected part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field protected runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p2}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Li5/p0;

    move-result-object p2

    :try_start_0
    const-string v0, "child::*"

    invoke-interface {p2, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-interface {p2}, Li5/p0;->a1()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "footnoteReference"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-nez v1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    :goto_3
    invoke-virtual {v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    const-string v2, "!!! End note with ID \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found in document."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :cond_7
    invoke-interface {p2}, Li5/p0;->close()V

    goto/16 :goto_0

    :goto_6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_8

    :try_start_2
    invoke-interface {p2}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw p1

    :cond_9
    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->lambda$isTheOnlyCTFieldInRuns$4(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->lambda$insertNewRun$0(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    return-object p0
.end method

.method private buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 8

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string v0, "child::*"

    invoke-interface {p1, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-object v2, v0

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_0
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-direct {v7, v1, v6, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-direct {v7, v1, v6, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v3, v0

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v6, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    :cond_7
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;->getInsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    move-result-object v0

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->buildRunsInOrderFromXml(Lorg/apache/xmlbeans/XmlObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :goto_5
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_9

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw v0
.end method

.method public static synthetic c(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->lambda$isTheOnlyCTHyperlinkInRuns$3(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->lambda$insertNewHyperlinkRun$1(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->lambda$insertNewFieldRun$2(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    move-result-object p0

    return-object p0
.end method

.method private getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewInd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPBdr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private insertNewProvidedRun(ILjava/util/function/Function;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">(I",
            "Ljava/util/function/Function<",
            "Li5/p0;",
            "TT;>;)TT;"
        }
    .end annotation

    if-ltz p1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isCursorInParagraph(Li5/p0;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Li5/p0;->X0()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isCursorInParagraph(Li5/p0;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v2, v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {v0, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Li5/p0;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Li5/p0;->close()V

    goto :goto_3

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private isCursorInParagraph(Li5/p0;)Z
    .locals 1

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
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

.method private isTheOnlyCTFieldInRuns(Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/n0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/n0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTheOnlyCTHyperlinkInRuns(Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getCTHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/n0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/n0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$insertNewFieldRun$2(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->type:Li5/c0;

    invoke-interface {v0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fldSimple"

    invoke-interface {p1, v1, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    return-object v0
.end method

.method private synthetic lambda$insertNewHyperlinkRun$1(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->type:Li5/c0;

    invoke-interface {v0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hyperlink"

    invoke-interface {p1, v1, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    return-object v0
.end method

.method private synthetic lambda$insertNewRun$0(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->type:Li5/c0;

    invoke-interface {v0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-interface {p1, v1, v0}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    return-object v0
.end method

.method private static synthetic lambda$isTheOnlyCTFieldInRuns$4(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isTheOnlyCTHyperlinkInRuns$3(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getCTHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addFootnoteReference(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    const-string v1, "FootnoteReference"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewEndnoteReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->setId(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFootnoteReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;->getId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->setId(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method public addRun(Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->sizeOfRArray()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 3
    invoke-interface {p0, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V

    return-void
.end method

.method public createFieldRun()Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewFldSimple()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public createHyperlinkRun(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getRArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetJc()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->LEFT:Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    :goto_1
    return-object p0
.end method

.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-object p0
.end method

.method public getBorderBetween()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object p0

    return-object p0
.end method

.method public getBorderBottom()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object p0

    return-object p0
.end method

.method public getBorderLeft()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object p0

    return-object p0
.end method

.method public getBorderRight()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object p0

    return-object p0
.end method

.method public getBorderTop()Lorg/apache/poi/xwpf/usermodel/Borders;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    :goto_1
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/Borders;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/Borders;

    move-result-object p0

    return-object p0
.end method

.method public getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    return-object p0
.end method

.method public getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object p0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object p0
.end method

.method public getFirstLineIndent()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationFirstLine()I

    move-result p0

    return p0
.end method

.method public getFontAlignment()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getAlignment()Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result p0

    return p0
.end method

.method public getFootnoteText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIndentFromLeft()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationLeft()I

    move-result p0

    return p0
.end method

.method public getIndentFromRight()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIndentationRight()I

    move-result p0

    return p0
.end method

.method public getIndentationFirstLine()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetFirstLine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetFirstLine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIndentationHanging()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetHanging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetHanging()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIndentationLeft()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIndentationLeftChars()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetLeftChars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getLeftChars()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIndentationRight()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->xgetRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIndentationRightChars()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->isSetRightChars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->getRightChars()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getNumFmt()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public getNumID()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumIlvl()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumLevelText()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->sizeOfLvlArray()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;->getLvlText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLevelText;->getVal()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public getNumStartOverride()Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumID()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getNumIlvl()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->sizeOfLvlOverrideArray()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getLvlOverrideArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getIlvl()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;->getStartOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public getParagraphText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;

    move-result-object p0

    return-object p0
.end method

.method public getPictureText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getPictureText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRun(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSpacingAfter()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetAfter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSpacingAfterLines()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetAfterLines()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getAfterLines()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSpacingBefore()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetBefore()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSpacingBeforeLines()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetBeforeLines()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getBeforeLines()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSpacingBetween()D
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLine()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p0

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x14

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, 0xf0

    :goto_1
    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    :cond_3
    :goto_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getSpacingLineRule()Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLineRule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    :goto_0
    return-object p0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getStyleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    .line 3
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 5
    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDelTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->footnoteText:Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText(Lorg/apache/poi/xwpf/usermodel/TextSegment;)Ljava/lang/String;
    .locals 14

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->getBeginRun()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->getBeginText()I

    move-result v1

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->getBeginChar()I

    move-result v2

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->getEndRun()I

    move-result v3

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->getEndText()I

    move-result v4

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->getEndChar()I

    move-result p1

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 19
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    move v6, v0

    :goto_0
    if-gt v6, v3, :cond_5

    .line 20
    aget-object v7, p0, v6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v7

    .line 21
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    if-ne v6, v0, :cond_0

    move v10, v1

    goto :goto_1

    :cond_0
    move v10, v9

    :goto_1
    if-ne v6, v3, :cond_1

    move v8, v4

    :cond_1
    :goto_2
    if-gt v10, v8, :cond_4

    .line 22
    aget-object v11, v7, v10

    invoke-interface {v11}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v10, v1, :cond_2

    if-ne v6, v0, :cond_2

    move v13, v2

    goto :goto_3

    :cond_2
    move v13, v9

    :goto_3
    if-ne v10, v4, :cond_3

    if-ne v6, v3, :cond_3

    move v12, p1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 24
    invoke-virtual {v5, v11, v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/TextAlignment;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetTextAlignment()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->AUTO:Lorg/apache/poi/xwpf/usermodel/TextAlignment;

    :goto_1
    return-object p0
.end method

.method public insertNewFieldRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createFieldRun()Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lw0/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lw0/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->insertNewProvidedRun(ILjava/util/function/Function;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    return-object p0
.end method

.method public insertNewHyperlinkRun(ILjava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createHyperlinkRun(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xwpf/usermodel/a;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->insertNewProvidedRun(ILjava/util/function/Function;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getCTHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    move-result-object p2

    invoke-interface {p2, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public insertNewRun(I)Lorg/apache/poi/xwpf/usermodel/XWPFRun;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xwpf/usermodel/a;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->insertNewProvidedRun(ILjava/util/function/Function;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isKeepNext()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetKeepNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getKeepNext()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPageBreak()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPageBreakBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result p0

    return p0
.end method

.method public isWordWrap()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isWordWrapped()Z

    move-result p0

    return p0
.end method

.method public isWordWrapped()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeRun(I)Z
    .locals 4

    if-ltz p1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isTheOnlyCTHyperlinkInRuns(Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getCTHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Li5/p0;->k1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Li5/p0;->close()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->isTheOnlyCTFieldInRuns(Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Li5/p0;->k1()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-interface {v1}, Li5/p0;->close()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v2

    :catchall_3
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_6
    invoke-interface {v1}, Li5/p0;->k1()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-interface {v1}, Li5/p0;->close()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->iruns:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v2

    :catchall_6
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p1

    if-eqz v1, :cond_4

    :try_start_8
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_2

    :catchall_8
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public runsIsEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public searchText(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;)Lorg/apache/poi/xwpf/usermodel/TextSegment;
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getRun()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getText()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/xwpf/usermodel/PositionInParagraph;->getChar()I

    move-result v3

    move-object/from16 v4, p0

    iget-object v4, v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v4

    move v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_b

    aget-object v10, v4, v6

    invoke-interface {v10}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Li5/p0;

    move-result-object v10

    :try_start_0
    const-string v11, "./*"

    invoke-interface {v10, v11}, Li5/p0;->selectPath(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v10}, Li5/p0;->a1()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v10}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v14

    instance-of v15, v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    if-eqz v15, :cond_6

    if-lt v11, v2, :cond_5

    check-cast v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-interface {v14}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v14

    if-ne v6, v1, :cond_0

    move v15, v3

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v15, v5, :cond_5

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v16, v1

    move/from16 v17, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v5, v2, :cond_1

    if-nez v7, :cond_1

    const/4 v2, 0x1

    move v8, v2

    move v9, v6

    move v12, v11

    move v13, v15

    :cond_1
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_3

    add-int/lit8 v2, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_4

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/TextSegment;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/TextSegment;-><init>()V

    invoke-virtual {v0, v9}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->setBeginRun(I)V

    invoke-virtual {v0, v12}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->setBeginText(I)V

    invoke-virtual {v0, v13}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->setBeginChar(I)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->setEndRun(I)V

    invoke-virtual {v0, v11}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->setEndText(I)V

    invoke-virtual {v0, v15}, Lorg/apache/poi/xwpf/usermodel/TextSegment;->setEndChar(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v10}, Li5/p0;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :cond_3
    move v7, v1

    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v16, v1

    move/from16 v17, v2

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    const/4 v1, 0x0

    :try_start_1
    instance-of v2, v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    if-eqz v2, :cond_7

    invoke-interface {v10}, Li5/p0;->k1()Z

    goto :goto_4

    :cond_7
    instance-of v2, v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move v7, v1

    :goto_4
    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_1

    :cond_9
    move/from16 v16, v1

    move/from16 v17, v2

    const/4 v1, 0x0

    invoke-interface {v10}, Li5/p0;->close()V

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    :goto_5
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_a

    :try_start_3
    invoke-interface {v10}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v2

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetJc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJc;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJc$Enum;)V

    return-void
.end method

.method public setBorderBetween(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetBetween()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewBetween()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetBetween()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetBottom()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetLeft()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetRight()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/xwpf/usermodel/Borders;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPBrd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->isSetTop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/Borders;->NONE:Lorg/apache/poi/xwpf/usermodel/Borders;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPBdr;->unsetTop()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/Borders;->getValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid paragraph state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFirstLineIndent(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationFirstLine(I)V

    return-void
.end method

.method public setFontAlignment(I)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setAlignment(Lorg/apache/poi/xwpf/usermodel/ParagraphAlignment;)V

    return-void
.end method

.method public setIndentFromLeft(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationLeft(I)V

    return-void
.end method

.method public setIndentFromRight(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setIndentationRight(I)V

    return-void
.end method

.method public setIndentationFirstLine(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setFirstLine(Ljava/lang/Object;)V

    return-void
.end method

.method public setIndentationHanging(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setHanging(Ljava/lang/Object;)V

    return-void
.end method

.method public setIndentationLeft(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setLeft(Ljava/lang/Object;)V

    return-void
.end method

.method public setIndentationLeftChars(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setLeftChars(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setIndentationRight(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setRight(Ljava/lang/Object;)V

    return-void
.end method

.method public setIndentationRightChars(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTInd(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->setRightChars(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setKeepNext(Z)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->OFF:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->setKeepNext(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void
.end method

.method public setNumID(Ljava/math/BigInteger;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->addNewNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setNumILvl(Ljava/math/BigInteger;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->addNewIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->paragraph:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getNumPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPr;->getIlvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setPageBreak(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetPageBreakBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPageBreakBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->OFF:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    :goto_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpacingAfter(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setAfter(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSpacingAfterLines(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setAfterLines(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setSpacingBefore(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setBefore(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpacingBeforeLines(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setBeforeLines(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setSpacingBetween(D)V
    .locals 1

    .line 6
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V

    return-void
.end method

.method public setSpacingBetween(DLorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    .line 2
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->AUTO:Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;

    if-ne p3, v0, :cond_0

    .line 3
    new-instance v0, Ljava/math/BigInteger;

    const-wide/high16 v1, 0x406e000000000000L    # 240.0

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLine(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLine(Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-virtual {p3}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V

    return-void
.end method

.method public setSpacingLineRule(Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTSpacing(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/LineSpacingRule;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/xwpf/usermodel/TextAlignment;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetTextAlignment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewTextAlignment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TextAlignment;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextAlignment;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextAlignment$Enum;)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->setWordWrapped(Z)V

    return-void
.end method

.method public setWordWrapped(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetWordWrap()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->getWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewWordWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    :goto_0
    sget-object p1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->isSetWordWrap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->unsetWordWrap()V

    :cond_2
    :goto_1
    return-void
.end method
