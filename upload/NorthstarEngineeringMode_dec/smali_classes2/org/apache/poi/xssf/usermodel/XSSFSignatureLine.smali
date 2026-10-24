.class public Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;
.super Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;
.source "SourceFile"


# static fields
.field private static final MS_VML_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:vml"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;Lorg/apache/poi/xssf/usermodel/XSSFSheet;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;->lambda$add$0(Lorg/apache/poi/xssf/usermodel/XSSFSheet;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addPicture([BLorg/apache/poi/common/usermodel/PictureType;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object p3

    invoke-static {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;->mapType(Lorg/apache/poi/common/usermodel/PictureType;)Lorg/apache/poi/ooxml/POIXMLRelation;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getNextPartNumber(Lorg/apache/poi/ooxml/POIXMLRelation;I)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getXssfFactory()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object p0

    invoke-virtual {p3, p2, p0, v1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
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

    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$add$0(Lorg/apache/poi/xssf/usermodel/XSSFSheet;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p2, p3, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;->addPicture([BLorg/apache/poi/common/usermodel/PictureType;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mapType(Lorg/apache/poi/common/usermodel/PictureType;)Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine$1;->$SwitchMap$org$apache$poi$common$usermodel$PictureType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported picture format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->getDocument()Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/c;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xssf/usermodel/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->add(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getSignatureShape()Ld3/e;

    move-result-object p0

    invoke-interface {p0}, Ld3/e;->addNewClientData()Ly2/a;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol1()S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx1()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow1()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy1()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getCol2()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDx2()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getRow2()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;->getDy2()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    throw p0
.end method

.method public parse(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->getDocument()Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [[Ljavax/xml/namespace/QName;

    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    aput-object v4, v3, v0

    aput-object v3, v1, v0

    new-array v3, v2, [Ljavax/xml/namespace/QName;

    new-instance v4, Ljavax/xml/namespace/QName;

    const-string v5, "urn:schemas-microsoft-com:vml"

    const-string v6, "shape"

    invoke-direct {v4, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v0

    aput-object v3, v1, v2

    new-array v2, v2, [Ljavax/xml/namespace/QName;

    sget-object v3, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->QNAME_SIGNATURE_LINE:Ljavax/xml/namespace/QName;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    const-class v0, Lz2/b;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lz2/b;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSignatureShape(Lz2/b;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->parse()V

    :cond_1
    return-void
.end method

.method public setRelationId(Ld3/d;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1}, Ld3/d;->q0()V

    return-void
.end method
