.class public Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private doCloseFilesystem:Z

.field private final doc:Lorg/apache/poi/ooxml/POIXMLDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocument;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->doCloseFilesystem:Z

    iput-object p1, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->doc:Lorg/apache/poi/ooxml/POIXMLDocument;

    .line 2
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->dateFormat:Ljava/text/DateFormat;

    .line 4
    sget-object p0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;)V
    .locals 0

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;-><init>(Lorg/apache/poi/ooxml/POIXMLDocument;)V

    return-void
.end method

.method private appendDateIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Date;

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCorePropertiesText()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$CoreProperties;->getUnderlyingProperties()Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Ljava/util/Optional;

    move-result-object v2

    const-string v3, "Category"

    invoke-direct {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "ContentStatus"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "ContentType"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Created"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendDateIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "CreatedString"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedPropertyString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Creator"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Description"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Identifier"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Keywords"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Language"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLanguageProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "LastModifiedBy"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "LastPrinted"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendDateIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "LastPrintedString"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedPropertyString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Modified"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendDateIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "ModifiedString"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedPropertyString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Revision"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Subject"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Title"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "Version"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustomPropertiesText()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLProperties$CustomProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetLpwstr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getLpwstr()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetLpstr()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getLpstr()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetDate()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetFiletime()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getFiletime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetBool()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI1()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI1()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI2()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI2()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_7
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI4()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI4()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetI8()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getI8()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_9
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetInt()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi1()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi1()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_b
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi2()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_c
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi4()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi4()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_d
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUi8()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUi8()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_e
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetUint()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getUint()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_f
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetR4()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getR4()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_10
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetR8()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getR8()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_11
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->isSetDecimal()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_1

    :cond_12
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_13
    const-string v2, "(not implemented!)"

    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->doc:Lorg/apache/poi/ooxml/POIXMLDocument;

    return-object p0
.end method

.method public getExtendedPropertiesText()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getProperties()Lorg/apache/poi/ooxml/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getApplication()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Application"

    invoke-direct {p0, v1, v3, v2}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AppVersion"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Characters"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharacters()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, "CharactersWithSpaces"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCharactersWithSpaces()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, "Company"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getCompany()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HyperlinkBase"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinkBase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HyperlinksChanged"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getHyperlinksChanged()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "Lines"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLines()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, "LinksUpToDate"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getLinksUpToDate()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string v2, "Manager"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getManager()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Pages"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPages()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, "Paragraphs"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getParagraphs()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v2, "PresentationFormat"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getPresentationFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Template"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTemplate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TotalTime"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->getTotalTime()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->appendIfPresent(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFilesystem()Ljava/io/Closeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getFilesystem()Lorg/apache/poi/ooxml/POIXMLDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFilesystem()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getCorePropertiesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getExtendedPropertiesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->getCustomPropertiesText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isCloseFilesystem()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->doCloseFilesystem:Z

    return p0
.end method

.method public setCloseFilesystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;->doCloseFilesystem:Z

    return-void
.end method
