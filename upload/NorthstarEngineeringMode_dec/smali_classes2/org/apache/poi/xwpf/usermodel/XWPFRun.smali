.class public Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;
.implements Lorg/apache/poi/wp/usermodel/CharacterRun;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

.field private final pictureText:Ljava/lang/String;

.field private final pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPicture;",
            ">;"
        }
    .end annotation
.end field

.field private final run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 3
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 4
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/ooxml/util/IdentifierManager;

    move-result-object v8

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserve(J)J

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getInlineArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 7
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/ooxml/util/IdentifierManager;

    move-result-object v7

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserve(J)J

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getPictArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    const-string v3, "declare namespace w=\'http://schemas.openxmlformats.org/wordprocessingml/2006/main\' .//w:t"

    .line 14
    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 15
    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 16
    invoke-interface {v5}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v6, v1

    .line 17
    :goto_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 18
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    instance-of v7, v7, Lorg/w3c/dom/Text;

    if-eqz v7, :cond_7

    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, "\n"

    .line 20
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_6
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 22
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    .line 25
    invoke-direct {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    .line 26
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    return-void
.end method

.method private _getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;)V
    .locals 5

    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    const-string v1, "http://schemas.openxmlformats.org/wordprocessingml/2006/main"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "instrText"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCapitalized()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isSmallCaps()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    instance-of p0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFldCharType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v0

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    if-ne v0, v2, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->getCheckBoxList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "|X|"

    goto :goto_1

    :cond_4
    const-string v0, "|_|"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    instance-of p0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    const/16 v0, 0x9

    if-eqz p0, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    instance-of p0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    const/16 v2, 0xa

    if-eqz p0, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    instance-of p0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    const/4 v3, -0x1

    if-eqz p0, :cond_b

    invoke-interface {p1}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "tab"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_1
    const-string v4, "cr"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "br"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    :goto_3
    instance-of p0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz p0, :cond_e

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    :goto_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "footnoteReference"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "]"

    if-eqz p0, :cond_d

    const-string p0, "[footnoteRef:"

    :goto_5
    invoke-static {p0, v3, p1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_d
    const-string p0, "[endnoteRef:"

    goto :goto_5

    :goto_6
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc50 -> :sswitch_2
        0xc6f -> :sswitch_1
        0x1bf95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "declare namespace pic=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Li5/c0;

    invoke-interface {v1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' .//pic:pic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/xmlbeans/impl/values/g0;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v3, v2, v4}, Lorg/apache/xmlbeans/impl/schema/b;->d(Ljava/lang/String;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_1
    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getUArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getComplexScriptFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzCsArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;Z)V
    .locals 6

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    const-string v0, ".//*"

    invoke-interface {p1, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Li5/p0;->a1()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "http://schemas.openxmlformats.org/wordprocessingml/2006/main"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v4, "rubyBase"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :goto_1
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

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
.end method

.method private static isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z
    .locals 1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static preserveSpaces(Li5/g2;)V
    .locals 3

    invoke-interface {p0}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->C()Li5/p0$a;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "space"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preserve"

    invoke-interface {p0, v1, v0}, Li5/p0;->m(Ljava/lang/String;Ljavax/xml/namespace/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addBreak()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    return-void
.end method

.method public addBreak(Lorg/apache/poi/xwpf/usermodel/BreakClear;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object p0

    .line 5
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BreakType;->TEXT_WRAPPING:Lorg/apache/poi/xwpf/usermodel/BreakType;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/BreakType;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/BreakClear;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setClear(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;)V

    return-void
.end method

.method public addBreak(Lorg/apache/poi/xwpf/usermodel/BreakType;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/BreakType;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;)V

    return-void
.end method

.method public addCarriageReturn()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewCr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    return-void
.end method

.method public addChart(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    .locals 5
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const-string v0, "chart "

    const-string v1, "<a:graphic xmlns:a=\""

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->addNewInline()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->type:Li5/c0;

    invoke-interface {v1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"><a:graphicData uri=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->type:Li5/c0;

    invoke-interface {v1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"><c:chart xmlns:c=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" xmlns:r=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships\" r:id=\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" /></a:graphicData></a:graphic>"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    sget-object v1, Li5/i2;->o0:Lorg/apache/xmlbeans/impl/schema/g0;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    sget-object v3, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, p1, v3}, Lorg/apache/xmlbeans/impl/schema/g0;->h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistT(J)V

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistR(J)V

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistB(J)V

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistL(J)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/ooxml/util/IdentifierManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserveNew()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addPicture(Ljava/io/InputStream;ILjava/lang/String;II)Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    .locals 6

    .line 1
    invoke-static {p2}, Lorg/apache/poi/common/usermodel/PictureType;->findByOoxmlId(I)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->addPicture(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;Ljava/lang/String;II)Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    move-result-object p0

    return-object p0
.end method

.method public addPicture(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;Ljava/lang/String;II)Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    .locals 10

    const-string v0, "Picture "

    const-string v1, "Drawing "

    const-string v2, "<a:graphic xmlns:a=\""

    if-eqz p2, :cond_2

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 2
    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 3
    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    .line 4
    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->addPictureData(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v3, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 6
    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 7
    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    .line 8
    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->addPictureData(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v3, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 10
    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v3

    .line 11
    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v3, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 13
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->addNewInline()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object p2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->type:Li5/c0;

    .line 16
    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"><a:graphicData uri=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Li5/c0;

    .line 17
    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"><pic:pic xmlns:pic=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" /></a:graphicData></a:graphic>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 20
    invoke-static {v3}, Lorg/apache/poi/ooxml/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 21
    sget-object v3, Li5/i2;->o0:Lorg/apache/xmlbeans/impl/schema/g0;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v3, v2, v4}, Lorg/apache/xmlbeans/impl/schema/g0;->h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p2, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    const-wide/16 v2, 0x0

    .line 22
    invoke-interface {p2, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistT(J)V

    .line 23
    invoke-interface {p2, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistR(J)V

    .line 24
    invoke-interface {p2, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistB(J)V

    .line 25
    invoke-interface {p2, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistL(J)V

    .line 26
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v4

    .line 27
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/ooxml/util/IdentifierManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserveNew()J

    move-result-wide v5

    .line 28
    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 30
    invoke-interface {v4, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    .line 31
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v1

    int-to-long v7, p4

    .line 32
    invoke-interface {v1, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    int-to-long p4, p5

    .line 33
    invoke-interface {v1, p4, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 34
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object p2

    .line 35
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p2

    .line 36
    invoke-direct {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    .line 37
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;

    move-result-object v4

    .line 38
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v9

    .line 39
    invoke-interface {v9, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 41
    invoke-interface {v9, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    .line 42
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object p3

    .line 43
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    .line 44
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object p3

    .line 45
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 46
    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 47
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    .line 48
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p3

    .line 50
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    .line 53
    invoke-interface {p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object p3

    .line 54
    invoke-interface {p3, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 55
    invoke-interface {p3, p4, p5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 56
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object p1

    .line 57
    sget-object p3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {p1, p3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 58
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 59
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    .line 60
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 62
    :cond_2
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "pictureType is not supported"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    return-void
.end method

.method public getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    return-object p0
.end method

.method public getCharacterSpacing()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSpacingArray()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSpacingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfColorArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getColorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getComplexScriptFontSizeAsDouble()Ljava/lang/Double;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getComplexScriptFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEmbeddedPictures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPicture;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    return-object p0
.end method

.method public getEmphasisMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfEmArray()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    :cond_2
    return-object p0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontFamily(Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontFamily(Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfRFontsArray()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRFontsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object p0

    .line 5
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange:[I

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAscii()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsia()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCs()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontFamily()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFontSizeAsDouble()Ljava/lang/Double;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontSizeAsBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getKerning()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfKernArray()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getKernArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHpsMeasure;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfLangArray()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getLangArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->getVal()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    instance-of v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    return-object p0
.end method

.method public getPhonetic()Ljava/lang/String;
    .locals 5

    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Li5/p0;

    move-result-object v2

    :try_start_0
    const-string v3, "./*"

    invoke-interface {v2, v3}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Li5/p0;->a1()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v2}, Li5/p0;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method public getPictureText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    return-object p0
.end method

.method public getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfRStyleArray()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTextHighlightColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfHighlightArray()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getHighlightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/c;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->setEnumValue(Li5/h0;)V

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->getEnumValue()Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    return-object p0
.end method

.method public getTextHightlightColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "7.0.0"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getTextHighlightColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object p0

    return-object p0
.end method

.method public getTextPosition()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfPositionArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getPositionArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedHpsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedHpsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTextScale()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    const/16 v1, 0x64

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfWArray()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getWArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextScale;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parsePercent(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextScale;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    div-int/lit16 v1, p0, 0x3e8

    :cond_2
    :goto_0
    return v1
.end method

.method public getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 2

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->NONE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUnderlineColor()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getColor()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    check-cast p0, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    :goto_0
    return-object p0
.end method

.method public getUnderlineThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getThemeColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVerticalAlignment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->BASELINE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfVertAlignArray()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlignArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->getVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->BASELINE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    :cond_2
    return-object p0
.end method

.method public isBold()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfBArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getBArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCapitalized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfCapsArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isComplexScriptBold()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfBCsArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getBCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isComplexScriptItalic()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfICsArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getICsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDoubleStrikeThrough()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfDstrikeArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getDstrikeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmbossed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfEmbossArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmbossArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHighlighted()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfHighlightArray()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getHighlightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isImprinted()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfImprintArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getImprintArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isItalic()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfIArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getIArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShadowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfShadowArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getShadowArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSmallCaps()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSmallCapsArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSmallCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStrike()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isStrikeThrough()Z

    move-result p0

    return p0
.end method

.method public isStrikeThrough()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfStrikeArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getStrikeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVanish()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfVanishArray()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVanishArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeBreak()V
    .locals 0

    return-void
.end method

.method public removeCarriageReturn()V
    .locals 0

    return-void
.end method

.method public removeTab()V
    .locals 0

    return-void
.end method

.method public setBold(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfBArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getBArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setCapitalized(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfCapsArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setCharacterSpacing(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSpacingArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSpacingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object p0

    :goto_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfColorArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getColorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setComplexScriptBold(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfBCsArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getBCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewBCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setComplexScriptFontSize(D)V
    .locals 3

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    .line 6
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzCsArray()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    :goto_0
    const-wide/16 v1, 0x2

    .line 8
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setComplexScriptFontSize(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzCsArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setComplexScriptItalic(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfICsArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getICsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewICs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setDoubleStrikethrough(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfDstrikeArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getDstrikeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setEmbossed(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfEmbossArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmbossArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setEmphasisMark(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfEmArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/c;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;

    :cond_1
    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;->xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm;)V

    :cond_2
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setFontFamily(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfRFontsArray()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRFontsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object p0

    :goto_0
    if-nez p2, :cond_3

    .line 4
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetHAnsi()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetCs()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetEastAsia()Z

    move-result p2

    if-nez p2, :cond_8

    .line 10
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsia(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsia(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_6
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_7
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public setFontSize(D)V
    .locals 3

    .line 5
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzArray()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    :goto_0
    const-wide/16 v1, 0x2

    .line 8
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setFontSize(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSzArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSzArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setImprinted(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfImprintArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getImprintArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setItalic(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfIArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getIArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setKerning(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfKernArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getKernArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object p0

    :goto_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfLangArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getLangArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfShadowArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getShadowArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setSmallCaps(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfSmallCapsArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSmallCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setStrike(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setStrikeThrough(Z)V

    return-void
.end method

.method public setStrikeThrough(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfStrikeArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getStrikeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setStyle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfRStyleArray()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setSubscript(Lorg/apache/poi/xwpf/usermodel/VerticalAlign;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfVertAlignArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlignArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;->forInt(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->setVal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;I)V

    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setStringValue(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->preserveSpaces(Li5/g2;)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Value too large for the parameter position in XWPFRun.setText(String value,int pos)"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTextHighlightColor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfHighlightArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getHighlightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/c;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;

    :cond_1
    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;->xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;)V

    :cond_2
    return-void
.end method

.method public setTextPosition(I)V
    .locals 1

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfPositionArray()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getPositionArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object p0

    :goto_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextScale(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfWArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getWArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;

    move-result-object p0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;->setVal(Ljava/lang/Object;)V

    return-void
.end method

.method public setUnderline(Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;)V

    return-void
.end method

.method public setUnderlineColor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColorAuto;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/c;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColorAuto;

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColorAuto$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColorAuto$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColorAuto;->setEnumValue(Li5/h0;)V

    check-cast v0, Li5/g0;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STHexColorRGB;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/c;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STHexColorRGB;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STHexColorRGB;->setStringValue(Ljava/lang/String;)V

    check-cast v0, Li5/g0;

    :goto_0
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->setColor(Ljava/lang/Object;)V

    return-void
.end method

.method public setUnderlineThemeColor(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTUnderline(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object p0

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->setThemeColor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;)V

    :cond_0
    return-void
.end method

.method public setVanish(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfVanishArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVanishArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

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

.method public setVerticalAlignment(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getRunProperties(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->sizeOfVertAlignArray()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlignArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/c;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;

    :cond_1
    invoke-static {p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->xsetVal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun;)V

    :cond_2
    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    const-string v2, "./*"

    invoke-interface {v1, v2}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Li5/p0;->a1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Li5/p0;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getPhonetic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
