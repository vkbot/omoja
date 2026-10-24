.class public Lorg/apache/poi/hpsf/DocumentSummaryInformation;
.super Lorg/apache/poi/hpsf/PropertySet;
.source "SourceFile"


# static fields
.field public static final DEFAULT_STREAM_NAME:Ljava/lang/String; = "\u0005DocumentSummaryInformation"

.field public static final FORMAT_ID:[Lorg/apache/poi/hpsf/ClassID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->DOC_SUMMARY:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->USER_PROPERTIES:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->FORMAT_ID:[Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hpsf/ClassIDPredefined;->DOC_SUMMARY:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->isDocumentSummaryInformation()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not a "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureSection2()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/hpsf/Section;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Section;-><init>()V

    sget-object v1, Lorg/apache/poi/hpsf/ClassIDPredefined;->USER_PROPERTIES:Lorg/apache/poi/hpsf/ClassIDPredefined;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/ClassIDPredefined;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    :cond_0
    return-void
.end method

.method private notYetImplemented(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, " is not yet implemented."

    invoke-static {p1, v0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getApplicationVersion()I
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getByteCount()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharCountWithSpaces()I
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    new-instance v0, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/CustomProperties;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    goto :goto_1

    :cond_0
    if-lez v9, :cond_1

    if-eqz v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    new-instance v9, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v6, v7}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v9}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperties;->size()I

    move-result p0

    if-eq p0, v5, :cond_4

    invoke-virtual {v0, v3}, Lorg/apache/poi/hpsf/CustomProperties;->setPure(Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getDocparts()[B
    .locals 1

    const-string v0, "Reading byte arrays"

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeadingPair()[B
    .locals 1

    const-string v0, "Reading byte arrays "

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getHiddenCount()I
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getHyperlinksChanged()Z
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyBooleanValue(I)Z

    move-result p0

    return p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineCount()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getLinksDirty()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyBooleanValue(I)Z

    move-result p0

    return p0
.end method

.method public getMMClipCount()I
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getManager()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteCount()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getParCount()I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 0

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p0

    return-object p0
.end method

.method public getScale()Z
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyBooleanValue(I)Z

    move-result p0

    return p0
.end method

.method public getSlideCount()I
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result p0

    return p0
.end method

.method public getVBADigitalSignature()[B
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public removeApplicationVersion()V
    .locals 2

    const-wide/16 v0, 0x17

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeByteCount()V
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCategory()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCharCountWithSpaces()V
    .locals 2

    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCompany()V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeContentStatus()V
    .locals 2

    const-wide/16 v0, 0x1b

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeContentType()V
    .locals 2

    const-wide/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCustomProperties()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->clearSections()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    const-string v0, "Illegal internal format of Document SummaryInformation stream: second section is missing."

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeDocparts()V
    .locals 2

    const-wide/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeDocumentVersion()V
    .locals 2

    const-wide/16 v0, 0x1d

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeHeadingPair()V
    .locals 2

    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeHiddenCount()V
    .locals 2

    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeHyperlinksChanged()V
    .locals 2

    const-wide/16 v0, 0x16

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeLanguage()V
    .locals 2

    const-wide/16 v0, 0x1c

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeLineCount()V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeLinksDirty()V
    .locals 2

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeMMClipCount()V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeManager()V
    .locals 2

    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeNoteCount()V
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeParCount()V
    .locals 2

    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removePresentationFormat()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeScale()V
    .locals 2

    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeSlideCount()V
    .locals 2

    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeVBADigitalSignature()V
    .locals 2

    const-wide/16 v0, 0x18

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public setApplicationVersion(I)V
    .locals 2

    const-wide/16 v0, 0x17

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setByteCount(I)V
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public setCharCountWithSpaces(I)V
    .locals 2

    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1b

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1a

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setCustomProperties(Lorg/apache/poi/hpsf/CustomProperties;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->ensureSection2()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getDictionary()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v1

    :cond_0
    if-gez v1, :cond_1

    const/16 v1, 0x4e4

    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->properties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDocparts([B)V
    .locals 0

    const-string p1, "Writing byte arrays"

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentVersion(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1d

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setHeadingPair([B)V
    .locals 0

    const-string p1, "Writing byte arrays "

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    return-void
.end method

.method public setHiddenCount(I)V
    .locals 2

    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setHyperlinksChanged(Z)V
    .locals 2

    const-wide/16 v0, 0x16

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JZ)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1c

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setLineCount(I)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setLinksDirty(Z)V
    .locals 2

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JZ)V

    return-void
.end method

.method public setMMClipCount(I)V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setNoteCount(I)V
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setParCount(I)V
    .locals 2

    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setPresentationFormat(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public setScale(Z)V
    .locals 2

    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JZ)V

    return-void
.end method

.method public setSlideCount(I)V
    .locals 2

    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setVBADigitalSignature([B)V
    .locals 2

    const-wide/16 v0, 0x18

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(J[B)V

    return-void
.end method
