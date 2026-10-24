.class public Lorg/apache/poi/xssf/usermodel/XSSFComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# instance fields
.field private final _comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

.field private final _comments:Lorg/apache/poi/xssf/model/Comments;

.field private _str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

.field private final _vmlShape:Ld3/e;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/Comments;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p3}, Ld3/e;->Q()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {p3}, Ld3/e;->N0()Ly2/a;

    .line 6
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/Comments;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V

    return-void
.end method

.method private static avoidXmlbeansCorruptPointer(Ld3/e;)V
    .locals 0

    invoke-interface {p0}, Ld3/e;->f1()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Ld3/e;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Ld3/e;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/xssf/model/Comments;->getAuthor(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object p0
.end method

.method public getCTShape()Ld3/e;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    return-object p0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ld3/e;->N0()Ly2/a;

    throw v0
.end method

.method public getColumn()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p0

    return p0
.end method

.method public getRow()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public isVisible()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ld3/e;->Q()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    invoke-interface {p0}, Ld3/e;->N0()Ly2/a;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    invoke-interface {p0}, Ld3/e;->getStyle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "visibility:visible"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public setAddress(II)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    .line 5
    invoke-interface {v1, v0, p0}, Lorg/apache/poi/xssf/model/Comments;->referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    .line 6
    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void

    .line 7
    :cond_1
    invoke-interface {v0}, Ld3/e;->N0()Ly2/a;

    .line 8
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {v1, p1}, Lorg/apache/poi/xssf/model/Comments;->findAuthor(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method public setColumn(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    return-void
.end method

.method public setRow(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    .line 4
    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only XSSFRichTextString argument is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ld3/e;->s1()V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    invoke-interface {p1}, Ld3/e;->N0()Ly2/a;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ld3/e;->s1()V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_vmlShape:Ld3/e;

    invoke-interface {p1}, Ld3/e;->N0()Ly2/a;

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/Comments;

    invoke-interface {p1, p0}, Lorg/apache/poi/xssf/model/Comments;->commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method
