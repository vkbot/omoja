.class public Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBody;
.implements Lorg/apache/poi/xwpf/usermodel/ICell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;
    }
.end annotation


# static fields
.field private static final alignMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;",
            ">;"
        }
    .end annotation
.end field

.field private static final stVertAlignTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field private final ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

.field protected paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field protected part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field private final tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

.field protected tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->TOP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->CENTER:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->BOTH:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    sget-object v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->BOTH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    sget-object v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->BOTTOM:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string p2, "./*"

    invoke-interface {p1, p2}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    instance-of p3, p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz p3, :cond_1

    new-instance p3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-object v0, p2

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {p3, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    instance-of p3, p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz p3, :cond_2

    new-instance p3, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-object v0, p2

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of p3, p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz p3, :cond_3

    new-instance p3, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    move-object v0, p2

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {p3, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of p3, p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz p3, :cond_0

    new-instance p3, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    invoke-direct {p3, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p2
.end method

.method private appendBodyElementText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Z)V
    .locals 6

    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/16 v1, 0x9

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v0, :cond_5

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getBodyElements()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->appendBodyElementText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez p3, :cond_6

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    instance-of p0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz p0, :cond_6

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    return-void
.end method

.method private getTcWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->isSetTcW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getTcW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->addNewTcW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isCursorInTableCell(Li5/p0;)Z
    .locals 1

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
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
.method public addParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->addParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    return-object v0
.end method

.method public addParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->addParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    return-void
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    return-object p0
.end method

.method public getColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->xgetFill()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

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

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyType;->TABLECELL:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object p0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTables()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

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

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

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

.method public getTableRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    return-object p0
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->isSetTcPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextRecursively()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->appendBodyElementText(Ljava/lang/StringBuilder;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalAlignment()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->stVertAlignTypeMap:Ljava/util/HashMap;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWidth()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getWidthDecimal()D
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getWidthDecimal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidthType()Lorg/apache/poi/xwpf/usermodel/TableWidthType;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getWidthType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    move-result-object p0

    return-object p0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    return-object p0
.end method

.method public insertNewParagraph(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->isCursorInTableCell(Li5/p0;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
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

    if-nez v3, :cond_1

    invoke-interface {p1}, Li5/p0;->q1()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    invoke-interface {p1, v1}, Li5/p0;->v0(Li5/p0;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_4

    invoke-interface {v1}, Li5/p0;->close()V

    :cond_4
    :goto_3
    invoke-interface {p1}, Li5/p0;->q1()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_5

    instance-of v1, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {p0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_1
    invoke-interface {p1, p0}, Li5/p0;->v0(Li5/p0;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_7
    invoke-interface {p1}, Li5/p0;->P0()Li5/p0$a;

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_8

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
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

    if-eqz v1, :cond_9

    :try_start_5
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw p1
.end method

.method public insertNewTbl(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 6

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->isCursorInTableCell(Li5/p0;)Z

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

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    invoke-interface {v1}, Li5/p0;->close()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {p0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

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

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getTblList()Ljava/util/List;

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
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {p0, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public removeParagraph(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->removeP(I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTable(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->removeTbl(I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->isSetShd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    move-result-object p0

    :goto_0
    const-string v0, "auto"

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setColor(Ljava/lang/Object;)V

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd;->CLEAR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShd$Enum;)V

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;->setFill(Ljava/lang/Object;)V

    return-void
.end method

.method public setParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->sizeOfPArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->ctTc:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->addParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->runsIsEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->removeRun(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/xwpf/usermodel/XWPFTableCell$XWPFVertAlign;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->addNewVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->alignMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setWidthValue(Ljava/lang/String;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V

    return-void
.end method

.method public setWidthType(Lorg/apache/poi/xwpf/usermodel/TableWidthType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTcWidth()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setWidthType(Lorg/apache/poi/xwpf/usermodel/TableWidthType;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V

    return-void
.end method
