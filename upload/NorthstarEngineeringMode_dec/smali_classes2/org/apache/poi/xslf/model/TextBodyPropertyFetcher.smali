.class public abstract Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BODY_PR:[Ljavax/xml/namespace/QName;

.field private static final TX_BODY:[Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/xml/namespace/QName;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v4, "txBody"

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->TX_BODY:[Ljavax/xml/namespace/QName;

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string v4, "bodyPr"

    invoke-direct {v1, v2, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->BODY_PR:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    const-class v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    new-instance v2, Landroidx/constraintlayout/core/state/c;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    const/4 v3, 0x2

    new-array v3, v3, [[Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->TX_BODY:[Ljavax/xml/namespace/QName;

    aput-object v4, v3, v0

    sget-object v4, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->BODY_PR:[Ljavax/xml/namespace/QName;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p1, v1, v2, v3}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/TextBodyPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)Z

    move-result p0
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v0, v5

    :catch_0
    :cond_0
    return v0
.end method

.method public abstract fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)Z
.end method
