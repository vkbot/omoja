.class public Lorg/apache/poi/xwpf/usermodel/XWPFComments;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFComment;",
            ">;"
        }
    .end annotation
.end field

.field private ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

.field document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private final pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->pictures:Ljava/util/List;

    .line 11
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->pictures:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Parent is not a XWPFDocuemnt: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getMaxImageSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->addPictureData([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addPictureData(Ljava/io/InputStream;Lorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getMaxImageSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addPictureData([BI)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p2}, Lorg/apache/poi/common/usermodel/PictureType;->findByOoxmlId(I)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->findPackagePictureData([B)Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-result-object v0

    .line 7
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    iget v2, p2, Lorg/apache/poi/common/usermodel/PictureType;->ooxmlId:I

    aget-object v1, v1, v2

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getNextPicNameNumber(Lorg/apache/poi/common/usermodel/PictureType;)I

    move-result p2

    .line 9
    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 10
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    .line 14
    invoke-virtual {p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->pictures:Ljava/util/List;

    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 17
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_0

    .line 18
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

    .line 19
    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 21
    sget-object p2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->pictures:Ljava/util/List;

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
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

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "comments"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->save(Ljava/io/OutputStream;Li5/z1;)V
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

.method public createComment(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->addNewComment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;->setId(Ljava/math/BigInteger;)V

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;Lorg/apache/poi/xwpf/usermodel/XWPFComments;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
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

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->pictures:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getComment(I)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->sizeOfCommentArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->getComments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComment(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getCtComment()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFComment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    return-object p0
.end method

.method public getCtComments()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    return-object p0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object p0
.end method

.method public onDocumentRead()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CommentsDocument;->getComments()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->getCommentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    invoke-direct {v4, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;Lorg/apache/poi/xwpf/usermodel/XWPFComments;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Li5/z0; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->pictures:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->registerPackagePictureData(Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;)V

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v1
    :try_end_5
    .catch Li5/z0; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v1, "Unable to read comments"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeComment(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->sizeOfCommentArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;->removeComment(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCtComments(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->ctComments:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComments;

    return-void
.end method

.method public setXWPFDocument(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComments;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-void
.end method
