.class public Lorg/apache/poi/xslf/usermodel/XSLFComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Comment;


# instance fields
.field final authors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

.field final comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->authors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->authors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthorInitials()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->authors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getInitials()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getDt()Ljava/util/Calendar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getOffset()Ljava/awt/geom/Point2D;
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object p0

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetX()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->xgetY()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->authors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getCTCommentAuthorsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;->getCmAuthorArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    invoke-interface {v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getId()J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-interface {v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getId()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->setAuthorId(J)V

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;->addNewCmAuthor()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->setName(Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->setId(J)V

    const-string v1, "\\s*(\\w)\\S*"

    const-string v2, "$1"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->setInitials(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0, v3, v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->setAuthorId(J)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "author must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAuthorInitials(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->authors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->setInitials(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->setDt(Ljava/util/Calendar;)V

    return-void
.end method

.method public setOffset(Ljava/awt/geom/Point2D;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComment;->comment:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;->setText(Ljava/lang/String;)V

    return-void
.end method
