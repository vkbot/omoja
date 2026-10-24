.class Lorg/apache/poi/xssf/binary/XSSFBComment;
.super Lorg/apache/poi/xssf/usermodel/XSSFComment;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final author:Ljava/lang/String;

.field private final cellAddress:Lorg/apache/poi/ss/util/CellAddress;

.field private final comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->visible:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->author:Ljava/lang/String;

    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    invoke-direct {p1, p3}, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    return-void
.end method


# virtual methods
.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->author:Ljava/lang/String;

    return-object p0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColumn()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p0

    return p0
.end method

.method public getRow()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBComment;->getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    return-object p0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBComment;->getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->visible:Z

    return p0
.end method

.method public setAddress(II)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColumn(I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRow(I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVisible(Z)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XSSFBComment is read only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
