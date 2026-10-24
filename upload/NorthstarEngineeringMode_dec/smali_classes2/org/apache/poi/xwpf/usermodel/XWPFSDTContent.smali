.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# instance fields
.field private final bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ISDTContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string v0, "./*"

    .line 19
    invoke-interface {p1, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v1, :cond_2

    .line 23
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 25
    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_3

    .line 26
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v1, :cond_4

    .line 29
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v1, v0, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :cond_5
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    .line 35
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 36
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p2
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRow;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string p3, "./*"

    .line 40
    invoke-interface {p1, p3}, Li5/p0;->selectPath(Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 42
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p3

    .line 43
    instance-of v0, p3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast p3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;

    invoke-direct {v0, p3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 45
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 46
    :cond_1
    instance-of p3, p3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    .line 48
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_3

    .line 49
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string v0, "./*"

    .line 4
    invoke-interface {p1, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v1, v0, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtRun;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    .line 14
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_4

    .line 15
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2
.end method

.method private appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/IRunElement;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableICells()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/ICell;

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTextRecursively()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    const-string v1, "\t"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_0
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_4

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
