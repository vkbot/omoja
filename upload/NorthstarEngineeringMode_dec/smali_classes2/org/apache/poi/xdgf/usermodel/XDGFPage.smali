.class public Lorg/apache/poi/xdgf/usermodel/XDGFPage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

.field private _page:La3/j;

.field protected _pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;


# direct methods
.method public constructor <init>(La3/j;Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;Lorg/apache/poi/xdgf/usermodel/XDGFPages;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;->setPage(Lorg/apache/poi/xdgf/usermodel/XDGFPage;)V

    invoke-interface {p1}, La3/j;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;

    invoke-interface {p1}, La3/j;->a()La3/i;

    const/4 p1, 0x0

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;-><init>(La3/i;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoundingBox()Ljava/awt/geom/Rectangle2D;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageSize()Lorg/apache/poi/util/Dimension2DDouble;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageOffset()Ljava/awt/geom/Point2D$Double;

    move-result-object p0

    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D$Double;->getX()D

    move-result-wide v1

    neg-double v2, v1

    invoke-virtual {p0}, Ljava/awt/geom/Point2D$Double;->getY()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/poi/util/Dimension2DDouble;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/apache/poi/util/Dimension2DDouble;->getHeight()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v10
.end method

.method public getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    return-object p0
.end method

.method public getID()J
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getPageNumber()J
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPageOffset()Ljava/awt/geom/Point2D$Double;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "XRulerOrigin"

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "YRulerOrigin"

    invoke-virtual {p0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object p0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_1
    new-instance p0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p0, v3, v4, v1, v2}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object p0
.end method

.method public getPageSheet()Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    return-object p0
.end method

.method public getPageSize()Lorg/apache/poi/util/Dimension2DDouble;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "PageWidth"

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    const-string v1, "PageHeight"

    invoke-virtual {p0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    return-object v1

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "Cannot determine page size"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getXmlObject()La3/j;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
