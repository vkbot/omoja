.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, ""

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;->newCursor()Li5/p0;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Li5/p0;->U()Z

    move-result v3

    if-eqz v3, :cond_a

    if-lez p3, :cond_a

    invoke-interface {p1}, Li5/p0;->C()Li5/p0$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Li5/p0$a;->h:Li5/p0$a;

    if-ne v3, v4, :cond_2

    invoke-interface {p1}, Li5/p0;->A0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string v3, "tr"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Li5/p0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v0

    move v2, v1

    goto :goto_1

    :cond_3
    const-string v3, "tc"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Li5/p0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_4

    const-string v1, "\t"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v1, v2

    move v2, v0

    goto :goto_1

    :cond_5
    const-string v3, "p"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Li5/p0;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "tbl"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Li5/p0;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "sdt"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Li5/p0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    if-lez v2, :cond_7

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :cond_8
    :goto_1
    invoke-interface {p1}, Li5/p0;->u()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    invoke-interface {p1}, Li5/p0;->M1()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_b

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw p2
.end method

.method private isStartToken(Li5/p0;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p1}, Li5/p0;->u()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
