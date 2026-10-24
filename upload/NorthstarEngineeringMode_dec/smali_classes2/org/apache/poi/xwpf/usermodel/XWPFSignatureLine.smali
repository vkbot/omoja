.class public Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine;
.super Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;
.source "SourceFile"


# static fields
.field private static final MS_VML_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:vml"


# instance fields
.field private line:Lz2/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine;->lambda$add$0(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$add$0(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p0

    invoke-static {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine;->mapType(Lorg/apache/poi/common/usermodel/PictureType;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mapType(Lorg/apache/poi/common/usermodel/PictureType;)Lorg/apache/poi/common/usermodel/PictureType;
    .locals 3

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine$1;->$SwitchMap$org$apache$poi$common$usermodel$PictureType:[I

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
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->WDP:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->WPG:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->WMF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->TIFF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->PNG:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->PICT:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->JPEG:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->GIF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->EPS:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->EMF:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->DIB:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/apache/poi/common/usermodel/PictureType;->BMP:Lorg/apache/poi/common/usermodel/PictureType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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
.method public add(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->createRun()Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewPict()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v1, p1}, Landroidx/constraintlayout/core/state/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->add(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;)V

    return-void
.end method

.method public parse(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object p1

    const/4 v0, 0x6

    new-array v0, v0, [[Ljavax/xml/namespace/QName;

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/xml/namespace/QName;

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v4, "body"

    const-string v5, "http://schemas.openxmlformats.org/wordprocessingml/2006/main"

    invoke-direct {v3, v5, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [Ljavax/xml/namespace/QName;

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v6, "p"

    invoke-direct {v3, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    new-array v2, v1, [Ljavax/xml/namespace/QName;

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljavax/xml/namespace/QName;

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v6, "pict"

    invoke-direct {v3, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljavax/xml/namespace/QName;

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v5, "urn:schemas-microsoft-com:vml"

    const-string v6, "shape"

    invoke-direct {v3, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->QNAME_SIGNATURE_LINE:Ljavax/xml/namespace/QName;

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lz2/b;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lz2/b;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSignatureLine;->line:Lz2/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSignatureShape(Lz2/b;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->parse()V

    :cond_0
    return-void
.end method

.method public setRelationId(Ld3/d;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Ld3/d;->setId2(Ljava/lang/String;)V

    return-void
.end method
