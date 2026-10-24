.class public Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
.super Lorg/apache/poi/ooxml/POIXMLDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/Document;
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# static fields
.field private static final LOG:La5/d;


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

.field protected final charts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFChart;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

.field protected contentControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFSDT;",
            ">;"
        }
    .end annotation
.end field

.field private ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

.field private final drawingIdManager:Lorg/apache/poi/ooxml/util/IdentifierManager;

.field protected endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

.field protected footers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFooter;",
            ">;"
        }
    .end annotation
.end field

.field private final footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

.field protected footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

.field private headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

.field protected headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;",
            ">;"
        }
    .end annotation
.end field

.field protected numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

.field protected packagePictures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field protected pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

.field protected styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

.field protected tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field

.field protected theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 30
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->newPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    .line 41
    new-instance v0, Lorg/apache/poi/ooxml/util/IdentifierManager;

    const-wide/16 v1, 0x0

    const-wide v3, 0xffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ooxml/util/IdentifierManager;-><init>(JJ)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/ooxml/util/IdentifierManager;

    .line 42
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->onDocumentCreate()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4

    .line 16
    invoke-static {p1, p2}, Lorg/apache/poi/ooxml/util/PackageHelper;->open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    .line 27
    new-instance p1, Lorg/apache/poi/ooxml/util/IdentifierManager;

    const-wide/16 v0, 0x0

    const-wide v2, 0xffffffffL

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/poi/ooxml/util/IdentifierManager;-><init>(JJ)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/ooxml/util/IdentifierManager;

    .line 28
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-direct {p1, p0}, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    .line 29
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->load(Lorg/apache/poi/ooxml/POIXMLFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    .line 12
    new-instance p1, Lorg/apache/poi/ooxml/util/IdentifierManager;

    const-wide/16 v0, 0x0

    const-wide v2, 0xffffffffL

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/poi/ooxml/util/IdentifierManager;-><init>(JJ)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/ooxml/util/IdentifierManager;

    .line 13
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-direct {p1, p0}, Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    .line 14
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->load(Lorg/apache/poi/ooxml/POIXMLFactory;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->lambda$registerPackagePictureData$0(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getBodyElementSpecificPos(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getNewCursor(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ")",
            "Ljava/util/Optional<",
            "Li5/p0;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Li5/p0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getPathToObject(Li5/p0;)Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/p0;",
            ")",
            "Ljava/util/Deque<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Li5/p0;->X0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Li5/p0;->close()V

    return-object v0

    :goto_1
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

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method private getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v3

    if-ne v3, v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->isSetSectPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initFootnotes()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->onDocumentRead()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->setIdManager(Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v2, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    if-eqz v1, :cond_0

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->onDocumentRead()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->setIdManager(Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initHyperlinks()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private insertElementIntoCell(Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            "Ljava/util/Deque<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p3, p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz p3, :cond_0

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object p3, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->paragraphs:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-direct {p0, p2, p3, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoParagraphsAndElements(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object p3, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->tables:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->bodyElements:Ljava/util/List;

    invoke-direct {p0, p2, p3, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoTablesAndElements(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertElementIntoTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private insertElementIntoRow(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            "Ljava/util/Deque<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getCTTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object v2

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertElementIntoCell(Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private insertElementIntoTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            "Ljava/util/Deque<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v2

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertElementIntoRow(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private insertIntoBodyElements(Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNewCursor(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/i;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/p0;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNewCursor(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/p0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0, p0}, Li5/p0;->v0(Li5/p0;)Z

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Li5/p0;->q1()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v3, :cond_1

    instance-of v2, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0, p0}, Li5/p0;->v0(Li5/p0;)Z

    invoke-interface {v0}, Li5/p0;->P0()Li5/p0$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_2
    :try_start_4
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :goto_3
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p0, :cond_4

    :try_start_6
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v0, :cond_5

    :try_start_9
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw p1
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :goto_7
    return-void
.end method

.method private insertIntoParagraphs(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_0

    invoke-interface {v0}, Li5/p0;->q1()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v3, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p2, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    invoke-interface {p2, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v0}, Li5/p0;->close()V

    return-void

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p1
.end method

.method private insertIntoParagraphsAndElements(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoParagraphs(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/util/List;)V

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoBodyElements(Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/List;)V

    return-void
.end method

.method private insertIntoParentElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            "Ljava/util/Deque<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p2, p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoParagraphsAndElements(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    instance-of p2, p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoTablesAndElements(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v3

    if-ne v0, v3, :cond_2

    invoke-direct {p0, v2, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertElementIntoTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private insertIntoTables(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    const/4 v1, 0x0

    :goto_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v2, :cond_0

    invoke-interface {v0}, Li5/p0;->q1()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v2, :cond_1

    const/4 p0, 0x0

    invoke-interface {p2, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-interface {p2, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v0}, Li5/p0;->close()V

    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method private insertIntoTablesAndElements(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoTables(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/util/List;)V

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoBodyElements(Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$registerPackagePictureData$0(Ljava/lang/Long;)Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public static newPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lorg/apache/commons/io/output/j;->c:I

    new-instance v1, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v1}, Lorg/apache/commons/io/output/j$a;-><init>()V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v1

    const-string v2, "Apache POI"

    invoke-interface {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, v1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->addEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    return-object v0
.end method

.method public addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->addFootnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object p0

    return-object p0
.end method

.method public addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1

    .line 21
    :try_start_0
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getMaxImageSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addPictureData(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 1

    .line 24
    :try_start_0
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getMaxImageSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addPictureData([BI)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/apache/poi/common/usermodel/PictureType;->findByOoxmlId(I)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->findPackagePictureData([B)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    iget v2, p2, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    aget-object v1, v1, v2

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNextPicNameNumber(Lorg/apache/poi/common/usermodel/PictureType;)I

    move-result p2

    .line 5
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 6
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 10
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 13
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_0

    .line 14
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 15
    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 17
    sget-object p2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_3
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "pictureType is not supported"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "document"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->save(Ljava/io/OutputStream;Li5/z1;)V
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
.end method

.method public createChart()Lorg/apache/poi/xwpf/usermodel/XWPFChart;
    .locals 1

    const v0, 0x7a120

    .line 1
    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createChart(II)Lorg/apache/poi/xwpf/usermodel/XWPFChart;

    move-result-object p0

    return-object p0
.end method

.method public createChart(II)Lorg/apache/poi/xwpf/usermodel/XWPFChart;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createChart(Lorg/apache/poi/xwpf/usermodel/XWPFRun;II)Lorg/apache/poi/xwpf/usermodel/XWPFChart;

    move-result-object p0

    return-object p0
.end method

.method public createChart(Lorg/apache/poi/xwpf/usermodel/XWPFRun;II)Lorg/apache/poi/xwpf/usermodel/XWPFChart;
    .locals 4

    .line 3
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getNextPartNumber(Lorg/apache/poi/ooxml/POIXMLRelation;I)I

    move-result v1

    .line 4
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1, v3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFChart;

    .line 7
    invoke-virtual {v2, v1}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setChartIndex(I)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->attach(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    int-to-long p1, p2

    int-to-long v0, p3

    .line 9
    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFChart;->setChartBoundingBox(JJ)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public createComments()Lorg/apache/poi/xwpf/usermodel/XWPFComments;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;->addNewComments()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->setCtComments(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;)V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    return-object p0
.end method

.method public createEndnote()Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createEndnotes()Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->createEndnote()Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    move-result-object p0

    return-object p0
.end method

.method public createEndnotes()Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/EndnotesDocument;->addNewEndnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->setEndnotes(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEndnotes;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->setIdManager(Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    return-object p0
.end method

.method public createFooter(Lorg/apache/poi/wp/usermodel/HeaderFooterType;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetTitlePg()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->toInt()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createFooter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p0

    return-object p0
.end method

.method public createFootnote()Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createFootnotes()Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->createFootnote()Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object p0

    return-object p0
.end method

.method public createFootnotes()Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/FootnotesDocument;->addNewFootnotes()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->setFootnotes(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFootnotes;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnoteIdManager:Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->setIdManager(Lorg/apache/poi/xwpf/usermodel/FootnoteEndnoteIdManager;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object p0
.end method

.method public createHeader(Lorg/apache/poi/wp/usermodel/HeaderFooterType;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getSection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetTitlePg()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1;->ON:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff1$Enum;

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->toInt()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->createHeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHdrFtr$Enum;)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p0

    return-object p0
.end method

.method public createHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    return-object p0
.end method

.method public createNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->addNewNumbering()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->setNumbering(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object p0
.end method

.method public createParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->addNewStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->setStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object p0
.end method

.method public createTOC()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewSdt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/TOC;

    invoke-direct {v1, v0}, Lorg/apache/poi/xwpf/usermodel/TOC;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getStyle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Heading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "112723803"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4, v3}, Lorg/apache/poi/xwpf/usermodel/TOC;->addRow(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->h()La5/b;

    move-result-object v2

    invoke-interface {v2, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v2, "can\'t format number in TOC heading"

    invoke-interface {v0, v2}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createTable(II)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    .line 4
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createTheme()Lorg/apache/poi/xwpf/usermodel/XWPFTheme;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationIndex(Lorg/apache/poi/xwpf/usermodel/XWPFRelation;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->addNewTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;->setTheme(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;)V

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    return-object p0
.end method

.method public enforceCommentsProtection()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceCommentsProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceFillingFormsProtection()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceFillingFormsProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceReadonlyProtection()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceReadonlyProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceTrackedChangesProtection()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    return-void
.end method

.method public enforceTrackedChangesProtection(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public enforceUpdateFields()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setUpdateFields()V

    return-void
.end method

.method public findPackagePictureData([B)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getData()[B

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllEmbeddedParts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getAllPackagePictures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBodyElementsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getBodyElementsSpliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public getCharts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFChart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    move-result-object p0

    return-object p0
.end method

.method public getComments()[Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->getComments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    return-object p0
.end method

.method public getDocComments()Lorg/apache/poi/xwpf/usermodel/XWPFComments;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    return-object p0
.end method

.method public getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    return-object p0
.end method

.method public getDrawingIdManager()Lorg/apache/poi/ooxml/util/IdentifierManager;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->drawingIdManager:Lorg/apache/poi/ooxml/util/IdentifierManager;

    return-object p0
.end method

.method public getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    move-result-object p0

    return-object p0
.end method

.method public getEndnotes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->getEndnotesList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEvenAndOddHeadings()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getEvenAndOddHeadings()Z

    move-result p0

    return p0
.end method

.method public getFooterArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFFooter;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFooterList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFooter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnotesEndnotes;->getFootnoteById(I)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    return-object p0
.end method

.method public getFootnotes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getFootnotesList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFHeader;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    return-object p0
.end method

.method public getHeaderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFHeader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlinkByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initHyperlinks()V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHyperlinks()[Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->hyperlinks:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    return-object p0
.end method

.method public getLastParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p0
.end method

.method public getMirrorMargins()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getMirrorMargins()Z

    move-result p0

    return p0
.end method

.method public getNextPicNameNumber(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/common/usermodel/PictureType;->findByOoxmlId(I)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNextPicNameNumber(Lorg/apache/poi/common/usermodel/PictureType;)I

    move-result p0

    return p0
.end method

.method public getNextPicNameNumber(Lorg/apache/poi/common/usermodel/PictureType;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getAllPackagePictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    iget v2, p1, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 6
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    iget v2, p1, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0

    .line 8
    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "pictureType is not supported"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object p0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

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

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParagraphPos(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElementSpecificPos(ILjava/util/List;)I

    move-result p0

    return p0
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getParagraphsIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getParagraphsSpliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    return-object p0
.end method

.method public getPartById(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyType;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object p0
.end method

.method public getPictureDataByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosOfParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I

    move-result p0

    return p0
.end method

.method public getPosOfTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPosOfBodyElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;)I

    move-result p0

    return p0
.end method

.method public getSettings()Lorg/apache/poi/xwpf/usermodel/XWPFSettings;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    return-object p0
.end method

.method public getStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    :try_start_0
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getRelatedByType(Ljava/lang/String;)[Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_1
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/StylesDocument;->getStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expecting one Styles document part, but found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getStyles()Lorg/apache/poi/xwpf/usermodel/XWPFStyles;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    return-object p0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTables()Ljava/util/List;

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

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

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

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

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

.method public getTablePos(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElementSpecificPos(ILjava/util/List;)I

    move-result p0

    return p0
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTablesIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getTablesSpliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public getTblStyle(Lorg/apache/poi/xwpf/usermodel/XWPFTable;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getStyleID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTheme()Lorg/apache/poi/xwpf/usermodel/XWPFTheme;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    return-object p0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 0

    return-object p0
.end method

.method public getZoomPercent()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getZoomPercent()J

    move-result-wide v0

    return-wide v0
.end method

.method public insertNewParagraph(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPathToObject(Li5/p0;)Ljava/util/Deque;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Li5/c0;

    invoke-interface {v1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {p1, v2, v1}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoParentElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->newCursor()Li5/p0;

    move-result-object p0

    invoke-interface {p1, p0}, Li5/p0;->v0(Li5/p0;)Z

    invoke-interface {p1}, Li5/p0;->P0()Li5/p0$a;

    return-object v2
.end method

.method public insertNewTbl(Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getPathToObject(Li5/p0;)Ljava/util/Deque;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Li5/c0;

    invoke-interface {v1}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tbl"

    invoke-interface {p1, v2, v1}, Li5/p0;->X(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/p0;->X0()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->insertIntoParentElement(Lorg/apache/poi/xwpf/usermodel/IBodyElement;Ljava/util/Deque;)V

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->newCursor()Li5/p0;

    move-result-object p0

    invoke-interface {p1, p0}, Li5/p0;->v0(Li5/p0;)Z

    invoke-interface {p1}, Li5/p0;->P0()Li5/p0$a;

    return-object v2
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {p0, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public isEnforcedCommentsProtection()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->COMMENTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result p0

    return p0
.end method

.method public isEnforcedFillingFormsProtection()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->FORMS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result p0

    return p0
.end method

.method public isEnforcedProtection()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith()Z

    move-result p0

    return p0
.end method

.method public isEnforcedReadonlyProtection()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->READ_ONLY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result p0

    return p0
.end method

.method public isEnforcedTrackedChangesProtection()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect;->TRACKED_CHANGES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z

    move-result p0

    return p0
.end method

.method public isEnforcedUpdateFields()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isUpdateFields()Z

    move-result p0

    return p0
.end method

.method public isTrackRevisions()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->isTrackRevisions()Z

    move-result p0

    return p0
.end method

.method public onDocumentCreate()V
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->addNewBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object p0

    const-string v0, "Apache POI"

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->setApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onDocumentRead()V
    .locals 7

    const-string v0, "./*"

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v3, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v2, v1, v3}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_b

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initFootnotes()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->newCursor()Li5/p0;

    move-result-object v1
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {v1, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {v1}, Li5/p0;->a1()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v3, v0}, Li5/p0;->selectPath(Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-interface {v3}, Li5/p0;->a1()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v5, :cond_3

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v5, :cond_4

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    const/4 v6, 0x0

    invoke-direct {v5, v4, p0, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v5, v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v5, :cond_2

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->contentControls:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_5
    invoke-interface {v3}, Li5/p0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_8

    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_6

    :try_start_7
    invoke-interface {v3}, Li5/p0;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    :try_start_9
    invoke-interface {v1}, Li5/p0;->close()V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/DocumentDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headerFooterPolicy:Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Li5/z0; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->onDocumentRead()V

    goto :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_7

    :cond_a
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFTheme;->onDocumentRead()V

    goto :goto_5

    :cond_b
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->onDocumentRead()V

    goto :goto_5

    :cond_c
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;->onDocumentRead()V

    goto :goto_5

    :cond_d
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->headers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;->onDocumentRead()V

    goto/16 :goto_5

    :cond_e
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->comments:Lorg/apache/poi/xwpf/usermodel/XWPFComments;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->onDocumentRead()V

    goto/16 :goto_5

    :cond_f
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    iput-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->onDocumentRead()V

    goto/16 :goto_5

    :cond_10
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->onDocumentRead()V

    invoke-virtual {p0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->pictures:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->CHART:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFChart;

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->charts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-static {v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->_invokeOnDocumentRead(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_1
    .catch Li5/z0; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    :goto_7
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relation and type of document-part did not match, had relation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and type of document-part: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->initHyperlinks()V
    :try_end_b
    .catch Li5/z0; {:try_start_b .. :try_end_b} :catch_0

    return-void

    :goto_8
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v1, :cond_14

    :try_start_d
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v1

    :try_start_e
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    :goto_9
    throw v0
    :try_end_e
    .catch Li5/z0; {:try_start_e .. :try_end_e} :catch_0

    :catchall_6
    move-exception p0

    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    if-eqz v1, :cond_15

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v1

    :try_start_11
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_a
    throw v0
    :try_end_11
    .catch Li5/z0; {:try_start_11 .. :try_end_11} :catch_0

    :goto_b
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->packagePictures:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeBodyElement(I)Z
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->TABLE:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getTablePos(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->removeTbl(I)V

    :cond_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getParagraphPos(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->removeP(I)V

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->bodyElements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public removeEndnote(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->endnotes:Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFEndnotes;->removeEndnote(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeFootnote(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->removeFootnote(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeProtectionEnforcement()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->removeEnforcement()V

    return-void
.end method

.method public setEvenAndOddHeadings(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setEvenAndOddHeadings(Z)V

    return-void
.end method

.method public setMirrorMargins(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setMirrorMargins(Z)V

    return-void
.end method

.method public setParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    return-void
.end method

.method public setTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->tables:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->ctDocument:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->setTblArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V

    return-void
.end method

.method public setTrackRevisions(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setTrackRevisions(Z)V

    return-void
.end method

.method public setZoomPercent(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->setZoomPercent(J)V

    return-void
.end method

.method public validateProtectionPassword(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->settings:Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->validateProtectionPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
