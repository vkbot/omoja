.class public Lorg/apache/poi/xssf/model/CommentsTable;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/model/Comments;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEFAULT_AUTHOR:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTHOR_ID:I


# instance fields
.field private commentRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

.field private sheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private vmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->addNewCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->addNewAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->addAuthor(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method private addNewAuthor(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->sizeOfAuthorArray()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->insertAuthor(ILjava/lang/String;)V

    return v0
.end method

.method private getVMLDrawing(Lorg/apache/poi/ss/usermodel/Sheet;Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->vmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/OoxmlSheetExtensions;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/OoxmlSheetExtensions;

    invoke-interface {p1, p2}, Lorg/apache/poi/xssf/usermodel/OoxmlSheetExtensions;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->vmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->vmlDrawing:Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    return-object p0
.end method

.method private prepareCTCommentCache()V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    new-instance v5, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public commentUpdated(Lorg/apache/poi/xssf/usermodel/XSSFComment;)V
    .locals 0

    return-void
.end method

.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/CommentsTable;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public createNewComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->getVMLDrawing(Lorg/apache/poi/ss/usermodel/Sheet;Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newCommentShape()Ld3/e;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, p1, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->isSet()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result p0

    div-int/lit16 p0, p0, 0x2535

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result p0

    div-int/lit16 p0, p0, 0x2535

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result p0

    div-int/lit16 p0, p0, 0x2535

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result p0

    div-int/lit16 p0, p0, 0x2535

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol2()S

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow2()I

    invoke-interface {v0}, Ld3/e;->N0()Ly2/a;

    throw v1

    :cond_2
    :goto_1
    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->newComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Multiple cell comments in one cell are not allowed, cell: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findAuthor(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->getAuthorArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->addNewAuthor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public findCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xssf/model/CommentsTable;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/xssf/model/CommentsTable;->getVMLDrawing(Lorg/apache/poi/ss/usermodel/Sheet;Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Ld3/e;

    move-result-object v1

    :goto_0
    invoke-direct {v3, p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Ld3/e;)V

    return-object v3
.end method

.method public getAuthor(J)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->getAuthorArray(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->prepareCTCommentCache()V

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object p0
.end method

.method public getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    return-object p0
.end method

.method public getCellAddresses()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/CommentsTable;->prepareCTCommentCache()V

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfAuthors()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getAuthors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAuthors;->sizeOfAuthorArray()I

    move-result p0

    return p0
.end method

.method public getNumberOfComments()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->sizeOfCommentArray()I

    move-result p0

    return p0
.end method

.method public newComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->addNewComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->getComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    .line 2
    new-instance p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v3

    move v4, v2

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->removeComment(I)V

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->commentRefs:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public setSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/model/CommentsTable;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/CommentsTable;->comments:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->setComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;)V

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-interface {v0, p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CommentsDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
