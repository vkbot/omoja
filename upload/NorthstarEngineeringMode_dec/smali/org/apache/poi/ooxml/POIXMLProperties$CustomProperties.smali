.class public Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ooxml/POIXMLProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomProperties"
.end annotation


# static fields
.field public static final FORMAT_ID:Ljava/lang/String; = "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"


# instance fields
.field private lastPid:Ljava/lang/Integer;

.field private final props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;


# direct methods
.method private constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->lastPid:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/ooxml/POIXMLProperties$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    return-object p0
.end method

.method private add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->addNewProperty()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->nextPid()I

    move-result p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setPid(I)V

    const-string/jumbo p0, "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setFmtid(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A property with this name already exists in the custom properties"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;D)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p0

    .line 4
    invoke-interface {p0, p2, p3}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setR8(D)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p0

    .line 6
    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setI4(I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p0

    .line 2
    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setLpwstr(Ljava/lang/String;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object p0

    .line 8
    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setBool(Z)V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getLastPid()I
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getPid()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getPid()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getProperty(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object p0

    return-object p0
.end method

.method public nextPid()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->lastPid:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->getLastPid()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->lastPid:Ljava/lang/Integer;

    return v0
.end method
