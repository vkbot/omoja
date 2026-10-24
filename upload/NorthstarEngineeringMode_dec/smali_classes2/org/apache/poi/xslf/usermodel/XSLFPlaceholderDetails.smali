.class public Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PlaceholderDetails;


# static fields
.field private static final NV_CONTAINER:[Ljavax/xml/namespace/QName;

.field private static final NV_PROPS:[Ljavax/xml/namespace/QName;


# instance fields
.field private _ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

.field private final shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "nvSpPr"

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    invoke-direct {v1, v3, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v4, "nvCxnSpPr"

    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v5, "nvGrpSpPr"

    invoke-direct {v1, v3, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v5, "nvPicPr"

    invoke-direct {v1, v3, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v5, "nvGraphicFramePr"

    invoke-direct {v1, v3, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->NV_CONTAINER:[Ljavax/xml/namespace/QName;

    new-array v0, v4, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v4, "nvPr"

    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->NV_PROPS:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->lambda$setVisible$2(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->lambda$setVisible$3(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->lambda$setVisible$0(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->lambda$setVisible$1(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method private getHeaderFooter(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/sl/usermodel/MasterSheet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    :goto_0
    instance-of v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->isSetHf()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->addNewHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->isSetHf()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->addNewHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    move-result-object p0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->getHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNvProps()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    const-class v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    const/4 v2, 0x2

    new-array v2, v2, [[Ljavax/xml/namespace/QName;

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->NV_CONTAINER:[Ljavax/xml/namespace/QName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->NV_PROPS:[Ljavax/xml/namespace/QName;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p0, v1, v0, v2}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static synthetic lambda$setVisible$0(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/b;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;I)V

    return-object v0
.end method

.method private static synthetic lambda$setVisible$1(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/b;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;I)V

    return-object v0
.end method

.method private static synthetic lambda$setVisible$2(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/c;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;I)V

    return-object v0
.end method

.method private static synthetic lambda$setVisible$3(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)Ljava/util/function/Consumer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/c;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;I)V

    return-object v0
.end method


# virtual methods
.method public getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getNvProps()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->isSetPh()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->addNewPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->getPh()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->_ph:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    return-object p1
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetIdx()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaceholderShape()Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->shape:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Sheet;->getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholder(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object p0

    return-object p0
.end method

.method public getSize()Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetSz()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->quarter:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->half:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->full:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isVisible()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->isSetType()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getHeaderFooter(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v1

    invoke-virtual {v1}, Li5/h0;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->isSetSldNum()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->getSldNum()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    return v0

    :cond_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->isSetHdr()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->getHdr()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v0, v2

    :cond_8
    return v0

    :cond_9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->isSetFtr()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->getFtr()Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v2

    :cond_b
    return v0

    :cond_c
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->isSetDt()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->getDt()Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    move v0, v2

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v2
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget p0, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    invoke-static {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->setType(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getNvProps()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;->unsetPh()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSize(Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getCTPlaceholder(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->unsetSz()V

    return-void

    :cond_1
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$PlaceholderDetails$PlaceholderSize:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->QUARTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->setSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->HALF:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->setSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize;->FULL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->setSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderSize$Enum;)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPlaceholderDetails;->getHeaderFooter(Z)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;

    move-result-object p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
