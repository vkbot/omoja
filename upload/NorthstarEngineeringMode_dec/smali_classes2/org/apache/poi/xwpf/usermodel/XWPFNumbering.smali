.class public Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field protected abstractNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;",
            ">;"
        }
    .end annotation
.end field

.field private ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

.field isNew:Z

.field protected nums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFNum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->isNew:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->isNew:Z

    return-void
.end method

.method private findNextAbstractNumberingId()Ljava/math/BigInteger;
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAbstractNum(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->setCtAbstractNum(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->setCtAbstractNum(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->findNextAbstractNumberingId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->setAbstractNumId(Ljava/math/BigInteger;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->setAbstractNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getAbstractNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->setCtAbstractNum(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public addNum(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->addNewAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    .line 8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->setNumId(Ljava/math/BigInteger;)V

    .line 10
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public addNum(Lorg/apache/poi/xwpf/usermodel/XWPFNum;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->sizeOfNumArray()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->setNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public addNum(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    .line 13
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->addNewAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    .line 15
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    .line 16
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->setNumId(Ljava/math/BigInteger;)V

    .line 17
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commit()V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->type:Li5/c0;

    invoke-interface {v2}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "numbering"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li5/z1;->b(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {p0, v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public getAbstractNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAbstractNumID(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getAbstractNums()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIdOfAbstractNum(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->setAbstractNumId(Ljava/math/BigInteger;)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->setNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNum(Ljava/math/BigInteger;)Lorg/apache/poi/xwpf/usermodel/XWPFNum;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNums()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFNum;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public numExist(Ljava/math/BigInteger;)Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->getNumId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDocumentRead()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/NumberingDocument;->getNumbering()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->nums:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFNum;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getAbstractNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-object v6, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-direct {v7, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->isNew:Z
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    :try_start_1
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public removeAbstractNum(Ljava/math/BigInteger;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->abstractNums:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->sizeOfAbstractNumArray()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->getAbstractNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->getAbstractNumId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->removeAbstractNum(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public setNumbering(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;->ctNumbering:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    return-void
.end method
