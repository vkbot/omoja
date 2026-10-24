.class public Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;


# static fields
.field public static final SUPPORTED_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRelation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private concatenatePhoneticRuns:Z

.field private doCloseFilesystem:Z

.field private final document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private fetchHyperlinks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->SUPPORTED_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-void
.end method

.method private appendTableText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableICells()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/ICell;

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTextRecursively()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private extractFooters(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method private extractHeaders(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method


# virtual methods
.method public appendBodyElementText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)V
    .locals 1

    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendParagraphText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendTableText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    goto :goto_0

    :cond_1
    instance-of p0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz p0, :cond_2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public appendParagraphText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 6

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    iget-object v3, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractHeaders(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getIRuns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    iget-boolean v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    if-nez v5, :cond_4

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    iget-object v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getHyperlink(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, " <"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    new-instance v3, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;

    invoke-direct {v3, p2, v1}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->getCommentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lez v3, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getFootnoteText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractFooters(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->getFilesystem()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractHeaders(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendBodyElementText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractFooters(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->doCloseFilesystem:Z

    return-void
.end method

.method public setConcatenatePhoneticRuns(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    return-void
.end method

.method public setFetchHyperlinks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    return-void
.end method
